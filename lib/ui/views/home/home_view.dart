import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../models/search_result.dart';
import '../../../shared/dimens.dart';
import '../../../utilities/Common.dart';
import 'home_viewmodel.dart';
import '../../../shared/Colors.dart';
import '../../../shared/assets.dart'; // Import assets file
import '../../../shared/strings.dart'; // Import strings file

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Common.hexToColor(bannerWhite),
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu, color: Common.hexToColor(colorDark)),
              onPressed: () {
                // Handle menu action
              },
            ),
            title: Image.asset(
              Assets.logo, // Updated to use constant from assets.dart
              height: kAppBarLogoHeight,
            ),
          ),
          body: Column(
            children: [
              _buildSearchField(viewModel),
              Expanded(
                child: viewModel.isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : _buildSearchResults(viewModel),
              ),
              if (viewModel.errorMessage != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    viewModel.errorMessage!,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSearchField(HomeViewModel viewModel) {
    return Container(
      color: Common.hexToColor(searchOuterBackgroundColor),
      padding: kSearchFieldPadding,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Common.hexToColor(bannerWhite),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: kVerticalSpacing,
                  horizontal: kHorizontalSpacing,
                ),
                hintText: Strings.searchHint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(kSearchFieldBorderRadius),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                // Trigger the search every time the user types
                viewModel.fetchSearchResults(value);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults(HomeViewModel viewModel) {
    if (viewModel.results == null || viewModel.results!.isEmpty) {
      return const Center(child: Text('No results found', style: TextStyle(fontSize: 18)));
    }
    return ListView.builder(
      itemCount: viewModel.results!.length,
      itemBuilder: (context, index) {
        final item = viewModel.results![index];
        return _buildSearchResultItem(item);
      },
    );
  }

  Widget _buildSearchResultItem(Item item) {
    return Column(
      children: [
        ListTile(
          contentPadding: kContentPadding,
          leading: SizedBox(
            width: kLeadingImageWidth,
            child: Image.asset(
              Assets.checkIcon,
              height: kLeadingImageSize,
              width: kLeadingImageSize,
            ),
          ),
          title: Text(
            '${Strings.questionPrefix}${item.title}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Common.hexToColor(searchTitleTextColor),
              fontSize: kTitleFontSize,
            ),
            maxLines: kTitleMaxLines,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: _buildSubtitle(item),
          trailing: _buildTrailingSection(item),
        ),
        const Divider(height: kDividerHeight),
      ],
    );
  }

  Widget _buildSubtitle(Item item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Common.stringToPlainTextWithLimit(
          item.body.toString(),
          maxLines: kSubtitleMaxLines,
          fontSize: kSubtitleFontSize,
        ),
        Text(
          '${Strings.askedBy} ${Common.formatDate(item.creationDate ?? 0)} ${Strings.by} ${item.owner?.displayName}',
          style: const TextStyle(fontSize: kMetaFontSize, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildTrailingSection(Item item) {
    return SizedBox(
      width: kTrailingSectionWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item.answerCount ?? 0} ${Strings.answers}',
                  style: const TextStyle(fontSize: kMetaFontSize),
                  overflow: TextOverflow.ellipsis,
                  maxLines: kMetaMaxLines,
                ),
                Text(
                  '${item.score ?? 0} ${Strings.votes}',
                  style: const TextStyle(fontSize: kMetaFontSize),
                  overflow: TextOverflow.ellipsis,
                  maxLines: kMetaMaxLines,
                ),
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right,
            size: kChevronIconSize,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
