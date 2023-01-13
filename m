Return-Path: <jovanbosic95@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C9DC54EBE
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 07:19:23 +0000 (UTC)
Subject: gn native do compile fails
To: yocto@lists.yoctoproject.org
From: jovanbosic95@gmail.com
X-Originating-Location: Novi Sad, Vojvodina, RS (46.163.59.26)
X-Originating-Platform: Linux Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Jan 2023 23:19:18 -0800
Message-ID: <rQ1C.1673594358351494306.HMB9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NSBjOtQmD9Rr9v8iOq3L"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 07:19:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58971

--NSBjOtQmD9Rr9v8iOq3L
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Can someone help me to solve this issue? I am not sure what can be the prob=
lem since me and my colleague did the exact same steps, and on his machine =
everything is done without any error and I am receiving constantly this one=
:

ERROR: gn-native-106.0.5249.119-r0 do_compile: Execution of '/home/jovanbos=
ic/Yocto/build/tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/temp/run.d=
o_compile.2197284' failed with exit code 1
ERROR: Logfile of failure stored in: /home/jovanbosic/Yocto/build/tmp/work/=
x86_64-linux/gn-native/106.0.5249.119-r0/temp/log.do_compile.2197284
Log data follows:
| DEBUG: Executing shell function do_compile
| ninja: Entering directory `/home/jovanbosic/Yocto/build/tmp/work/x86_64-l=
inux/gn-native/106.0.5249.119-r0/chromium-106.0.5249.119/out/Release/gn_bui=
ld'
| [1/195] CXX src/base/files/file_path_constants.o
| FAILED: src/base/files/file_path_constants.o
| clang++ -target x86_64-linux=C2=A0 -MMD -MF src/base/files/file_path_cons=
tants.o.d -I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/=
tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr=
/include -O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-lin=
ux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe =
-D_LIBCPP_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sectio=
ns -ffunction-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_M=
ACROS -D__STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdia=
gnostics-color -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -st=
d=3Dc++17 -c ../../../tools/gn/src/base/files/file_path_constants.cc -o src=
/base/files/file_path_constants.o
| ../../../tools/gn/src/base/files/file_path_constants.cc:7:10: fatal error=
: 'iterator' file not found
| #include <iterator>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~
| 1 error generated.
| [2/195] CXX src/base/command_line.o
| FAILED: src/base/command_line.o
| clang++ -target x86_64-linux=C2=A0 -MMD -MF src/base/command_line.o.d -I.=
./../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_=
64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 =
-pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/=
106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP_HAS=
_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunction=
-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D__STD=
C_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-colo=
r -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17 -c =
../../../tools/gn/src/base/command_line.cc -o src/base/command_line.o
| In file included from ../../../tools/gn/src/base/command_line.cc:5:
| ../../../tools/gn/src/base/command_line.h:19:10: fatal error: 'map' file =
not found
| #include <map>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~
| 1 error generated.
| [3/195] CXX src/base/environment.o
| FAILED: src/base/environment.o
| clang++ -target x86_64-linux=C2=A0 -MMD -MF src/base/environment.o.d -I..=
/../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_6=
4-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -=
pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/1=
06.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP_HAS_=
NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunction-=
sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D__STDC=
_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-color=
 -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17 -c .=
./../../tools/gn/src/base/environment.cc -o src/base/environment.o
| In file included from ../../../tools/gn/src/base/environment.cc:5:
| ../../../tools/gn/src/base/environment.h:8:10: fatal error: 'map' file no=
t found
| #include <map>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~
| 1 error generated.
| [4/195] CXX src/base/files/file_path.o
| FAILED: src/base/files/file_path.o
| clang++ -target x86_64-linux=C2=A0 -MMD -MF src/base/files/file_path.o.d =
-I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/x=
86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -=
O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-nati=
ve/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP_=
HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunct=
ion-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D__=
STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-c=
olor -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17 =
-c ../../../tools/gn/src/base/files/file_path.cc -o src/base/files/file_pat=
h.o
| In file included from ../../../tools/gn/src/base/files/file_path.cc:5:
| ../../../tools/gn/src/base/files/file_path.h:107:10: fatal error: 'iosfwd=
' file not found
| #include <iosfwd>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~
| 1 error generated.
| [5/195] CXX src/base/files/file.o
| FAILED: src/base/files/file.o
| clang++ -target x86_64-linux=C2=A0 -MMD -MF src/base/files/file.o.d -I../=
../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64=
-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -p=
ipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/10=
6.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP_HAS_N=
O_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunction-s=
ections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D__STDC_=
FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-color =
-Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17 -c ..=
/../../tools/gn/src/base/files/file.cc -o src/base/files/file.o
| In file included from ../../../tools/gn/src/base/files/file.cc:5:
| ../../../tools/gn/src/base/files/file.h:10:10: fatal error: 'string' file=
 not found
| #include <string>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~
| 1 error generated.
| [6/195] CXX src/base/files/file_enumerator.o
| FAILED: src/base/files/file_enumerator.o
| clang++ -target x86_64-linux=C2=A0 -MMD -MF src/base/files/file_enumerato=
r.o.d -I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/=
work/x86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/inc=
lude -O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/g=
n-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_L=
IBCPP_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -=
ffunction-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACRO=
S -D__STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnos=
tics-color -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3D=
c++17 -c ../../../tools/gn/src/base/files/file_enumerator.cc -o src/base/fi=
les/file_enumerator.o
| In file included from ../../../tools/gn/src/base/files/file_enumerator.cc=
:5:
| ../../../tools/gn/src/base/files/file_enumerator.h:11:10: fatal error: 'v=
ector' file not found
| #include <vector>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~
| 1 error generated.
| ninja: build stopped: subcommand failed.
| Traceback (most recent call last):
|=C2=A0 =C2=A0File "/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-n=
ative/106.0.5249.119-r0/chromium-106.0.5249.119/tools/gn/bootstrap/bootstra=
p.py", line 141, in <module>
|=C2=A0 =C2=A0 =C2=A0sys.exit(main(sys.argv[1:]))
|=C2=A0 =C2=A0File "/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-n=
ative/106.0.5249.119-r0/chromium-106.0.5249.119/tools/gn/bootstrap/bootstra=
p.py", line 126, in main
|=C2=A0 =C2=A0 =C2=A0subprocess.check_call(
|=C2=A0 =C2=A0File "/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-n=
ative/106.0.5249.119-r0/recipe-sysroot-native/usr/lib/python3.8/subprocess.=
py", line 364, in check_call
|=C2=A0 =C2=A0 =C2=A0raise CalledProcessError(retcode, cmd)
| subprocess.CalledProcessError: Command '['ninja', '-C', '/home/jovanbosic=
/Yocto/build/tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/chromium-106=
.0.5249.119/out/Release/gn_build', '-w', 'dupbuild=3Derr', 'gn']' returned =
non-zero exit status 1.
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/g=
n-native/106.0.5249.119-r0/temp/run.do_compile.2197284' failed with exit co=
de 1
ERROR: Task (/home/jovanbosic/Yocto/meta-browser/meta-chromium/recipes-brow=
ser/chromium/gn-native_106.0.5249.119.bb:do_compile) failed with exit code =
'1'

Maybe there is a problem with some libraries?

--NSBjOtQmD9Rr9v8iOq3L
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Can someone help me to solve this issue? I am not sure what can be the prob=
lem since me and my colleague did the exact same steps, and on his machine =
everything is done without any error and I am receiving constantly this one=
:<br /><br /><br />
<div>ERROR: gn-native-106.0.5249.119-r0 do_compile: Execution of '/home/jov=
anbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/temp/=
run.do_compile.2197284' failed with exit code 1</div>
<div>ERROR: Logfile of failure stored in: /home/jovanbosic/Yocto/build/tmp/=
work/x86_64-linux/gn-native/106.0.5249.119-r0/temp/log.do_compile.2197284</=
div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| ninja: Entering directory `/home/jovanbosic/Yocto/build/tmp/work/x86=
_64-linux/gn-native/106.0.5249.119-r0/chromium-106.0.5249.119/out/Release/g=
n_build'</div>
<div>| [1/195] CXX src/base/files/file_path_constants.o</div>
<div>| FAILED: src/base/files/file_path_constants.o</div>
<div>| clang++ -target x86_64-linux&nbsp; -MMD -MF src/base/files/file_path=
_constants.o.d -I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/b=
uild/tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-nativ=
e/usr/include -O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_6=
4-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -=
pipe -D_LIBCPP_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-s=
ections -ffunction-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONST=
ANT_MACROS -D__STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti =
-fdiagnostics-color -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wunde=
f -std=3Dc++17 -c ../../../tools/gn/src/base/files/file_path_constants.cc -=
o src/base/files/file_path_constants.o</div>
<div>| ../../../tools/gn/src/base/files/file_path_constants.cc:7:10: fatal =
error: 'iterator' file not found</div>
<div>| #include &lt;iterator&gt;</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div>
<div>| 1 error generated.</div>
<div>| [2/195] CXX src/base/command_line.o</div>
<div>| FAILED: src/base/command_line.o</div>
<div>| clang++ -target x86_64-linux&nbsp; -MMD -MF src/base/command_line.o.=
d -I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work=
/x86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include=
 -O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-na=
