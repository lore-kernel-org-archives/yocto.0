Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AE63C001DB
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 00:42:43 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web10.157.1687221754240681568
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 17:42:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=mKggkHa6;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1b51414b080so23007625ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 17:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687221753; x=1689813753;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JJWPj9pSaSWamssoKjSmx3bsKX47Wx6MN7Ty85cnJcg=;
        b=mKggkHa6FmN3q89bfwwbQqPaI/A9RUTzMx61pnuqgEYp1mlQdiHwTpprLJGwJ8oLD+
         H14qKiZukPXZX5S9rPhrTzWtPWj1oGDnMxH+wj6RzDOh3vTKihacxXktP2tPsbwBWSoi
         Y2g0wETwwx4ySOGgRUsShoK8udIZCmg/Fy/KFOnFzkD5cVNaE4OJ6akTe2rEaZhiLZyJ
         OsP/ocpPQuC1rBA0v9CxdMhONgH4DpZ+pJkgkr66fN2dY+erwHihHxbLBxhNlJVlAfC6
         kfx+2+rwz5dPJVy7oH0q/1ooZfetdYo7XFBsFLEy2a+pJc4aoeYSaUL5Qzsp5M7U8Put
         Dmrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687221753; x=1689813753;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JJWPj9pSaSWamssoKjSmx3bsKX47Wx6MN7Ty85cnJcg=;
        b=T2QhcAL78OMvCofvtRlZRRHpILDkJ3TVJNsad26ErjRB0f9Nf98ZBD+d+0IeTyJphd
         RAPQsS2eNpA5QPhehBdqcWTQ9P+psJzw0Oy2MvS9wC+YP+1yDk3FC0dckQAxHfhpvia/
         35jAn01JbhTkaQeEibBOsogDJUIF9S9OP35bhR/8c2ReZwBLvQX8XLVdcsiE8h36qtaY
         VlHEtPtcwWz9hIJFpE3ZFTVySYUaKGgOZh4jKMU841eNfVrn1TcCtYHUOUlmL4aR63Pl
         MMV88V4p89IkCSmN7jQwYvLYozRj+NM7TgDp15ARXfg+uzc71Flza8k/K6M/Tjb+03u5
         sk8w==
X-Gm-Message-State: AC+VfDyjIugJfxO0lTufa5qRHdye0smMXa4Cc9KAO784GzJPZT3cjVbn
	I49ymLhahDi6+QRfMIJg/+v7n82mYv4=
X-Google-Smtp-Source: ACHHUZ5fs1fY//oVj7vg5A19N5ESF1bNY+ScUvPCLP1/w8/nAMfRuNIBi9NYK0EkqqAtlW3tlUXbVw==
X-Received: by 2002:a17:902:744a:b0:1b5:25bd:df2b with SMTP id e10-20020a170902744a00b001b525bddf2bmr9852735plt.14.1687221753241;
        Mon, 19 Jun 2023 17:42:33 -0700 (PDT)
Received: from skjolley ([2600:1011:a122:34d2:28e7:9ea4:5bbb:7068])
        by smtp.gmail.com with ESMTPSA id g14-20020a1709029f8e00b001b23eb0b4bbsm363222plq.147.2023.06.19.17.42.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jun 2023 17:42:32 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW24
Date: Mon, 19 Jun 2023 17:42:31 -0700
Message-ID: <125301d9a310$198f82a0$4cae87e0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1254_01D9A2D5.6D3C9180"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdmjD/V8Oh381xtfQQqYqrZW8fof1Q==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 00:42:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60355

This is a multipart message in MIME format.

------=_NextPart_000_1254_01D9A2D5.6D3C9180
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW24 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


High

14065 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14065>=20

Automated ptest regression testing

randy.macleod@windriver.com

alexis.lothore@bootlin.com

4.3 M1

4.3 M2


Medium+

5322 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5322>=20

Global DNS fallback mechanism not present in poky distro

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
5389 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5389>=20

bitbake/lib/bb/fetch2: filename too long

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
5876 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5876>=20

Add a test for the kernel -c menuconfig option

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
6428 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6428>=20

