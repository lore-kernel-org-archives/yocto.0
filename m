Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79F37C4332F
	for <webhook@archiver.kernel.org>; Mon, 26 Dec 2022 23:12:03 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.146151.1672096315473537708
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Dec 2022 15:11:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JuMSLsYL;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d7so11716881pll.9
        for <yocto@lists.yoctoproject.org>; Mon, 26 Dec 2022 15:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MHoOG2/dqSR9SolLQFQK+2J+CD4LVw0XJq6Pr9t6RMs=;
        b=JuMSLsYLLhrg/NE7rwg2t8DhW94tZHr/XWGH+h6FbnXOj1t4hT0BLKO04HvT93+y5/
         /P9vYM9RxCSnEOmWX7Y1guuM9pt9ZgBPa+/4QWO+/Q0scb3Xw9i3Q1WYfSQZ5XOtjqrx
         1pKBoVNdO/zfoukGBmxvWKoDQW14v/3eMBfcVZYhEgpFMrczx2rwPHdxHkxPS3Uo/z9m
         rrzLst1aS1UQ9H03Tfe+BX1BAZ9DYQz/RMspuhgJ4xFlI/Sxij+23Kg4U+Fi9bq9CsXJ
         EwD/hI5Q8Gux85yp56boFwYn5kYjAbihppQSqJxWXiVArQp9Bsoz29KV7/TgZMO35JDk
         faCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MHoOG2/dqSR9SolLQFQK+2J+CD4LVw0XJq6Pr9t6RMs=;
        b=QNm3k0RY9JMZ6pmiwVCpqJwJ7brMMB5wFXdvvy7BSEsZEx1RC5IaVCcvtKMC5gbn8Z
         c3/05OZ7XCTV66+hUbIx6UphwYUMLbDESm4OuELrr51dBJ/hxbcCUE/HYkVVJtqyZOQa
         Zrz9oGCtSK+nmT9HQa1KwoB1rbRQb3o2SFArFjDRJCy7rdedM+aYFLrFTa3Lly7u1t38
         IZ9uYNsV7MwZwxdRb075fL9QfZaBP+/zYnpakfua8foBoDZUgiczEhuaC121pV8NPgGm
         40q7QZygrYLEKekjn3uAIj0q6EFpzS/qvcsd7KeQspT2lqzdI4WhRB7gygxEHC2JbrnO
         BE7Q==
X-Gm-Message-State: AFqh2koJc+llZO4uEDhRz9RUehuxfIJKUhoYlMbTGu8M+kzSEmovr7PY
	iqI2d5YgFVS982vwTmx3NXmDrGHHczta5g==
X-Google-Smtp-Source: AMrXdXsbBACdHZwnGaJKMz53Qp9fGdKFJIyOEr89KTRzh9fvfWhjOZH5z7DWGYzPbqW9iZMtkshm4w==
X-Received: by 2002:a05:6a20:94c3:b0:a3:6f97:e658 with SMTP id ht3-20020a056a2094c300b000a36f97e658mr25392779pzb.58.1672096314667;
        Mon, 26 Dec 2022 15:11:54 -0800 (PST)
Received: from skjolley ([2600:1011:a11e:7926:3670:229e:6a7c:c6b1])
        by smtp.gmail.com with ESMTPSA id g4-20020a655944000000b004792b557b1csm6741450pgu.87.2022.12.26.15.11.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Dec 2022 15:11:54 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW52
Date: Mon, 26 Dec 2022 16:11:53 -0700
Message-ID: <084301d9197f$719c25e0$54d471a0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0844_01D91944.C54934C0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdkZf1eMA6mWLSG9Q1yu7a43TdkrTw==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Dec 2022 23:12:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58871

This is a multipart message in MIME format.

------=_NextPart_000_0844_01D91944.C54934C0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW52 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5322> 5322

Global DNS fallback mechanism not present in poky distro

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5389> 5389

bitbake/lib/bb/fetch2: filename too long

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5876> 5876

Add a test for the kernel -c menuconfig option

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6428> 6428

Improve the ability to isolate changes that have caused a rebuild

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7600> 7600

syslinux: port extX support patches to syslinux community

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10061> 10061

Ctrl+C during BB_HASHCHECK_FUNCTION execution does not interrupt =
processing nicely

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10693> 10693

Add a testcase for multilib eSDK on the autobuilder

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12060> 12060

It is possible to specify a PACKAGE and a PKG_ rename that conflict

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12279> 12279

enhance manifest not found warning

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12290> 12290

cross recipe kernel module dependency generation stopped working

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12342> 12342

