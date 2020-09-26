" Copyright (c) 2015 Junegunn Choi
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

let s:emoji_code = {
    \ 'alembic': 0x2697,
    \ 'alien': 0x1f47d,
    \ 'ambulance': 0x1f691,
    \ 'apple': 0x1f34e,
    \ 'arrow_down': 0x2b07,
    \ 'arrow_up': 0x2b06,
    \ 'art': 0x1f3a8,
    \ 'beers': 0x1f37b,
    \ 'bento': 0x1f371,
    \ 'bookmark': 0x1f516,
    \ 'boom': 0x1f4a5,
    \ 'bug': 0x1f41b,
    \ 'building_construction': 0x1f3d7,
    \ 'bulb': 0x1f4a1,
    \ 'busts_in_silhouette': 0x1f465,
    \ 'camera_flash': 0x1F4F8,
    \ 'card_file_box': 0x1f5c3,
    \ 'chart_with_upwards_trend': 0x1f4c8,
    \ 'checkered_flag': 0x1f3c1,
    \ 'children_crossing': 0x1f6b8,
    \ 'clown_face': 0x1f921,
    \ 'construction': 0x1f6a7,
    \ 'construction_worker': 0x1f477,
    \ 'dizzy': 0x1f4ab,
    \ 'egg': 0x1f373,
    \ 'fire': 0x1f525,
    \ 'globe_with_meridians': 0x1f310,
    \ 'goal_net': 0x1f945,
    \ 'green_apple': 0x1f34f,
    \ 'green_heart': 0x1f49a,
    \ 'heavy_minus_sign': 0x2796,
    \ 'heavy_plus_sign': 0x2795,
    \ 'iphone': 0x1f4f1,
    \ 'label': 0x1f3f7,
    \ 'lipstick': 0x1f484,
    \ 'lock': 0x1f512,
    \ 'loud_sound': 0x1f50a,
    \ 'mag': 0x1f50d,
    \ 'memo': 0x1f4dd,
    \ 'mute': 0x1f507,
    \ 'ok_hand': 0x1f44c,
    \ 'package': 0x1f4e6,
    \ 'page_facing_up': 0x1f4c4,
    \ 'pencil': 0x1f4dd,
    \ 'pencil2': 0x270f,
    \ 'penguin': 0x1f427,
    \ 'poop': 0x1f4a9,
    \ 'pushpin': 0x1f4cd,
    \ 'recycle': 0x267b,
    \ 'rewind': 0x23ea,
    \ 'robot': 0x1f916,
    \ 'rocket': 0x1f680,
    \ 'rotating_light': 0x1f6a8,
    \ 'see_no_evil': 0x1f648,
    \ 'seedling': 0x1f331,
    \ 'sparkles': 0x2728,
    \ 'speech_balloon': 0x1f4ac,
    \ 'tada': 0x1f389,
    \ 'triangular_flag_on_post': 0x1f6a9,
    \ 'truck': 0x1f69a,
    \ 'twisted_rightwards_arrows': 0x1f500,
    \ 'wastebasket': 0x1f5d1,
    \ 'whale': 0x1f433,
    \ 'wheel_of_dharma': 0x2638,
    \ 'wheelchair': 0x267f,
    \ 'white_check_mark': 0x2705,
    \ 'wrench': 0x1f527,
    \ 'zap': 0x26a1,
\ }

