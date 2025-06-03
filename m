Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09F16C5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 07:54:36 +0000 (UTC)
Subject: Pseudo abort errors
To: yocto@lists.yoctoproject.org
From: arthur52666@gmail.com
X-Originating-Location: Tokyo, JP (64.104.44.103)
X-Originating-Platform: Mac Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 Jun 2025 00:40:11 -0700
Message-ID: <yPaz.1748936411817721858.TsVf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="35o4Cx5W2BftMnTOxRgo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 07:54:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65454

--35o4Cx5W2BftMnTOxRgo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

H i Experts,

I am building Embedded Linux image based on Yocto framework. The image buil=
ding involves a lot of recipe execution.

when building the image I always get below pseudo abort error :

>=20
>=20
>=20
> Pseudo log:
>=20
>=20
>=20
> path mismatch [1 link]: ino 147610407 db '/tmp/sh-thd.VPxkGG' req
> '/tmp/sh-thd.4Z7cxB'.
>=20
>=20
>=20
>=20
>=20
>=20

I tried to build the image multiple times, 100% got the error every time, b=
ut the error was reported at different recipe every time. I've read the wik=
i page about them, but I'm not sure exactly what we are doing wrong that is=
 making this happen. The files listed in the error log should be shell tmp =
files.

The most recently I built the image, the error was reported at autoconf-arc=
hive recipe. Below is the build error log:

