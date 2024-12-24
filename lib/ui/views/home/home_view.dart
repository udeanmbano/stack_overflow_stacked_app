import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackoverflow_search_app/shared/Colors.dart';
import 'package:stackoverflow_search_app/shared/assets.dart'; // Import assets file
import 'package:stackoverflow_search_app/shared/strings.dart'; // Import strings file
import '../../../shared/dimens.dart';
import '../../../utilities/Common.dart';
import 'home_viewmodel.dart';

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
              Container(
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
                          hintText: Strings.searchHint, // Use constant from strings.dart
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
              ),
              Expanded(
                child: viewModel.isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                  itemCount: viewModel.results?.length,
                  itemBuilder: (context, index) {
                    final item = viewModel.results![index];
                    return Column(
                      children: [
                        ListTile(
                          contentPadding: kContentPadding,
                          leading: SizedBox(
                            width: kLeadingImageWidth,
                            child: Image.asset(
                              Assets.checkIcon, // Use constant from assets.dart
                              height: kLeadingImageSize,
                              width: kLeadingImageSize,
                            ),
                          ),
                          title: Text(
                            '${Strings.questionPrefix}${item.title}', // Use constant from strings.dart
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Common.hexToColor(searchTitleTextColor),
                              fontSize: kTitleFontSize,
                            ),
                            maxLines: kTitleMaxLines,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Common.stringToPlainTextWithLimit(
                                item.body.toString(),
                                maxLines: kSubtitleMaxLines,
                                fontSize: kSubtitleFontSize,
                              ),
                              Text(
                                '${Strings.askedBy} ${item.creationDate} ${Strings.by} ${item.owner?.displayName}', // Use constants from strings.dart
                                style: TextStyle(
                                    fontSize: kMetaFontSize, color: Colors.grey),
                              ),
                            ],
                          ),
                          trailing: SizedBox(
                            width: kTrailingSectionWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${item.answerCount ?? 0} ${Strings.answers}',
                                      style: TextStyle(fontSize: kMetaFontSize),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: kMetaMaxLines,
                                    ),
                                    Text(
                                      '${item.score ?? 0} ${Strings.votes}',
                                      style: TextStyle(fontSize: kMetaFontSize),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: kMetaMaxLines,
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  size: kChevronIconSize,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(height: kDividerHeight),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