let s:emoji_gitmoji = {
    \ 'alembic': ['  Experimenting new things.'],
    \ 'alien': ['  Updating code due to external API changes.'],
    \ 'ambulance': ['  Critical hotfix.'],
    \ 'apple': ['  Fixing something on macOS.'],
    \ 'arrow_down': ['  Downgrading dependencies.'],
    \ 'arrow_up': ['  Upgrading dependencies.'],
    \ 'art': ['  Improving structure / format of the code.'],
    \ 'beers': ['  Writing code drunkenly.'],
    \ 'bento': ['  Adding or updating assets.'],
    \ 'bookmark': ['  Releasing / Version tags.'],
    \ 'boom': ['  Introducing breaking changes.'],
    \ 'bug': ['  Fixing a bug.'],
    \ 'building_construction': ['  Making architectural changes.'],
    \ 'bulb': ['  Documenting source code.'],
    \ 'busts_in_silhouette': ['  Add contributor(s).'],
    \ 'camera_flash': ['  Adding or updating snapshots.'],
    \ 'card_file_box': ['  Performing database related changes.'],
    \ 'chart_with_upwards_trend': ['  Adding analytics or tracking code.'],
    \ 'checkered_flag': ['  Fixing something on Windows.'],
    \ 'children_crossing': ['  Improving user experience / usability.'],
    \ 'clown_face': ['  Mocking things.'],
    \ 'construction': ['  Work in progress.'],
    \ 'construction_worker': [   'Adding CI build system.'],
    \ 'dizzy': ['  Adding or updating animations and transitions'],
    \ 'egg': ['  Adding an easter egg.'],
    \ 'fire': ['  Removing code or files.'],
    \ 'globe_with_meridians': ['  Internationalization and localization.'],
    \ 'goal_net': ['  Catching errors'],
    \ 'green_apple': ['  Fixing something on iOS.'],
    \ 'green_heart': ['  Fixing CI Build.'],
    \ 'heavy_minus_sign': ['  Removing a dependency.'],
    \ 'heavy_plus_sign': ['  Adding a dependency.'],
    \ 'iphone': ['  Working on responsive design.'],
    \ 'label': ['  Adding or updating types (Flow, TypeScript)'],
    \ 'lipstick': ['  Updating the UI and style files.'],
    \ 'lock': ['  Fixing security issues.'],
    \ 'loud_sound': ['  Adding logs.'],
    \ 'mag': ['  Improving SEO.'],
    \ 'memo': ['  Add or update documentation.'],
    \ 'mute': ['  Removing logs.'],
    \ 'ok_hand': ['  Updating code due to code review changes.'],
    \ 'package': ['  Updating compiled files or packages.'],
    \ 'page_facing_up': ['  Adding or updating license.'],
    \ 'pencil': ['  Writing docs.'],
    \ 'pencil2': ['  Fixing typos.'],
    \ 'penguin': ['  Fixing something on Linux.'],
    \ 'poop': ['  Writing bad code that needs to be improved.'],
    \ 'pushpin': ['  Pinning dependencies to specific versions.'],
    \ 'recycle': ['  Refactoring code.'],
    \ 'rewind': ['  Reverting changes.'],
    \ 'robot': ['  Fixing something on Android.'],
    \ 'rocket': ['  Deploying stuff.'],
    \ 'rotating_light': ['  Removing linter warnings.'],
    \ 'see_no_evil': ['  Adding or updating a .gitignore file.'],
    \ 'seedling': ['  Adding or updating seed files'],
    \ 'sparkles': ['  Introducing new features.'],
    \ 'speech_balloon': ['  Updating text and literals.'],
    \ 'tada': ['  Initial commit.'],
    \ 'triangular_flag_on_post': ['  Adding, updating, or removing feature flags'],
    \ 'truck': ['  Moving or renaming files.'],
    \ 'twisted_rightwards_arrows': ['  Merging branches.'],
    \ 'wastebasket': ['  Deprecating code that needs to be cleaned up.'],
    \ 'whale': ['  Work about Docker.'],
    \ 'wheel_of_dharma': ['  Work about Kubernetes.'],
    \ 'wheelchair': ['  Improving accessibility.'],
    \ 'white_check_mark': ['  Updating tests.'],
    \ 'wrench': ['  Changing configuration files.'],
    \ 'zap': ['  Improving performance.'],
\ }

function! emoji#data#dict()
  return s:emoji_code
endfunction

function emoji#data#gitmoji()
  return s:emoji_gitmoji
endfunction
