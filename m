Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.221.1576597118314984823
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 07:38:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NULJmFR0;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mtownsend1973@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4765E0108C; Tue, 17 Dec 2019 07:38:37 -0800 (PST)
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
	*      [209.85.217.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67B81E01081
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 07:38:35 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id t12so6706224vso.13
        for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 07:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Oy3RECD+q3F8wY2qSkmQ/su803oQnuedlgBYtRubHNw=;
        b=NULJmFR0GNLidJqT4fjYegF6vkWNWnNSxmO4vB5TQMwqPy8tbfXYs6BFwQv2Oe0tsR
         7+wCNygPNCGkcMNGjvBjviVLeja+pNxpSZBLJIE6VXe1unpCI6KVyIO3p2jhtuwVA1AE
         PkRltyVyGHeOToEoqj1ZVSzyfW/a8ems9ZSCSm8lXXEm8kiH043PKqHbWT/VklfeP3tX
         e6WqyXx3zlz3w5VTdiYSlarr6S4p3ya6+EGuxQemc/yTqaZL8gW8ir2HavNucFmGATJl
         JJ3l6PdOuw8Jc9mhT6KncQcoDxOc3G7SQbNF7RAaE4eUefDIO7Blnj7aQF+AcW76sN7l
         OfqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Oy3RECD+q3F8wY2qSkmQ/su803oQnuedlgBYtRubHNw=;
        b=b3v9oSqzkZ6rw2ojDm+Xsa1HtX5seV9v2dUl3iEC1dgrvxz6CrugBmznJQm36Fzu1/
         CTvjQ3SDoThxm+QB7JdLZNi8DLKwn9kouErnj3C52RlCL4hf6haMlhgUIr5CLkMAKkCK
         eBCl8MosDhZpPzk7c4SiHHUzhPk/kmecIcF+LKGcGJnWTr4f4qVoGAbiyu6B3eE+YzxO
         mp9RaKBnQXIiCEVpoZV6jKLiWW5Z1+2EDVxz3IwE+GFL9n6aP+XF8Yoi+PlRcd6ESnf0
         cRhu/+4sabPd+Xn0z6GnXe+lrkAfbnsE9kvQF7VwijgstbY/l6srj54/NJRWWRof4T2k
         y7iA==
X-Gm-Message-State: APjAAAVQ21sj0/Zl0YIHI2GhcnbEC1YAnR+JXlW+fUI2huB0Ehci3CbN
	VLWVD1PxB1agg52m28DIEYUIvICC05s+GLZwytyRIg==
X-Google-Smtp-Source: APXvYqwHbNSq0n6+Xkb9lAzSNRAdZO6L0pP7ovgk/5Uk3L9vdPaX5tn0EbZtpUhKTJ4wN54Afwdwi7ZmNepKxrK5YsA=
X-Received: by 2002:a05:6102:7d8:: with SMTP id y24mr3214557vsg.78.1576597114315;
 Tue, 17 Dec 2019 07:38:34 -0800 (PST)
MIME-Version: 1.0
References: <CABatt_zwj96BDawDHGJ+UdbgzfeXG34PzRFbEAvHpdNERzSjSQ@mail.gmail.com>
In-Reply-To: <CABatt_zwj96BDawDHGJ+UdbgzfeXG34PzRFbEAvHpdNERzSjSQ@mail.gmail.com>
From: "Martin Townsend" <mtownsend1973@gmail.com>
Date: Tue, 17 Dec 2019 15:38:21 +0000
Message-ID: <CABatt_wc4GNGzuS6cB6kSvdz6BOBJwkMKL4LbMhynR-AQg6WtA@mail.gmail.com>
Subject: Re: Problem build SDK with Zeus release
To: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f3eb220599e81ee8"

--000000000000f3eb220599e81ee8
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 17, 2019 at 3:17 PM Martin Townsend <mtownsend1973@gmail.com>
wrote:

> Hi,
>
> I've upgraded to Zeus from Rocko but can't seem to get the SDK to build
> that built fine in Rocko.  I'm using dpkg which I think has something to do
> with it. Here is the error message and it mentions rpm so I'm wondering if
> there is some problem with using the debian package manager and building
> the sdk.
>
> Any help would be greatly appreciated,
> Martin.
>
>
> Identifying dependency loops (this may take a short while)...
>
> ERROR:
> Dependency loop #1 found:
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_compile
> (dependent Tasks ['ncurses_6.1+20190803.bb:do_configure'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_install
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
> 'ncurses_6.1+20190803.bb:do_compile'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_populate_sysroot
> (dependent Tasks ['ncurses_6.1+20190803.bb:do_install',
> 'binutils-crosssdk_2.32.bb:do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
> 'pkgconfig_git.bb:do_populate_sysroot', 'gcc-crosssdk_9.2.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot', 'zlib_1.2.11.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot', 'bzip2_1.0.8.bb:do_populate_sysroot',
> 'perl_5.30.0.bb:do_populate_sysroot', 'chrpath_0.16.bb:do_populate_sysroot',
> 'xz_5.2.4.bb:do_populate_sysroot', 'automake_1.16.1.bb:do_populate_sysroot',
> 'ncurses_6.1+20190803.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:do_fetch',
> 'gettext_0.19.8.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_populate_sysroot',
> 'perl_5.30.0.bb:do_populate_sysroot', 'libtool-native_2.4.6.bb:
> do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_configure
> (dependent Tasks ['dpkg_1.19.7.bb:do_patch', 'dpkg_1.19.7.bb:
> do_prepare_recipe_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_compile
> (dependent Tasks ['dpkg_1.19.7.bb:do_configure'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_install
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:
> do_compile'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_populate_sysroot
> (dependent Tasks ['binutils-crosssdk_2.32.bb:do_populate_sysroot',
> 'dpkg_1.19.7.bb:do_install'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
> 'ncurses_6.1+20190803.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:do_populate_sysroot',
> 'ncurses_6.1+20190803.bb:do_fetch', 'gnu-config_git.bb:do_populate_sysroot',
> 'pkgconfig_git.bb:do_populate_sysroot', 'autoconf_2.69.bb:do_populate_sysroot',
> 'gcc-crosssdk_9.2.bb:do_populate_sysroot', 'chrpath_0.16.bb:do_populate_sysroot',
> 'automake_1.16.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_populate_sysroot',
> 'libtool-native_2.4.6.bb:do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_configure
> (dependent Tasks ['ncurses_6.1+20190803.bb:do_prepare_recipe_sysroot',
> 'ncurses_6.1+20190803.bb:do_patch'])
>
> Dependency loop #2 found:
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_package
> (dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
> 'ncurses_6.1+20190803.bb:do_install', 'pseudo_git.bb:do_populate_sysroot',
> 'dwarfsrcfiles.bb:do_populate_sysroot', 'glibc_2.30.bb:do_packagedata',
> 'dpkg_1.19.7.bb:do_packagedata'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_packagedata
> (dependent Tasks ['ncurses_6.1+20190803.bb:do_package'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_package
> (dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
> 'dpkg_1.19.7.bb:do_install', 'xz_5.2.4.bb:do_packagedata',
> 'zlib_1.2.11.bb:do_packagedata', 'ncurses_6.1+20190803.bb:do_packagedata',
> 'pseudo_git.bb:do_populate_sysroot', 'perl_5.30.0.bb:do_packagedata',
> 'bzip2_1.0.8.bb:do_packagedata', 'dwarfsrcfiles.bb:do_populate_sysroot',
> 'glibc_2.30.bb:do_packagedata'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata
> (dependent Tasks ['dpkg_1.19.7.bb:do_package'])
>
> Dependency loop #3 found:
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_package
> (dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
> 'dpkg_1.19.7.bb:do_install', 'xz_5.2.4.bb:do_packagedata',
> 'zlib_1.2.11.bb:do_packagedata', 'ncurses_6.1+20190803.bb:do_packagedata',
> 'pseudo_git.bb:do_populate_sysroot', 'perl_5.30.0.bb:do_packagedata',
> 'bzip2_1.0.8.bb:do_packagedata', 'dwarfsrcfiles.bb:do_populate_sysroot',
> 'glibc_2.30.bb:do_packagedata'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata
> (dependent Tasks ['dpkg_1.19.7.bb:do_package'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_package
> (dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata', 'bzip2_1.0.8.bb:do_install',
> 'rpm_4.14.2.1.bb:do_populate_sysroot', 'pseudo_git.bb:do_populate_sysroot',
> 'dwarfsrcfiles.bb:do_populate_sysroot', 'glibc_2.30.bb:do_packagedata',
> 'dpkg_1.19.7.bb:do_packagedata'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_packagedata
> (dependent Tasks ['bzip2_1.0.8.bb:do_package'])
>
> Dependency loop #4 found:
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_package
> (dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
> 'dpkg_1.19.7.bb:do_install', 'xz_5.2.4.bb:do_packagedata',
> 'zlib_1.2.11.bb:do_packagedata', 'ncurses_6.1+20190803.bb:do_packagedata',
> 'pseudo_git.bb:do_populate_sysroot', 'perl_5.30.0.bb:do_packagedata',
> 'bzip2_1.0.8.bb:do_packagedata', 'dwarfsrcfiles.bb:do_populate_sysroot',
> 'glibc_2.30.bb:do_packagedata'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata
> (dependent Tasks ['dpkg_1.19.7.bb:do_package'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_package
> (dependent Tasks ['gcc-runtime_9.2.bb:do_packagedata', 'rpm_4.14.2.1.bb:do_populate_sysroot',
> 'pseudo_git.bb:do_populate_sysroot', 'dwarfsrcfiles.bb:do_populate_sysroot',
> 'glibc_2.30.bb:do_packagedata', 'xz_5.2.4.bb:do_install', 'dpkg_1.19.7.bb:
> do_packagedata'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_packagedata
> (dependent Tasks ['xz_5.2.4.bb:do_package'])
>
> Dependency loop #5 found:
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_compile
> (dependent Tasks ['dpkg_1.19.7.bb:do_configure'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_install
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:
> do_compile'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_populate_sysroot
> (dependent Tasks ['binutils-crosssdk_2.32.bb:do_populate_sysroot',
> 'dpkg_1.19.7.bb:do_install'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
> 'dpkg_1.19.7.bb:do_populate_sysroot', 'gcc-crosssdk_9.2.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot', 'xz_5.2.4.bb:do_fetch',
> 'autoconf_2.69.bb:do_populate_sysroot', 'chrpath_0.16.bb:do_populate_sysroot',
> 'automake_1.16.1.bb:do_populate_sysroot', 'gettext_0.19.8.1.bb:do_populate_sysroot',
> 'glibc_2.30.bb:do_populate_sysroot', 'libtool-native_2.4.6.bb:
> do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_configure
> (dependent Tasks ['xz_5.2.4.bb:do_patch', 'xz_5.2.4.bb:
> do_prepare_recipe_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_compile
> (dependent Tasks ['xz_5.2.4.bb:do_configure'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_install
> (dependent Tasks ['xz_5.2.4.bb:do_compile', 'pseudo_git.bb:
> do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_populate_sysroot
> (dependent Tasks ['xz_5.2.4.bb:do_install', 'binutils-crosssdk_2.32.bb:
> do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
> 'pkgconfig_git.bb:do_populate_sysroot', 'gcc-crosssdk_9.2.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot', 'zlib_1.2.11.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot', 'bzip2_1.0.8.bb:do_populate_sysroot',
> 'perl_5.30.0.bb:do_populate_sysroot', 'chrpath_0.16.bb:do_populate_sysroot',
> 'xz_5.2.4.bb:do_populate_sysroot', 'automake_1.16.1.bb:do_populate_sysroot',
> 'ncurses_6.1+20190803.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:do_fetch',
> 'gettext_0.19.8.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_populate_sysroot',
> 'perl_5.30.0.bb:do_populate_sysroot', 'libtool-native_2.4.6.bb:
> do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_configure
> (dependent Tasks ['dpkg_1.19.7.bb:do_patch', 'dpkg_1.19.7.bb:
> do_prepare_recipe_sysroot'])
>
> Dependency loop #6 found:
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_compile
> (dependent Tasks ['dpkg_1.19.7.bb:do_configure'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_install
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:
> do_compile'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_populate_sysroot
> (dependent Tasks ['binutils-crosssdk_2.32.bb:do_populate_sysroot',
> 'dpkg_1.19.7.bb:do_install'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
> 'dpkg_1.19.7.bb:do_populate_sysroot', 'gcc-crosssdk_9.2.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot', 'autoconf_2.69.bb:do_populate_sysroot',
> 'chrpath_0.16.bb:do_populate_sysroot', 'automake_1.16.1.bb:do_populate_sysroot',
> 'bzip2_1.0.8.bb:do_fetch', 'glibc_2.30.bb:do_populate_sysroot',
> 'libtool-native_2.4.6.bb:do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_configure
> (dependent Tasks ['bzip2_1.0.8.bb:do_patch', 'bzip2_1.0.8.bb:
> do_prepare_recipe_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_compile
> (dependent Tasks ['bzip2_1.0.8.bb:do_configure'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_install
> (dependent Tasks ['bzip2_1.0.8.bb:do_compile', 'pseudo_git.bb:
> do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_populate_sysroot
> (dependent Tasks ['bzip2_1.0.8.bb:do_install', 'binutils-crosssdk_2.32.bb:
> do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['gcc-runtime_9.2.bb:do_populate_sysroot',
> 'pkgconfig_git.bb:do_populate_sysroot', 'gcc-crosssdk_9.2.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot', 'zlib_1.2.11.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot', 'bzip2_1.0.8.bb:do_populate_sysroot',
> 'perl_5.30.0.bb:do_populate_sysroot', 'chrpath_0.16.bb:do_populate_sysroot',
> 'xz_5.2.4.bb:do_populate_sysroot', 'automake_1.16.1.bb:do_populate_sysroot',
> 'ncurses_6.1+20190803.bb:do_populate_sysroot', 'dpkg_1.19.7.bb:do_fetch',
> 'gettext_0.19.8.1.bb:do_populate_sysroot', 'glibc_2.30.bb:do_populate_sysroot',
> 'perl_5.30.0.bb:do_populate_sysroot', 'libtool-native_2.4.6.bb:
> do_populate_sysroot'])
>   Task
> virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_configure
> (dependent Tasks ['dpkg_1.19.7.bb:do_patch', 'dpkg_1.19.7.bb:
> do_prepare_recipe_sysroot'])
>
>
> I took dpkg out of the SDK and it fixed the circular dependency, the
problem is we need dpkg-deb in the SDK.  I think the problem is to do with
us enabling update-alternatives-dpkg in the dpkg recipe which then puts a
dependency on dpkg for all recipes using virtual/update-alternatives.  I've
just been looking at opkg to see it handles this and noticed there is a
opkg-utils which provides updates-alternatives.  I think I'll try the same
with dpkg and create a dpkg-utils and put update-alternatives in there.

--000000000000f3eb220599e81ee8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 17, 2019 at 3:17 PM Marti=
n Townsend &lt;<a href=3D"mailto:mtownsend1973@gmail.com">mtownsend1973@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve upgraded to Zeus fro=
m Rocko but can&#39;t seem to get the SDK to build that built fine in Rocko=
.=C2=A0 I&#39;m using dpkg which I think has something to do with it. Here =
is the error message and it mentions rpm so I&#39;m wondering if there is s=
ome problem with using the debian package manager and building the sdk.</di=
v><div><br></div><div>Any help would be greatly appreciated,</div><div>Mart=
in.</div><div><br></div><div><br></div><div>Identifying dependency loops (t=
his may take a short while)...<br><br>ERROR: <br>Dependency loop #1 found:<=
br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/=
recipes-core/ncurses/ncurses_6.1+20190803.bb:do_compile (dependent Tasks [&=
#39;ncurses_6.1+20190803.bb:do_configure&#39;])<br>=C2=A0 Task virtual:nati=
vesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-core/ncurses/ncurse=
s_6.1+20190803.bb:do_install (dependent Tasks [&#39;pseudo_git.bb:do_popula=
te_sysroot&#39;, &#39;ncurses_6.1+20190803.bb:do_compile&#39;])<br>=C2=A0 T=
ask virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-cor=
e/ncurses/ncurses_6.1+20190803.bb:do_populate_sysroot (dependent Tasks [&#3=
9;ncurses_6.1+20190803.bb:do_install&#39;, &#39;binutils-crosssdk_2.32.bb:d=
o_populate_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus=
/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_prepare_r=
ecipe_sysroot (dependent Tasks [&#39;gcc-runtime_9.2.bb:do_populate_sysroot=
&#39;, &#39;pkgconfig_git.bb:do_populate_sysroot&#39;, &#39;gcc-crosssdk_9.=
2.bb:do_populate_sysroot&#39;, &#39;gnu-config_git.bb:do_populate_sysroot&#=
39;, &#39;zlib_1.2.11.bb:do_populate_sysroot&#39;, &#39;autoconf_2.69.bb:do=
_populate_sysroot&#39;, &#39;bzip2_1.0.8.bb:do_populate_sysroot&#39;, &#39;=
perl_5.30.0.bb:do_populate_sysroot&#39;, &#39;chrpath_0.16.bb:do_populate_s=
ysroot&#39;, &#39;xz_5.2.4.bb:do_populate_sysroot&#39;, &#39;automake_1.16.=
1.bb:do_populate_sysroot&#39;, &#39;ncurses_6.1+20190803.bb:do_populate_sys=
root&#39;, &#39;dpkg_1.19.7.bb:do_fetch&#39;, &#39;gettext_0.19.8.1.bb:do_p=
opulate_sysroot&#39;, &#39;glibc_2.30.bb:do_populate_sysroot&#39;, &#39;per=
l_5.30.0.bb:do_populate_sysroot&#39;, &#39;libtool-native_2.4.6.bb:do_popul=
ate_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/=
../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_configure (depen=
dent Tasks [&#39;dpkg_1.19.7.bb:do_patch&#39;, &#39;dpkg_1.19.7.bb:do_prepa=
re_recipe_sysroot&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/=
build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_compile (d=
ependent Tasks [&#39;dpkg_1.19.7.bb:do_configure&#39;])<br>=C2=A0 Task virt=
ual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dp=
kg/dpkg_1.19.7.bb:do_install (dependent Tasks [&#39;pseudo_git.bb:do_popula=
te_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_compile&#39;])<br>=C2=A0 Task virtu=
al:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpk=
g/dpkg_1.19.7.bb:do_populate_sysroot (dependent Tasks [&#39;binutils-crosss=
dk_2.32.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_install&#39;])<=
br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/=
recipes-core/ncurses/ncurses_6.1+20190803.bb:do_prepare_recipe_sysroot (dep=
endent Tasks [&#39;gcc-runtime_9.2.bb:do_populate_sysroot&#39;, &#39;ncurse=
s_6.1+20190803.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_populate=
_sysroot&#39;, &#39;ncurses_6.1+20190803.bb:do_fetch&#39;, &#39;gnu-config_=
git.bb:do_populate_sysroot&#39;, &#39;pkgconfig_git.bb:do_populate_sysroot&=
#39;, &#39;autoconf_2.69.bb:do_populate_sysroot&#39;, &#39;gcc-crosssdk_9.2=
.bb:do_populate_sysroot&#39;, &#39;chrpath_0.16.bb:do_populate_sysroot&#39;=
, &#39;automake_1.16.1.bb:do_populate_sysroot&#39;, &#39;glibc_2.30.bb:do_p=
opulate_sysroot&#39;, &#39;libtool-native_2.4.6.bb:do_populate_sysroot&#39;=
])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/me=
ta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_configure (dependent Tas=
ks [&#39;ncurses_6.1+20190803.bb:do_prepare_recipe_sysroot&#39;, &#39;ncurs=
es_6.1+20190803.bb:do_patch&#39;])<br><br>Dependency loop #2 found:<br>=C2=
=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipe=
s-core/ncurses/ncurses_6.1+20190803.bb:do_package (dependent Tasks [&#39;gc=
c-runtime_9.2.bb:do_packagedata&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysr=
oot&#39;, &#39;ncurses_6.1+20190803.bb:do_install&#39;, &#39;pseudo_git.bb:=
do_populate_sysroot&#39;, &#39;dwarfsrcfiles.bb:do_populate_sysroot&#39;, &=
#39;glibc_2.30.bb:do_packagedata&#39;, &#39;dpkg_1.19.7.bb:do_packagedata&#=
39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky=
/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_packagedata (dependen=
t Tasks [&#39;ncurses_6.1+20190803.bb:do_package&#39;])<br>=C2=A0 Task virt=
ual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dp=
kg/dpkg_1.19.7.bb:do_package (dependent Tasks [&#39;gcc-runtime_9.2.bb:do_p=
ackagedata&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysroot&#39;, &#39;dpkg_1=
.19.7.bb:do_install&#39;, &#39;xz_5.2.4.bb:do_packagedata&#39;, &#39;zlib_1=
.2.11.bb:do_packagedata&#39;, &#39;ncurses_6.1+20190803.bb:do_packagedata&#=
39;, &#39;pseudo_git.bb:do_populate_sysroot&#39;, &#39;perl_5.30.0.bb:do_pa=
ckagedata&#39;, &#39;bzip2_1.0.8.bb:do_packagedata&#39;, &#39;dwarfsrcfiles=
.bb:do_populate_sysroot&#39;, &#39;glibc_2.30.bb:do_packagedata&#39;])<br>=
=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/rec=
ipes-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata (dependent Tasks [&#39;dpk=
g_1.19.7.bb:do_package&#39;])<br><br>Dependency loop #3 found:<br>=C2=A0 Ta=
sk virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devt=
ools/dpkg/dpkg_1.19.7.bb:do_package (dependent Tasks [&#39;gcc-runtime_9.2.=
bb:do_packagedata&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysroot&#39;, &#39=
;dpkg_1.19.7.bb:do_install&#39;, &#39;xz_5.2.4.bb:do_packagedata&#39;, &#39=
;zlib_1.2.11.bb:do_packagedata&#39;, &#39;ncurses_6.1+20190803.bb:do_packag=
edata&#39;, &#39;pseudo_git.bb:do_populate_sysroot&#39;, &#39;perl_5.30.0.b=
b:do_packagedata&#39;, &#39;bzip2_1.0.8.bb:do_packagedata&#39;, &#39;dwarfs=
rcfiles.bb:do_populate_sysroot&#39;, &#39;glibc_2.30.bb:do_packagedata&#39;=
])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/me=
ta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_packagedata (dependent Tasks [&#=
39;dpkg_1.19.7.bb:do_package&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sp=
s/bia-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:d=
o_package (dependent Tasks [&#39;gcc-runtime_9.2.bb:do_packagedata&#39;, &#=
39;bzip2_1.0.8.bb:do_install&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysroot=
&#39;, &#39;pseudo_git.bb:do_populate_sysroot&#39;, &#39;dwarfsrcfiles.bb:d=
o_populate_sysroot&#39;, &#39;glibc_2.30.bb:do_packagedata&#39;, &#39;dpkg_=
1.19.7.bb:do_packagedata&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bi=
a-zeus/build/../yocto/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_pa=
ckagedata (dependent Tasks [&#39;bzip2_1.0.8.bb:do_package&#39;])<br><br>De=
pendency loop #4 found:<br>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/b=
uild/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb:do_package (de=
pendent Tasks [&#39;gcc-runtime_9.2.bb:do_packagedata&#39;, &#39;rpm_4.14.2=
.1.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_install&#39;, &#39;x=
z_5.2.4.bb:do_packagedata&#39;, &#39;zlib_1.2.11.bb:do_packagedata&#39;, &#=
39;ncurses_6.1+20190803.bb:do_packagedata&#39;, &#39;pseudo_git.bb:do_popul=
ate_sysroot&#39;, &#39;perl_5.30.0.bb:do_packagedata&#39;, &#39;bzip2_1.0.8=
.bb:do_packagedata&#39;, &#39;dwarfsrcfiles.bb:do_populate_sysroot&#39;, &#=
39;glibc_2.30.bb:do_packagedata&#39;])<br>=C2=A0 Task virtual:nativesdk:/ws=
/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7.bb=
:do_packagedata (dependent Tasks [&#39;dpkg_1.19.7.bb:do_package&#39;])<br>=
=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/rec=
ipes-extended/xz/xz_5.2.4.bb:do_package (dependent Tasks [&#39;gcc-runtime_=
9.2.bb:do_packagedata&#39;, &#39;rpm_4.14.2.1.bb:do_populate_sysroot&#39;, =
&#39;pseudo_git.bb:do_populate_sysroot&#39;, &#39;dwarfsrcfiles.bb:do_popul=
ate_sysroot&#39;, &#39;glibc_2.30.bb:do_packagedata&#39;, &#39;xz_5.2.4.bb:=
do_install&#39;, &#39;dpkg_1.19.7.bb:do_packagedata&#39;])<br>=C2=A0 Task v=
irtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-extended=
/xz/xz_5.2.4.bb:do_packagedata (dependent Tasks [&#39;xz_5.2.4.bb:do_packag=
e&#39;])<br><br>Dependency loop #5 found:<br>=C2=A0 Task virtual:nativesdk:=
/ws/sps/bia-zeus/build/../yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.19.7=
.bb:do_compile (dependent Tasks [&#39;dpkg_1.19.7.bb:do_configure&#39;])<br=
>=C2=A0 Task virtual:nativesdk:/ws/sps/bia-zeus/build/../yocto/poky/meta/re=
cipes-devtools/dpkg/dpkg_1.19.7.bb:do_install (dependent Tasks [&#39;pseudo=
_git.bb:do_populate_sysroot&#39;, &#39;dpkg_1.19.7.bb:do_compile&#39;])<br>=
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
></div></div></blockquote><div>I took dpkg out of the SDK and it fixed the =
circular dependency, the problem is we need dpkg-deb in the SDK.=C2=A0 I th=
ink the problem is to do with us enabling update-alternatives-dpkg in the d=
pkg recipe which then puts a dependency on dpkg for all recipes using virtu=
al/update-alternatives.=C2=A0 I&#39;ve just been looking at opkg to see it =
handles this and noticed there is a opkg-utils which provides updates-alter=
natives.=C2=A0 I think I&#39;ll try the same with dpkg and create a dpkg-ut=
ils and put update-alternatives in there.</div><div>=C2=A0<br></div></div><=
/div>

--000000000000f3eb220599e81ee8--
