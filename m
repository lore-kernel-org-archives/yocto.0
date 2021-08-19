Subject: Issue baking a new layer for a custom kernel #kernel
To: yocto@lists.yoctoproject.org
From: "nagesh shamnur" <nagesh.shamnur@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.220.119)
X-Originating-Platform: Linux Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Aug 2021 09:02:37 -0700
Message-ID: <FaAm.1629388957926929267.SWXt@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="65kaG68WTcnnRc5OeQbo"

--65kaG68WTcnnRc5OeQbo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Group,
I am trying to add a new layer for a custom RTOS which supports RISCV32 arc=
hitecture. When i run bitbake i bumped into following error:
"
ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedd=
ed/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: QA I=
ssue: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedde=
d/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: Varia=
ble RDEPENDS is set as not being package specific, please fix this. [pkgvar=
check]
ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedd=
ed/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: QA I=
ssue: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedde=
d/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: Varia=
ble RRECOMMENDS is set as not being package specific, please fix this. [pkg=
varcheck]
ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedd=
ed/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: Fata=
l QA errors found, failing task.
ERROR: Failed to parse recipe: /home/gitee-ohos/ohos/AllScenariosOS/sources=
/poky/../meta-openembedded/meta-python/recipes-devtools/python/python3-zope=
interface_4.7.1.bb
WARNING: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembe=
dded/meta-python/recipes-devtools/python/python3-yappi_1.0.bb: Cooker recei=
ved SIGTERM, shutting down...
ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedd=
ed/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: QA Issue:=
 /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedded/met=
a-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: Variable RDEPEN=
DS is set as not being package specific, please fix this. [pkgvarcheck]
ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedd=
ed/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: QA Issue:=
 /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedded/met=
a-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: Variable RRECOM=
MENDS is set as not being package specific, please fix this. [pkgvarcheck]
ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedd=
ed/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: Fatal QA =
errors found, failing task.
WARNING: Cooker received SIGTERM, shutting down...
WARNING: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembe=
dded/meta-python/recipes-devtools/python/python3-zipp_0.6.0.bb: Cooker rece=
ived SIGTERM, shutting down...
WARNING: Cooker received SIGTERM, shutting down...
WARNING: Cooker received SIGTERM, shutting down...
WARNING: Cooker received SIGTERM, shutting down...
WARNING: Cooker received SIGTERM, shutting down...
WARNING: Cooker received SIGTERM, shutting down...
WARNING: Cooker received SIGTERM, shutting down...
WARNING: Cooker received SIGTERM, shutting down...
WARNING: Cooker received SIGTERM, shutting down...
WARNING: Cooker received SIGTERM, shutting down...

Summary: There were 12 WARNING messages shown.
Summary: There were 7 ERROR messages shown, returning a non-zero exit code.
"

Looking for the exact line which might have created a problem, found out th=
at the issue is happening in the following line
"PACKAGES =3D. "${PN}-test " from the file ./meta-openembedded/meta-python/=
recipes-devtools/python/python3-zopeinterface_4.7.1.bb.

i have tried the following options, but none of them have helped in solving=
 the issue.
1) I suspected that missing python3native might have resulted in the proble=
m and included "inherit python3native" in my recipe file,
2) Also checked for presence of RDEPENDS in my recipe file as below: "LAYER=
DEPENDS_xxx =3D"core meta-python"

Please suggest a way out of this issue.

Thanks!

--65kaG68WTcnnRc5OeQbo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Group,<br />&nbsp;&nbsp; I am trying to add a new layer for a custom =
RTOS which supports RISCV32 architecture. When i run bitbake i bumped into =
following error:<br />"<br />ERROR: /home/gitee-ohos/ohos/AllScenariosOS/so=
urces/poky/../meta-openembedded/meta-python/recipes-devtools/python/python3=
-zopeinterface_4.7.1.bb: QA Issue: /home/gitee-ohos/ohos/AllScenariosOS/sou=
rces/poky/../meta-openembedded/meta-python/recipes-devtools/python/python3-=
zopeinterface_4.7.1.bb: Variable RDEPENDS is set as not being package speci=
fic, please fix this. [pkgvarcheck]<br />ERROR: /home/gitee-ohos/ohos/AllSc=
enariosOS/sources/poky/../meta-openembedded/meta-python/recipes-devtools/py=
thon/python3-zopeinterface_4.7.1.bb: QA Issue: /home/gitee-ohos/ohos/AllSce=
nariosOS/sources/poky/../meta-openembedded/meta-python/recipes-devtools/pyt=
hon/python3-zopeinterface_4.7.1.bb: Variable RRECOMMENDS is set as not bein=
g package specific, please fix this. [pkgvarcheck]<br />ERROR: /home/gitee-=
ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedded/meta-python/reci=
pes-devtools/python/python3-zopeinterface_4.7.1.bb: Fatal QA errors found, =
failing task.<br />ERROR: Failed to parse recipe: /home/gitee-ohos/ohos/All=
ScenariosOS/sources/poky/../meta-openembedded/meta-python/recipes-devtools/=
python/python3-zopeinterface_4.7.1.bb<br />WARNING: /home/gitee-ohos/ohos/A=
llScenariosOS/sources/poky/../meta-openembedded/meta-python/recipes-devtool=
s/python/python3-yappi_1.0.bb: Cooker received SIGTERM, shutting down...<br=
 />ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openemb=
edded/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: QA Iss=
ue: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedded/=
meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: Variable RDE=
PENDS is set as not being package specific, please fix this. [pkgvarcheck]<=
br />ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-opene=
mbedded/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: QA I=
ssue: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedde=
d/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: Variable R=
RECOMMENDS is set as not being package specific, please fix this. [pkgvarch=
eck]<br />ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-=
openembedded/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb:=
 Fatal QA errors found, failing task.<br />WARNING: Cooker received SIGTERM=
, shutting down...<br />WARNING: /home/gitee-ohos/ohos/AllScenariosOS/sourc=
es/poky/../meta-openembedded/meta-python/recipes-devtools/python/python3-zi=
pp_0.6.0.bb: Cooker received SIGTERM, shutting down...<br />WARNING: Cooker=
 received SIGTERM, shutting down...<br />WARNING: Cooker received SIGTERM, =
shutting down...<br />WARNING: Cooker received SIGTERM, shutting down...<br=
 />WARNING: Cooker received SIGTERM, shutting down...<br />WARNING: Cooker =
received SIGTERM, shutting down...<br />WARNING: Cooker received SIGTERM, s=
hutting down...<br />WARNING: Cooker received SIGTERM, shutting down...<br =
/>WARNING: Cooker received SIGTERM, shutting down...<br />WARNING: Cooker r=
eceived SIGTERM, shutting down...<br /><br />Summary: There were 12 WARNING=
 messages shown.<br />Summary: There were 7 ERROR messages shown, returning=
 a non-zero exit code.<br />"<br /><br />Looking for the exact line which m=
ight have created a problem, found out that the issue is happening in the f=
ollowing line<br />"PACKAGES =3D. "${PN}-test " from the file ./meta-openem=
bedded/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb.<=
br /><br />i have tried the following options, but none of them have helped=
 in solving the issue.<br />1) I suspected that missing python3native might=
 have resulted in the problem and included "inherit python3native" in my re=
cipe file, <br />2) Also checked for presence of RDEPENDS in my recipe file=
 as below: "LAYERDEPENDS_xxx =3D"core meta-python" <br /><br />Please sugge=
st a way out of this issue.<br /><br /></p>
<p>Thanks!</p>

--65kaG68WTcnnRc5OeQbo--
