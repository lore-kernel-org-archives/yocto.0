Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4786.1576595869732643178
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 07:17:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KXYFKoeA;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mtownsend1973@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CCE0E0108B; Tue, 17 Dec 2019 07:17:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67ABEE00E1E
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 07:17:47 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id v12so2674007vsv.5
        for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 07:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=9qtEUum/dmvsfalPfdvTMarW3l/gM583/ABllNdYiV8=;
        b=KXYFKoeARufZLbOEiE3eZmqSAXK7Wt73hyOPg/UeozHCSYqx4hot/SNMFlGsGuYKjL
         Dhpe1B0xNGJtvg4cGiwX4iAFTw7Rtx0tq/Q2m6v8yYkToHUP68qiyewqEKcgaxAVO+B6
         D7v9Zo+wxOVpA821qdUfebkKfFHXLT7/DtTtJAkWoNUr97eUl1fmIm9eOHUAvAGbqztj
         iD3U9NdtAu5XPP1ozSRAjJwp7JDdmNjoGP0TGcY95Hf7gIOIoBAunA5suhOwECG2LEhn
         ItIHjj1W7ir8j0qz6AL8gIuekeuALnMq2VoumB6uUzTtMbMVnAVkqyAb8KeCouON5Z1Q
         u8dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9qtEUum/dmvsfalPfdvTMarW3l/gM583/ABllNdYiV8=;
        b=UZ72Sw3dyTWiohd1Pa9GFbmwcVg48dE3iVK34bo1VHNvBK4jvAwGXAPMH98XCM3UWb
         u16gS64g9dO2p0kkoxvv3cANM605RQXHXNFXQvVkKrsQq1LolNaxtVL089M7cZ16xJrh
         wX9GFYQDcP0j8QVdkdqxPufJRQ0ZbW2L9FVttNedUAQGHCKz1goDuiuD48w1lImfQyso
         Gnc6P7DXo1QvPgGxPwVwhWq26ZQI3M5vIEmoY5Weu2SHtUu5W9J5UKNi0Os9KiMiKJFf
         +gMG7zRGdQjj4PueJyt+s2p4I+XZRV/+czrza2yGm8w7qMpMiD+ONCLVOwu14REL/ECP
         2pjw==
X-Gm-Message-State: APjAAAVZOU39K9BOROc7ZxBKo4iD9zn14TXFGO8NmpmdP1Aq0ljyL524
	IYlUnJ+sxf+VxkZjJniGqG93nr7Hg9wIWuZ6iNXhL5f9
X-Google-Smtp-Source: APXvYqywsaNarK3nPnEaKSyPM+/pAHQxUwFY753bBMwjE58QMjqraVm+lFAEDXbaGSGx0J6DzBExkLdN9JAK6BRz+BU=
X-Received: by 2002:a67:fd56:: with SMTP id g22mr3312034vsr.67.1576595866215;
 Tue, 17 Dec 2019 07:17:46 -0800 (PST)
MIME-Version: 1.0
From: "Martin Townsend" <mtownsend1973@gmail.com>
Date: Tue, 17 Dec 2019 15:17:35 +0000
Message-ID: <CABatt_zwj96BDawDHGJ+UdbgzfeXG34PzRFbEAvHpdNERzSjSQ@mail.gmail.com>
Subject: Problem build SDK with Zeus release
To: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008f684d0599e7d4d3"

--0000000000008f684d0599e7d4d3
Content-Type: text/plain; charset="UTF-8"

Hi,

I've upgraded to Zeus from Rocko but can't seem to get the SDK to build
that built fine in Rocko.  I'm using dpkg which I think has something to do
with it. Here is the error message and it mentions rpm so I'm wondering if
there is some problem with using the debian package manager and building
the sdk.

Any help would be greatly appreciated,
Martin.


Identifying dependency loops (this may take a short while)...

