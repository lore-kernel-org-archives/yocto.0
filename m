Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web11.10270.1599696096516161770
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 17:01:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rdboc0f/;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id f2so1226387pgd.3
        for <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2020 17:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=q8ia3TPseXp17FmX459CXO1rZmPQrVUt/gSSDQOtVWo=;
        b=Rdboc0f/iFp3hXsWQKUmreMinmEQcfhhP5TkeE4FCtcgjf5XJn2RcjIBQzqOeUihkv
         qbFsg2pGZREiecQPERX4f6AWyFgliDcNsPoeLSnxOES74wd5SF0TFUJTIBXRxDDoarB6
         QnSNJUyjVUevomznSTHY+qo7VamfoCb23KKGFGpjGYXK0iPjoxNMLoo7K6Cl9RhNY0o5
         8TVefLTpI+oT2lS98P5kBgMejrhhbUsfvnen69vHldTmLBKJXXVZIt2m/I5TbY/LRpzc
         8Yb4XVdoWxEhr2y3NEITbdPPkm9WeO+QfvXjE/R0MziizV1+zHqW4xmEhiJLBzlhEBDS
         x+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=q8ia3TPseXp17FmX459CXO1rZmPQrVUt/gSSDQOtVWo=;
        b=KrzZu2lRFJovumIhIgKKk+EONMuGKoCeigyoKpeIgaygfFZddxF96n4JVako0IzQdn
         TKcKaYX3kik/9DePX5lnPvY3xlXvy3faWVNYwKw077/lvhpB+5wzOJrz6WDkoX8nD0EH
         +zMUnCufgO8+FgMq8QZq5eDL+aZvVIBj7Q5SczeotnOapo1zby4Ti6TcpukG9AJmi9NM
         +9Qt6aGQDxyAadRjR1xxlj9ZWLuRUd+Q6Q4vmu4jSn+N0sRQAxE9DCrGU7RdeprmpMtk
         9OTwgqj4u33rd6hX9Cy6qn6TO+OE5BxVWWU3nlZanzG9cAArYxakMFj5ihSUCQEizoHH
         IJRA==
X-Gm-Message-State: AOAM533mWqhqAihFxdd2LBqaqhB38N7OJKV8IgVTHnRTQoAvimdF7OgO
	/1YUzgzzo3Zs658WVo51cBF9MHjindBy0Q==
X-Google-Smtp-Source: ABdhPJwinmgB7bS+SB7JopICgxOOvxbPQHt/bMrATp53D4Wx3K54/6cjlX1nyG7Nwh/4drlUAvO7iA==
X-Received: by 2002:a63:471b:: with SMTP id u27mr2334235pga.139.1599696095454;
        Wed, 09 Sep 2020 17:01:35 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::ff6e? ([2601:646:9200:4e0::ff6e])
        by smtp.gmail.com with ESMTPSA id hg16sm263413pjb.37.2020.09.09.17.01.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 17:01:34 -0700 (PDT)