Improve the ability to isolate changes that have caused a rebuild

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
10061 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10061>=20

Ctrl+C during BB_HASHCHECK_FUNCTION execution does not interrupt =
processing nicely

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
10693 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10693>=20

Add a testcase for multilib eSDK on the autobuilder

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
11704 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11704>=20

Add other resource monitoring options to conf/local.conf STOPTASKS/ABORT

randy.macleod@windriver.com

randy.macleod@windriver.com

4.3 M1

4.3 M3

=09
11781 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11781>=20

bitbake --observe-only may get KeyError

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
11899 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11899>=20

broken 'bitbake --status-only' and 'bitbake -m' for multiple connections

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
12279 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12279>=20

enhance manifest not found warning

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.3 M1

4.3 M2

=09
12290 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12290>=20

cross recipe kernel module dependency generation stopped working

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
12342 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12342>=20

lib32-core-image-sato -ctestimage failed due to wrong package names

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
12760 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12760>=20

CMake Toolchain File Has Wrong Module Path

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
12963 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12963>=20

nativesdk-opkg prefixes all internal paths with $SDKPATH and won't work

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13004 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13004>=20

Automate yocto-check-layer -m option

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13181 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13181>=20

persist_data sqlite database mixed with forking is irreparably broken

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13190 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13190>=20

RRS cannot handle multiple recipes with same PN

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M3

=09
13279 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13279>=20

Make sure users/groups exist for package_write_* tasks

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13285 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13285>=20

YoctoProject Compatibility script improvements needed

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13298 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13298>=20

python3 ptest results are inconsistent per image

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13419 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13419>=20

recipes that add users to groups cannot rely on other recipes creating =
those groups (when population from sstate happens)

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13424 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13424>=20

devupstream doesn't work with mutilib

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
13425 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13425>=20

Add bblock and bbunlock helper tools

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.3 M1

4.3 M2

=09
13550 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13550>=20

username/password specified to gitsm:// does not get propagated to =
submodules

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13599 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13599>=20

Enhancement: Detect variables that shouldn't be defined in image scope, =
but in global (distro) scope

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
13674 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13674>=20

master dnf failures on qemumips

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13808 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13808>=20

do_task[noexec] =3D "" marks task noexec, which is inconsistent with =
docs

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
13868 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13868>=20

Python cache files get lost in packages

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13910 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13910>=20

Intermittent host UID contamination highlighted by devtool tests

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13919 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13919>=20

Multi License GPLv3 -lic cannot be installed into the image because it =
has incompatible license

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13920 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13920>=20

uninative tarball license compliance in ESDK

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13954 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13954>=20

Invalid layerindex data causing backtrace in `bitbake-layers =
layerindex-fetch`

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
13980 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13980>=20

Investigate replacements for PhantomJS for buildperf output

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14007 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14007>=20

When qemu hangs, try to create a snapshot or core file.

randy.macleod@windriver.com

randy.macleod@windriver.com

4.3 M1

4.3 M2

=09
14015 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14015>=20

URL Arguments in MIRROR/PREMIRROR get encoded

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14020 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14020>=20

environment-setup script in multilib eSDK doesn't work for multilib =
variant

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14098 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14098>=20

absolute path in TEMPLATECONF should be rejected or warned, makes =
ext-sdk uninstallable

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14118 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14118>=20

systemd services not enabled when using package feed

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14126 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14126>=20

resolvconf incompatible with busybox flock

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.3 M1

4.3 M2

=09
14136 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14136>=20

If u-boot defconfig is incomplete, 'bitbake u-boot -c configure' hangs =
and eats all memory

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14139 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14139>=20

systemd user/groups different on opkg vs rpm images

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14154 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14154>=20

yocto-check-layer fails incorrectly with kernel hash changes

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14155 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14155>=20

yocto-check-layer fails with hash changes if license added

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14157 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14157>=20

git fetcher: consider using different git commands for repo packing, =
eliminating "git pack-redundant"

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.3 M1

4.3 M2

=09
14196 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14196>=20

Add integration to send data to KCIDB

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14206 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14206>=20

oe-selftest perl errors on rpm based distros

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14218 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14218>=20

