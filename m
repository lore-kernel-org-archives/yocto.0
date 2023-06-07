Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E1FFC8300C
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 09:12:38 +0000 (UTC)
Subject: sstate-cache issue with SPDX enabled
To: yocto@lists.yoctoproject.org
From: mwen@ambarella.com
X-Originating-Location: Shanghai, CN (116.246.37.178)
X-Originating-Platform: Windows Chrome 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 07 Jun 2023 08:32:50 -0700
Message-ID: <hJ5J.1686151970057523750.KtUg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zrIGHVFjiwaQ7GZAsoBL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 09:12:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60224

--zrIGHVFjiwaQ7GZAsoBL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We=E2=80=99re using Poky Kirkstone(LTS) with the latest version for our SDK=
. Recently, we're trying to enable the feature of creating SBOM in SPDX. Bu=
t we met a sstate-cache checking failure issue when enabling SPDX to genera=
te SBOM. It will be appreciated if you have any idea for the root cause. Re=
fer to below details for the issue.

https://docs.yoctoproject.org/4.0.10/singleindex.html#creating-a-software-b=
ill-of-materials ( https://urldefense.com/v3/__https:/docs.yoctoproject.org=
/4.0.10/singleindex.html*creating-a-software-bill-of-materials__;Iw!!PeEy7n=
ZLVv0!iEYzUu9NzMxHXrypN88tmMw1XE3I6xJIUHhsKfEvEXx92zX6oPews42VwnTYHjVn4vmJR=
2pk0CEn$ )

*=3D=3D=3D=3D Here is an easy way to reproduce the issue =3D=3D=3D=3D*

*1. pull cbuild-ng project*

jleng@shbuild8:/yocto/system-team/jleng$ git clone https://github.com/lengj=
ingzju/cbuild-ng.git ( https://urldefense.com/v3/__https:/github.com/lengji=
ngzju/cbuild-ng.git__;!!PeEy7nZLVv0!iEYzUu9NzMxHXrypN88tmMw1XE3I6xJIUHhsKfE=
vEXx92zX6oPews42VwnTYHjVn4vmJRzxUjhi5$ )

jleng@shbuild8:/yocto/system-team/jleng$ cd cbuild-ng

*2. Use the latest code of Yocto kirkstone and enable SBOM*

jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng$ git diff

diff --git a/scripts/yocto.env b/ scripts/yocto.env

index ed8bb35..b7f1316 100755

--- a/scripts/yocto.env

+++ b/scripts/yocto.env

@@ -60,7 +60,7 @@ export ENV_TOP_OUT ENV_CFG_ROOT

POKY_URL=3Dgit:// git.yoctoproject.org/poky ( https://urldefense.com/v3/__h=
ttp:/git.yoctoproject.org/poky__;!!PeEy7nZLVv0!iEYzUu9NzMxHXrypN88tmMw1XE3I=
6xJIUHhsKfEvEXx92zX6oPews42VwnTYHjVn4vmJR6uBUfNh$ )

POKY_BRANCH=3Dkirkstone

-POKY_REV=3D30656ea54de82cabb818f07af711b96211421c95

+POKY_REV=3D1e6f147c686a91b9a5996f529e32ee1852f946b7

POKY_PATH=3D${ENV_TOP_OUT}/poky

if [ ! -e "${POKY_PATH}" ]; then

@@ -101,6 +101,9 @@ EXTERNALSRC_SYMLINKS =3D ""

ENV_TOP_DIR =3D "${ENV_TOP_DIR}"

ENV_CFG_ROOT =3D "${ENV_CFG_ROOT}"

ENV_BUILD_MODE =3D "${ENV_BUILD_MODE}"

+

+INHERIT +=3D "create-spdx"

+SPDX_PRETTY =3D "1"

EOF

*3. First build, success*

jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng$ source scripts/yocto.env

jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/qemux86-64$ bitbake=
 kconfig-native

*4. Remove output and re-build, report an error*

jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/qemux86-64$ cd -

jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng$ rm -rf build/qemux86-64

jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng$ source scripts/yocto.env

jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/qemux86-64$ bitbake=
 kconfig-native

/usr/lib/python3/dist-packages/html5lib/_trie/_base.py:3: DeprecationWarnin=
g: Using or importing the ABCs from 'collections' instead of from 'collecti=
ons.abc' is deprecated since Python 3.3, and in 3.10 it will stop working

from collections import Mapping

WARNING: You are using a local hash equivalence server but have configured =
an sstate mirror. This will likely mean no sstate will match from the mirro=
r. You may wish to disable the hash equivalence use (BB_HASHSERVE), or use =
a hash equivalence server alongside the sstate mirror.

Loading cache: 100% |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | ETA:=C2=A0 --:--:--

Loaded 0 entries from dependency cache.

Parsing recipes: 100% |####################################################=
######################################################################| Tim=
e: 0:00:05

Parsing of 885 .bb files complete (0 cached, 885 parsed). 1647 targets, 44 =
skipped, 0 masked, 0 errors.

NOTE: Resolving any missing task queue dependencies

Build Configuration:

BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"2.0.0"

BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "x86_64-linux"

NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "ubuntu-20.04"

TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"x86_64-poky-linux"

MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "qemux86-64"

DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "poky"

DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "4.0.10"

TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "m64 core2"

TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
""

meta

meta-poky

meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "kirkstone:1e6f147c6=
86a91b9a5996f529e32ee1852f946b7"

meta-cbuild=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "main=
:10f9581f393bf67cd06e8849bad409ba91d4d9ad"

Initialising tasks: 100% |#################################################=
######################################################################| Tim=
e: 0:00:00

Sstate summary: Wanted 37 Local 37 Mirrors 0 Missed 0 Current 0 (100% match=
, 0% complete)

NOTE: Executing Tasks

ERROR: kconfig-native-1.0-r0 do_create_spdx: Error executing a python funct=
ion in exec_func_python() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:

File: 'exec_func_python() autogenerated', lineno: 2, function: <module>

0001:

*** 0002:do_create_spdx(d)

0003:

File: '/yocto/system-team/jleng/cbuild-ng/build/poky/meta/classes/create-sp=
dx.bbclass', lineno: 521, function: do_create_spdx

0517:

0518:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
archive is not None:

0519:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 recipe.packageFileName =3D str( recipe_archive.name (=
 https://urldefense.com/v3/__http:/recipe_archive.name__;!!PeEy7nZLVv0!iEYz=
Uu9NzMxHXrypN88tmMw1XE3I6xJIUHhsKfEvEXx92zX6oPews42VwnTYHjVn4vmJRzKP95UT$ )=
 )

0520:

*** 0521:=C2=A0=C2=A0=C2=A0 dep_recipes =3D collect_dep_recipes(d, doc, rec=
ipe)

0522:

0523:=C2=A0=C2=A0=C2=A0 doc_sha1 =3D oe.sbom.write_doc(d, doc, "recipes", i=
ndent=3Dget_json_indent(d))

0524:=C2=A0=C2=A0=C2=A0 dep_recipes.append(oe.sbom.DepRecipe(doc, doc_sha1,=
 recipe))

0525:

File: '/yocto/system-team/jleng/cbuild-ng/build/poky/meta/classes/create-sp=
dx.bbclass', lineno: 350, function: collect_dep_recipes

0346:=C2=A0=C2=A0=C2=A0 ))

0347:=C2=A0=C2=A0=C2=A0 for dep_pn in deps:

0348:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dep_recipe_path =3D deploy_=
dir_spdx / "recipes" / ("recipe-%s.spdx.json" % dep_pn)

0349:

*** 0350:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 spdx_dep_doc, spdx_dep_=
sha1 =3D oe.sbom.read_doc(dep_recipe_path)

0351:

0352:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for pkg in spdx_dep_doc.pac=
kages:

