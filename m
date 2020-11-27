Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web09.25762.1606516014714222117
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Nov 2020 14:26:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lwfxVCOQ;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id h20so5657662qkk.4
        for <yocto@lists.yoctoproject.org>; Fri, 27 Nov 2020 14:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lV+PLo5MwOxMlKbgDLZN3fzVaJBlN97ZYa4QBaKUyMo=;
        b=lwfxVCOQyvebBb+pam3GXS8rmCvubRXYJ6tPh7DyVZWCFv+2s1p9qhVj/RzrQtUo5r
         BHoQSTXz6Da4TjynYFzssJ2gDUGz8MDHtqNrk6M6Lisv1JOunHIR4L6N+7DHKfsM+xEy
         HdF7g/1GPI5zSu4kyXiWFNTNvTiz/5CflXofz3WQXa127J4aKKHVdhQLGm1heam0BT0+
         50Bd13TUcWZoWRZEwnKQB/AONrU+Z4cTPyAICKDWWXd9FM30XDDZod2iI4V2mn9//HIX
         MAaNungkz5M2394PVZMxdGZgzJI0IcKTcBbjIWJxwrscLRZWV8u/t0tE86qaqP/g4ZvS
         VTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lV+PLo5MwOxMlKbgDLZN3fzVaJBlN97ZYa4QBaKUyMo=;
        b=KZvkl3DcMw+tPr0cO+NLLpamuN1coa5M4P86pkfK2OF7C5BgEWG+BbQI4ba9OTH28h
         X38CQK+K51rVXyfIUjcF5I0zlYLTp1IJdp+YdaNF5PAUpPkQNWIIKs9ZEAE6CNVKccKU
         MSu/jHfBLmgp8+uk9rIR6QGlOiOLaSNbukgLf89DPTPggNktOEvygq5Dym3QaCkZY35w
         5gQC/pvyxJuDDmBDteitzCFmSkLKAsGjnvA4/mG/vATd4KgANV2XiBmf/Y8HH+dxaPIk
         I4igiRj97DrH6pIrWHDaVZjIgBU5kma/F5gbVNW8N1ObjkvGT4luu/6TMHUAKXfX6yo+
         vMDA==
X-Gm-Message-State: AOAM533AoCVxhUQcwXF+Cf2o5vOzs7+5yT2IgEwBe8n4Zvz4yR2/ssJN
	aYpuFlkCTpCUgGNg9HwyISrEPGdpyKVuvuVXS80=
X-Google-Smtp-Source: ABdhPJzTCfhawtbZWiBqBfeHPNmahLjhexx5BThikrq58yx1UEhKMTeqGAuuC8itz5Akkd6GezCdThz/mWDG/LRB9eM=
X-Received: by 2002:a37:6195:: with SMTP id v143mr10635053qkb.71.1606516013735;
 Fri, 27 Nov 2020 14:26:53 -0800 (PST)
MIME-Version: 1.0
References: <20201127101637.25274-1-twoerner@gmail.com>
In-Reply-To: <20201127101637.25274-1-twoerner@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 27 Nov 2020 14:26:27 -0800
Message-ID: <CAMKF1soJFRGh8eEfYLkgA1vC_fC+bJoAtd+R83iCBtQXgsRY=g@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] userland: add knob for ALL_APPS
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Trevor

On Fri, Nov 27, 2020 at 2:17 AM Trevor Woerner <twoerner@gmail.com> wrote:
>
> The userland sources include a bunch of sample applications. Add an "allapps"
> PACKAGECONFIG to allow the user to build the additional optional applications.
>

change is okay, Can you create a GH pull request for this please

> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  ...cations-remove-non-existent-projects.patch | 30 +++++++++++++++++++
>  ...ptionally-build-wayland-specific-app.patch | 28 +++++++++++++++++
>  recipes-graphics/userland/userland_git.bb     |  4 +++
>  3 files changed, 62 insertions(+)
>  create mode 100644 recipes-graphics/userland/files/0022-all-host_applications-remove-non-existent-projects.patch
>  create mode 100644 recipes-graphics/userland/files/0023-hello_pi-optionally-build-wayland-specific-app.patch
>
> diff --git a/recipes-graphics/userland/files/0022-all-host_applications-remove-non-existent-projects.patch b/recipes-graphics/userland/files/0022-all-host_applications-remove-non-existent-projects.patch
> new file mode 100644
> index 0000000..595eefb
> --- /dev/null
> +++ b/recipes-graphics/userland/files/0022-all-host_applications-remove-non-existent-projects.patch
> @@ -0,0 +1,30 @@
> +From 451e8458e45926e4e1c0433864ac4cf8b05d792b Mon Sep 17 00:00:00 2001
> +From: Trevor Woerner <twoerner@gmail.com>
> +Date: Fri, 27 Nov 2020 03:12:26 -0500
> +Subject: [PATCH] all host_applications: remove non-existent projects
> +
> +The ALL_APPS symbol will optionally build an additional set of projects,
> +however, several of them don't exist anymore. Remove them from the list of
> +ALL_APPS.
> +
> +Upstream-status: submitted [https://github.com/raspberrypi/userland/pull/661]
> +Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> +---
> + host_applications/linux/CMakeLists.txt | 4 ----
> + 1 file changed, 4 deletions(-)
> +
> +diff --git a/host_applications/linux/CMakeLists.txt b/host_applications/linux/CMakeLists.txt
> +index 928b637..554ae46 100644
> +--- a/host_applications/linux/CMakeLists.txt
> ++++ b/host_applications/linux/CMakeLists.txt
> +@@ -14,10 +14,6 @@ add_subdirectory(apps/dtoverlay)
> + add_subdirectory(apps/dtmerge)
> +
> + if(ALL_APPS)
> +- add_subdirectory(apps/vcdbg)
> +- add_subdirectory(libs/elftoolchain)
> +- # add_subdirectory(apps/smct)
> +- add_subdirectory(apps/edid_parser)
> +  add_subdirectory(apps/hello_pi)
> + endif()
> +
> diff --git a/recipes-graphics/userland/files/0023-hello_pi-optionally-build-wayland-specific-app.patch b/recipes-graphics/userland/files/0023-hello_pi-optionally-build-wayland-specific-app.patch
> new file mode 100644
> index 0000000..642ee86
> --- /dev/null
> +++ b/recipes-graphics/userland/files/0023-hello_pi-optionally-build-wayland-specific-app.patch
> @@ -0,0 +1,28 @@
> +From 5f4324a0008c2e8e1f511432f98bf85c9fffd35c Mon Sep 17 00:00:00 2001
> +From: Trevor Woerner <twoerner@gmail.com>
> +Date: Fri, 27 Nov 2020 03:18:50 -0500
> +Subject: [PATCH] hello_pi: optionally build wayland-specific app
> +
> +Only build the wayland-specific hello_pi app when building for wayland.
> +
> +Upstream-status: inappropriate [the wayland example is not part of upstream]
> +Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> +---
> + host_applications/linux/apps/hello_pi/CMakeLists.txt | 4 +++-
> + 1 file changed, 3 insertions(+), 1 deletion(-)
> +
> +diff --git a/host_applications/linux/apps/hello_pi/CMakeLists.txt b/host_applications/linux/apps/hello_pi/CMakeLists.txt
> +index 2849fad..7de3265 100644
> +--- a/host_applications/linux/apps/hello_pi/CMakeLists.txt
> ++++ b/host_applications/linux/apps/hello_pi/CMakeLists.txt
> +@@ -25,7 +25,9 @@ add_subdirectory(hello_encode)
> + add_subdirectory(hello_jpeg)
> + add_subdirectory(hello_videocube)
> + add_subdirectory(hello_teapot)
> +-add_subdirectory(hello_wayland)
> ++if (BUILD_WAYLAND)
> ++    add_subdirectory(hello_wayland)
> ++endif()
> +
> + if(BUILD_FONT)
> + set(VGFONT_SRCS libs/vgfont/font.c libs/vgfont/vgft.c libs/vgfont/graphics.c)
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 1d9dc1e..32aa4a5 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -42,6 +42,8 @@ SRC_URI = "\
>      file://0019-libfdt-Undefine-__wordsize-if-already-defined.patch \
>      file://0020-openmaxil-add-pkg-config-file.patch \
>      file://0021-cmake-Disable-format-overflow-warning-as-error.patch \
> +    file://0022-all-host_applications-remove-non-existent-projects.patch \
> +    file://0023-hello_pi-optionally-build-wayland-specific-app.patch \
>  "
>
>  SRC_URI_remove_toolchain-clang = "file://0021-cmake-Disable-format-overflow-warning-as-error.patch"
> @@ -52,8 +54,10 @@ inherit cmake pkgconfig
>
>  ASNEEDED = ""
>
> +ALLAPPS = "${@bb.utils.contains('PACKAGECONFIG', 'allapps', '-DALL_APPS=true', '', d)}"
>  EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed' \
>                   -DVMCS_INSTALL_PREFIX=${exec_prefix} \
> +                 ${ALLAPPS} \
>  "
>
>  EXTRA_OECMAKE_append_aarch64 = " -DARM64=ON "
> --
> 2.28.0.497.g54e85e7af1
>
>
> 
>