Recipe rebuilds can contaminate builds

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14263 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14263>=20

AB-INT PTEST: lttng-tools ptest intermittent failure

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14348 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14348>=20

Layer dependencies not updated

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14383 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14383>=20

archiver.bbclass:do_ar_mirror copies entire contents of ${DL_DIR} to =
${WORKDIR} when used with npm.bbclass

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14385 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14385>=20

mode of sstate files created under pseudo

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
14386 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14386>=20

patchelf breaks go -native executables

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14443 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14443>=20

valgrind none/tests/amd64/fb_test_amd64 ptest intermittent failure

randy.macleod@windriver.com

randy.macleod@windriver.com

4.3 M1

4.3 M3

=09
14461 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14461>=20

devtool sdk-update do not clean old version files

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14462 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14462>=20

devtool sdk-update does not update sstate-cache

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14466 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14466>=20

python: Should we add this optimization: -fno-semantic-interposition for =
1.3x speed improvment?

randy.macleod@windriver.com

tgamblin@baylibre.com

4.3 M1

4.3 M2

=09
14520 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14520>=20

A qemuboot.conf file isn't generated if the rootfs wasn't modified

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14523 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14523>=20

oe-pkgdata-util list-pkg-files doesn't ignore =
target-sdk-provides-dummy.bb

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14528 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14528>=20

remove floppy controller from qemu

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14538 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14538>=20

Recipes shouldn't use "virtual/" in RPROVIDES and RDEPENDS

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.3 M1

4.3 M2

=09
14620 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14620>=20

QA error not seen when reusing SSTATE

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
14665 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14665>=20

AB-INT: prservice.BitbakePrTests.test_import_export_replace_db failure

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14691 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14691>=20

Bitbake does not check for all required perl modules to build oe-core

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14693 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14693>=20

cmake-native do_configure fails when rebuilding without sstate on NIS =
hosts

randy.macleod@windriver.com

randy.macleod@windriver.com

4.3 M1

4.3 M2

=09
14717 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14717>=20

OEToolchainConfig.cmake sets wrong and unsuitable compiler flags

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
14749 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14749>=20

Missing test cases for initramfs runtime testing

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14781 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14781>=20

Add indication that a layer/branch is no longer being updated.

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14804 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14804>=20

busybox and dpkg versions of start-stop-daemon disagree on symlink =
location

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14811 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14811>=20

Incorrect path matching in pseudo cause package failure in yocto

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
14843 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14843>=20

Need better messages for reproducibility errors where the only =
difference is in package filename

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14860 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14860>=20

Cannot build x86-64 Go SDK on aarch64

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14866 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14866>=20

testsdk logs missing information

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14870 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14870>=20

Dangling bbappend behaviour can lead to unexpected surprises (error vs =
warn)

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
14876 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14876>=20

rust: Improve reproducibility patch

randy.macleod@windriver.com

Yash.Shinde@windriver.com

4.3 M1

4.3 M2

=09
14918 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14918>=20

Devtool fails if SRCREV is set to ${AUTOREV}

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
14921 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14921>=20

devtool failure: No such file or directory: =
'/tmp/devtoolqambdi_6eh/singletask.lock'

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
14930 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14930>=20

connman - sysvinit - nfs/dhcp hangs in langdale/master

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14944 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14944>=20

go recipes are not devtool upgradeable

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14945 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14945>=20

devtool upgrade multiple architectures, targets

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14982 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14982>=20

Some layers in the layerindex data have breaking subdirectory changes in =
"master" branch

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14986 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14986>=20

Check libraries linked with qemu

randy.macleod@windriver.com

newcomer@yoctoproject.org

4.3 M1

4.3 M2

=09
14989 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14989>=20

layerindex cannot add layers with "main" (not "master") branch

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
14992 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14992>=20

layerindex: update.py fails to determine layer dependencies when =
collections contains "core <...>"

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15005 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15005>=20

ParseError in None: Not all recipes parsed, parser thread killed/died? =
Exiting.

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
15020 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15020>=20

No test coverage of fs-uuid.bbclass

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15039 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15039>=20

https://layers.openembedded.org/ lacks links for reporting bugs

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15051 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15051>=20

