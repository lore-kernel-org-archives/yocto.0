Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0915C3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 06:09:29 +0000 (UTC)
Subject: meta-rust layer issue do unpack issue cbindgen 
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: IN (123.63.39.83)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 19 May 2025 23:09:27 -0700
Message-ID: <XzZA.1747721367601516915.wH9d@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Tt8qqQuG90L9lJrXl5Bq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 06:09:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65358

--Tt8qqQuG90L9lJrXl5Bq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi team I am facing issue cbindgen unable to unpack it. Can anybody give su=
pport to fix this issue.

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

Regards,
Sateesh

--Tt8qqQuG90L9lJrXl5Bq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi team I am facing issue cbindgen unable to unpack it. Can anybody gi=
ve support to fix this issue.&nbsp;</div>
<div>&nbsp;</div>
<div>ERROR: cbindgen-0.24.5-r0 do_unpack: Unpack failure for URL: 'https://=
crates.io/api/v1/crates/cbindgen/0.24.5/download'. Unpack command PATH=3D"/=
home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/sysroots-uninative/x86_=
64-linux/usr/bin:/home/p_6012/hdd/Basic/subcore/poky/scripts:/home/p_60120/=
hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf-neon-telechips-linu=
x-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-native/usr/bin/arm-telechips-li=
nux-gnueabi:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/corte=
xa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot/usr/bi=
n/crossscripts:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/co=
rtexa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-nat=
ive/usr/sbin:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cort=
exa7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-nativ=
e/usr/bin:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa=
7hf-neon-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-native/s=
bin:/home/p_6012/hdd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf-ne=
on-telechips-linux-gnueabi/cbindgen/0.24.5-r0/recipe-sysroot-native/bin:/ho=
me/p_6012/hdd/Basic/subcore/poky/bitbake/bin:/home/p_6012/hdd/Basic/subcore=
/build/tcc8030-sub/tmp/hosttools" tar -xz --no-same-owner -f /home/p_6012/h=
dd/Basic/subcore/build/tcc8030-sub/downloads/cbindgen-0.24.5.crate failed w=
ith return value 2<br />ERROR: Logfile of failure stored in: /home/p_6012/h=
dd/Basic/subcore/build/tcc8030-sub/tmp/work/cortexa7hf-neon-telechips-linux=
-gnueabi/cbindgen/0.24.5-r0/temp/log.do_unpack.25960<br />ERROR: Task (/hom=
e/p_60120/hdd/Basic/subcore/poky/meta-rust/recipes-devtools/cbindgen/cbindg=
en_0.24.5.bb:do_unpack) failed with exit code '1'</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Sateesh</div>

--Tt8qqQuG90L9lJrXl5Bq--