0353:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
pkg.name ( https://urldefense.com/v3/__http:/pkg.name__;!!PeEy7nZLVv0!iEYzU=
u9NzMxHXrypN88tmMw1XE3I6xJIUHhsKfEvEXx92zX6oPews42VwnTYHjVn4vmJR1_uoEsE$ ) =
=3D=3D dep_pn:

0354:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 spdx_dep_recipe =3D pkg

File: '/yocto/system-team/jleng/cbuild-ng/build/poky/meta/lib/oe/sbom.py', =
lineno: 67, function: read_doc

0063:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:

0064:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wit=
h fn.open("rb") as f:

0065:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 yield f

0066:

*** 0067:=C2=A0=C2=A0=C2=A0 with get_file() as f:

0068:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sha1 =3D hashlib.sha1()

0069:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 while True:

0070:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chu=
nk =3D f.read(4096)

0071:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
not chunk:

File: '/usr/lib/python3.8/contextlib.py', lineno: 113, function: __enter__

0109:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # do not keep args and kwds=
 alive unnecessarily

0110:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # they are only needed for =
recreation, which is not possible anymore

0111:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 del self.args, self.kwds, s=
elf.func

0112:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:

*** 0113:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return next(self.gen)

0114:=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0except StopIteration:

0115:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rai=
se RuntimeError("generator didn't yield") from None

0116:

0117:=C2=A0=C2=A0=C2=A0 def __exit__(self, type, value, traceback):

File: '/yocto/system-team/jleng/cbuild-ng/build/poky/meta/lib/oe/sbom.py', =
lineno: 64, function: get_file

0060:=C2=A0=C2=A0=C2=A0 def get_file():

0061:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if isinstance(fn, io.IOBase=
):

0062:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 yie=
ld fn

0063:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:

*** 0064:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 with fn.open("rb") as f:

0065:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 yield f

0066:

0067:=C2=A0=C2=A0=C2=A0 with get_file() as f:

0068:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sha1 =3D hashlib.sha1()

File: '/usr/lib/python3.8/pathlib.py', lineno: 1222, function: open

1218:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 the built-in open() functio=
n does.

1219:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 """

1220:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if self._closed:

1221:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sel=
f._raise_closed()

*** 1222:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return io.open(self, mo=
de, buffering, encoding, errors, newline,

1223:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 opener=3Dse=
lf._opener)

1224:

1225:=C2=A0=C2=A0=C2=A0 def read_bytes(self):

1226:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 """

File: '/usr/lib/python3.8/pathlib.py', lineno: 1078, function: _opener