lib32-core-image-sato -ctestimage failed due to wrong package names

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12374> 12374

do_rootfs failed when len(TMPDIR) =3D=3D 410

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12723> 12723

mysql requires unicode and char length filtering

randy.macleod@windriver.com

david.reyna@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12760> 12760

CMake Toolchain File Has Wrong Module Path

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12963> 12963

nativesdk-opkg prefixes all internal paths with $SDKPATH and won't work

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13004> 13004

Automate yocto-check-layer -m option

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13008> 13008

toaster testing

randy.macleod@windriver.com

david.reyna@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13109> 13109

Implement CPE to package to Release mapping

randy.macleod@windriver.com

david.reyna@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103> 13103

[Bug][QA 2.7 M1 rc1][Toaster] "Recipes" table=E2=94=AC=C3=A1 and =
=E2=94=AC=C3=A1"machines" table are not getting populated after =
clicking=E2=94=AC=C3=A1on imported layer as well as after clicking =
Machines Tab on project page

randy.macleod@windriver.com

david.reyna@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13181> 13181

persist_data sqlite database mixed with forking is irreparably broken

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13190> 13190

RRS cannot handle multiple recipes with same PN

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13279> 13279

Make sure users/groups exist for package_write_* tasks

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13285> 13285

YoctoProject Compatibility script improvements needed

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13288> 13288

pseudo should not follow symlinks in /proc

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13298> 13298

python3 ptest results are inconsistent per image

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13311> 13311

