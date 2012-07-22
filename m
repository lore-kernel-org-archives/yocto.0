Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04293E0142A
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 19:32:07 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so10426614pbb.35
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 19:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=RttXrtMhRhHG1j09apombkeCVgTvHFaSetqnnbWabnM=;
	b=nxjYkYKylGp5BwXadZssY9+L6LVLXI7vFHxtLllXn0xzeaZPuRF6Al4ZbvbRnHF/D2
	p/BCQut6swrFUqyDNrY+suWHOWAjp8kXJ2SbKKyr/3l2K2aKZS2lDky4zGoISvFivTza
	oqqUcZcaA6Ig3LFQRt0SDAEKin6P9xkF7fo0LOYtM8g23LZ8iEJGliOgqGSZ158Y4lYr
	w7+7DVgqf+ZDP5OkY4qt8Dh3dKvFf5hMR9ddhbfyN3NNuOhNEw3mawQ9rwFB7uU1tu/x
	a2xlIMpShaFPZBakJLV2Qf1cOUtW8yci3muaid++RfmnC3ALERob0C4fYlzajlRMMICJ
	IGng==
Received: by 10.68.130.163 with SMTP id of3mr25626219pbb.108.1342924327625;
	Sat, 21 Jul 2012 19:32:07 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id iw10sm6449416pbc.55.2012.07.21.19.32.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 21 Jul 2012 19:32:06 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sun, 22 Jul 2012 06:32:01 +0400
Message-Id: <6CD04095-FB33-40CA-9417-CF4208642BDC@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: cmake-native-2.8.5-r2.1 compile error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 22 Jul 2012 02:32:08 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_421CAEE8-0190-4A49-898C-D2DC68A0908D"

--Apple-Mail=_421CAEE8-0190-4A49-898C-D2DC68A0908D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      With the latest update to the yocto repos, as of today, I get a =
compile error for cmake-native-2.8.5-r2.1, when trying to bitbake =
core-image-sato.=20

This had also happened yesterday, when I tried to build core-image-sato, =
from the master branch, which was updated 2 to 3 weeks ago. I tried with =
the latest updates, and still the error persists.=20