1074:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise ValueError("I/O opera=
tion on closed path")

1075:

1076:=C2=A0=C2=A0=C2=A0 def _opener(self, name, flags, mode=3D0o666):

1077:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # A stub for the opener arg=
ument to built-in open()

*** 1078:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return self._accessor.o=
pen(self, flags, mode)

1079:

1080:=C2=A0=C2=A0=C2=A0 def _raw_open(self, flags, mode=3D0o777):

1081:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 """

1082:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Open the file pointed by th=
is path and return a file descriptor,

Exception: FileNotFoundError: [Errno 2] No such file or directory: '/yocto/=
system-team/jleng/cbuild-ng/build/qemux86-64/tmp/deploy/spdx/qemux86-64/rec=
ipes/recipe-autoconf-native.spdx.json'

ERROR: Logfile of failure stored in: /yocto/system-team/jleng/cbuild-ng/bui=
ld/qemux86-64/tmp/work/x86_64-linux/kconfig-native/1.0-r0/temp/log.do_creat=
e_spdx.1001451

ERROR: Task (virtual:native:/yocto/system-team/jleng/cbuild-ng/scripts/meta=
-cbuild/recipes-devtools/kconfig/kconfig.bb:do_create_spdx) failed with exi=
t code '1'

NOTE: Tasks Summary: Attempted 133 tasks of which 128 didn't need to be rer=
un and 1 failed.

Summary: 1 task failed:

virtual:native:/yocto/system-team/jleng/cbuild-ng/scripts/meta-cbuild/recip=
es-devtools/kconfig/kconfig.bb:do_create_spdx

Summary: There was 1 WARNING message.

Summary: There was 1 ERROR message, returning a non-zero exit code.

jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/qemux86-64$ ls tmp/=
work/x86_64-linux/

bison-native=C2=A0 gettext-minimal-native=C2=A0 kconfig-native=C2=A0 m4-nat=
ive=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pkgconfig-native=C2=A0 texinfo-dumm=
y-native

flex-native=C2=A0=C2=A0 gnu-config-native=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 libtool-native=C2=A0 ncurses-native=C2=A0 quilt-native=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 xz-native

*=3D=3D=3D=3D Currently, we found a workaround solution to fix this issue =
=3D=3D=3D=3D*

jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/poky$ git diff

diff --git a/meta/classes/sstate.bbclass b/ meta/classes/sstate.bbclass

index dd6cf12920..f47febeb32 100644

--- a/meta/classes/sstate.bbclass

+++ b/meta/classes/sstate.bbclass

@@ -1084,7 +1084,7 @@ def setscene_depvalid(task, taskdependees, notneeded,=
 d, log=3DNone):

logit("Considering setscene task: %s" % (str(taskdependees[task])), log)

-=C2=A0=C2=A0=C2=A0 directtasks =3D ["do_populate_lic", "do_deploy_source_d=
ate_epoch", "do_shared_workdir", "do_stash_locale", "do_gcc_stash_builddir"=
, "do_create_spdx" , "do_deploy_archives"]

+ =C2=A0=C2=A0=C2=A0directtasks =3D ["do_populate_lic", "do_deploy_source_d=
ate_epoch", "do_shared_workdir", "do_stash_locale", "do_gcc_stash_builddir"=
, "do_deploy_archives"]

def isNativeCross(x):

return x.endswith("-native") or "-cross-" in x or "-crosssdk" in x or x.end=
swith("-cross")

--zrIGHVFjiwaQ7GZAsoBL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"font-size: 12.0pt; font-family: &#39;Arial&#39;,sans-serif; =
mso-fareast-font-family: =E7=AD=89=E7=BA=BF; mso-fareast-theme-font: minor-=
fareast; color: #2e74b5; mso-ansi-language: EN-US; mso-fareast-language: ZH=
-CN; mso-bidi-language: AR-SA;">We=E2=80=99re using <u>Poky Kirkstone(LTS) =
with the latest version</u>=C2=A0</span><span style=3D"color: #2e74b5; font=
-family: Arial, sans-serif; font-size: 16px;">for our SDK.</span><span styl=
e=3D"font-size: 12.0pt; font-family: &#39;Arial&#39;,sans-serif; mso-fareas=
t-font-family: =E7=AD=89=E7=BA=BF; mso-fareast-theme-font: minor-fareast; c=
olor: #2e74b5; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-b=
idi-language: AR-SA;">=C2=A0</span><span style=3D"font-size: 12.0pt; font-f=
amily: &#39;Arial&#39;,sans-serif; mso-fareast-font-family: =E7=AD=89=E7=BA=
=BF; mso-fareast-theme-font: minor-fareast; color: #2e74b5; mso-ansi-langua=
ge: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;">Recently=
, we&#39;re trying to enable the feature of creating SBOM in SPDX. But we m=
et a sstate-cache checking failure issue when enabling SPDX to generate SBO=
M. It will be appreciated if you have any idea for the root cause. Refer to=
 below details for the issue.<br/></span>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto; text-align: justify; text-justify: inter-ideograph;" st=
yle=3D"margin:0px;"><span style=3D"font-family: &#39;Arial&#39;,sans-serif;=
 color: #2e74b5;"><a href=3D"https://urldefense.com/v3/__https:/docs.yoctop=
roject.org/4.0.10/singleindex.html*creating-a-software-bill-of-materials__;=
Iw!!PeEy7nZLVv0!iEYzUu9NzMxHXrypN88tmMw1XE3I6xJIUHhsKfEvEXx92zX6oPews42VwnT=
YHjVn4vmJR2pk0CEn$" target=3D"_blank" rel=3D"noopener">https://docs.yoctopr=
oject.org/4.0.10/singleindex.html#creating-a-software-bill-of-materials</a>=
</span></p>
<br/>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><strong><span style=3D"font-size=
: 14.0pt; color: #1f497d;">=3D=3D=3D=3D Here is an easy way to reproduce th=
e issue =3D=3D=3D=3D</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><strong><span style=3D"color: #1=
f497d;">1. pull cbuild-ng project</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng$ <span style=3D"background: yellow;=
">git clone <a href=3D"https://urldefense.com/v3/__https:/github.com/lengji=
ngzju/cbuild-ng.git__;!!PeEy7nZLVv0!iEYzUu9NzMxHXrypN88tmMw1XE3I6xJIUHhsKfE=
vEXx92zX6oPews42VwnTYHjVn4vmJRzxUjhi5$" target=3D"_blank" rel=3D"noopener">=
https://github.com/lengjingzju/cbuild-ng.git</a></span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng$ <span style=3D"background: yellow;=
">cd cbuild-ng</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><strong><span style=3D"color: #1=
f497d;">2. Use the latest code of Yocto kirkstone and enable SBOM</span></s=
trong></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng$ git diff</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
diff --git a/scripts/yocto.env b/<span style=3D"background: yellow;">script=
s/yocto.env</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
index ed8bb35..b7f1316 100755</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
--- a/scripts/yocto.env</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
+++ b/scripts/yocto.env</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
@@ -60,7 +60,7 @@ export ENV_TOP_OUT ENV_CFG_ROOT</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
POKY_URL=3Dgit://<a href=3D"https://urldefense.com/v3/__http:/git.yoctoproj=
ect.org/poky__;!!PeEy7nZLVv0!iEYzUu9NzMxHXrypN88tmMw1XE3I6xJIUHhsKfEvEXx92z=
X6oPews42VwnTYHjVn4vmJR6uBUfNh$" target=3D"_blank" rel=3D"noopener">git.yoc=
toproject.org/poky</a></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
POKY_BRANCH=3Dkirkstone</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d; b=
ackground: yellow;">-POKY_REV=3D30656ea54de82cabb818f07af711b96211421c95</s=
pan></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d; b=
ackground: yellow;">+POKY_REV=3D1e6f147c686a91b9a5996f529e32ee1852f946b7</s=
pan></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
POKY_PATH=3D${ENV_TOP_OUT}/poky</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
if [ ! -e &#34;${POKY_PATH}&#34; ]; then</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
@@ -101,6 +101,9 @@ EXTERNALSRC_SYMLINKS =3D &#34;&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
ENV_TOP_DIR =3D &#34;${ENV_TOP_DIR}&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
ENV_CFG_ROOT =3D &#34;${ENV_CFG_ROOT}&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
ENV_BUILD_MODE =3D &#34;${ENV_BUILD_MODE}&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d; b=
ackground: yellow;">+</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d; b=
ackground: yellow;">+INHERIT +=3D &#34;create-spdx&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d; b=
ackground: yellow;">+SPDX_PRETTY =3D &#34;1&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
EOF</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><strong><span style=3D"color: #1=
f497d;">3. First build, success</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng$ <span style=3D"backgroun=
d: yellow;">source scripts/yocto.env</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/qemux86-64$ <span s=
tyle=3D"background: yellow;">bitbake kconfig-native</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><strong><span style=3D"color: re=
d;">4. Remove output and re-build, report an error</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/qemux86-64$ <span s=
tyle=3D"background: yellow;">cd -</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng$ <span style=3D"backgroun=
d: yellow;">rm -rf build/qemux86-64</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng$ <span style=3D"backgroun=
d: yellow;">source scripts/yocto.env</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/qemux86-64$ <span s=
tyle=3D"background: yellow;">bitbake kconfig-native</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
/usr/lib/python3/dist-packages/html5lib/_trie/_base.py:3: DeprecationWarnin=
g: Using or importing the ABCs from &#39;collections&#39; instead of from &=
#39;collections.abc&#39; is deprecated since Python 3.3, and in 3.10 it wil=
l stop working</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0 from collections import Mapping</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
WARNING: You are using a local hash equivalence server but have configured =
an sstate mirror. This will likely mean no sstate will match from the mirro=
r. You may wish to disable the hash equivalence use (BB_HASHSERVE), or use =
a hash equivalence server alongside the sstate mirror.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Loading cache: 100% |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 | ETA:=C2=A0 --:--:--</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Loaded 0 entries from dependency cache.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Parsing recipes: 100% |####################################################=
######################################################################| Tim=
e: 0:00:05</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Parsing of 885 .bb files complete (0 cached, 885 parsed). 1647 targets, 44 =
skipped, 0 masked, 0 errors.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
NOTE: Resolving any missing task queue dependencies</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Build Configuration:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
&#34;2.0.0&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D &#34;x86_64-linux&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#34;ubuntu-20.04&#34;</s=
pan></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
&#34;x86_64-poky-linux&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &#34;qemux86-64&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &#34;poky&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#34;4.0.10&#34;</sp=
an></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#34;m64 core2&=
#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
&#34;&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
meta</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
meta-poky</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#34;kirkstone:1e6f1=
47c686a91b9a5996f529e32ee1852f946b7&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
meta-cbuild=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &#34;=
main:10f9581f393bf67cd06e8849bad409ba91d4d9ad&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Initialising tasks: 100% |#################################################=
######################################################################| Tim=
e: 0:00:00</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Sstate summary: Wanted 37 Local 37 Mirrors 0 Missed 0 Current 0 (100% match=
, 0% complete)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
NOTE: Executing Tasks</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: red;">ERRO=
R: kconfig-native-1.0-r0 do_create_spdx: Error executing a python function =
in exec_func_python() autogenerated:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
The stack trace of python calls that resulted in this exception/failure was=
:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
File: &#39;exec_func_python() autogenerated&#39;, lineno: 2, function: &lt;=
module&gt;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0001:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
*** 0002:do_create_spdx(d)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0003:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
File: &#39;/yocto/system-team/jleng/cbuild-ng/build/poky/meta/classes/creat=
e-spdx.bbclass&#39;, lineno: 521, function: do_create_spdx</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0517:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0518:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if archive is not None:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0519:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 recipe.packageFileName =3D st=
r(<a href=3D"https://urldefense.com/v3/__http:/recipe_archive.name__;!!PeEy=
7nZLVv0!iEYzUu9NzMxHXrypN88tmMw1XE3I6xJIUHhsKfEvEXx92zX6oPews42VwnTYHjVn4vm=
JRzKP95UT$" target=3D"_blank" rel=3D"noopener">recipe_archive.name</a>)</sp=
an></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0520:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
*** 0521:=C2=A0=C2=A0=C2=A0 dep_recipes =3D collect_dep_recipes(d, doc, rec=
ipe)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0522:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0523:=C2=A0=C2=A0=C2=A0 doc_sha1 =3D oe.sbom.write=
_doc(d, doc, &#34;recipes&#34;, indent=3Dget_json_indent(d))</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0524:=C2=A0=C2=A0=C2=A0 dep_recipes.append(oe.sbom=
.DepRecipe(doc, doc_sha1, recipe))</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0525:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
File: &#39;/yocto/system-team/jleng/cbuild-ng/build/poky/meta/classes/creat=
e-spdx.bbclass&#39;, lineno: 350, function: collect_dep_recipes</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0346:=C2=A0=C2=A0=C2=A0 ))</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0347:=C2=A0=C2=A0=C2=A0 for dep_pn in deps:</span>=
</p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0348:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 de=
p_recipe_path =3D deploy_dir_spdx / &#34;recipes&#34; / (&#34;recipe-%s.spd=
x.json&#34; % dep_pn)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0349:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
*** 0350:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 spdx_dep_doc, spdx_dep_=
sha1 =3D oe.sbom.read_doc(dep_recipe_path)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0351:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0352:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fo=
r pkg in spdx_dep_doc.packages:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0353:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if <a href=3D"https://urldefense.com/v3/__http:/pkg.n=
ame__;!!PeEy7nZLVv0!iEYzUu9NzMxHXrypN88tmMw1XE3I6xJIUHhsKfEvEXx92zX6oPews42=
VwnTYHjVn4vmJR1_uoEsE$" target=3D"_blank" rel=3D"noopener">pkg.name</a> =3D=
=3D dep_pn:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0354:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 spdx_dep_recipe =3D pkg</span=
></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
File: &#39;/yocto/system-team/jleng/cbuild-ng/build/poky/meta/lib/oe/sbom.p=
y&#39;, lineno: 67, function: read_doc</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0063:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 el=
se:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0064:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 with fn.open(&#34;rb&#34;) as f:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0065:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 yield f</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0066:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
*** 0067:=C2=A0=C2=A0=C2=A0 with get_file() as f:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0068:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sh=
a1 =3D hashlib.sha1()</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0069:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wh=
ile True:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0070:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 chunk =3D f.read(4096)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0071:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if not chunk:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
File: &#39;/usr/lib/python3.8/contextlib.py&#39;, lineno: 113, function: __=
enter__</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0109:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # =
do not keep args and kwds alive unnecessarily</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0110:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # =
they are only needed for recreation, which is not possible anymore</span></=
p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0111:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 de=
l self.args, self.kwds, self.func</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0112:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tr=
y:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
*** 0113:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return next(self.gen)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0114:=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ex=
cept StopIteration:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0115:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise RuntimeError(&#34;generator didn&#39;t yield&#3=
4;) from None</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0116:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0117:=C2=A0=C2=A0=C2=A0 def __exit__(self, type, v=
alue, traceback):</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
File: &#39;/yocto/system-team/jleng/cbuild-ng/build/poky/meta/lib/oe/sbom.p=
y&#39;, lineno: 64, function: get_file</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0060:=C2=A0=C2=A0=C2=A0 def get_file():</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0061:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=
 isinstance(fn, io.IOBase):</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0062:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 yield fn</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0063:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 el=
se:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
*** 0064:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 with fn.open(&#34;rb&#34;) as f:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0065:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 yield f</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0066:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0067:=C2=A0=C2=A0=C2=A0 with get_file() as f:</spa=
n></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 0068:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sh=
a1 =3D hashlib.sha1()</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
File: &#39;/usr/lib/python3.8/pathlib.py&#39;, lineno: 1222, function: open=
</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1218:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 th=
e built-in open() function does.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1219:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &#=
34;&#34;&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1220:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=
 self._closed:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0 =C2=A0=C2=A0=C2=A01221:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 self._raise_closed()</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
*** 1222:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return io.open(self, mo=
de, buffering, encoding, errors, newline,</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1223:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 opener=3Dself._opener)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1224:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1225:=C2=A0=C2=A0=C2=A0 def read_bytes(self):</spa=
n></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1226:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &#=
34;&#34;&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
File: &#39;/usr/lib/python3.8/pathlib.py&#39;, lineno: 1078, function: _ope=
ner</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1074:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ra=
ise ValueError(&#34;I/O operation on closed path&#34;)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1075:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1076:=C2=A0=C2=A0=C2=A0 def _opener(self, name, fl=
ags, mode=3D0o666):</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1077:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # =
A stub for the opener argument to built-in open()</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
*** 1078:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return self._accessor.o=
pen(self, flags, mode)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1079:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1080:=C2=A0=C2=A0=C2=A0 def _raw_open(self, flags,=
 mode=3D0o777):</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1081:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &#=
34;&#34;&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 1082:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Op=
en the file pointed by this path and return a file descriptor,</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Exception: FileNotFoundError: [Errno 2] No such file or directory: &#39;/yo=
cto/system-team/jleng/cbuild-ng/build/qemux86-64/tmp/deploy/spdx/qemux86-64=
/recipes/recipe-autoconf-native.spdx.json&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
ERROR: Logfile of failure stored in: /yocto/system-team/jleng/cbuild-ng/bui=
ld/qemux86-64/tmp/work/x86_64-linux/kconfig-native/1.0-r0/temp/log.do_creat=
e_spdx.1001451</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
ERROR: Task (virtual:native:/yocto/system-team/jleng/cbuild-ng/scripts/meta=
-cbuild/recipes-devtools/kconfig/kconfig.bb:do_create_spdx) failed with exi=
t code &#39;1&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
NOTE: Tasks Summary: Attempted 133 tasks of which 128 didn&#39;t need to be=
 rerun and 1 failed.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Summary: 1 task failed:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0 virtual:native:/yocto/system-team/jleng/cbuild-ng/scripts/meta-cbuil=
d/recipes-devtools/kconfig/kconfig.bb:do_create_spdx</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Summary: There was 1 WARNING message.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
Summary: There was 1 ERROR message, returning a non-zero exit code.</span><=
/p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/qemux86-64$ <span s=
tyle=3D"background: yellow;">ls tmp/work/x86_64-linux/</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
bison-native=C2=A0 gettext-minimal-native=C2=A0 kconfig-native=C2=A0 m4-nat=
ive=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pkgconfig-native=C2=A0 texinfo-dumm=
y-native</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
flex-native=C2=A0=C2=A0 gnu-config-native=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 libtool-native=C2=A0 ncurses-native=C2=A0 quilt-native=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 xz-native</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><strong><span style=3D"font-size=
: 14.0pt; color: #1f497d;">=3D=3D=3D=3D Currently, we found a workaround so=
lution to fix this issue =3D=3D=3D=3D</span></strong></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
jleng@shbuild8:/yocto/system-team/jleng/cbuild-ng/build/poky$ git diff</spa=
n></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
diff --git a/meta/classes/sstate.bbclass b/<span style=3D"background: yello=
w;">meta/classes/sstate.bbclass</span></span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
index dd6cf12920..f47febeb32 100644</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
--- a/meta/classes/sstate.bbclass</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
+++ b/meta/classes/sstate.bbclass</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
@@ -1084,7 +1084,7 @@ def setscene_depvalid(task, taskdependees, notneeded,=
 d, log=3DNone):</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 logit(&#34;Considering setscene task: %s&#34; % (s=
tr(taskdependees[task])), log)</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d; b=
ackground: yellow;">-=C2=A0=C2=A0=C2=A0 directtasks =3D [&#34;do_populate_l=
ic&#34;, &#34;do_deploy_source_date_epoch&#34;, &#34;do_shared_workdir&#34;=
, &#34;do_stash_locale&#34;, &#34;do_gcc_stash_builddir&#34;, </span><span =
style=3D"color: #1f497d; background: red;">&#34;do_create_spdx&#34;</span><=
span style=3D"color: #1f497d; background: yellow;">, &#34;do_deploy_archive=
s&#34;]</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d; b=
ackground: yellow;">+ =C2=A0=C2=A0=C2=A0directtasks =3D [&#34;do_populate_l=
ic&#34;, &#34;do_deploy_source_date_epoch&#34;, &#34;do_shared_workdir&#34;=
, &#34;do_stash_locale&#34;, &#34;do_gcc_stash_builddir&#34;, &#34;do_deplo=
y_archives&#34;]</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0 def isNativeCross(x):</span></p>
<p class=3D"DefangedMsoNormal" style=3D"mso-margin-top-alt: auto; mso-margi=
n-bottom-alt: auto;" style=3D"margin:0px;"><span style=3D"color: #1f497d;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return x.endswith(&#34;-na=
tive&#34;) or &#34;-cross-&#34; in x or &#34;-crosssdk&#34; in x or x.endsw=
ith(&#34;-cross&#34;)</span></p>

--zrIGHVFjiwaQ7GZAsoBL--