AB-INT PTEST: testresults.json corruption

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15055 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15055>=20

AB-INT: busybox compile fails and caused gdb self-test failure.

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15060 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15060>=20

AB-INT: libgcc_s.so.1 must be installed for pthread_cancel to work

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15067 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15067>=20

System groups like sgx, wheel, renderer etc. which are not in any recipe =
are not being set by useradd-staticids bbclass

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15071 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15071>=20

AB-INT PTEST: strace ptest intermittent failure in syscall-times-ms.gen

randy.macleod@windriver.com

randy.macleod@windriver.com

4.3 M1

4.3 M2

=09
15074 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15074>=20

syncfs probe fails with newer compilers

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.3 M1

4.3 M2

=09
15079 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15079>=20

AB-INT PTEST: strace count ptest failure

randy.macleod@windriver.com

randy.macleod@windriver.com

4.3 M1

4.3 M3

=09
15080 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15080>=20

AB-INT PTEST: strace regex.gen ptest failure

randy.macleod@windriver.com

randy.macleod@windriver.com

4.3 M1

4.3 M3

=09
15081 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15081>=20

AB-INT PTEST: tcl aaa_exit ptest failure

randy.macleod@windriver.com

randy.macleod@windriver.com

4.3 M1

4.3 M2

=09
15087 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15087>=20

AB-INT: prservice.BitbakePrTests.test_stopping_prservice_message failure =
PID file not found

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15088 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15088>=20

AB-INT: do_fetch unable to fetch local file

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15095 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15095>=20

recipes-devtools/go-1.20 native: not possible to build with go 1.4

randy.macleod@windriver.com

unassigned@yoctoproject.org

4.3 M1

4.3 M2

=09
15101 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15101>=20

AB-INT: dnf.DnfRepoTest.test_dnf_reinstall failure

randy.macleod@windriver.com

pavel@zhukoff.net

4.3 M1

4.3 M2

=09
15140 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15140>=20

AB-INT: yocto-testresults tagging failure, tag already exists

randy.macleod@windriver.com

alexis.lothore@bootlin.com

0.0.0

4.3 M2

=09
15142 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15142>=20

useradd: missing /bin/false with ipk packages

randy.macleod@windriver.com

unassigned@yoctoproject.org

0.0.0

4.3 M2

=09
15144 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15144>=20

AB-INT: cve-update-db-native do_fetch failure, error 503

randy.macleod@windriver.com

steve@sakoman.com

0.0.0

4.3 M2

=09
15145 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15145>=20

module conf files missing when KERNEL_SPLIT_MODULES=3D0

randy.macleod@windriver.com

george.thopas@gmail.com

0.0.0

