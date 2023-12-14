Return-Path: <sjhan@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A128C4332F
	for <webhook@archiver.kernel.org>; Thu, 14 Dec 2023 10:37:07 +0000 (UTC)
Subject: do_populate_sdk_ext failed
To: yocto@lists.yoctoproject.org
From: sjhan@ambarella.com
X-Originating-Location: Shanghai, CN (180.169.129.130)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 14 Dec 2023 02:36:57 -0800
Message-ID: <ZAxV.1702550217800962003.77Gz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cMC5oXV4jGm6unBEotrI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 10:37:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61886

--cMC5oXV4jGm6unBEotrI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all, recently I=C2=A0encountered a problem about some environment params=
 that we exported not being recognised and parsed properly when runnning th=
e command " *bitbake -c populate_sdk_ext ipcam-image* ".=C2=A0 For comparis=
on, " bitbake -c populate_sdk ipcam-image " can work perfectly.
Currently, I don't know how to dig out the root cause and resolve it accord=
ingly. Any help from here is appreciated.

*1. The error messages are as following:*
ERROR: ipcam-image-1.0-r0 do_populate_sdk_ext: Failed to generate filtered =
task list for extensible SDK:
### Shell environment set up for builds. ###
You can now run 'bitbake <target>'
Common targets are:
core-image-minimal
core-image-full-cmdline
core-image-sato
core-image-weston
meta-toolchain
meta-ide-support
You can also run generated qemu images with a command like 'runqemu qemux86=
-64'.
Other commonly useful commands are:
- 'devtool' and 'recipetool' handle common recipe tasks
- 'bitbake-layers' handles common layer tasks
- 'oe-pkgdata-util' handles common target package tasks
ERROR: bitbake failed:
Loading cache...done.
Loaded 0 entries from dependency cache.
Parsing recipes...ERROR: /yocto/system/sjhan/re_sdk/sdk_1.5/topdir/out/yoct=
o_out/cv2_chestnut/tmp/work/cv2x-poky-linux/ipcam-image/1.0-r0/sdk-ext/imag=
e/tmp-renamed-sdk/layers/meta-ambalib/recipes-sensor/OMC/omc-ov2778-datas/ =
omc-ov2778-datas_1.0.0.bb : EXTERNALSRC must be an absolute path *
*...........................

*2. Take one recipe as example.*
*Because of the "EXTERNALSRC" in our recipes contain the environment params=
, so I added some=C2=A0printing informations* in " meta/classes/externalsrc=
.bbclass " *to* print the value of externalsrc after error messages *.
Then I found that some=C2=A0environment variables can be parsed but others =
cannot.*
Parsing recipes...ERROR: /yocto/system/sjhan/re_sdk/sdk_1.5/topdir/out/yoct=
o_out/cv2_chestnut/tmp/work/cv2x-poky-linux/ipcam-image/1.0-r0/sdk-ext/imag=
e/tmp-renamed-sdk/layers/meta-ambalib/recipes-sensor/OMC/omc-ov2778-datas/o=
mc-ov2778-datas_1.0.0.bb: *EXTERNALSRC must be an absolute path* : ${ENV_TO=
P_DIR} /packages/idsp/data/ img_cv2x /OMC/ov2778

These are the content of this recipe: omc-ov2778-datas_1.0.0.bbappend.
inherit externalsrc
EXTERNALSRC =3D " ${ENV_TOP_DIR} /packages/idsp/data/ img_${AMBA_IMG_ARCH} =
/OMC/ov2778"
EXTERNALSRC_BUILD =3D "${ENV_TOP_DIR}/packages/idsp/data/img_${AMBA_IMG_ARC=
H}/OMC/ov2778"
The environment params here are exported in ambaenv.bbclass. And we inherit=
 this bbclass in omc-ov2778-datas_1.0.0.bb.
*3. Continue tracking.
I tried to trace the poky source code. The code execution flow is as below.=
 I also put the code piece here about where the error occurred.*

