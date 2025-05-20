Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C27DC3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 09:44:51 +0000 (UTC)
Subject: cbindgen unable to unpack it using meta-rust layer (dunfell)
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: IN (123.63.39.83)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 20 May 2025 02:44:46 -0700
Message-ID: <OwhE.1747734286219462368.fqbc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fYnVw8MkCwo39aCHPI8x"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 09:44:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65360

--fYnVw8MkCwo39aCHPI8x
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi team,

I am facing issue cbindgen unable to unpack issue. I am not clear what coul=
d be the reason? any updated patch is avilabale or hostools do I need to in=
stall please let me know. I want some leads here.

ERROR: cbindgen-0.24.5-r0 do_unpack: Unpack failure for URL: 'https://crate=
s.io/api/v1/crates/cbindgen/0.24.5/download'. Unpack command PATH=3D"/home/=
p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/sysroots-uninative/x86_64-li=
nux/usr/bin:/home/p_6012/hdd/Basic/subcore/poky/scripts:/home/p_60120/hdd/B=
asic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnu=
eabi/cbindgen/0.24.5-r0/recipe-sysroot-native/usr/bin/arm-telechips-linux-g=
nueabi:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf=
-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot/usr/bin/cro=
ssscripts:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa=
7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-native/u=
sr/sbin:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7h=
f-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-native/usr=
/bin:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf-n=
eon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-native/sbin:/=
home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf-neon-te=
lechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-native/bin:/home/p_=
6012/hdd/Basic/subcore/poky/bitbake/bin:/home/p_6012/hdd/Basic/subcore/buil=
d/tcc8030-sub/tmp/hosttools" tar -xz --no-same-owner -f /home/p_6012/hdd/Ba=
sic/subcore/build/tcc8030-sub/downloads/cbindgen-0.24.5.crate failed with r=
eturn value 2
ERROR: Logfile of failure stored in: /home/p_6012/hdd/Basic/subcore/build/t=
cc8030-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5=
-r0/temp/log.do_unpack.25960
ERROR: Task (/home/p_60120/hdd/Basic/subcore/poky/meta-rust/recipes-devtool=
s/cbindgen/cbindgen_0.24.5.bb:do_unpack) failed with exit code '1'

Thanking you in advance.

Regards,
Sateesh

--fYnVw8MkCwo39aCHPI8x
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Hi team,</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">I am facing issue cbindgen unable to unpack iss=
ue. I am not clear what could be the reason? any updated patch is avilabale=
 or hostools do I need to install please let me know. I want some leads her=
e.&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">ERROR: cbindgen-0.24.5-r0 do_unpack: Unpack fai=
lure for URL: 'https://crates.io/api/v1/crates/cbindgen/0.24.5/download'. U=
npack command PATH=3D"/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/=
sysroots-uninative/x86_64-linux/usr/bin:/home/p_6012/hdd/Basic/subcore/poky=
/scripts:/home/p_60120/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa=
7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-native/u=
sr/bin/arm-telechips-linux-gnueabi:/home/p_6012/hdd/Basic/subcore/build/tcc=
8030-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r=
0/recipe-sysroot/usr/bin/crossscripts:/home/p_6012/hdd/Basic/subcore/build/=
tcc8030-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.=
5-r0/recipe-sysroot-native/usr/sbin:/home/p_6012/hdd/Basic/subcore/build/tc=
c8030-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-=
r0/recipe-sysroot-native/usr/bin:/home/p_6012/hdd/Basic/subcore/build/tcc80=
30-sub/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/=
recipe-sysroot-native/sbin:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub=
/tmp/work/cortexa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe=
-sysroot-native/bin:/home/p_6012/hdd/Basic/subcore/poky/bitbake/bin:/home/p=
_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/hosttools" tar -xz --no-same-=
owner -f /home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/downloads/cbindge=
n-0.24.5.crate failed with return value 2<br style=3D"box-sizing: border-bo=
x; overflow-wrap: break-word !important;" />ERROR: Logfile of failure store=
d in: /home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf-=
neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/temp/log.do_unpack.25960<br=
 style=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />=
ERROR: Task (/home/p_60120/hdd/Basic/subcore/poky/meta-rust/recipes-devtool=
s/cbindgen/cbindgen_0.24.5.bb:do_unpack) failed with exit code '1'</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Thanking you in advance.</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">&nbsp;</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Regards,</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Sateesh</div>
</div>

--fYnVw8MkCwo39aCHPI8x--

