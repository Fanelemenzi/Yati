# Yati

Yati is an information application providing information of Eswatini government services and processes. Information is presented in a Frequently Asked Question format.

This application is currently [in development] [Build No:1.3.1]. When its ready it will move to [Build No:1.3.2][] where additional functionalities will be intergrated to the application.

[Milestones][]

## Using Yati
Beta version of Yati is coming SOOn. Keep checking for link to beta application

## Contribution
Contributions to this apps are welcome

If you're looking to participate in the development of the Yati App, please read through the README.md to find out how you can make contributions to the project.

### Picking an issue to work on
First join the Yati Slack channel, then browse through recent commits and the codebase and the Yati repository. 
To find possible issues to work on, see our [Project Board][]. Look for issues up through the Build No:1.3.1 milestones and that aren't already assigned.

Follow and keep track of issues on Yati repository and try several issues until you find one you're confident you'll be ableto take on effectively.

*After you've done that*, claim the issue by posting a comment
on the issue thread, saying you'd like to work on it
and describing your progress.

### Submitting a pull request

To make a submittion to Yati codebase, first you need to follow the guidelines on working on a issue and procedures for submitting a pull request. It is import to take the time to make your work as easy as possible for others to review.

#### Working on YAti Issue
You’re encouraged to ask questions on how to best implement or debug your changes – the Yati maintainers are excited to answer questions to help you stay unblocked and working efficiently. You can ask questions in any of Yati communities, or on the GitHub issue or pull request.

To get early feedback on any UI changes, we encourage you to post screenshots of your work in the #design stream in the Yati Slack Channel

### Submitting a pull request
Pull requests submitted to Yati go through a rigorous review process, which is designed to ensure that we are building a high-quality product with a maintainable codebase. This page describes the stages of review your pull request may go through, and offers guidance on how you can help keep your pull request moving along. When submitting your PR, you will need to:

1. Clearly describe the work you are submitting. Make sure the pull request template is filled out correctly, and that all the relevant points on the self-review checklist (if the repository has one) have been addressed. See the reviewable pull requests guide for advice.

2. If you have a question that you expect to be resolved during the review process, put it in a PR comment attached to a relevant part of the changes. The review process will go a lot more smoothly if points of uncertainty are explicitly laid out.

3. Make sure that the pull request passes all CI tests. You can sometimes request initial feedback if there are open questions that will impact how you update the tests. But in general, maintainers will wait for your PR to pass tests before reviewing your work.

Two specific points to expand on:
* Before we can review your PR in detail, your changes will need
   tests.
* Changes need will need to be organized inot a clear and coherent commits throught the [Yati Committ style][]

## Getting Started with developing Yati app on local IDE

### Setting up 
1. Follow the [Flutter installation guide](https://docs.flutter.dev/get-started/install)
   for your platform of choice.
2. Switch to the latest version of Flutter by running `flutter channel main`
   and `flutter upgrade` (see [Flutter version](#flutter-version) below).
3. Ensure Flutter is correctly configured by running `flutter doctor`.
4. Start the app with `flutter run`, or from your IDE.

### Tests

You can run all our forms of tests with the `tools/check` script:

```
$ tools/check
```

See `tools/check --help` for more information.

The two major test suites are the Dart analyzer, which performs
type-checking and linting; and our unit tests, located in the `test/`
directory.

You can run these suites directly with the commands `flutter analyze`
and `flutter test` respectively.  Both commands accept a list of file
or directory paths to operate on, and other options.  Particularly
recommended is a command like
```
$ flutter test test/foo/bar_test.dart --name 'baz'
```
which will run only the tests in `test/foo/bar_test.dart`,
and within those only the tests with names matching `baz`.

When editing in an IDE, the IDE should give you the exact same feedback
as `flutter analyze` would.  When editing a test file, the IDE can also
run individual tests for you.
See [upstream docs on `flutter test`][flutter-cookbook-unit-tests].

[flutter-cookbook-unit-tests]: https://docs.flutter.dev/cookbook/testing/unit/introduction


## Notes

### Writing tests

We write tests for all changes to the Dart code in the app.
Because Flutter and Dart have excellent facilities for testing,
we're able to efficiently write tests even for kinds of code
that often go untested: UI code, and code that makes network
requests or calls external APIs.

You may sometimes find code that doesn't have tests.
This is generally code from the early prototype phase;
when we make changes to it, we write tests for the changes,
and often take the opportunity to write tests for the
existing logic too.

When it's time to write a test, look around at existing tests in the
same test file or at our existing tests for similar code, and follow
the patterns we use there.  Notes on specific kinds of tests:

 * For UI code, we use Flutter's standard `testWidgets` function.
   Many widgets will interact with the user's data; see docs on
   our `TestZulipBinding` and `TestGlobalStore`, and existing
   tests that use `testBinding.globalStore`, for how to manipulate
   test data there.

 * For code that makes Zulip API requests, use `FakeApiConnection`;
   see its docs and the existing tests that use it.

 * For code that makes other network requests, look for similar
   existing tests; or see our `FakeHttpClient`, and use
   `withHttpClient` from `package:http` to cause the code under test
   to use it.

 * For code that invokes Flutter plugins or otherwise calls external
   APIs, see our `ZulipBinding` class.  If there isn't an existing
   member of that class that wraps the API you're using, then you'll
   need to add one; follow the existing examples.


#### `check` vs. `expect`

For our tests, we use [the `checks` package][package-checks].
This is a new package from the Dart team, currently in preview,
which is [intended to replace][package-checks-migration] the
old `matcher` package.

This means that if you see example test code elsewhere that
uses the `expect` function, we'd prefer to translate it into
something in terms of `check`.  For help with that,
see the [`package:checks` migration guide][package-checks-migration]
and the package's [API docs][package-checks-api].

Because `package:checks` is still in preview, the Dart team is
open to feedback on the API to a degree that they won't be
after it reaches 1.0.  So where we find rough edges, now is a
good time to [report them as issues][dart-test-tracker].

[package-checks]: https://pub.dev/packages/checks
[package-checks-api]: https://pub.dev/documentation/checks/latest/checks/checks-library.html
[package-checks-migration]: https://github.com/dart-lang/test/blob/master/pkgs/checks/doc/migrating_from_matcher.md
[dart-test-tracker]: https://github.com/dart-lang/test/issues


### Code formatting

We format our code using the 'dart format' or the default auto-formatter. You can also use th style found in exsitng code. 
It's OK if in your first few PRs you haven't yet picked up all the
nuances of our style.  Reviewers will point out nits as they see them.

If your editor or IDE automatically reformats the existing code,
you'll want to turn that off.  Please also mention it in on Yati community channel and describe what editor you were using;
we'd like to include such configuration directly in the repo
so it's automatic for the next person.  We already have that
[for VS Code][vscode-disable-reformat], and it seems to be the
default for Android Studio / IntelliJ, but when there are cases
we haven't covered we'd like to know about them.




A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