DEBUG: Executing shell function do_compile
NOTE: make -j 6
Scanning dependencies of target cmsys_c
Scanning dependencies of target cmzlib
[  0%] Scanning dependencies of target cmcompress
Building C object Source/kwsys/CMakeFiles/cmsys_c.dir/ProcessUNIX.c.o
Scanning dependencies of target cmsys
Scanning dependencies of target cmbzip2
[  0%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.o
[  0%] [  0%] Building C object =
Utilities/cmcompress/CMakeFiles/cmcompress.dir/cmcompress.c.o
[  0%] Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/blocksort.c.o
Building C object Source/kwsys/CMakeFiles/cmsys.dir/ProcessUNIX.c.o
[  0%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.o
Linking C static library libcmcompress.a
[  0%] Built target cmcompress
[  1%] Scanning dependencies of target cmlibarchive
Building C object Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/huffman.c.o
[  2%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.o
[  2%] Building C object =
Utilities/cmlibarchive/libarchive/CMakeFiles/cmlibarchive.dir/archive_chec=
k_magic.c.o
In file included from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_private.h:35:0,
                 from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_check_magic.c:48:
=
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive.h:369:63: error: =
unknown type name 'FILE'
=
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive.h:555:64: error: =
unknown type name 'FILE'
In file included from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_string.h:44:0,
                 from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_private.h:36,
                 from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_check_magic.c:48:
/usr/include/wchar.h:577:1: error: unknown type name '__FILE'
/usr/include/wchar.h:584:19: error: unknown type name '__FILE'
/usr/include/wchar.h:591:22: error: unknown type name '__FILE'
/usr/include/wchar.h:609:23: error: unknown type name '__FILE'
/usr/include/wchar.h:632:21: error: unknown type name '__FILE'
/usr/include/wchar.h:653:12: error: unknown type name '__FILE'
/usr/include/wchar.h:686:22: error: unknown type name '__FILE'
/usr/include/wchar.h:707:12: error: unknown type name '__FILE'
/usr/include/wchar.h:742:23: error: unknown type name '__FILE'
/usr/include/wchar.h:743:22: error: unknown type name '__FILE'
/usr/include/wchar.h:756:37: error: unknown type name '__FILE'
/usr/include/wchar.h:757:36: error: unknown type name '__FILE'
/usr/include/wchar.h:772:4: error: unknown type name '__FILE'
/usr/include/wchar.h:779:6: error: unknown type name '__FILE'
/usr/include/wchar.h:786:37: error: unknown type name '__FILE'
In file included from /usr/include/wchar.h:881:0,
                 from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_string.h:44,
                 from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_private.h:36,
                 from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_check_magic.c:48:
/usr/include/x86_64-linux-gnu/bits/wchar2.h:328:28: error: unknown type =
name '__FILE'
/usr/include/x86_64-linux-gnu/bits/wchar2.h:332:29: error: unknown type =
name '__FILE'
/usr/include/x86_64-linux-gnu/bits/wchar2.h:346:11: error: unknown type =
name '__FILE'
/usr/include/x86_64-linux-gnu/bits/wchar2.h:365:12: error: unknown type =
name '__FILE'
/usr/include/x86_64-linux-gnu/bits/wchar2.h:374:10: error: unknown type =
name '__FILE'
/usr/include/x86_64-linux-gnu/bits/wchar2.h:375:17: error: unknown type =
name '__FILE'
/usr/include/x86_64-linux-gnu/bits/wchar2.h:378:17: error: unknown type =
name '__FILE'
/usr/include/x86_64-linux-gnu/bits/wchar2.h:385:43: error: unknown type =
name '__FILE'
make[2]: *** =
[Utilities/cmlibarchive/libarchive/CMakeFiles/cmlibarchive.dir/archive_che=
ck_magic.c.o] Error 1
make[1]: *** =
[Utilities/cmlibarchive/libarchive/CMakeFiles/cmlibarchive.dir/all] =
Error 2
make[1]: *** Waiting for unfinished jobs....
[  2%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.o
[  2%] [  2%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzio.c.o
Building C object Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/crctable.c.o
[  2%] Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/randtable.c.o
[  3%] Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/compress.c.o
[  4%] Building C object Source/kwsys/CMakeFiles/cmsys_c.dir/Base64.c.o
[  4%] [  5%] Building C object =
Source/kwsys/CMakeFiles/cmsys.dir/Base64.c.o
Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/decompress.c.o
[  5%] Building C object Source/kwsys/CMakeFiles/cmsys_c.dir/MD5.c.o
[  5%] Building C object Source/kwsys/CMakeFiles/cmsys.dir/MD5.c.o
[  5%] Building C object =
Source/kwsys/CMakeFiles/cmsys_c.dir/Terminal.c.o
[  5%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.o
[  6%] [  6%] Building C object =
Source/kwsys/CMakeFiles/cmsys_c.dir/System.c.o
Building C object Source/kwsys/CMakeFiles/cmsys_c.dir/String.c.o
[  7%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.o
[  7%] Building C object Source/kwsys/CMakeFiles/cmsys.dir/Terminal.c.o
[  7%] Building C object Source/kwsys/CMakeFiles/cmsys.dir/System.c.o
[  7%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.o
[  8%] Building C object Source/kwsys/CMakeFiles/cmsys.dir/String.c.o
Linking C static library libcmsys_c.a
[  8%] Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/Directory.cxx.o
[  8%] Built target cmsys_c
[  8%] Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/bzlib.c.o
[  8%] Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/DynamicLoader.cxx.o
[  8%] Building CXX object Source/kwsys/CMakeFiles/cmsys.dir/Glob.cxx.o
[  9%] Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/RegularExpression.cxx.o
[  9%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.o
[  9%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.o
[ 10%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.o
[ 10%] Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/SystemTools.cxx.o
[ 10%] Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/CommandLineArguments.cxx.o
Linking C static library libcmbzip2.a
[ 10%] Linking C static library libcmzlib.a
Building CXX object Source/kwsys/CMakeFiles/cmsys.dir/Registry.cxx.o
[ 10%] Built target cmbzip2
[ 11%] Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/IOStream.cxx.o
[ 11%] Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/SystemInformation.cxx.o
[ 11%] Built target cmzlib
Linking CXX static library libcmsys.a
[ 11%] Built target cmsys
make: *** [all] Error 2
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/temp/=
log.do_compile.60499 for further information)

Elvis Dowson=

--Apple-Mail=_421CAEE8-0190-4A49-898C-D2DC68A0908D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; With the latest update to the yocto =
repos, as of today, I get a compile error =
for&nbsp;cmake-native-2.8.5-r2.1, when trying to bitbake =
core-image-sato.&nbsp;</div><div><br></div><div>This had also happened =
yesterday, when I tried to build core-image-sato, from the master =
branch, which was updated 2 to 3 weeks ago. I tried with the latest =
updates, and still the error =
persists.&nbsp;</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DEBUG: Executing =
shell function do_compile</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: make -j =
6</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Scanning dependencies of target =
cmsys_c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Scanning dependencies of target cmzlib</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;0%] =
Scanning dependencies of target cmcompress</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Building C object =
Source/kwsys/CMakeFiles/cmsys_c.dir/ProcessUNIX.c.o</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Scanning =
dependencies of target cmsys</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Scanning =
dependencies of target cmbzip2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;0%] =
Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/adler32.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;0%] [ =
&nbsp;0%] Building C object =
Utilities/cmcompress/CMakeFiles/cmcompress.dir/cmcompress.c.o</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ =
&nbsp;0%] Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/blocksort.c.o</font></div><div><f=
ont class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Building C =
object =
Source/kwsys/CMakeFiles/cmsys.dir/ProcessUNIX.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;0%] =
Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/compress.c.o</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linking C static =
library libcmcompress.a</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp;0%] Built target =
cmcompress</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp;1%] Scanning dependencies of target =
cmlibarchive</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/huffman.c.o</font></div><div><fon=
t class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;2%] =
Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/crc32.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;2%] =
Building C object =
Utilities/cmlibarchive/libarchive/CMakeFiles/cmlibarchive.dir/archive_chec=
k_magic.c.o</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">In file included from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_private.h:35:0,</font></d=
iv><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_check_magic.c:48:</font><=
/div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5=
-r2.1/cmake-2.8.5/Utilities/cmlibarchive/libarchive/archive.h:369:63: =
error: unknown type name 'FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5=
-r2.1/cmake-2.8.5/Utilities/cmlibarchive/libarchive/archive.h:555:64: =
error: unknown type name 'FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">In file included =
from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_string.h:44:0,</font></di=
v><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_private.h:36,</font></div=
><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_check_magic.c:48:</font><=
/div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/usr/include/wchar.h:577:1: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:584:19: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:591:22: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:609:23: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:632:21: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:653:12: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:686:22: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:707:12: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:742:23: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:743:22: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:756:37: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:757:36: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:772:4: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:779:6: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">/usr/include/wchar.h:786:37: error: unknown type name =
'__FILE'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">In file included from =
/usr/include/wchar.h:881:0,</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_string.h:44,</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_private.h:36,</font></div=
><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/cmake=
-2.8.5/Utilities/cmlibarchive/libarchive/archive_check_magic.c:48:</font><=
/div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/usr/include/x86_64-linux-gnu/bits/wchar2.h:328:28: error: =
unknown type name '__FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/usr/include/x86_64-linux-gnu/bits/wchar2.h:332:29: error: =
unknown type name '__FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/usr/include/x86_64-linux-gnu/bits/wchar2.h:346:11: error: =
unknown type name '__FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/usr/include/x86_64-linux-gnu/bits/wchar2.h:365:12: error: =
unknown type name '__FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/usr/include/x86_64-linux-gnu/bits/wchar2.h:374:10: error: =
unknown type name '__FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/usr/include/x86_64-linux-gnu/bits/wchar2.h:375:17: error: =
unknown type name '__FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/usr/include/x86_64-linux-gnu/bits/wchar2.h:378:17: error: =
unknown type name '__FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/usr/include/x86_64-linux-gnu/bits/wchar2.h:385:43: error: =
unknown type name '__FILE'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">make[2]: *** =
[Utilities/cmlibarchive/libarchive/CMakeFiles/cmlibarchive.dir/archive_che=
ck_magic.c.o] Error 1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">make[1]: *** =
[Utilities/cmlibarchive/libarchive/CMakeFiles/cmlibarchive.dir/all] =
Error 2</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">make[1]: *** Waiting for unfinished =
jobs....</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp;2%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/deflate.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;2%] [ =
&nbsp;2%] Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/gzio.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/crctable.c.o</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;2%] =
Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/randtable.c.o</font></div><div><f=
ont class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;3%] =
Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/compress.c.o</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;4%] =
Building C object =
Source/kwsys/CMakeFiles/cmsys_c.dir/Base64.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;4%] [ =
&nbsp;5%] Building C object =
Source/kwsys/CMakeFiles/cmsys.dir/Base64.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/decompress.c.o</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;5%] =
Building C object =
Source/kwsys/CMakeFiles/cmsys_c.dir/MD5.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;5%] =
Building C object =
Source/kwsys/CMakeFiles/cmsys.dir/MD5.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;5%] =
Building C object =
Source/kwsys/CMakeFiles/cmsys_c.dir/Terminal.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;5%] =
Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inffast.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;6%] [ =
&nbsp;6%] Building C object =
Source/kwsys/CMakeFiles/cmsys_c.dir/System.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Building C object =
Source/kwsys/CMakeFiles/cmsys_c.dir/String.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;7%] =
Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inflate.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;7%] =
Building C object =
Source/kwsys/CMakeFiles/cmsys.dir/Terminal.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;7%] =
Building C object =
Source/kwsys/CMakeFiles/cmsys.dir/System.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;7%] =
Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/inftrees.c.o</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;8%] =
Building C object =
Source/kwsys/CMakeFiles/cmsys.dir/String.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linking C static =
library libcmsys_c.a</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp;8%] Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/Directory.cxx.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;8%] Built =
target cmsys_c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp;8%] Building C object =
Utilities/cmbzip2/CMakeFiles/cmbzip2.dir/bzlib.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;8%] =
Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/DynamicLoader.cxx.o</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;8%] =
Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/Glob.cxx.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;9%] =
Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/RegularExpression.cxx.o</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;9%] =
Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/trees.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp;9%] =
Building C object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/uncompr.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ 10%] Building C =
object =
Utilities/cmzlib/CMakeFiles/cmzlib.dir/zutil.c.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ 10%] Building =
CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/SystemTools.cxx.o</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ 10%] Building =
CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/CommandLineArguments.cxx.o</font></div><=
div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linking =
C static library libcmbzip2.a</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ 10%] Linking C =
static library libcmzlib.a</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Building CXX =
object =
Source/kwsys/CMakeFiles/cmsys.dir/Registry.cxx.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ 10%] Built =
target cmbzip2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ 11%] Building CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/IOStream.cxx.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ 11%] Building =
CXX object =
Source/kwsys/CMakeFiles/cmsys.dir/SystemInformation.cxx.o</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ 11%] =
Built target cmzlib</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Linking CXX static library =
libcmsys.a</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ 11%] Built target =
cmsys</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">make: *** [all] Error 2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: oe_runmake =
failed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/x86_64-linux/cmake-native-2.8.5-r2.1/temp/=
log.do_compile.60499 for further =
information)</font></div></div><div><br></div><div>Elvis =
Dowson</div></body></html>=

--Apple-Mail=_421CAEE8-0190-4A49-898C-D2DC68A0908D--