xargs: fdleak.c:396: complain_about_leaky_fds: Assertion `no_leaks' =
failed.

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13338> 13338

SDK  build fails if image contains bash

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13419> 13419

recipes that add users to groups cannot rely on other recipes creating =
those groups (when population from sstate happens)

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13425> 13425

Add bblock and bbunlock helper tools

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13520> 13520

many valgrind tests fail for arm64

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13508> 13508

Meson detects googletest installed on system

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13550> 13550

username/password specified to gitsm:// does not get propagated to =
submodules

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13674> 13674

master dnf failures on qemumips

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13766> 13766

Using TCLIBC=3Dmusl results in SDKs producing incompatible binaries

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13843> 13843

bitbake worker stuck using 100% cpu on aborted build

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13868> 13868

Python cache files get lost in packages

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13889> 13889

python3 Windows distutils stubs regressed in upgrade to 3.8.2

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13904> 13904

do_prepare_recipe_sysroot: postinst-useradd-* does not run in order of =
dependency and sometimes fails

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13910> 13910

Intermittent host UID contamination highlighted by devtool tests

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13919> 13919

Multi License GPLv3 -lic cannot be installed into the image because it =
has incompatible license

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13954> 13954

Invalid layerindex data causing backtrace in `bitbake-layers =
layerindex-fetch`

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14015> 14015

URL Arguments in MIRROR/PREMIRROR get encoded

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14020> 14020

environment-setup script in multilib eSDK doesn't work for multilib =
variant

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14066> 14066

bitbake core-image-base -c populate_sdk fails when image contains bash, =
core-utils and package_deb is used

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14098> 14098

absolute path in TEMPLATECONF should be rejected or warned, makes =
ext-sdk uninstallable

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14118> 14118

systemd services not enabled when using package feed

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14125> 14125

busybox wget ssl is exposed to MitM attack due to CVE-2018-1000500

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14127> 14127

cve-check falsely indicates a vulnerabily to be patched

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14126> 14126

resolvconf incompatible with busybox flock

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14136> 14136

If u-boot defconfig is incomplete, 'bitbake u-boot -c configure' hangs =
and eats all memory

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14154> 14154

yocto-check-layer fails incorrectly with kernel hash changes

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14155> 14155

yocto-check-layer fails with hash changes if license added

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14157> 14157

git fetcher: consider using different git commands for repo packing, =
eliminating "git pack-redundant"

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14165> 14165

AB-INT PTEST: strace ptest intermittent failure in =
qual_fault-syscall.test

randy.macleod@windriver.com

randy.macleod@windriver.com

4.0 M3

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14196> 14196

Add integration to send data to KCIDB

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14218> 14218

Recipe rebuilds can contaminate builds

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14236> 14236

npmsw does not support github URLs in the npm-shrinkwrap.json file

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14303> 14303

Result of build is not stored in testresult.json with resulttool

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14348> 14348

Layer dependencies not updated

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14383> 14383

archiver.bbclass:do_ar_mirror copies entire contents of ${DL_DIR} to =
${WORKDIR} when used with npm.bbclass

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14386> 14386

patchelf breaks go -native executables

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14403> 14403

Qemu error messages not clear when command line is corrupted.

randy.macleod@windriver.com

sakib.sajal@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14430> 14430

valgrind memcheck/tests/linux/stack_changes failure

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14443> 14443

valgrind none/tests/amd64/fb_test_amd64 ptest intermittent failure

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14461> 14461

devtool sdk-update do not clean old version files

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14462> 14462

devtool sdk-update does not update sstate-cache

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14466> 14466

python: Should we add this optimization: -fno-semantic-interposition for =
1.3x speed improvment?

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14520> 14520

A qemuboot.conf file isn't generated if the rootfs wasn't modified

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14528> 14528

remove floppy controller from qemu

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14584> 14584

Allow to add reason on build cancellation

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14642> 14642

Yocto-check-layer add patch Upstream-Status check

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14693> 14693

cmake-native do_configure fails when rebuilding without sstate on NIS =
hosts

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14689> 14689

Need to show activity when talking to hash equivalence servers

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14691> 14691

Bitbake does not check for all required perl modules to build oe-core

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14749> 14749

Missing test cases for initramfs runtime testing

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14804> 14804

busybox and dpkg versions of start-stop-daemon disagree on symlink =
location

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14814> 14814

ncurses version of taskexp.py

randy.macleod@windriver.com

david.reyna@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14834> 14834

Timeout issue with Toaster and bitbake

randy.macleod@windriver.com

david.reyna@windriver.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14860> 14860

Cannot build x86-64 Go SDK on aarch64

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14866> 14866

testsdk logs missing information

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14876> 14876

rust: Improve reproducibility patch

randy.macleod@windriver.com

yashinde145@gmail.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14875> 14875

reproducibility failures in rust

randy.macleod@windriver.com

sundeep.kokkonda@gmail.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14890> 14890

create-spdx should parse license strings with and without spaces between =
license terms

randy.macleod@windriver.com

sgw@bigsur.com

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14904> 14904

Make rust target identification better in crossbeam

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14905> 14905

Error in compiling rustfmt does not cause do_compile to fail

randy.macleod@windriver.com

Naveen.Gowda@windriver.com

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14930> 14930

connman - sysvinit - nfs/dhcp hangs in langdale/master

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14944> 14944

go recipes are not devtool upgradeable

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14945> 14945

devtool upgrade multiple architectures, targets

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.2 M1

4.2 M3

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_0844_01D91944.C54934C0
Content-Type: text/html;
	boundary="----=_NextPart_000_150F_01D913AD.671F8850";
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
p.xl65, li.xl65, div.xl65
	{mso-style-name:xl65;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	border:none;
	padding:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}
p.xl66, li.xl66, div.xl66
	{mso-style-name:xl66;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	background:#DCE6F1;
	border:none;
	padding:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}
p.xl67, li.xl67, div.xl67
	{mso-style-name:xl67;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	border:none;
	padding:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:black'>All,<br><br>YP M+ or high bugs which moved to a =
new milestone in WW52 are listed below: <o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1844 =
style=3D'width:1383.1pt;margin-left:-.15pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom style=3D'width:38.8pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID<o:p></o:p></span></b></p></td><td =
width=3D1123 nowrap valign=3Dbottom style=3D'width:842.35pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Short =
Description<o:p></o:p></span></b></p></td><td width=3D236 nowrap =
valign=3Dbottom style=3D'width:177.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Changer<o:p></o:p></span></b></p></td><td =
width=3D243 nowrap valign=3Dbottom style=3D'width:182.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Owner<o:p></o:p></span></b></p></td><td width=3D73 =
nowrap valign=3Dbottom style=3D'width:54.7pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was<o:p></o:p></span></b></p></td><td width=3D44 =
nowrap valign=3Dbottom style=3D'width:33.35pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Became<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Medium+<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5322" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>5322</span></a><o:p></o:p></sp=
an></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Global DNS fallback mechanism not present in poky =
distro<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5389" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>5389</span></a><o:p></o:p></sp=
an></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>bitbake/lib/bb/fetch2: filename too =
long<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5876" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>5876</span></a><o:p></o:p></sp=
an></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Add a test for the kernel -c menuconfig =
option<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6428" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>6428</span></a><o:p></o:p></sp=
an></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Improve the ability to isolate changes that have =
caused a rebuild<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7600" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>7600</span></a><o:p></o:p></sp=
an></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>syslinux: port extX support patches to syslinux =
community<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10061" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>10061</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Ctrl+C during BB_HASHCHECK_FUNCTION execution does =
not interrupt processing nicely<o:p></o:p></span></p></td><td =
width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10693" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>10693</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Add a testcase for multilib eSDK on the =
autobuilder<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12060" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12060</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>It is possible to specify a PACKAGE and a PKG_ =
rename that conflict<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12279" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12279</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>enhance manifest not found =
warning<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12290" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12290</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>cross recipe kernel module dependency generation =
stopped working<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12342" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12342</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>lib32-core-image-sato -ctestimage failed due to =
wrong package names<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12374" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12374</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>do_rootfs failed when len(TMPDIR) =3D=3D =
410<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12723" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12723</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mysql requires unicode and char length =
filtering<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12760" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12760</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>CMake Toolchain File Has Wrong Module =
Path<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12963" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12963</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>nativesdk-opkg prefixes all internal paths with =
$SDKPATH and won't work<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13004" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13004</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Automate yocto-check-layer -m =
option<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13008" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13008</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>toaster testing<o:p></o:p></span></p></td><td =
width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13109" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13109</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Implement CPE to package to Release =
mapping<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13103" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13103</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>[Bug][QA 2.7 M1 rc1][Toaster] &quot;Recipes&quot; =
table</span><span =
style=3D'font-family:"Arial",sans-serif;color:black'>=E2=94=AC</span><spa=
n style=3D'color:black'>=C3=A1 and </span><span =
style=3D'font-family:"Arial",sans-serif;color:black'>=E2=94=AC</span><spa=
n style=3D'color:black'>=C3=A1&quot;machines&quot; table are not getting =
populated after clicking</span><span =
style=3D'font-family:"Arial",sans-serif;color:black'>=E2=94=AC</span><spa=
n style=3D'color:black'>=C3=A1on imported layer as well as after =
clicking Machines Tab on project page<o:p></o:p></span></p></td><td =
width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13181" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13181</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>persist_data sqlite database mixed with forking is =
irreparably broken<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13190" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13190</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>RRS cannot handle multiple recipes with same =
PN<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13279" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13279</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Make sure users/groups exist for package_write_* =
tasks<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13285" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13285</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>YoctoProject Compatibility script improvements =
needed<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13288" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13288</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>pseudo should not follow symlinks in =
/proc<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13298" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13298</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>python3 ptest results are inconsistent per =
image<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13311" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13311</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>xargs: fdleak.c:396: complain_about_leaky_fds: =
Assertion `no_leaks' failed.<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13338" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13338</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>SDK=C2=A0 build fails if image contains =
bash<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13419" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13419</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>recipes that add users to groups cannot rely on =
other recipes creating those groups (when population from sstate =
happens)<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13425" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13425</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Add bblock and bbunlock helper =
tools<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>newcomer@yoctoproject.org<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13520" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13520</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>many valgrind tests fail for =
arm64<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13508" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13508</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Meson detects googletest installed on =
system<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>newcomer@yoctoproject.org<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13550" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13550</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>username/password specified to gitsm:// does not =
get propagated to submodules<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13674" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13674</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>master dnf failures on =
qemumips<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13766" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13766</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Using TCLIBC=3Dmusl results in SDKs producing =
incompatible binaries<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13843" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13843</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>bitbake worker stuck using 100% cpu on aborted =
build<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13868" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13868</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Python cache files get lost in =
packages<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13889" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13889</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>python3 Windows distutils stubs regressed in =
upgrade to 3.8.2<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13904" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13904</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>do_prepare_recipe_sysroot: postinst-useradd-* does =
not run in order of dependency and sometimes =
fails<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13910" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13910</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Intermittent host UID contamination highlighted by =
devtool tests<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13919" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13919</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Multi License GPLv3 -lic cannot be installed into =
the image because it has incompatible =
license<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13954" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13954</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Invalid layerindex data causing backtrace in =
`bitbake-layers layerindex-fetch`<o:p></o:p></span></p></td><td =
width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14015" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14015</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>URL Arguments in MIRROR/PREMIRROR get =
encoded<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14020" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14020</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>environment-setup script in multilib eSDK doesn't =
work for multilib variant<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14066" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14066</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>bitbake core-image-base -c populate_sdk fails when =
image contains bash, core-utils and package_deb is =
used<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14098" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14098</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>absolute path in TEMPLATECONF should be rejected =
or warned, makes ext-sdk uninstallable<o:p></o:p></span></p></td><td =
width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14118" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14118</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>systemd services not enabled when using package =
feed<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14125" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14125</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>busybox wget ssl is exposed to MitM attack due to =
CVE-2018-1000500<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14127" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14127</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>cve-check falsely indicates a vulnerabily to be =
patched<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14126" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14126</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>resolvconf incompatible with busybox =
flock<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>newcomer@yoctoproject.org<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14136" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14136</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>If u-boot defconfig is incomplete, 'bitbake u-boot =
-c configure' hangs and eats all memory<o:p></o:p></span></p></td><td =
width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14154" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14154</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>yocto-check-layer fails incorrectly with kernel =
hash changes<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14155" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14155</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>yocto-check-layer fails with hash changes if =
license added<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14157" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14157</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>git fetcher: consider using different git commands =
for repo packing, eliminating &quot;git =
pack-redundant&quot;<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>newcomer@yoctoproject.org<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14165" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14165</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>AB-INT PTEST: strace ptest intermittent failure in =
qual_fault-syscall.test<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.0 M3<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14196" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14196</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Add integration to send data to =
KCIDB<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14218" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14218</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Recipe rebuilds can contaminate =
builds<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14236" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14236</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>npmsw does not support github URLs in the =
npm-shrinkwrap.json file<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14303" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14303</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Result of build is not stored in testresult.json =
with resulttool<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14348" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14348</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Layer dependencies not =
updated<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14383" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14383</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>archiver.bbclass:do_ar_mirror copies entire =
contents of ${DL_DIR} to ${WORKDIR} when used with =
npm.bbclass<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14386" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14386</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>patchelf breaks go -native =
executables<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14403" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14403</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Qemu error messages not clear when command line is =
corrupted.<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14430" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14430</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>valgrind memcheck/tests/linux/stack_changes =
failure<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14443" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14443</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>valgrind none/tests/amd64/fb_test_amd64 ptest =
intermittent failure<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14461" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14461</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>devtool sdk-update do not clean old version =
files<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14462" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14462</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>devtool sdk-update does not update =
sstate-cache<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14466" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14466</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>python: Should we add this optimization: =
-fno-semantic-interposition for 1.3x speed =
improvment?<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14520" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14520</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>A qemuboot.conf file isn't generated if the rootfs =
wasn't modified<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14528" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14528</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>remove floppy controller from =
qemu<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14584" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14584</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Allow to add reason on build =
cancellation<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14642" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14642</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Yocto-check-layer add patch Upstream-Status =
check<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14693" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14693</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>cmake-native do_configure fails when rebuilding =
without sstate on NIS hosts<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14689" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14689</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Need to show activity when talking to hash =
equivalence servers<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14691" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14691</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Bitbake does not check for all required perl =
modules to build oe-core<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14749" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14749</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Missing test cases for initramfs runtime =
testing<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14804" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14804</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>busybox and dpkg versions of start-stop-daemon =
disagree on symlink location<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14814" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14814</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>ncurses version of =
taskexp.py<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14834" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14834</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Timeout issue with Toaster and =
bitbake<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14860" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14860</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Cannot build x86-64 Go SDK on =
aarch64<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14866" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14866</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>testsdk logs missing =
information<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14876" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14876</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>rust: Improve reproducibility =
patch<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>yashinde145@gmail.com<o:p></o:p></span></p></td><td=
 width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14875" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14875</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>reproducibility failures in =
rust<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sundeep.kokkonda@gmail.com<o:p></o:p></span></p></t=
d><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14890" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14890</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>create-spdx should parse license strings with and =
without spaces between license terms<o:p></o:p></span></p></td><td =
width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sgw@bigsur.com<o:p></o:p></span></p></td><td =
width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14904" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14904</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Make rust target identification better in =
crossbeam<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14905" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14905</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Error in compiling rustfmt does not cause =
do_compile to fail<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Naveen.Gowda@windriver.com<o:p></o:p></span></p></t=
d><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14930" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14930</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>connman - sysvinit - nfs/dhcp hangs in =
langdale/master<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14944" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14944</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>go recipes are not devtool =
upgradeable<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14945" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14945</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D1123 nowrap valign=3Dbottom =
style=3D'width:842.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>devtool upgrade multiple architectures, =
targets<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.7pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M1<o:p></o:p></span></p></td><td width=3D44 =
nowrap valign=3Dbottom =
style=3D'width:33.35pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>4.2 M3<o:p></o:p></span></p></td></tr></table><p =
class=3DMsoNormal><span style=3D'color:black'>Thanks,</span><span =
style=3D'color:white'> <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:white'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif"'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></span=
></u></span><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0844_01D91944.C54934C0--