Subject: Re: [yocto] do_rootfs: Could not invoke dnf
To: majid.nasiry65@gmail.com, yocto@lists.yoctoproject.org
References: <bAma.1599561102693362770.4pvi@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <5a7e48dc-9258-f52b-b9d7-c9f0e7817244@gmail.com>
Date: Wed, 9 Sep 2020 17:01:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <bAma.1599561102693362770.4pvi@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 9/8/20 3:31 AM, majid.nasiry65@gmail.com wrote:
> Hello
> I trying to create an image but when I add a library (opendnp3
> <https://github.com/dnp3/opendnp3>) to image I got below error.
> 
> DEBUG: Executing python function extend_recipe_sysroot
> NOTE: Direct dependencies are
> ['virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_populate_sysroot',
> '/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot',
> '/home/majid/myir-imx-manifest/sources/poky/meta/recipes-core/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-extended/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/dnf/dnf_4.2.2.bb:do_populate_sysroot',
> '/home/majid/myir-imx-manifest/sources/meta-myir/meta-bsp/recipes-security/optee-imx/optee-os_3.7.0.imx.bb:do_populate_sysroot',
> '/home/majid/myir-imx-manifest/sources/meta-myir/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2019.04.bb:do_populate_sysroot',
> '/home/majid/myir-imx-manifest/sources/poky/meta/recipes-core/glibc/cross-localedef-native_2.30.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/opkg/opkg_0.4.1.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/createrepo-c/createrepo-c_0.15.0.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-support/bmap-tools/bmap-tools_3.5.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-extended/pigz/pigz_2.4.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/prelink/prelink_git.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.45.3.bb:do_populate_sysroot',
> '/home/majid/myir-imx-manifest/sources/poky/meta/recipes-kernel/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/opkg-utils/opkg-utils_0.4.1.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot',
> '/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/mklibs/mklibs-native_0.1.44.bb:do_populate_sysroot',
> 'virtual:native:/home/majid/myir-imx-manifest/sources/poky/meta/recipes-devtools/rpm/rpm_4.14.2.1.bb:do_populate_sysroot']
> NOTE: Installed into sysroot: []
> NOTE: Skipping as already exists in sysroot: ['update-rc.d-native',
> 'qemuwrapper-cross', 'ldconfig-native', 'pbzip2-native', 'dnf-native',
> 'optee-os', 'u-boot-imx', 'cross-localedef-native', 'opkg-native',
> 'createrepo-c-native', 'bmap-tools-native', 'pigz-native',
> 'prelink-native', 'e2fsprogs-native', 'depmodwrapper-cross',
> 'pseudo-native', 'opkg-utils-native', 'makedevs-native',
> 'mklibs-native', 'rpm-native', 'systemd-systemctl-native',
> 'shadow-native', 'quilt-native', 'qemu-native', 'kmod-native',
> 'bzip2-native', 'python3-native', 'ninja-native',
> 'gettext-minimal-native', 'librepo-native', 'libcomps-native',
> 'cmake-native', 'libdnf-native', 'python3-iniparse-native',
> 'gcc-runtime', 'glibc', 'libtool-native', 'autoconf-native',
> 'gnu-config-native', 'automake-native', 'libsolv-native',
> 'pkgconfig-native', 'libarchive-native', 'curl-native', 'expat-native',
> 'file-native', 'sqlite3-native', 'zlib-native', 'xz-native',
> 'glib-2.0-native', 'libxml2-native', 'libmodulemd-native',
> 'openssl-native', 'python3-setuptools-native', 'python3-six-native',
> 'binutils-native', 'elfutils-native', 'texinfo-dummy-native',
> 'util-linux-native', 'attr-native', 'perl-native', 'dbus-native',
> 'nss-native', 'popt-native', 'db-native', 'debianutils-native',
> 'gtk-doc-native', 'gdbm-native', 'libtirpc-native', 'libffi-native',
> 'libnsl2-native', 'readline-native', 're2c-native', 'gpgme-native',
> 'libcheck-native', 'ncurses-native', 'gobject-introspection-native',
> 'swig-native', 'json-c-native', 'libgcc', 'linux-libc-headers',
> 'm4-native', 'lzo-native', 'libpcre-native', 'gettext-native',
> 'meson-native', 'libyaml-native', 'unzip-native', 'flex-native',
> 'libcap-ng-native', 'nspr-native', 'libgpg-error-native',
> 'libassuan-native']
> DEBUG: Python function extend_recipe_sysroot finished
> DEBUG: Executing python function do_rootfs
> NOTE: Initializing intercept dir for
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs
> DEBUG: Collected intercepts:
>  
> /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/delay_to_first_boot
>  
> /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/postinst_intercept
>  
> /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/update_font_cache
>  
> /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/update_gio_module_cache
>  
> /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/update_gtk_icon_cache
>  
> /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/update_gtk_immodules_cache
>  
> /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/update_pixbuf_cache
>  
> /home/majid/myir-imx-manifest/sources/poky/scripts/postinst-intercepts/update_udev_hwdb
>  
> NOTE: ###### Generate rootfs #######
> NOTE: Executing
> '/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr/bin/createrepo_c
> --update -q
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo'
> ...
> NOTE: Running
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> -v --rpmverbosity=info -y -c
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/dnf/dnf.conf
> --setopt=reposdir=/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/yum.repos.d
> --installroot=/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs
> --setopt=logdir=/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/temp
> --repofrompath=oe-repo,/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo
> makecache --refresh
> DEBUG: DNF version: 4.2.2
> cachedir:
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/var/cache/dnf
> Added oe-repo repo from
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo
> Making cache files for all metadata files.
> oe-repo: has expired and will be refreshed.
> repo: downloading from remote: oe-repo
> oe-repo                                         127 MB/s | 1.3 MB   
>  00:00    
> not found other for: 
> not found modules for: 
> not found deltainfo for: 
> not found updateinfo for: 
> oe-repo: using metadata from Tue 08 Sep 2020 09:48:47 AM UTC.
> Last metadata expiration check: 0:00:01 ago on Tue 08 Sep 2020 09:48:47
> AM UTC.
> No module defaults found
> Metadata cache created.
>  
> NOTE: Running
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> -v --rpmverbosity=info -y -c
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/dnf/dnf.conf
> --setopt=reposdir=/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/yum.repos.d
> --installroot=/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs
> --setopt=logdir=/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/temp
> --repofrompath=oe-repo,/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo
> --nogpgcheck install locale-base-en-us locale-base-en-gb psplash
> start-service myir-rc-local staticip-network packagegroup-core-boot
> packagegroup-base-extended ppp-quectel u-boot-imx-fw-utils opendnp3
> packagegroup-core-nfs-server alsa-utils packagegroup-core-ssh-dropbear
> packagegroup-fsl-optee-imx run-postinsts
> ERROR: Could not invoke dnf. Command
> '/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> -v --rpmverbosity=info -y -c
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/dnf/dnf.conf
> --setopt=reposdir=/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/etc/yum.repos.d
> --installroot=/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs
> --setopt=logdir=/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/temp
> --repofrompath=oe-repo,/home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo
> --nogpgcheck install locale-base-en-us locale-base-en-gb psplash
> start-service myir-rc-local staticip-network packagegroup-core-boot
> packagegroup-base-extended ppp-quectel u-boot-imx-fw-utils opendnp3
> packagegroup-core-nfs-server alsa-utils packagegroup-core-ssh-dropbear
> packagegroup-fsl-optee-imx run-postinsts' returned 1:
> DNF version: 4.2.2
> cachedir:
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/rootfs/var/cache/dnf
> Added oe-repo repo from
> /home/majid/myir-imx-manifest/build/tmp/work/myd_y6ull14x14-poky-linux-gnueabi/myir-image-core/1.0-r0/oe-rootfs-repo
> repo: using cache for: oe-repo
> not found other for: 
> not found modules for: 
> not found deltainfo for: 
> not found updateinfo for: 
> oe-repo: using metadata from Tue 08 Sep 2020 09:48:47 AM UTC.
> Last metadata expiration check: 0:00:01 ago on Tue 08 Sep 2020 09:48:47
> AM UTC.
> No module defaults found
> No match for argument: opendnp3
> Error: Unable to find a match
>  
> DEBUG: Python function do_rootfs finished
> 
> What is the problem?

Image builder uses debian naming for shared libs, and libraries are
usually pulled in via shlibs resolver as a dependency so it would be
good for you to ensure that this library has a use in image which means
some application depends on it during runtime.

> 
> Regards
> 
> 
> 