* poky/meta/lib/oe/copy_buildsystem.py:=C2=A0 =C2=A0=C2=A0check_sstate_task=
_list(). In this function, it runs *bb.process.run(cmd, stderr=3Dsubprocess=
.STDOUT, env=3Denv, cwd=3Dcwd, executable=3D'/bin/bash')* , the *cmd* here =
is ". layers/poky/oe-init-build-env . ;PYTHONDONTWRITEBYTECODE=3D1 BB_SETSC=
ENE_ENFORCE=3D1 PSEUDO_DISABLED=3D1 oe-check-sstate ipcam-image meta-extsdk=
-toolchain:do_populate_sysroot -s -o /yocto/system/sjhan/re_sdk/sdk_1.5/amb=
arella/out/yocto_out/cv2_chestnut/tmp/work/cv2x-poky-linux/ipcam-image/1.0-=
r0/tasklist.txt -l /yocto/system/sjhan/re_sdk/sdk_1.5/ambarella/out/yocto_o=
ut/cv2_chestnut/tmp/work/cv2x-poky-linux/ipcam-image/1.0-r0/tasklist_bb_log=
.txt ".
* poky/scripts/oe-check-sstate:=C2=A0 =C2=A0 check(). In this function, it =
runs *output =3D subprocess.check_output(cmd, stderr=3Dsubprocess.STDOUT, e=
nv=3Denv)* , the *cmd* here is " ['bitbake', '--dry-run', '--runall=3Dbuild=
', 'ipcam-image', 'meta-extsdk-toolchain:do_populate_sysroot'] "

*Then, the error occured.

4. Other informations maybe help.
* I enter the directory tmp/work/cv2x-poky-linux/ipcam-image/1.0-r0/sdk-ext=
/image/tmp-renamed-sdk and rerun the command ". layers/poky/oe-init-build-e=
nv . " and " bitbake --dty-run --runall=3Dbuild ipcam-image ", I can reprod=
uce this issue.
If I don't rerun ". layers/poky/oe-init-build-env . " but just run " bitbak=
e --dty-run --runall=3Dbuild ipcam-image ", it can pass. *

*

--cMC5oXV4jGm6unBEotrI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all, recently I&nbsp;encountered a problem about some environment params=
 that we exported not being recognised and parsed properly when runnning th=
e command "<strong>bitbake -c populate_sdk_ext ipcam-image</strong>".&nbsp;=
 For comparison, "<span style=3D"font-weight: bold;">bitbake -c populate_sd=
k ipcam-image</span>" can work perfectly.<br />Currently, I don't know how =
to dig out the root cause and resolve it accordingly. Any help from here is=
 appreciated.<br /><br /><strong>1. The error messages are as following:</s=
trong><br />
<div><span style=3D"background-color: #dbdbdb;">ERROR: ipcam-image-1.0-r0 d=
o_populate_sdk_ext: Failed to generate filtered task list for extensible SD=
K:</span></div>
<div><span style=3D"background-color: #dbdbdb;">### Shell environment set u=
p for builds. ###</span></div>
<div><span style=3D"background-color: #dbdbdb;">You can now run 'bitbake &l=
t;target&gt;'</span></div>
<div><span style=3D"background-color: #dbdbdb;">Common targets are:</span><=
/div>
<div><span style=3D"background-color: #dbdbdb;">&nbsp; &nbsp; core-image-mi=
nimal</span></div>
<div><span style=3D"background-color: #dbdbdb;">&nbsp; &nbsp; core-image-fu=
ll-cmdline</span></div>
<div><span style=3D"background-color: #dbdbdb;">&nbsp; &nbsp; core-image-sa=
to</span></div>
<div><span style=3D"background-color: #dbdbdb;">&nbsp; &nbsp; core-image-we=
ston</span></div>
<div><span style=3D"background-color: #dbdbdb;">&nbsp; &nbsp; meta-toolchai=
n</span></div>
<div><span style=3D"background-color: #dbdbdb;">&nbsp; &nbsp; meta-ide-supp=
ort</span></div>
<div><span style=3D"background-color: #dbdbdb;">You can also run generated =
qemu images with a command like 'runqemu qemux86-64'.</span></div>
<div><span style=3D"background-color: #dbdbdb;">Other commonly useful comma=
nds are:</span></div>
<div><span style=3D"background-color: #dbdbdb;">&nbsp;- 'devtool' and 'reci=
petool' handle common recipe tasks</span></div>
<div><span style=3D"background-color: #dbdbdb;">&nbsp;- 'bitbake-layers' ha=
ndles common layer tasks</span></div>
<div><span style=3D"background-color: #dbdbdb;">&nbsp;- 'oe-pkgdata-util' h=
andles common target package tasks</span></div>
<span style=3D"background-color: #dbdbdb;">ERROR: bitbake failed:</span><br=
 />
