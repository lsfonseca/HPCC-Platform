/*##############################################################################

    HPCC SYSTEMS software Copyright (C) 2019 HPCC Systems.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
############################################################################## */

//class=embedded
//class=3rdparty

import java;

boolean reverse := false : STORED('reverse');

string myJavaCode := '''
  public static String cat(String a, String b)
  {
    return a + b;
  }
''';

string myOtherJavaCode := '''
  public static String cat(String a, String b)
  {
    return b + a;
  }
''';

String cat(String a, String b) := EMBED(Java, IF(reverse, myOtherJavaCode, myJavaCode));

OUTPUT(cat('Hello ', 'Java'));
