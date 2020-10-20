Subject: meta-flutter build
To: yocto@lists.yoctoproject.org
From: yuvaraj.velumani@denso-ten.com
X-Originating-Location: West Bloomfield, Michigan, US (206.181.20.218)
X-Originating-Platform: Windows Chrome 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 19 Oct 2020 22:55:11 -0700
Message-ID: <8aM2.1603173311133989262.CmtF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hYJjty8WYVRDB86yfjFh"

--hYJjty8WYVRDB86yfjFh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have downloaded meta-flutter from https://github.com/jwinarske/meta-flut=
ter. ( https://github.com/jwinarske/meta-flutter )
I tried to build the recipes using the below commands,
$ source poky/oe-init-build-env build
build$ bitbake flutter-engine

But it give me the following error
ERROR: Task
(/ poky/meta-flutter/recipes-graphics/flutter-engine/flutter-engine_git.bb=
:do_patch ( http://mio.ten.fujitsu.com/yvelumani/harmony/code/8155_agl/apps=
/apps_proc/poky/meta-flutter/recipes-graphics/flutter-engine/flutter-engine=
_git.bb:do_patch ) ) failed with exit code '1'
KeyError: 'meta-flutter'

I also tried building depo-tools manually (bitbake depot-tools), it give m=
e License issue. depot-tools was skipped: it has an incompatible license: G=
PLv3

Regards,
Yuvaraj

--hYJjty8WYVRDB86yfjFh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,&nbsp;<br /><br />I have downloaded meta-flutter from&nbsp;<a href=3D=
"https://github.com/jwinarske/meta-flutter" target=3D"_blank" rel=3D"noopen=
er">https://github.com/jwinarske/meta-flutter.</a><br />I tried to build th=
e recipes using the below commands,&nbsp;<br />$ source poky/oe-init-build-=
env build<br />build$ bitbake flutter-engine<br /><br />But it give me the =
following error<br />ERROR: Task<br /><span style=3D"color: #172b4d; font-f=
amily: 'Rounded Mplus 1p';">(/</span><a class=3D"external-link" style=3D"fo=
nt-family: 'Rounded Mplus 1p'; background-color: #ffffff; color: #0052cc;" =
href=3D"http://mio.ten.fujitsu.com/yvelumani/harmony/code/8155_agl/apps/app=
s_proc/poky/meta-flutter/recipes-graphics/flutter-engine/flutter-engine_git=
.bb:do_patch" rel=3D"nofollow">poky/meta-flutter/recipes-graphics/flutter-e=
ngine/flutter-engine_git.bb:do_patch</a><span style=3D"color: #172b4d; font=
-family: 'Rounded Mplus 1p';">) failed with exit code '1'<br /></span><span=
 style=3D"color: #172b4d; font-family: 'Rounded Mplus 1p';">KeyError: 'meta=
-flutter'<br /></span><span style=3D"color: #172b4d; font-family: 'Rounded =
Mplus 1p';"><span style=3D"color: #172b4d; font-family: 'Rounded Mplus 1p';=
"><br />I also tried building depo-tools manually (bitbake depot-tools), it=
 give me License issue.</span></span><hr /><span style=3D"color: #172b4d; f=
ont-family: 'Rounded Mplus 1p';"></span><s style=3D"color: #172b4d; font-fa=
mily: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu=
, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-serif;">depot-tools was=
 skipped: it has an incompatible license: GPLv3</s><span style=3D"color: #1=
72b4d; font-family: 'Rounded Mplus 1p';"><br /><br />Regards,<br />Yuvaraj<=
br /></span>

--hYJjty8WYVRDB86yfjFh--