<div><span style=3D"background-color: #dbdbdb;">Loading cache...done.</span=
></div>
<div><span style=3D"background-color: #dbdbdb;">Loaded 0 entries from depen=
dency cache.</span></div>
<div><span style=3D"background-color: #dbdbdb;">Parsing recipes...ERROR: /y=
octo/system/sjhan/re_sdk/sdk_1.5/topdir/out/yocto_out/cv2_chestnut/tmp/work=
/cv2x-poky-linux/ipcam-image/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/me=
ta-ambalib/recipes-sensor/OMC/omc-ov2778-datas/<span style=3D"background-co=
lor: #ffff99;">omc-ov2778-datas_1.0.0.bb</span>: <span style=3D"background-=
color: #ff99cc;">EXTERNALSRC must be an absolute path</span><strong><br /><=
/strong>...........................<br /><br /></span><strong>2. Take one r=
ecipe as example.</strong></div>
<strong>Because of the "EXTERNALSRC" in our recipes contain the environment=
 params, so I added some&nbsp;printing informations&nbsp;</strong><span sty=
le=3D"font-weight: bold;">in "<span style=3D"background-color: #ffff99;">me=
ta/classes/externalsrc.bbclass</span>"&nbsp;</span><strong>to&nbsp;</strong=
><span style=3D"font-weight: bold;">print the value of&nbsp;<span style=3D"=
background-color: #ffff99;">externalsrc</span>&nbsp;after error messages</s=
pan><strong>. <br />Then I found that some&nbsp;environment variables can b=
e parsed but others cannot.</strong><br /><span style=3D"background-color: =
#dbdbdb;"><span style=3D"background-color: #dbdbdb;">Parsing recipes...ERRO=
R: /yocto/system/sjhan/re_sdk/sdk_1.5/topdir/out/yocto_out/cv2_chestnut/tmp=
/work/cv2x-poky-linux/ipcam-image/1.0-r0/sdk-ext/image/tmp-renamed-sdk/laye=
rs/meta-ambalib/recipes-sensor/OMC/omc-ov2778-datas/omc-ov2778-datas_1.0.0.=
bb: <span style=3D"background-color: #ff99cc;"><strong>EXTERNALSRC must be =
an absolute path</strong></span>: <span style=3D"background-color: #ccffcc;=
">${ENV_TOP_DIR}</span>/packages/idsp/data/<span style=3D"background-color:=
 #ccffcc;">img_cv2x</span>/OMC/ov2778<br /><br /><span style=3D"font-weight=