ERROR:
Dependency loop #1 found:
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_compile
(dependent Tasks ['ncurses_6.1+20190803.bb:do_configure'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_install
(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
'ncurses_6.1+20190803.bb:do_compile'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_populate_sysroot
(dependent Tasks ['ncurses_6.1+20190803.bb:do_install',
'binutils-crosssdk_2.32.bb:do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_prepare_recipe_sysroot
(dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
'pkgconfig_git.bb:do_populate_sysroot',
'gcc-crosssdk_9.2.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot', 'zlib_1.2.11.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot', 'bzip2_1.0.8.bb:do_populate_sysroot',
'perl_5.30.0.bb:do_populate_sysroot', 'chrpath_0.16.bb:do_populate_sysroot',
'xz_5.2.4.bb:do_populate_sysroot', 'automake_1.16.1.bb:do_populate_sysroot',
'ncurses_6.1+20190803.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:do_fetch',
'gettext_0.19.8.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_populate_sysroot',
'perl_5.30.0.bb:do_populate_sysroot', 'libtool-native_2.4.6.bb:
do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_configure
(dependent Tasks ['dpkg_1.19.7.bb:do_patch', 'dpkg_1.19.7.bb:
do_prepare_recipe_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_compile
(dependent Tasks ['dpkg_1.19.7.bb:do_configure'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_install
(dependent Tasks ['pseudo_git.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:
do_compile'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_populate_sysroot
(dependent Tasks ['binutils-crosssdk_2.32.bb:do_populate_sysroot',
'dpkg_1.19.7.bb:do_install'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_prepare_recipe_sysroot
(dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
'ncurses_6.1+20190803.bb:do_populate_sysroot',
'dpkg_1.19.7.bb:do_populate_sysroot',
'ncurses_6.1+20190803.bb:do_fetch', 'gnu-config_git.bb:do_populate_sysroot',
'pkgconfig_git.bb:do_populate_sysroot', 'autoconf_2.69.bb:do_populate_sysroot',
'gcc-crosssdk_9.2.bb:do_populate_sysroot',
'chrpath_0.16.bb:do_populate_sysroot',
'automake_1.16.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_populate_sysroot',
'libtool-native_2.4.6.bb:do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_configure
(dependent Tasks ['ncurses_6.1+20190803.bb:do_prepare_recipe_sysroot',
'ncurses_6.1+20190803.bb:do_patch'])

Dependency loop #2 found:
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_package
(dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata',
'rpm_4.14.2.1.bb:do_populate_sysroot',
'ncurses_6.1+20190803.bb:do_install', 'pseudo_git.bb:do_populate_sysroot',
'dwarfsrcfiles.bb:do_populate_sysroot', 'glibc_2.30.bb:do_packagedata',
'dpkg_1.19.7.bb:do_packagedata'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_packagedata
(dependent Tasks ['ncurses_6.1+20190803.bb:do_package'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_package
(dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata',
'rpm_4.14.2.1.bb:do_populate_sysroot',
'dpkg_1.19.7.bb:do_install', 'xz_5.2.4.bb:do_packagedata',
'zlib_1.2.11.bb:do_packagedata',
'ncurses_6.1+20190803.bb:do_packagedata', 'pseudo_git.bb:do_populate_sysroot',
'perl_5.30.0.bb:do_packagedata', 'bzip2_1.0.8.bb:do_packagedata',
'dwarfsrcfiles.bb:do_populate_sysroot', 'glibc_2.30.bb:do_packagedata'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata
(dependent Tasks ['dpkg_1.19.7.bb:do_package'])

Dependency loop #3 found:
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_package
(dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata',
'rpm_4.14.2.1.bb:do_populate_sysroot',
'dpkg_1.19.7.bb:do_install', 'xz_5.2.4.bb:do_packagedata',
'zlib_1.2.11.bb:do_packagedata',
'ncurses_6.1+20190803.bb:do_packagedata', 'pseudo_git.bb:do_populate_sysroot',
'perl_5.30.0.bb:do_packagedata', 'bzip2_1.0.8.bb:do_packagedata',
'dwarfsrcfiles.bb:do_populate_sysroot', 'glibc_2.30.bb:do_packagedata'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata
(dependent Tasks ['dpkg_1.19.7.bb:do_package'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_package
(dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata',
'bzip2_1.0.8.bb:do_install',
'rpm_4.14.2.1.bb:do_populate_sysroot', 'pseudo_git.bb:do_populate_sysroot',
'dwarfsrcfiles.bb:do_populate_sysroot', 'glibc_2.30.bb:do_packagedata',
'dpkg_1.19.7.bb:do_packagedata'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_packagedata
(dependent Tasks ['bzip2_1.0.8.bb:do_package'])

Dependency loop #4 found:
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_package
(dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata',
'rpm_4.14.2.1.bb:do_populate_sysroot',
'dpkg_1.19.7.bb:do_install', 'xz_5.2.4.bb:do_packagedata',
'zlib_1.2.11.bb:do_packagedata',
'ncurses_6.1+20190803.bb:do_packagedata', 'pseudo_git.bb:do_populate_sysroot',
'perl_5.30.0.bb:do_packagedata', 'bzip2_1.0.8.bb:do_packagedata',
'dwarfsrcfiles.bb:do_populate_sysroot', 'glibc_2.30.bb:do_packagedata'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata
(dependent Tasks ['dpkg_1.19.7.bb:do_package'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_package
(dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata',
'rpm_4.14.2.1.bb:do_populate_sysroot',
'pseudo_git.bb:do_populate_sysroot', 'dwarfsrcfiles.bb:do_populate_sysroot',
'glibc_2.30.bb:do_packagedata', 'xz_5.2.4.bb:do_install', 'dpkg_1.19.7.bb:
do_packagedata'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_packagedata
(dependent Tasks ['xz_5.2.4.bb:do_package'])

Dependency loop #5 found:
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_compile
(dependent Tasks ['dpkg_1.19.7.bb:do_configure'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_install
(dependent Tasks ['pseudo_git.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:
do_compile'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_populate_sysroot
(dependent Tasks ['binutils-crosssdk_2.32.bb:do_populate_sysroot',
'dpkg_1.19.7.bb:do_install'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_prepare_recipe_sysroot
(dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
'dpkg_1.19.7.bb:do_populate_sysroot',
'gcc-crosssdk_9.2.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'xz_5.2.4.bb:do_fetch', 'autoconf_2.69.bb:do_populate_sysroot',
'chrpath_0.16.bb:do_populate_sysroot',
'automake_1.16.1.bb:do_populate_sysroot',
'gettext_0.19.8.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_populate_sysroot',
'libtool-native_2.4.6.bb:do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_configure
(dependent Tasks ['xz_5.2.4.bb:do_patch', 'xz_5.2.4.bb:
do_prepare_recipe_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_compile
(dependent Tasks ['xz_5.2.4.bb:do_configure'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_install
(dependent Tasks ['xz_5.2.4.bb:do_compile', 'pseudo_git.bb:
do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_populate_sysroot
(dependent Tasks ['xz_5.2.4.bb:do_install', 'binutils-crosssdk_2.32.bb:
do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_prepare_recipe_sysroot
(dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
'pkgconfig_git.bb:do_populate_sysroot',
'gcc-crosssdk_9.2.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot', 'zlib_1.2.11.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot', 'bzip2_1.0.8.bb:do_populate_sysroot',
'perl_5.30.0.bb:do_populate_sysroot', 'chrpath_0.16.bb:do_populate_sysroot',
'xz_5.2.4.bb:do_populate_sysroot', 'automake_1.16.1.bb:do_populate_sysroot',
'ncurses_6.1+20190803.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:do_fetch',
'gettext_0.19.8.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_populate_sysroot',
'perl_5.30.0.bb:do_populate_sysroot', 'libtool-native_2.4.6.bb:
do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_configure
(dependent Tasks ['dpkg_1.19.7.bb:do_patch', 'dpkg_1.19.7.bb:
do_prepare_recipe_sysroot'])

Dependency loop #6 found:
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_compile
(dependent Tasks ['dpkg_1.19.7.bb:do_configure'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_install
(dependent Tasks ['pseudo_git.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:
do_compile'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_populate_sysroot
(dependent Tasks ['binutils-crosssdk_2.32.bb:do_populate_sysroot',
'dpkg_1.19.7.bb:do_install'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_prepare_recipe_sysroot
(dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
'dpkg_1.19.7.bb:do_populate_sysroot',
'gcc-crosssdk_9.2.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot', 'chrpath_0.16.bb:do_populate_sysroot',
'automake_1.16.1.bb:do_populate_sysroot', 'bzip2_1.0.8.bb:do_fetch',
'glibc_2.30.bb:do_populate_sysroot', 'libtool-native_2.4.6.bb:
do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_configure
(dependent Tasks ['bzip2_1.0.8.bb:do_patch', 'bzip2_1.0.8.bb:
do_prepare_recipe_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_compile
(dependent Tasks ['bzip2_1.0.8.bb:do_configure'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_install
(dependent Tasks ['bzip2_1.0.8.bb:do_compile', 'pseudo_git.bb:
do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_populate_sysroot
(dependent Tasks ['bzip2_1.0.8.bb:do_install', 'binutils-crosssdk_2.32.bb:
do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_prepare_recipe_sysroot
(dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
'pkgconfig_git.bb:do_populate_sysroot',
'gcc-crosssdk_9.2.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot', 'zlib_1.2.11.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot', 'bzip2_1.0.8.bb:do_populate_sysroot',
'perl_5.30.0.bb:do_populate_sysroot', 'chrpath_0.16.bb:do_populate_sysroot',
'xz_5.2.4.bb:do_populate_sysroot', 'automake_1.16.1.bb:do_populate_sysroot',
'ncurses_6.1+20190803.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:do_fetch',
'gettext_0.19.8.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_populate_sysroot',
'perl_5.30.0.bb:do_populate_sysroot', 'libtool-native_2.4.6.bb:
do_populate_sysroot'])
  Task
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_configure
(dependent Tasks ['dpkg_1.19.7.bb:do_patch', 'dpkg_1.19.7.bb:
do_prepare_recipe_sysroot'])

--0000000000008f684d0599e7d4d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve upgraded to Zeus from Rock=
o but can&#39;t seem to get the SDK to build that built fine in Rocko.=C2=
=A0 I&#39;m using dpkg which I think has something to do with it. Here is t=
he error message and it mentions rpm so I&#39;m wondering if there is some =
problem with using the debian package manager and building the sdk.</div><d=
iv><br></div><div>Any help would be greatly appreciated,</div><div>Martin.<=
/div><div><br></div><div><br></div><div>Identifying dependency loops (this =
may take a short while)...<br><br>ERROR: <br>Dependency loop #1 found:<br>=
=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/rec=
ipes-core/ncurses/ncurses_6.1+20190803.bb:do_compile (dependent Tasks [&#39=
;ncurses_6.1+20190803.bb:do_configure&#39;])<br>=C2=A0 Task virtual:natives=
dk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6=
.1+20190803.bb:do_install (dependent Tasks [&#39;pseudo_git.bb:do_populate_=
sysroot&#39;, &#39;ncurses_6.1+20190803.bb:do_compile&#39;])<br>=C2=A0 Task=
 virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/n=
curses/ncurses_6.1+20190803.bb:do_populate_sysroot (dependent Tasks [&#39;n=
curses_6.1+20190803.bb:do_install&#39;, &#39;binutils-crosssdk_2.32.bb:do_p=
opulate_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/bu=
ild/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_prepare_reci=
pe_sysroot (dependent Tasks [&#39;gcc-runtime_9.2.bb:do_populate_sysroot&#3=
9;, &#39;pkgconfig_git.bb:do_populate_sysroot&#39;, &#39;gcc-crosssdk_9.2.b=
b:do_populate_sysroot&#39;, &#39;gnu-config_git.bb:do_populate_sysroot&#39;=
, &#39;zlib_1.2.11.bb:do_populate_sysroot&#39;, &#39;autoconf_2.69.bb:do_po=
pulate_sysroot&#39;, &#39;bzip2_1.0.8.bb:do_populate_sysroot&#39;, &#39;per=
l_5.30.0.bb:do_populate_sysroot&#39;, &#39;chrpath_0.16.bb:do_populate_sysr=
oot&#39;, &#39;xz_5.2.4.bb:do_populate_sysroot&#39;, &#39;automake_1.16.1.b=
b:do_populate_sysroot&#39;, &#39;ncurses_6.1+20190803.bb:do_populate_sysroo=
t&#39;, &#39;dpkg_1.19.7.bb:do_fetch&#39;, &#39;gettext_0.19.8.1.bb:do_popu=
late_sysroot&#39;, &#39;glibc_2.30.bb:do_populate_sysroot&#39;, &#39;perl_5=
.30.0.bb:do_populate_sysroot&#39;, &#39;libtool-native_2.4.6.bb:do_populate=
_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../=
yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_configure (dependen=
t Tasks [&#39;dpkg_1.19.7.bb:do_patch&#39;, &#39;dpkg_1.19.7.bb:do_prepare_=
recipe_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/bui=
ld/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_compile (depe=
ndent Tasks [&#39;dpkg_1.19.7.bb:do_configure&#39;])<br>=C2=A0 Task virtual=
:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/=
dpkg_1.19.7.bb:do_install (dependent Tasks [&#39;pseudo_git.bb:do_populate_=
sysroot&#39;, &#39;dpkg_1.19.7.bb:do_compile&#39;])<br>=C2=A0 Task virtual:=
nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/d=
pkg_1.19.7.bb:do_populate_sysroot (dependent Tasks [&#39;binutils-crosssdk_=
2.32.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_install&#39;])<br>=
=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/rec=
ipes-core/ncurses/ncurses_6.1+20190803.bb:do_prepare_recipe_sysroot (depend=
ent Tasks [&#39;gcc-runtime_9.2.bb:do_populate_sysroot&#39;, &#39;ncurses_6=
.1+20190803.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_populate_sy=
sroot&#39;, &#39;ncurses_6.1+20190803.bb:do_fetch&#39;, &#39;gnu-config_git=
.bb:do_populate_sysroot&#39;, &#39;pkgconfig_git.bb:do_populate_sysroot&#39=
;, &#39;autoconf_2.69.bb:do_populate_sysroot&#39;, &#39;gcc-crosssdk_9.2.bb=
:do_populate_sysroot&#39;, &#39;chrpath_0.16.bb:do_populate_sysroot&#39;, &=
#39;automake_1.16.1.bb:do_populate_sysroot&#39;, &#39;glibc_2.30.bb:do_popu=
late_sysroot&#39;, &#39;libtool-native_2.4.6.bb:do_populate_sysroot&#39;])<=
br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/=
recipes-core/ncurses/ncurses_6.1+20190803.bb:do_configure (dependent Tasks =
[&#39;ncurses_6.1+20190803.bb:do_prepare_recipe_sysroot&#39;, &#39;ncurses_=
6.1+20190803.bb:do_patch&#39;])<br><br>Dependency loop #2 found:<br>=C2=A0 =
Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-co=
re/ncurses/ncurses_6.1+20190803.bb:do_package (dependent Tasks [&#39;gcc-ru=
ntime_9.2.bb:do_packagedata&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysroot&=
#39;, &#39;ncurses_6.1+20190803.bb:do_install&#39;, &#39;pseudo_git.bb:do_p=
opulate_sysroot&#39;, &#39;dwarfsrcfiles.bb:do_populate_sysroot&#39;, &#39;=
glibc_2.30.bb:do_packagedata&#39;, &#39;dpkg_1.19.7.bb:do_packagedata&#39;]=
)<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/met=
a/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_packagedata (dependent Ta=
sks [&#39;ncurses_6.1+20190803.bb:do_package&#39;])<br>=C2=A0 Task virtual:=
nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/d=
pkg_1.19.7.bb:do_package (dependent Tasks [&#39;gcc-runtime_9.2.bb:do_packa=
gedata&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.=
7.bb:do_install&#39;, &#39;xz_5.2.4.bb:do_packagedata&#39;, &#39;zlib_1.2.1=
1.bb:do_packagedata&#39;, &#39;ncurses_6.1+20190803.bb:do_packagedata&#39;,=
 &#39;pseudo_git.bb:do_populate_sysroot&#39;, &#39;perl_5.30.0.bb:do_packag=
edata&#39;, &#39;bzip2_1.0.8.bb:do_packagedata&#39;, &#39;dwarfsrcfiles.bb:=
do_populate_sysroot&#39;, &#39;glibc_2.30.bb:do_packagedata&#39;])<br>=C2=
=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipe=
s-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata (dependent Tasks [&#39;dpkg_1=
.19.7.bb:do_package&#39;])<br><br>Dependency loop #3 found:<br>=C2=A0 Task =
virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtool=
s/dpkg/dpkg_1.19.7.bb:do_package (dependent Tasks [&#39;gcc-runtime_9.2.bb:=
do_packagedata&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysroot&#39;, &#39;dp=
kg_1.19.7.bb:do_install&#39;, &#39;xz_5.2.4.bb:do_packagedata&#39;, &#39;zl=
ib_1.2.11.bb:do_packagedata&#39;, &#39;ncurses_6.1+20190803.bb:do_packageda=
ta&#39;, &#39;pseudo_git.bb:do_populate_sysroot&#39;, &#39;perl_5.30.0.bb:d=
o_packagedata&#39;, &#39;bzip2_1.0.8.bb:do_packagedata&#39;, &#39;dwarfsrcf=
iles.bb:do_populate_sysroot&#39;, &#39;glibc_2.30.bb:do_packagedata&#39;])<=
br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/=
recipes-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata (dependent Tasks [&#39;=
dpkg_1.19.7.bb:do_package&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/b=
ia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_p=
ackage (dependent Tasks [&#39;gcc-runtime_9.2.bb:do_packagedata&#39;, &#39;=
bzip2_1.0.8.bb:do_install&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysroot&#3=
9;, &#39;pseudo_git.bb:do_populate_sysroot&#39;, &#39;dwarfsrcfiles.bb:do_p=
opulate_sysroot&#39;, &#39;glibc_2.30.bb:do_packagedata&#39;, &#39;dpkg_1.1=
9.7.bb:do_packagedata&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-z=
eus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_packa=
gedata (dependent Tasks [&#39;bzip2_1.0.8.bb:do_package&#39;])<br><br>Depen=
dency loop #4 found:<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/buil=
d/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_package (depen=
dent Tasks [&#39;gcc-runtime_9.2.bb:do_packagedata&#39;, &#39;rpm_4.14.2.1.=
bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_install&#39;, &#39;xz_5=
.2.4.bb:do_packagedata&#39;, &#39;zlib_1.2.11.bb:do_packagedata&#39;, &#39;=
ncurses_6.1+20190803.bb:do_packagedata&#39;, &#39;pseudo_git.bb:do_populate=
_sysroot&#39;, &#39;perl_5.30.0.bb:do_packagedata&#39;, &#39;bzip2_1.0.8.bb=
:do_packagedata&#39;, &#39;dwarfsrcfiles.bb:do_populate_sysroot&#39;, &#39;=
glibc_2.30.bb:do_packagedata&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sp=
s/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do=
_packagedata (dependent Tasks [&#39;dpkg_1.19.7.bb:do_package&#39;])<br>=C2=
=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipe=
s-extended/xz/xz_5.2.4.bb:do_package (dependent Tasks [&#39;gcc-runtime_9.2=
.bb:do_packagedata&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysroot&#39;, &#3=
9;pseudo_git.bb:do_populate_sysroot&#39;, &#39;dwarfsrcfiles.bb:do_populate=
_sysroot&#39;, &#39;glibc_2.30.bb:do_packagedata&#39;, &#39;xz_5.2.4.bb:do_=
install&#39;, &#39;dpkg_1.19.7.bb:do_packagedata&#39;])<br>=C2=A0 Task virt=
ual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz=
/xz_5.2.4.bb:do_packagedata (dependent Tasks [&#39;xz_5.2.4.bb:do_package&#=
39;])<br><br>Dependency loop #5 found:<br>=C2=A0 Task virtual:nativesdk:/ws=
/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb=
:do_compile (dependent Tasks [&#39;dpkg_1.19.7.bb:do_configure&#39;])<br>=
=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/rec=
ipes-devtools/dpkg/dpkg_1.19.7.bb:do_install (dependent Tasks [&#39;pseudo_=
git.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_compile&#39;])<br>=
=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/rec=
ipes-devtools/dpkg/dpkg_1.19.7.bb:do_populate_sysroot (dependent Tasks [&#3=
9;binutils-crosssdk_2.32.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:d=
o_install&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/..=
/yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_prepare_recipe_sysroot =
(dependent Tasks [&#39;gcc-runtime_9.2.bb:do_populate_sysroot&#39;, &#39;dp=
kg_1.19.7.bb:do_populate_sysroot&#39;, &#39;gcc-crosssdk_9.2.bb:do_populate=
_sysroot&#39;, &#39;gnu-config_git.bb:do_populate_sysroot&#39;, &#39;xz_5.2=
.4.bb:do_fetch&#39;, &#39;autoconf_2.69.bb:do_populate_sysroot&#39;, &#39;c=
hrpath_0.16.bb:do_populate_sysroot&#39;, &#39;automake_1.16.1.bb:do_populat=
e_sysroot&#39;, &#39;gettext_0.19.8.1.bb:do_populate_sysroot&#39;, &#39;gli=
bc_2.30.bb:do_populate_sysroot&#39;, &#39;libtool-native_2.4.6.bb:do_popula=
te_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/.=
./yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_configure (dependent T=
asks [&#39;xz_5.2.4.bb:do_patch&#39;, &#39;xz_5.2.4.bb:do_prepare_recipe_sy=
sroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yoc=
to/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_compile (dependent Tasks [&=
#39;xz_5.2.4.bb:do_configure&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sp=
s/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_inst=
all (dependent Tasks [&#39;xz_5.2.4.bb:do_compile&#39;, &#39;pseudo_git.bb:=
do_populate_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeu=
s/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_populate_sysr=
oot (dependent Tasks [&#39;xz_5.2.4.bb:do_install&#39;, &#39;binutils-cross=
sdk_2.32.bb:do_populate_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws=
/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb=
:do_prepare_recipe_sysroot (dependent Tasks [&#39;gcc-runtime_9.2.bb:do_pop=
ulate_sysroot&#39;, &#39;pkgconfig_git.bb:do_populate_sysroot&#39;, &#39;gc=
c-crosssdk_9.2.bb:do_populate_sysroot&#39;, &#39;gnu-config_git.bb:do_popul=
ate_sysroot&#39;, &#39;zlib_1.2.11.bb:do_populate_sysroot&#39;, &#39;autoco=
nf_2.69.bb:do_populate_sysroot&#39;, &#39;bzip2_1.0.8.bb:do_populate_sysroo=
t&#39;, &#39;perl_5.30.0.bb:do_populate_sysroot&#39;, &#39;chrpath_0.16.bb:=
do_populate_sysroot&#39;, &#39;xz_5.2.4.bb:do_populate_sysroot&#39;, &#39;a=
utomake_1.16.1.bb:do_populate_sysroot&#39;, &#39;ncurses_6.1+20190803.bb:do=
_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_fetch&#39;, &#39;gettext_0.1=
9.8.1.bb:do_populate_sysroot&#39;, &#39;glibc_2.30.bb:do_populate_sysroot&#=
39;, &#39;perl_5.30.0.bb:do_populate_sysroot&#39;, &#39;libtool-native_2.4.=
6.bb:do_populate_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bi=
a-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_con=
figure (dependent Tasks [&#39;dpkg_1.19.7.bb:do_patch&#39;, &#39;dpkg_1.19.=
7.bb:do_prepare_recipe_sysroot&#39;])<br><br>Dependency loop #6 found:<br>=
=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/rec=
ipes-devtools/dpkg/dpkg_1.19.7.bb:do_compile (dependent Tasks [&#39;dpkg_1.=
19.7.bb:do_configure&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-ze=
us/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_install=
 (dependent Tasks [&#39;pseudo_git.bb:do_populate_sysroot&#39;, &#39;dpkg_1=
.19.7.bb:do_compile&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeu=
s/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_populate=
_sysroot (dependent Tasks [&#39;binutils-crosssdk_2.32.bb:do_populate_sysro=
ot&#39;, &#39;dpkg_1.19.7.bb:do_install&#39;])<br>=C2=A0 Task virtual:nativ=
esdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2=
_1.0.8.bb:do_prepare_recipe_sysroot (dependent Tasks [&#39;gcc-runtime_9.2.=
bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_populate_sysroot&#39;, =
&#39;gcc-crosssdk_9.2.bb:do_populate_sysroot&#39;, &#39;gnu-config_git.bb:d=
o_populate_sysroot&#39;, &#39;autoconf_2.69.bb:do_populate_sysroot&#39;, &#=
39;chrpath_0.16.bb:do_populate_sysroot&#39;, &#39;automake_1.16.1.bb:do_pop=
ulate_sysroot&#39;, &#39;bzip2_1.0.8.bb:do_fetch&#39;, &#39;glibc_2.30.bb:d=
o_populate_sysroot&#39;, &#39;libtool-native_2.4.6.bb:do_populate_sysroot&#=
39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky=
/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_configure (dependent Tasks [=
&#39;bzip2_1.0.8.bb:do_patch&#39;, &#39;bzip2_1.0.8.bb:do_prepare_recipe_sy=
sroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yoc=
to/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_compile (dependent Ta=
sks [&#39;bzip2_1.0.8.bb:do_configure&#39;])<br>=C2=A0 Task virtual:natives=
dk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1=
.0.8.bb:do_install (dependent Tasks [&#39;bzip2_1.0.8.bb:do_compile&#39;, &=
#39;pseudo_git.bb:do_populate_sysroot&#39;])<br>=C2=A0 Task virtual:natives=
dk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1=
.0.8.bb:do_populate_sysroot (dependent Tasks [&#39;bzip2_1.0.8.bb:do_instal=
l&#39;, &#39;binutils-crosssdk_2.32.bb:do_populate_sysroot&#39;])<br>=C2=A0=
 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-d=
evtools/dpkg/dpkg_1.19.7.bb:do_prepare_recipe_sysroot (dependent Tasks [&#3=
9;gcc-runtime_9.2.bb:do_populate_sysroot&#39;, &#39;pkgconfig_git.bb:do_pop=
ulate_sysroot&#39;, &#39;gcc-crosssdk_9.2.bb:do_populate_sysroot&#39;, &#39=
;gnu-config_git.bb:do_populate_sysroot&#39;, &#39;zlib_1.2.11.bb:do_populat=
e_sysroot&#39;, &#39;autoconf_2.69.bb:do_populate_sysroot&#39;, &#39;bzip2_=
1.0.8.bb:do_populate_sysroot&#39;, &#39;perl_5.30.0.bb:do_populate_sysroot&=
#39;, &#39;chrpath_0.16.bb:do_populate_sysroot&#39;, &#39;xz_5.2.4.bb:do_po=
pulate_sysroot&#39;, &#39;automake_1.16.1.bb:do_populate_sysroot&#39;, &#39=
;ncurses_6.1+20190803.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_f=
etch&#39;, &#39;gettext_0.19.8.1.bb:do_populate_sysroot&#39;, &#39;glibc_2.=
30.bb:do_populate_sysroot&#39;, &#39;perl_5.30.0.bb:do_populate_sysroot&#39=
;, &#39;libtool-native_2.4.6.bb:do_populate_sysroot&#39;])<br>=C2=A0 Task v=
irtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools=
/dpkg/dpkg_1.19.7.bb:do_configure (dependent Tasks [&#39;dpkg_1.19.7.bb:do_=
patch&#39;, &#39;dpkg_1.19.7.bb:do_prepare_recipe_sysroot&#39;])<br><br><br=
></div></div>

--0000000000008f684d0599e7d4d3--