tive/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCP=
P_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffun=
ction-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D=
__STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics=
-color -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++1=
7 -c ../../../tools/gn/src/base/command_line.cc -o src/base/command_line.o<=
/div>
<div>| In file included from ../../../tools/gn/src/base/command_line.cc:5:<=
/div>
<div>| ../../../tools/gn/src/base/command_line.h:19:10: fatal error: 'map' =
file not found</div>
<div>| #include &lt;map&gt;</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~</div>
<div>| 1 error generated.</div>
<div>| [3/195] CXX src/base/environment.o</div>
<div>| FAILED: src/base/environment.o</div>
<div>| clang++ -target x86_64-linux&nbsp; -MMD -MF src/base/environment.o.d=
 -I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/=
x86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include =
-O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-nat=
ive/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP=
_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunc=
tion-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D_=
_STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-=
color -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17=
 -c ../../../tools/gn/src/base/environment.cc -o src/base/environment.o</di=
v>
<div>| In file included from ../../../tools/gn/src/base/environment.cc:5:</=
div>
<div>| ../../../tools/gn/src/base/environment.h:8:10: fatal error: 'map' fi=
le not found</div>
<div>| #include &lt;map&gt;</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~</div>
<div>| 1 error generated.</div>
<div>| [4/195] CXX src/base/files/file_path.o</div>
<div>| FAILED: src/base/files/file_path.o</div>
<div>| clang++ -target x86_64-linux&nbsp; -MMD -MF src/base/files/file_path=
.o.d -I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/w=
ork/x86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/incl=
ude -O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn=
-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LI=
BCPP_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -f=
function-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS=
 -D__STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnost=