: bold; background-color: #ffffff;">These are the content of this recipe:&n=
bsp;</span><span style=3D"background-color: #ffff99;">omc-ov2778-datas_1.0.=
0.bbappend</span><span style=3D"font-weight: bold; background-color: #fffff=
f;">.</span><span><br /></span></span></span>
<div style=3D"line-height: 1.42857;"><span style=3D"background-color: #dbdb=
db;">inherit externalsrc</span></div>
<div style=3D"line-height: 1.42857;"><span style=3D"background-color: #dbdb=
db;">EXTERNALSRC =3D "<span style=3D"background-color: #ccffcc;">${ENV_TOP_=
DIR}</span>/packages/idsp/data/<span style=3D"background-color: #ccffcc;">i=
mg_${AMBA_IMG_ARCH}</span>/OMC/ov2778"</span></div>
<div style=3D"line-height: 1.42857;"><span style=3D"background-color: #dbdb=
db;">EXTERNALSRC_BUILD =3D "${ENV_TOP_DIR}/packages/idsp/data/img_${AMBA_IM=
G_ARCH}/OMC/ov2778"</span></div>
<div style=3D"line-height: 1.42857; background-color: #ffffff;"><span style=
=3D"font-weight: bold;">The environment params here are exported in <span s=
tyle=3D"background-color: #ffff99;">ambaenv.bbclass</span>. And we inherit =
this bbclass in&nbsp;</span><span style=3D"background-color: #ffff99;">omc-=
ov2778-datas_1.0.0.bb</span><span style=3D"font-weight: bold;">.</span></di=
v>
<strong>3. Continue tracking.<br />I tried to trace the poky source code. T=
he code execution flow is as below. I also put the code piece here about wh=
ere the error occurred.</strong><br />
<ul>
<li><span style=3D"background-color: #ffff99;">poky/meta/lib/oe/copy_builds=
ystem.py:&nbsp; &nbsp;&nbsp;check_sstate_task_list().</span>In this functio=
n, it runs <strong>bb.process.run(cmd, stderr=3Dsubprocess.STDOUT, env=3Den=
v, cwd=3Dcwd, executable=3D'/bin/bash')</strong>, the <strong>cmd</strong>&=
nbsp;here is "<span style=3D"background-color: #dbdbdb;"><span style=3D"bac=
kground-color: #ccffcc;">. layers/poky/oe-init-build-env .</span>;PYTHONDON=
TWRITEBYTECODE=3D1 BB_SETSCENE_ENFORCE=3D1 PSEUDO_DISABLED=3D1 <span style=
=3D"background-color: #ccffcc;">oe-check-sstate</span> ipcam-image meta-ext=
sdk-toolchain:do_populate_sysroot -s -o /yocto/system/sjhan/re_sdk/sdk_1.5/=
ambarella/out/yocto_out/cv2_chestnut/tmp/work/cv2x-poky-linux/ipcam-image/1=
.0-r0/tasklist.txt -l /yocto/system/sjhan/re_sdk/sdk_1.5/ambarella/out/yoct=
o_out/cv2_chestnut/tmp/work/cv2x-poky-linux/ipcam-image/1.0-r0/tasklist_bb_=
log.txt</span>".</li>
<li><span style=3D"background-color: #ffff99;">poky/scripts/oe-check-sstate=
:&nbsp; &nbsp; check().</span> In this function, it runs&nbsp;<strong>outpu=
t =3D subprocess.check_output(cmd, stderr=3Dsubprocess.STDOUT, env=3Denv)</=
strong>, the <strong>cmd</strong> here is "<span style=3D"background-color:=
 #dbdbdb;">['bitbake', '--dry-run', '--runall=3Dbuild', 'ipcam-image', 'met=
a-extsdk-toolchain:do_populate_sysroot']</span>"</li>
</ul>
<strong>Then, the error occured.<br /><br />4. Other informations maybe hel=
p.<br /></strong><span style=3D"background-color: #ffffff;">I enter the dir=
ectory <span style=3D"background-color: #dbdbdb;">tmp/work/cv2x-poky-linux/=
ipcam-image/1.0-r0/sdk-ext/image/tmp-renamed-sdk</span> and rerun the comma=
nd "<span style=3D"background-color: #ccffcc;">. layers/poky/oe-init-build-=
env .</span>" and "<span style=3D"background-color: #ccffcc;">bitbake --dty=
-run --runall=3Dbuild ipcam-image</span>", I can reproduce this issue.<br /=
></span>If I don't rerun "<span style=3D"background-color: #ccffcc;">. laye=
rs/poky/oe-init-build-env .<span style=3D"background-color: #ffffff;">" but=
 just run "</span></span><span style=3D"background-color: #ccffcc;">bitbake=
 --dty-run --runall=3Dbuild ipcam-image</span><span style=3D"background-col=
or: #ccffcc;"><span style=3D"background-color: #ffffff;">", it can pass.</s=
pan></span><strong><br /><br /></strong>

--cMC5oXV4jGm6unBEotrI--