4.3 M2

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_1254_01D9A2D5.6D3C9180
Content-Type: text/html;
	boundary="----=_NextPart_000_0D09_01D99D51.DD50EB80";
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
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
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
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
class=3DWordSection1><p class=3DMsoNormal>All,<br><br>YP M+ or high bugs =
which moved to a new milestone in WW24 are listed below: <span =
style=3D'color:black'><o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1056 style=3D'width:791.95pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DBE5F1;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority</span></b><b><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Short =
Description</span><o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Changer</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Owner</span><o:p></o:p></b></p></td><td width=3D49 =
valign=3Dbottom style=3D'width:37.0pt;border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was</span><o:p></o:p></b></p></td><td width=3D42 =
valign=3Dbottom style=3D'width:31.85pt;border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Became</span><o:p></o:p></b></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal><b>High<o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14065" =
target=3D"_blank">14065</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Automated =
ptest regression testing<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>alexis.lothore@bootlin.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal><b>Medium+<o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5322" =
target=3D"_blank">5322</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Global DNS =
fallback mechanism not present in poky distro<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5389" =
target=3D"_blank">5389</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>bitbake/lib/bb/fetch2: filename too =
long<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5876" =
target=3D"_blank">5876</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Add a test =
for the kernel -c menuconfig option<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6428" =
target=3D"_blank">6428</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Improve the =
ability to isolate changes that have caused a =
rebuild<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10061" =
target=3D"_blank">10061</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Ctrl+C during =
BB_HASHCHECK_FUNCTION execution does not interrupt processing =
nicely<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10693" =
target=3D"_blank">10693</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Add a =
testcase for multilib eSDK on the autobuilder<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11704" =
target=3D"_blank">11704</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Add other =
resource monitoring options to conf/local.conf =
STOPTASKS/ABORT<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11781" =
target=3D"_blank">11781</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>bitbake =
--observe-only may get KeyError<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11899" =
target=3D"_blank">11899</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>broken =
'bitbake --status-only' and 'bitbake -m' for multiple =
connections<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12279" =
target=3D"_blank">12279</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>enhance =
manifest not found warning<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>newcomer@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12290" =
target=3D"_blank">12290</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>cross recipe =
kernel module dependency generation stopped =
working<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12342" =
target=3D"_blank">12342</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>lib32-core-image-sato -ctestimage failed due to wrong =
package names<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12760" =
target=3D"_blank">12760</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>CMake =
Toolchain File Has Wrong Module Path<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12963" =
target=3D"_blank">12963</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>nativesdk-opkg prefixes all internal paths with =
$SDKPATH and won't work<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13004" =
target=3D"_blank">13004</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Automate =
yocto-check-layer -m option<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13181" =
target=3D"_blank">13181</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>persist_data =
sqlite database mixed with forking is irreparably =
broken<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13190" =
target=3D"_blank">13190</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>RRS cannot =
handle multiple recipes with same PN<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13279" =
target=3D"_blank">13279</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Make sure =
users/groups exist for package_write_* tasks<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13285" =
target=3D"_blank">13285</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>YoctoProject =
Compatibility script improvements needed<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13298" =
target=3D"_blank">13298</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>python3 =
ptest results are inconsistent per image<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13419" =
target=3D"_blank">13419</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>recipes that =
add users to groups cannot rely on other recipes creating those groups =
(when population from sstate happens)<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13424" =
target=3D"_blank">13424</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>devupstream =
doesn't work with mutilib<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13425" =
target=3D"_blank">13425</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Add bblock =
and bbunlock helper tools<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>newcomer@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13550" =
target=3D"_blank">13550</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>username/password specified to gitsm:// does not get =
propagated to submodules<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13599" =
target=3D"_blank">13599</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Enhancement: =
Detect variables that shouldn't be defined in image scope, but in global =
(distro) scope<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13674" =
target=3D"_blank">13674</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>master dnf =
failures on qemumips<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13808" =
target=3D"_blank">13808</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>do_task[noexec] =3D &quot;&quot; marks task noexec, =
which is inconsistent with docs<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13868" =
target=3D"_blank">13868</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Python cache =
files get lost in packages<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13910" =
target=3D"_blank">13910</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Intermittent =
host UID contamination highlighted by devtool =
tests<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13919" =
target=3D"_blank">13919</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Multi =
License GPLv3 -lic cannot be installed into the image because it has =
incompatible license<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13920" =
target=3D"_blank">13920</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>uninative =
tarball license compliance in ESDK<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13954" =
target=3D"_blank">13954</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Invalid =
layerindex data causing backtrace in `bitbake-layers =
layerindex-fetch`<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13980" =
target=3D"_blank">13980</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Investigate =
replacements for PhantomJS for buildperf output<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14007" =
target=3D"_blank">14007</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>When qemu =
hangs, try to create a snapshot or core file.<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14015" =
target=3D"_blank">14015</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>URL =
Arguments in MIRROR/PREMIRROR get encoded<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14020" =
target=3D"_blank">14020</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>environment-setup script in multilib eSDK doesn't work =
for multilib variant<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14098" =
target=3D"_blank">14098</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>absolute =
path in TEMPLATECONF should be rejected or warned, makes ext-sdk =
uninstallable<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14118" =
target=3D"_blank">14118</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>systemd =
services not enabled when using package feed<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14126" =
target=3D"_blank">14126</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>resolvconf =
incompatible with busybox flock<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>newcomer@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14136" =
target=3D"_blank">14136</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>If u-boot =
defconfig is incomplete, 'bitbake u-boot -c configure' hangs and eats =
all memory<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14139" =
target=3D"_blank">14139</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>systemd =
user/groups different on opkg vs rpm images<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14154" =
target=3D"_blank">14154</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>yocto-check-layer fails incorrectly with kernel hash =
changes<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14155" =
target=3D"_blank">14155</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>yocto-check-layer fails with hash changes if license =
added<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14157" =
target=3D"_blank">14157</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>git fetcher: =
consider using different git commands for repo packing, eliminating =
&quot;git pack-redundant&quot;<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>newcomer@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14196" =
target=3D"_blank">14196</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Add =
integration to send data to KCIDB<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14206" =
target=3D"_blank">14206</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>oe-selftest =
perl errors on rpm based distros<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14218" =
target=3D"_blank">14218</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Recipe =
rebuilds can contaminate builds<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14263" =
target=3D"_blank">14263</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT =
PTEST: lttng-tools ptest intermittent failure<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14348" =
target=3D"_blank">14348</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Layer =
dependencies not updated<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14383" =
target=3D"_blank">14383</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>archiver.bbclass:do_ar_mirror copies entire contents =
of ${DL_DIR} to ${WORKDIR} when used with =
npm.bbclass<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14385" =
target=3D"_blank">14385</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>mode of =
sstate files created under pseudo<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14386" =
target=3D"_blank">14386</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>patchelf =
breaks go -native executables<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14443" =
target=3D"_blank">14443</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>valgrind =
none/tests/amd64/fb_test_amd64 ptest intermittent =
failure<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14461" =
target=3D"_blank">14461</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>devtool =
sdk-update do not clean old version files<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14462" =
target=3D"_blank">14462</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>devtool =
sdk-update does not update sstate-cache<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14466" =
target=3D"_blank">14466</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>python: =
Should we add this optimization: -fno-semantic-interposition for 1.3x =
speed improvment?<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>tgamblin@baylibre.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14520" =
target=3D"_blank">14520</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>A =
qemuboot.conf file isn't generated if the rootfs wasn't =
modified<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14523" =
target=3D"_blank">14523</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>oe-pkgdata-util list-pkg-files doesn't ignore =
target-sdk-provides-dummy.bb<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14528" =
target=3D"_blank">14528</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>remove =
floppy controller from qemu<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14538" =
target=3D"_blank">14538</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Recipes =
shouldn't use &quot;virtual/&quot; in RPROVIDES and =
RDEPENDS<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>newcomer@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14620" =
target=3D"_blank">14620</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>QA error not =
seen when reusing SSTATE<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14665" =
target=3D"_blank">14665</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
prservice.BitbakePrTests.test_import_export_replace_db =
failure<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14691" =
target=3D"_blank">14691</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Bitbake does =
not check for all required perl modules to build =
oe-core<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14693" =
target=3D"_blank">14693</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>cmake-native =
do_configure fails when rebuilding without sstate on NIS =
hosts<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14717" =
target=3D"_blank">14717</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>OEToolchainConfig.cmake sets wrong and unsuitable =
compiler flags<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14749" =
target=3D"_blank">14749</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Missing test =
cases for initramfs runtime testing<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14781" =
target=3D"_blank">14781</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Add =
indication that a layer/branch is no longer being =
updated.<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14804" =
target=3D"_blank">14804</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>busybox and =
dpkg versions of start-stop-daemon disagree on symlink =
location<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14811" =
target=3D"_blank">14811</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Incorrect =
path matching in pseudo cause package failure in =
yocto<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14843" =
target=3D"_blank">14843</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Need better =
messages for reproducibility errors where the only difference is in =
package filename<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14860" =
target=3D"_blank">14860</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Cannot build =
x86-64 Go SDK on aarch64<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14866" =
target=3D"_blank">14866</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>testsdk logs =
missing information<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14870" =
target=3D"_blank">14870</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Dangling =
bbappend behaviour can lead to unexpected surprises (error vs =
warn)<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14876" =
target=3D"_blank">14876</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>rust: =
Improve reproducibility patch<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>Yash.Shinde@windriver.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14918" =
target=3D"_blank">14918</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Devtool =
fails if SRCREV is set to ${AUTOREV}<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14921" =
target=3D"_blank">14921</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>devtool =
failure: No such file or directory: =
'/tmp/devtoolqambdi_6eh/singletask.lock'<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14930" =
target=3D"_blank">14930</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>connman - =
sysvinit - nfs/dhcp hangs in langdale/master<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14944" =
target=3D"_blank">14944</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>go recipes =
are not devtool upgradeable<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14945" =
target=3D"_blank">14945</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>devtool =
upgrade multiple architectures, targets<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14982" =
target=3D"_blank">14982</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Some layers =
in the layerindex data have breaking subdirectory changes in =
&quot;master&quot; branch<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14986" =
target=3D"_blank">14986</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>Check =
libraries linked with qemu<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>newcomer@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14989" =
target=3D"_blank">14989</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>layerindex =
cannot add layers with &quot;main&quot; (not &quot;master&quot;) =
branch<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14992" =
target=3D"_blank">14992</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>layerindex: =
update.py fails to determine layer dependencies when collections =
contains &quot;core &lt;...&gt;&quot;<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15005" =
target=3D"_blank">15005</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>ParseError =
in None: Not all recipes parsed, parser thread killed/died? =
Exiting.<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15020" =
target=3D"_blank">15020</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>No test =
coverage of fs-uuid.bbclass<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15039" =
target=3D"_blank">15039</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>https://layers.openembedded.org/ lacks links for =
reporting bugs<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15051" =
target=3D"_blank">15051</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT =
PTEST: testresults.json corruption<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15055" =
target=3D"_blank">15055</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
busybox compile fails and caused gdb self-test =
failure.<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15060" =
target=3D"_blank">15060</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
libgcc_s.so.1 must be installed for pthread_cancel to =
work<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15067" =
target=3D"_blank">15067</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>System =
groups like sgx, wheel, renderer etc. which are not in any recipe are =
not being set by useradd-staticids bbclass<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15071" =
target=3D"_blank">15071</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT =
PTEST: strace ptest intermittent failure in =
syscall-times-ms.gen<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15074" =
target=3D"_blank">15074</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>syncfs probe =
fails with newer compilers<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15079" =
target=3D"_blank">15079</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT =
PTEST: strace count ptest failure<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15080" =
target=3D"_blank">15080</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT =
PTEST: strace regex.gen ptest failure<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M3<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15081" =
target=3D"_blank">15081</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT =
PTEST: tcl aaa_exit ptest failure<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15087" =
target=3D"_blank">15087</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
prservice.BitbakePrTests.test_stopping_prservice_message failure PID =
file not found<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15088" =
target=3D"_blank">15088</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
do_fetch unable to fetch local file<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15095" =
target=3D"_blank">15095</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>recipes-devtools/go-1.20 native: not possible to build =
with go 1.4<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15101" =
target=3D"_blank">15101</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
dnf.DnfRepoTest.test_dnf_reinstall failure<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>pavel@zhukoff.net<o:p></o:p></p></td><td width=3D49 =
valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15140" =
target=3D"_blank">15140</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
yocto-testresults tagging failure, tag already =
exists<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>alexis.lothore@bootlin.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D42 =
valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15142" =
target=3D"_blank">15142</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>useradd: =
missing /bin/false with ipk packages<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>unassigned@yoctoproject.org<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D42 =
valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15144" =
target=3D"_blank">15144</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>AB-INT: =
cve-update-db-native do_fetch failure, error 503<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>steve@sakoman.com<o:p></o:p></p></td><td width=3D49 =
valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D42 =
valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.75pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal =
align=3Dright style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15145" =
target=3D"_blank">15145</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>module conf =
files missing when KERNEL_SPLIT_MODULES=3D0<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>george.thopas@gmail.com<o:p></o:p></p></td><td =
width=3D49 valign=3Dbottom =
style=3D'width:37.0pt;border-top:none;border-left:none;border-bottom:soli=
d black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td width=3D42 =
valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.75pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr></table><p class=3DMsoNormal><span =
style=3D'color:black'>Thanks,</span><span style=3D'color:white'> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
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
------=_NextPart_000_1254_01D9A2D5.6D3C9180--


