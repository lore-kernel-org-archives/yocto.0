Return-Path: <sasikumar.e@fdss.co.in>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C48C41513
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 14:20:35 +0000 (UTC)
Subject: Re: [yocto] runqemu qemux86-64
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "SasiKumar E" <sasikumar.e@fdss.co.in>
X-Originating-Location: Tiruchi, Tamil Nadu, IN (122.165.190.191)
X-Originating-Platform: Linux Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 May 2024 07:20:35 -0700
References: <CANNYZj8Vm-PZ+3ARi12HjqGZ0UnvMWqNYPsNRjg0zveTc0T9CA@mail.gmail.com>
In-Reply-To: <CANNYZj8Vm-PZ+3ARi12HjqGZ0UnvMWqNYPsNRjg0zveTc0T9CA@mail.gmail.com>
Message-ID: <9920.1716301235291965196@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="r3oIaZTXCf4bjKauV94G"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 14:20:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63154

--r3oIaZTXCf4bjKauV94G
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex

I am sasikumar,
I am an embedded design engineer, i am new to yocto Linux, i have done the =
step-by-step procedure provided in the yocto project quick build and was ab=
le to run QEMU, after that I tried to configure the machine name in local.c=
onf file and it failed
thus I again tried to run the QEMU by changing the values to default in loc=
al.conf file, it failed with the respective error

runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
runqemu - ERROR - /home/perdaa/poky/build/tmp/deploy/images/qemux86-64 not =
a directory valid DEPLOY_DIR_IMAGE
ls: cannot access '/home/perdaa/poky/build/tmp/deploy/images/qemux86-64/*.q=
emuboot.conf': No such file or directory
runqemu - ERROR - Command 'ls -t /home/perdaa/poky/build/tmp/deploy/images/=
qemux86-64/*.qemuboot.conf' returned non-zero exit status 2.
runqemu - INFO - Cleaning up
runqemu - INFO - Host uptime: 278.63

I totally=C2=A0 deleted the poky folder and again redone the process yet it=
 is still getting the error, how to resolve this

--r3oIaZTXCf4bjKauV94G
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex<br /><br />I am sasikumar,<br />I am an embedded design engineer, i=
 am new to yocto Linux, i have done the step-by-step procedure provided in =
the yocto project quick build and was able to run QEMU, after that I tried =
to configure the machine name in local.conf file and it failed<br />thus I =
again tried to run the QEMU by changing the values to default in local.conf=
 file, it failed with the respective error&nbsp;<br /><br /><span style=3D"=
color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue=
', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', =
'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; f=
ont-style: normal; font-variant-ligatures: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; white-space: pre-wrap; background-color: #fffff=
f; text-decoration-thickness: initial; text-decoration-style: initial; text=
-decoration-color: initial; display: inline !important; float: none;">runqe=
mu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...</span><br style=3D"=
box-sizing: border-box; overflow-wrap: break-word !important; color: #33333=
3; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans=
', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emo=
ji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: no=
rmal; font-variant-ligatures: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent:=
 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-decor=
ation-thickness: initial; text-decoration-style: initial; text-decoration-c=
olor: initial;" /><span style=3D"color: #333333; font-family: system-ui, 'S=
egoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, =
sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto=
 Color Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: p=
re-wrap; background-color: #ffffff; text-decoration-thickness: initial; tex=
t-decoration-style: initial; text-decoration-color: initial; display: inlin=
e !important; float: none;">runqemu - ERROR - /home/perdaa/poky/build/tmp/d=
eploy/images/qemux86-64 not a directory valid DEPLOY_DIR_IMAGE</span><br st=
yle=3D"box-sizing: border-box; overflow-wrap: break-word !important; color:=
 #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'No=
to Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe=
 UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-st=
yle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial;" /><span style=3D"color: #333333; font-family: system=
-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', =
Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'=
, 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-lig=
atures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-s=
pace: pre-wrap; background-color: #ffffff; text-decoration-thickness: initi=
al; text-decoration-style: initial; text-decoration-color: initial; display=
: inline !important; float: none;">ls: cannot access '/home/perdaa/poky/bui=
ld/tmp/deploy/images/qemux86-64/*.qemuboot.conf': No such file or directory=
</span><br style=3D"box-sizing: border-box; overflow-wrap: break-word !impo=
rtant; color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helveti=
ca Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color E=
moji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: =
16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color:=
 #ffffff; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial;" /><span style=3D"color: #333333; font-f=
amily: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liber=
ation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Seg=
oe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; fon=
t-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial; display: inline !important; float: none;">runqemu - ERROR - Command '=
ls -t /home/perdaa/poky/build/tmp/deploy/images/qemux86-64/*.qemuboot.conf'=
 returned non-zero exit status 2.</span><br style=3D"box-sizing: border-box=
; overflow-wrap: break-word !important; color: #333333; font-family: system=
-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', =
Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'=
, 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-lig=
atures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-s=
pace: pre-wrap; background-color: #ffffff; text-decoration-thickness: initi=
al; text-decoration-style: initial; text-decoration-color: initial;" /><spa=
n style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Hel=
vetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Col=
or Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-si=
ze: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-co=
lor: #ffffff; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; display: inline !important; float: n=
one;">runqemu - INFO - Cleaning up</span><br style=3D"box-sizing: border-bo=
x; overflow-wrap: break-word !important; color: #333333; font-family: syste=
m-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans',=
 Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol=
', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-li=
gatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-=
space: pre-wrap; background-color: #ffffff; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial;" /><sp=
an style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'He=
lvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Co=
lor Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-s=
ize: 16px; font-style: normal; font-variant-ligatures: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-c=
olor: #ffffff; text-decoration-thickness: initial; text-decoration-style: i=
nitial; text-decoration-color: initial; display: inline !important; float: =
none;">runqemu - INFO - Host uptime: 278.63</span><br /><br />I totally&nbs=
p; deleted the poky folder and again redone the process yet it is still get=
ting the error, how to resolve this

--r3oIaZTXCf4bjKauV94G--