ics-color -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc=
++17 -c ../../../tools/gn/src/base/files/file_path.cc -o src/base/files/fil=
e_path.o</div>
<div>| In file included from ../../../tools/gn/src/base/files/file_path.cc:=
5:</div>
<div>| ../../../tools/gn/src/base/files/file_path.h:107:10: fatal error: 'i=
osfwd' file not found</div>
<div>| #include &lt;iosfwd&gt;</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~</div>
<div>| 1 error generated.</div>
<div>| [5/195] CXX src/base/files/file.o</div>
<div>| FAILED: src/base/files/file.o</div>
<div>| clang++ -target x86_64-linux&nbsp; -MMD -MF src/base/files/file.o.d =
-I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/x=
86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -=
O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-nati=
ve/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP_=
HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunct=
ion-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D__=
STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-c=
olor -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17 =
-c ../../../tools/gn/src/base/files/file.cc -o src/base/files/file.o</div>
<div>| In file included from ../../../tools/gn/src/base/files/file.cc:5:</d=
iv>
<div>| ../../../tools/gn/src/base/files/file.h:10:10: fatal error: 'string'=
 file not found</div>
<div>| #include &lt;string&gt;</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~</div>
<div>| 1 error generated.</div>
<div>| [6/195] CXX src/base/files/file_enumerator.o</div>
<div>| FAILED: src/base/files/file_enumerator.o</div>
<div>| clang++ -target x86_64-linux&nbsp; -MMD -MF src/base/files/file_enum=
erator.o.d -I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build=
/tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/us=
r/include -O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-li=
nux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe=
 -D_LIBCPP_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-secti=
ons -ffunction-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_=
MACROS -D__STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdi=
agnostics-color -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -s=
td=3Dc++17 -c ../../../tools/gn/src/base/files/file_enumerator.cc -o src/ba=
se/files/file_enumerator.o</div>
<div>| In file included from ../../../tools/gn/src/base/files/file_enumerat=
or.cc:5:</div>
<div>| ../../../tools/gn/src/base/files/file_enumerator.h:11:10: fatal erro=
r: 'vector' file not found</div>
<div>| #include &lt;vector&gt;</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~</div>
<div>| 1 error generated.</div>
<div>| ninja: build stopped: subcommand failed.</div>
<div>| Traceback (most recent call last):</div>
<div>|&nbsp; &nbsp;File "/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux=
/gn-native/106.0.5249.119-r0/chromium-106.0.5249.119/tools/gn/bootstrap/boo=
tstrap.py", line 141, in &lt;module&gt;</div>
<div>|&nbsp; &nbsp; &nbsp;sys.exit(main(sys.argv[1:]))</div>
<div>|&nbsp; &nbsp;File "/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux=
/gn-native/106.0.5249.119-r0/chromium-106.0.5249.119/tools/gn/bootstrap/boo=
tstrap.py", line 126, in main</div>
<div>|&nbsp; &nbsp; &nbsp;subprocess.check_call(</div>
<div>|&nbsp; &nbsp;File "/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux=
/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/lib/python3.8/subpro=
cess.py", line 364, in check_call</div>
<div>|&nbsp; &nbsp; &nbsp;raise CalledProcessError(retcode, cmd)</div>
<div>| subprocess.CalledProcessError: Command '['ninja', '-C', '/home/jovan=
bosic/Yocto/build/tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/chromiu=
m-106.0.5249.119/out/Release/gn_build', '-w', 'dupbuild=3Derr', 'gn']' retu=
rned non-zero exit status 1.</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Execution of '/home/jovanbosic/Yocto/build/tmp/work/x86_64-li=
nux/gn-native/106.0.5249.119-r0/temp/run.do_compile.2197284' failed with ex=
it code 1</div>
<div>ERROR: Task (/home/jovanbosic/Yocto/meta-browser/meta-chromium/recipes=
-browser/chromium/gn-native_106.0.5249.119.bb:do_compile) failed with exit =
code '1'<br /><br /><br /><br />Maybe there is a problem with some librarie=
s?&nbsp;</div>
&nbsp; &nbsp;

--NSBjOtQmD9Rr9v8iOq3L--