>=20
>=20
>=20
> ecs-915:/shr/router/yocto/poky > cat
> /shr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/p=
seudo//pseudo.log
>=20
>=20
>=20
>=20
> debug_logfile: fd 2
>=20
>=20
>=20
> pid 1068009 [parent 1068008], doing new pid setup and server start
>=20
>=20
>=20
> Setup complete, sending SIGUSR1 to pid 1068008.
>=20
>=20
>=20
> path mismatch [1 link]: ino 147610407 db '/tmp/sh-thd.VPxkGG' req
> '/tmp/sh-thd.4Z7cxB'.
>=20
>=20
>=20
> db cleanup for server shutdown, 11:03:48.420
>=20
>=20
>=20
> memory-to-file backup complete, 11:03:48.420.
>=20
>=20
>=20
> db cleanup finished, 11:03:48.420
>=20
>=20
>=20
> ecs-915:/shr/router/yocto/poky >
>=20
>=20
>=20
> ecs-915:/shr/router/yocto/poky >
>=20
>=20
>=20
> ecs-915:/shr/router/yocto/poky >
>=20
>=20
>=20
> ecs-915:/shr/router/yocto/poky >
>=20
>=20
>=20
> ecs-915:/shr/router/yocto/poky > cat
> /shr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/t=
emp/log.do_package_write_ipk.1068364
>=20
>=20
>=20
>=20
> DEBUG: Executing python function extend_recipe_sysroot
>=20
>=20
>=20
> NOTE: Direct dependencies are
> ['virtual:native:/shr/router/yocto/poky/../poky/meta/recipes-devtools/opk=
g-utils/opkg-utils_0.5.0.bb:do_populate_sysroot',
> 'virtual:native:/shr/router/yocto/poky/../poky/meta/recipes-devtools/pseu=
do/pseudo_git.bb:do_populate_sysroot',
> 'virtual:native:/shr/router/yocto/poky/../poky/meta/recipes-extended/xz/x=
z_5.2.6.bb:do_populate_sysroot']
>=20
>=20
>=20
>=20
> NOTE: Installed into sysroot: ['opkg-utils-native', 'perl-native',
> 'make-native']
>=20
>=20
>=20
> NOTE: Skipping as already exists in sysroot: ['pseudo-native',
> 'xz-native', 'libtool-native', 'gettext-minimal-native', 'zlib-native',
> 'gdbm-native', 'texinfo-dummy-native']
>=20
>=20
>=20
> DEBUG: sed -e
> 's:^[^/]*/:/shr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022=
.02.11-r0/recipe-sysroot-native/:g'
> /shr/router/build/tmp/sysroots-components/x86_64/perl-native/fixmepath |
> xargs sed -i -e
> 's:FIXMESTAGINGDIRTARGET:/shr/router/build/tmp/work/all-shr-linux/autocon=
f-archive/2022.02.11-r0/recipe-sysroot:g;
> s:FIXMESTAGINGDIRHOST:/shr/router/build/tmp/work/all-shr-linux/autoconf-a=
rchive/2022.02.11-r0/recipe-sysroot-native:g'
> -e
> 's:FIXME_PSEUDO_SYSROOT:/shr/router/build/tmp/sysroots-components/x86_64/=
pseudo-native:g'
> -e 's:FIXME_HOSTTOOLS_DIR:/shr/router/build/tmp/hosttools:g' -e
> 's:FIXME_PKGDATA_DIR:/shr/router/build/tmp/pkgdata/axel-qca:g' -e
> 's:FIXME_PSEUDO_LOCALSTATEDIR:/shr/router/build/tmp/work/all-shr-linux/au=
toconf-archive/2022.02.11-r0/pseudo/:g'
> -e
> 's:FIXME_LOGFIFO:/shr/router/build/tmp/work/all-shr-linux/autoconf-archiv=
e/2022.02.11-r0/temp/fifo.1068364:g'
>=20
>=20
>=20
>=20
> DEBUG: Python function extend_recipe_sysroot finished
>=20
>=20
>=20
> DEBUG: Executing python function sstate_task_prefunc
>=20
>=20
>=20
> DEBUG: Python function sstate_task_prefunc finished
>=20
>=20
>=20
> DEBUG: Executing python function do_package_write_ipk
>=20
>=20
>=20
> DEBUG: Executing python function read_subpackage_metadata
>=20
>=20
>=20
> DEBUG: Python function read_subpackage_metadata finished
>=20
>=20
>=20
> DEBUG: Executing python function do_package_ipk
>=20
>=20
>=20
> NOTE: Not creating empty archive for autoconf-archive-src-2022.02.11-r0
>=20
>=20
>=20
> ERROR: Fatal errors occurred in subprocesses:
>=20
>=20
>=20
> Command
> 'PATH=3D"/shr/router/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/s=
hr/router/yocto/poky/scripts:/shr/router/build/tmp/work/all-shr-linux/autoc=
onf-archive/2022.02.11-r0/recipe-sysroot-native/usr/bin/allarch-shr-linux:/=
shr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/reci=
pe-sysroot/usr/bin/crossscripts:/shr/router/build/tmp/work/all-shr-linux/au=
toconf-archive/2022.02.11-r0/recipe-sysroot-native/usr/sbin:/shr/router/bui=
ld/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/recipe-sysroot-nat=
ive/usr/bin:/shr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022.=
02.11-r0/recipe-sysroot-native/sbin:/shr/router/build/tmp/work/all-shr-linu=
x/autoconf-archive/2022.02.11-r0/recipe-sysroot-native/bin:/shr/router/yoct=
o/poky/bitbake/bin:/shr/router/build/tmp/hosttools"
> opkg-build -Z xz -a "--memlimit=3D50% --threads=3D16" autoconf-archive-do=
c
> /shr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/d=
eploy-ipks/all'
> died with <Signals.SIGABRT: 6>.
>=20
>=20
>=20
> Subprocess output:abort()ing pseudo client by server request. See https:/=
/wiki.yoctoproject.org/wiki/Pseudo_Abort
> for more details on this.
>=20
>=20
>=20
> Check logfile:
> /shr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/p=
seudo//pseudo.log
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> DEBUG: Python function do_package_ipk finished
>=20
>=20
>=20
> DEBUG: Python function do_package_write_ipk finished
>=20
>=20
>=20
> sjc-ads-7501:/shr/router/yocto/poky >
>=20
>=20

Here is the pseudo.log from the most recent failure. I know a lot of propri=
etary context is missing for anyone in the OSS community to give super conf=
ident answers, but I appreciate any suggestions.

Some context here:

1. I are running Yocto build command inside a docker container, rather than=
 a metal Linux server

2. I saw the pseudo abort error reported at multiple recipes such as autoco=
nf-native, ncurses

3. T he same error was still reported when executing Yocto build command to=
 do single recipe build.

Thanks for your time and any suggestions.

Mario

--35o4Cx5W2BftMnTOxRgo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span style=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-farea=
st-font-family: &#39;Times New Roman&#39;; color: #333333; mso-font-kerning=
: 0pt; mso-ligatures: none;">H</span><span lang=3D"EN-US" style=3D"font-fam=
ily: &#39;Segoe UI&#39;,sans-serif; mso-fareast-font-family: &#39;Times New=
 Roman&#39;; color: #333333; mso-font-kerning: 0pt; mso-ligatures: none; ms=
o-ansi-language: EN-US;">i Experts,</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=C2=
=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">I am =
building Embedded Linux image based on Yocto framework. The image building =
involves a lot of recipe execution.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;"><span=
 lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-fa=
reast-font-family: &#39;Times New Roman&#39;; color: #333333; mso-font-kern=
ing: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">when building the=
 image </span>I always get below </span><span style=3D"font-family: &#39;Se=
goe UI&#39;,sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;;=
 color: #333333; mso-font-kerning: 0pt; mso-ligatures: none;">pseudo abort =
error </span><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,=
sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333=
333; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;"=
>:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=C2=
=A0</span></p>
<blockquote>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;, s=
ans-serif; color: #333333;">Pseudo log:</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;, s=
ans-serif; color: #333333;">path mismatch [1 link]: ino 147610407 db &#39;/=
tmp/sh-thd.VPxkGG&#39; req &#39;/tmp/sh-thd.4Z7cxB&#39;.</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=C2=
=A0</span></p>
</blockquote>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">I tri=
ed to build the image multiple times, 100% got the error every time, but th=
e error was reported at different recipe every time. </span><span style=3D"=
font-family: &#39;Segoe UI&#39;,sans-serif; mso-fareast-font-family: &#39;T=
imes New Roman&#39;; color: #333333; mso-font-kerning: 0pt; mso-ligatures: =
none;">I&#39;ve read the wiki page about them, but I&#39;m not sure exactly=
 what we are doing wrong that is making this happen. The files listed in th=
e error log </span><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI=
&#39;,sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color=
: #333333; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: E=
N-US;">should be shell tmp</span><span lang=3D"EN-US" style=3D"font-family:=
 &#39;Segoe UI&#39;,sans-serif; mso-fareast-font-family: &#39;Times New Rom=
an&#39;; color: #333333; mso-font-kerning: 0pt; mso-ligatures: none;"> </sp=
an><span style=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-fareast-f=
ont-family: &#39;Times New Roman&#39;; color: #333333; mso-font-kerning: 0p=
t; mso-ligatures: none;">files.</span><span lang=3D"EN-US" style=3D"font-fa=
mily: &#39;Segoe UI&#39;,sans-serif; mso-fareast-font-family: &#39;Times Ne=
w Roman&#39;; color: #333333; mso-font-kerning: 0pt; mso-ligatures: none; m=
so-ansi-language: EN-US;"></span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=C2=
=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">The m=
ost recently I built the image, the error was reported at autoconf-archive =
recipe. Below is the build error log:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=C2=
=A0</span></p>
<blockquote>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">e=
cs-915:/shr/router/yocto/poky &gt; cat /shr/router/build/tmp/work/all-shr-l=
inux/autoconf-archive/2022.02.11-r0/pseudo//pseudo.log</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">d=
ebug_logfile: fd 2</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">p=
id 1068009 [parent 1068008], doing new pid setup and server start</span></e=
m></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">S=
etup complete, sending SIGUSR1 to pid 1068008.</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">p=
ath mismatch [1 link]: ino 147610407 db &#39;/tmp/sh-thd.VPxkGG&#39; req &#=
39;/tmp/sh-thd.4Z7cxB&#39;.</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">d=
b cleanup for server shutdown, 11:03:48.420</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">m=
emory-to-file backup complete, 11:03:48.420.</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">d=
b cleanup finished, 11:03:48.420</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">e=
cs-915:/shr/router/yocto/poky &gt;</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">e=
cs-915:/shr/router/yocto/poky &gt;</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">e=
cs-915:/shr/router/yocto/poky &gt;</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">e=
cs-915:/shr/router/yocto/poky &gt;</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">e=
cs-915:/shr/router/yocto/poky &gt; cat /shr/router/build/tmp/work/all-shr-l=
inux/autoconf-archive/2022.02.11-r0/temp/log.do_package_write_ipk.1068364</=
span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Executing python function extend_recipe_sysroot</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">N=
OTE: Direct dependencies are [&#39;virtual:native:/shr/router/yocto/poky/..=
/poky/meta/recipes-devtools/opkg-utils/opkg-utils_0.5.0.bb:do_populate_sysr=
oot&#39;, &#39;virtual:native:/shr/router/yocto/poky/../poky/meta/recipes-d=
evtools/pseudo/pseudo_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:=
/shr/router/yocto/poky/../poky/meta/recipes-extended/xz/xz_5.2.6.bb:do_popu=
late_sysroot&#39;]</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">N=
OTE: Installed into sysroot: [&#39;opkg-utils-native&#39;, &#39;perl-native=
&#39;, &#39;make-native&#39;]</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">N=
OTE: Skipping as already exists in sysroot: [&#39;pseudo-native&#39;, &#39;=
xz-native&#39;, &#39;libtool-native&#39;, &#39;gettext-minimal-native&#39;,=
 &#39;zlib-native&#39;, &#39;gdbm-native&#39;, &#39;texinfo-dummy-native&#3=
9;]</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: sed -e &#39;s:^[^/]*/:/shr/router/build/tmp/work/all-shr-linux/autoco=
nf-archive/2022.02.11-r0/recipe-sysroot-native/:g&#39; /shr/router/build/tm=
p/sysroots-components/x86_64/perl-native/fixmepath | xargs sed -i -e &#39;s=
:FIXMESTAGINGDIRTARGET:/shr/router/build/tmp/work/all-shr-linux/autoconf-ar=
chive/2022.02.11-r0/recipe-sysroot:g; s:FIXMESTAGINGDIRHOST:/shr/router/bui=
ld/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/recipe-sysroot-nat=
ive:g&#39; -e &#39;s:FIXME_PSEUDO_SYSROOT:/shr/router/build/tmp/sysroots-co=
mponents/x86_64/pseudo-native:g&#39; -e &#39;s:FIXME_HOSTTOOLS_DIR:/shr/rou=
ter/build/tmp/hosttools:g&#39; -e &#39;s:FIXME_PKGDATA_DIR:/shr/router/buil=
d/tmp/pkgdata/axel-qca:g&#39; -e &#39;s:FIXME_PSEUDO_LOCALSTATEDIR:/shr/rou=
ter/build/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/pseudo/:g&#=
39; -e &#39;s:FIXME_LOGFIFO:/shr/router/build/tmp/work/all-shr-linux/autoco=
nf-archive/2022.02.11-r0/temp/fifo.1068364:g&#39;</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Python function extend_recipe_sysroot finished</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Executing python function sstate_task_prefunc</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Python function sstate_task_prefunc finished</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Executing python function do_package_write_ipk</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Executing python function read_subpackage_metadata</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Python function read_subpackage_metadata finished</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Executing python function do_package_ipk</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">N=
OTE: Not creating empty archive for autoconf-archive-src-2022.02.11-r0</spa=
n></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">E=
RROR: Fatal errors occurred in subprocesses:</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">C=
ommand &#39;PATH=3D&#34;/shr/router/build/tmp/sysroots-uninative/x86_64-lin=
ux/usr/bin:/shr/router/yocto/poky/scripts:/shr/router/build/tmp/work/all-sh=
r-linux/autoconf-archive/2022.02.11-r0/recipe-sysroot-native/usr/bin/allarc=
h-shr-linux:/shr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022.=
02.11-r0/recipe-sysroot/usr/bin/crossscripts:/shr/router/build/tmp/work/all=
-shr-linux/autoconf-archive/2022.02.11-r0/recipe-sysroot-native/usr/sbin:/s=
hr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/recip=
e-sysroot-native/usr/bin:/shr/router/build/tmp/work/all-shr-linux/autoconf-=
archive/2022.02.11-r0/recipe-sysroot-native/sbin:/shr/router/build/tmp/work=
/all-shr-linux/autoconf-archive/2022.02.11-r0/recipe-sysroot-native/bin:/sh=
r/router/yocto/poky/bitbake/bin:/shr/router/build/tmp/hosttools&#34; opkg-b=
uild -Z xz -a &#34;--memlimit=3D50% --threads=3D16&#34; autoconf-archive-do=
c /shr/router/build/tmp/work/all-shr-linux/autoconf-archive/2022.02.11-r0/d=
eploy-ipks/all&#39; died with &lt;Signals.SIGABRT: 6&gt;.</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">S=
ubprocess output:abort()ing pseudo client by server request. See <a href=3D=
"https://wiki.yoctoproject.org/wiki/Pseudo_Abort">https://wiki.yoctoproject=
.org/wiki/Pseudo_Abort</a> for more details on this.</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">C=
heck logfile: /shr/router/build/tmp/work/all-shr-linux/autoconf-archive/202=
2.02.11-r0/pseudo//pseudo.log</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=
=C2=A0</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Python function do_package_ipk finished</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">D=
EBUG: Python function do_package_write_ipk finished</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><em><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sa=
ns-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #33333=
3; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">s=
jc-ads-7501:/shr/router/yocto/poky &gt;</span></em></p>
</blockquote>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=C2=
=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=C2=
=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span style=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-farea=
st-font-family: &#39;Times New Roman&#39;; color: #333333; mso-font-kerning=
: 0pt; mso-ligatures: none;">Here is the pseudo.log from the most recent fa=
ilure. I know a lot of proprietary context is missing for anyone in the OSS=
 community to give super confident answers, but I appreciate any suggestion=
s.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span style=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-farea=
st-font-family: &#39;Times New Roman&#39;; color: #333333; mso-font-kerning=
: 0pt; mso-ligatures: none;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span style=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-farea=
st-font-family: &#39;Times New Roman&#39;; color: #333333; mso-font-kerning=
: 0pt; mso-ligatures: none;">Some context here:=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">1.</s=
pan><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-seri=
f; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; mso-=
font-kerning: 0pt; mso-ligatures: none;"> </span><span lang=3D"EN-US" style=
=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-fareast-font-family: &#=
39;Times New Roman&#39;; color: #333333; mso-font-kerning: 0pt; mso-ligatur=
es: none; mso-ansi-language: EN-US;">I</span><span lang=3D"EN-US" style=3D"=
font-family: &#39;Segoe UI&#39;,sans-serif; mso-fareast-font-family: &#39;T=
imes New Roman&#39;; color: #333333; mso-font-kerning: 0pt; mso-ligatures: =
none;"> </span><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39=
;,sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #3=
33333; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US=
;">are running Yocto build command inside a docker container, rather than a=
 metal Linux server</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">2. I =
saw the pseudo abort error reported at multiple recipes such as autoconf-na=
tive, ncurses</span><span style=3D"font-family: &#39;Segoe UI&#39;,sans-ser=
if; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; mso=
-font-kerning: 0pt; mso-ligatures: none;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">3.</s=
pan><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-seri=
f; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; mso-=
font-kerning: 0pt; mso-ligatures: none;"> T</span><span lang=3D"EN-US" styl=
e=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-fareast-font-family: &=
#39;Times New Roman&#39;; color: #333333; mso-font-kerning: 0pt; mso-ligatu=
res: none; mso-ansi-language: EN-US;">he same error was still reported when=
 executing Yocto build command to do single recipe build</span><span style=
=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-fareast-font-family: &#=
39;Times New Roman&#39;; color: #333333; mso-font-kerning: 0pt; mso-ligatur=
es: none;">.</span><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI=
&#39;,sans-serif; mso-fareast-font-family: &#39;Times New Roman&#39;; color=
: #333333; mso-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: E=
N-US;"></span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span style=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-farea=
st-font-family: &#39;Times New Roman&#39;; color: #333333; mso-font-kerning=
: 0pt; mso-ligatures: none;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span style=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-farea=
st-font-family: &#39;Times New Roman&#39;; color: #333333; mso-font-kerning=
: 0pt; mso-ligatures: none;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span style=3D"font-family: &#39;Segoe UI&#39;,sans-serif; mso-farea=
st-font-family: &#39;Times New Roman&#39;; color: #333333; mso-font-kerning=
: 0pt; mso-ligatures: none;">Thanks for your time and any suggestions.</spa=
n></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=C2=
=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">=C2=
=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"background: white;" style=3D"margin=
:0px;"><span lang=3D"EN-US" style=3D"font-family: &#39;Segoe UI&#39;,sans-s=
erif; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #333333; m=
so-font-kerning: 0pt; mso-ligatures: none; mso-ansi-language: EN-US;">Mario=
</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"font-si=
ze: 11.0pt;">=C2=A0</span></p>

--35o4Cx5W2BftMnTOxRgo--

