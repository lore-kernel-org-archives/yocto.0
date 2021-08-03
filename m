Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.2337.1628013910165690156
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 11:05:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eaDeZzRX;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id hw6so23761161ejc.10
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 11:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t2cfhMaQQvhAlAcI/C+l/uAO0VoCAYySvAboIvM3qwc=;
        b=eaDeZzRXVlzdcW+r2F3Wo0/ggdtFrdwbU4e8fGdZKMYI1NLPS+vMg/MULnJWUHn89n
         tpD1NEWngkhlvYmUZkIs/pb8XhWry/6i+/k6T0sPlSRns6AabhPT8BBhWFlW8XNlXqsb
         ne+LRIpPOgRmpoROf3e9V8qtD7AnPzH3eO7FtMG+bWFRjSRk54+JeEzanNtP5pJTGl8M
         3TEgS3xvFXe6HCmk1Rke/YZTuPhvFnHysf3mR4RU//Kps7iOjTWDcaw6owm/Tm5GQK5I
         ukdDbyEvCA5ZbfGN1qMh/UQLBlkGkL2YlnzPqR1K/zvAIxIBYSOqWA3DfJknBWvBj9+s
         g01A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t2cfhMaQQvhAlAcI/C+l/uAO0VoCAYySvAboIvM3qwc=;
        b=W8o1pOWGCbfxdVubv/TPpisdAFrmLf76KBTLBYOGbnphOJQa3SVuGZzGUfoOTQp656
         uXJvYwudPWpQxJiJmngpf/Uyvcl32kkpPRyhm2Nw4vytjYP2TwMj2UuB4tHvPHdK2AH4
         RetRDvfgevrFdlc5hVrmRIzcIEPUj9xU+Yph2D+tZaiRd+9AfNkoP09DGAEBE9VJ+g6D
         HajxtGjHCdOFOOu65G3QYA02bBAti4iY/2k7B1scFAhQH7PHNHeq8WFNLOE/bf41eLnh
         J7h6zf2FppZOtY7AE8Vv+s6dxWw4pSmhv01mBhq4x9FxBxi6CuLHsD7ipOSsjYG+Xir4
         MZTw==
X-Gm-Message-State: AOAM531v3jGuhGE4OBmvOR8PUEtZq0gvrPMia8aw8GPK/FPPo98wOuEB
	htm6hz+0b3/88nNqWcHgToRjXN1jjP+LkaTMQR8=
X-Google-Smtp-Source: ABdhPJwizE/56ZHGEnlaSHUTd47fVM/3YFhg5HZaPI8Dg81EF166GT/FC0XBmoVQU5AEuApDJSncH4dXHK4s5QR4+24=
X-Received: by 2002:a17:906:3499:: with SMTP id g25mr21909768ejb.471.1628013908718;
 Tue, 03 Aug 2021 11:05:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210803170230.2647035-1-raj.khem@gmail.com>
In-Reply-To: <20210803170230.2647035-1-raj.khem@gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Tue, 3 Aug 2021 20:04:57 +0200
Message-ID: <CA+chaQc8x67BMS3Wdr6Jq=kGVDSpGSuBF19L5a3Q1ic7dSt8bw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH 1/2] layer: Convert to new override syntax
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b7f7ca05c8ab863f"

--000000000000b7f7ca05c8ab863f
Content-Type: text/plain; charset="UTF-8"

"_rk3399" also needs to be replaced.

On Tue, Aug 3, 2021 at 7:02 PM Khem Raj <raj.khem@gmail.com> wrote:

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  classes/rockchip-gpt-img.bbclass                          | 2 +-
>  conf/machine/include/rockchip-wic.inc                     | 2 +-
>  dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 6 +++---
>  .../trusted-firmware-a/trusted-firmware-a_%.bbappend      | 8 ++++----
>  recipes-bsp/u-boot/u-boot%.bbappend                       | 6 +++---
>  recipes-graphics/mesa/mesa_%.bbappend                     | 4 ++--
>  recipes-kernel/linux/linux-yocto%.bbappend                | 4 ++--
>  recipes-kernel/linux/linux-yocto_5.4.bbappend             | 4 ++--
>  8 files changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/classes/rockchip-gpt-img.bbclass
> b/classes/rockchip-gpt-img.bbclass
> index 3ee46c8..4d22e3a 100644
> --- a/classes/rockchip-gpt-img.bbclass
> +++ b/classes/rockchip-gpt-img.bbclass
> @@ -40,7 +40,7 @@ do_image_rockchip_gpt_img[depends] =
> "parted-native:do_populate_sysroot \
>  PER_CHIP_IMG_GENERATION_COMMAND_rk3288 = "generate_rk3288_loader1_image"
>  PER_CHIP_IMG_GENERATION_COMMAND_rock2-square =
> "generate_rock2_loader1_image"
>
> -IMAGE_CMD_rockchip-gpt-img () {
> +IMAGE_CMD:rockchip-gpt-img () {
>         # Change to image directory
>         cd ${DEPLOY_DIR_IMAGE}
>
> diff --git a/conf/machine/include/rockchip-wic.inc
> b/conf/machine/include/rockchip-wic.inc
> index 61d9f3d..b5939f7 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -23,7 +23,7 @@ RK_CONSOLE_DEVICE ?=
> "${@d.getVar('SERIAL_CONSOLES').split(';')[1].split()[0]}"
>  # boot device (sd-card/emmc)
>  RK_BOOT_DEVICE ??= "mmcblk0"
>
> -WICVARS_append = " \
> +WICVARS:append = " \
>         RK_BOOT_DEVICE \
>         RK_CONSOLE_BAUD \
>         RK_CONSOLE_DEVICE \
> diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> index a977229..645bf8d 100644
> --- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> +++ b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> @@ -1,9 +1,9 @@
>  PACKAGECONFIG_GL_rk3399 = "${@bb.utils.contains('DISTRO_FEATURES', 'x11
> opengl', 'gl', \
>                                bb.utils.contains('DISTRO_FEATURES',
> 'opengl', 'eglfs gles2', \
>                                                  '', d), d)}"
> -PACKAGECONFIG_GL_append_rk3399 = " kms gbm"
> +PACKAGECONFIG_GL:append_rk3399 = " kms gbm"
>
>  PACKAGECONFIG_FONTS_rk3399 = "fontconfig"
>
> -PACKAGECONFIG_append_rk3399 = " libinput examples tslib xkbcommon"
> -PACKAGECONFIG_remove_rk3399 = "tests"
> +PACKAGECONFIG:append_rk3399 = " libinput examples tslib xkbcommon"
> +PACKAGECONFIG:remove_rk3399 = "tests"
> diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> index c90673e..05fdc61 100644
> --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> @@ -1,11 +1,11 @@
>  # Rockchip RK3399 compiles some M0 firmware which requires an
> arm-none-eabi GCC
>  # toolchain
> -DEPENDS_append_rk3399 = " virtual/arm-none-eabi-gcc-native"
> +DEPENDS:append_rk3399 = " virtual/arm-none-eabi-gcc-native"
>
> -COMPATIBLE_MACHINE_append_rk3399 = "|rk3399"
> -COMPATIBLE_MACHINE_append_rk3328 = "|rk3328"
> +COMPATIBLE_MACHINE:append_rk3399 = "|rk3399"
> +COMPATIBLE_MACHINE:append_rk3328 = "|rk3328"
>
> -FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>  SRC_URI += "\
>      file://serial-console-baudrate.patch \
>      file://0001-Fix-build-with-gcc-11.patch \
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend
> b/recipes-bsp/u-boot/u-boot%.bbappend
> index 95c019d..93b629b 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -1,4 +1,4 @@
> -do_compile_append_rock2-square () {
> +do_compile:append_rock2-square () {
>         # copy to default search path
>         if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
>                 cp ${B}/spl/${SPL_BINARY} ${B}
> @@ -7,9 +7,9 @@ do_compile_append_rock2-square () {
>
>  ATF_DEPENDS ??= ""
>
> -EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
> +EXTRA_OEMAKE:append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>  ATF_DEPENDS_rk3399 = " virtual/trusted-firmware-a:do_deploy"
> -EXTRA_OEMAKE_append_rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> +EXTRA_OEMAKE:append_rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
>  ATF_DEPENDS_rk3328 = " virtual/trusted-firmware-a:do_deploy"
>
>  do_compile[depends] .= "${ATF_DEPENDS}"
> diff --git a/recipes-graphics/mesa/mesa_%.bbappend
> b/recipes-graphics/mesa/mesa_%.bbappend
> index 3e8711c..e81eee8 100644
> --- a/recipes-graphics/mesa/mesa_%.bbappend
> +++ b/recipes-graphics/mesa/mesa_%.bbappend
> @@ -1,2 +1,2 @@
> -PACKAGECONFIG_append_rk3288 = " kmsro panfrost"
> -PACKAGECONFIG_append_rk3399 = " kmsro panfrost"
> +PACKAGECONFIG:append_rk3288 = " kmsro panfrost"
> +PACKAGECONFIG:append_rk3399 = " kmsro panfrost"
> diff --git a/recipes-kernel/linux/linux-yocto%.bbappend
> b/recipes-kernel/linux/linux-yocto%.bbappend
> index c2fe9ad..9d9533b 100644
> --- a/recipes-kernel/linux/linux-yocto%.bbappend
> +++ b/recipes-kernel/linux/linux-yocto%.bbappend
> @@ -11,7 +11,7 @@ COMPATIBLE_MACHINE_nanopi-m4-2gb = "nanopi-m4-2gb"
>  COMPATIBLE_MACHINE_rock64 = "rock64"
>  COMPATIBLE_MACHINE_rock-pi-e = "rock-pi-e"
>
> -FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>
>  # indeed applicable to all rk3328 boards
> -SRC_URI_append_rock64 = "
> file://0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch"
> +SRC_URI:append_rock64 = "
> file://0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch"
> diff --git a/recipes-kernel/linux/linux-yocto_5.4.bbappend
> b/recipes-kernel/linux/linux-yocto_5.4.bbappend
> index e832529..266317f 100644
> --- a/recipes-kernel/linux/linux-yocto_5.4.bbappend
> +++ b/recipes-kernel/linux/linux-yocto_5.4.bbappend
> @@ -1,5 +1,5 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
>
>  # tinker-board and tinker-board-s. rk3288 covers both
> -SRC_URI_append_rk3288 = "
> file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
> +SRC_URI:append_rk3288 = "
> file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
>
> --
> 2.32.0
>
>
> 
>
>

--000000000000b7f7ca05c8ab863f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&quot;_rk3399&quot; also needs to be replaced.<br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
Aug 3, 2021 at 7:02 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">r=
aj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gma=
il.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
---<br>
=C2=A0classes/rockchip-gpt-img.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0conf/machine/include/rockchip-wic.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A0dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 6 +++---=
<br>
=C2=A0.../trusted-firmware-a/trusted-firmware-a_%.bbappend=C2=A0 =C2=A0 =
=C2=A0 | 8 ++++----<br>
=C2=A0recipes-bsp/u-boot/u-boot%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 6 +++---<br>
=C2=A0recipes-graphics/mesa/mesa_%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 4 ++--<br>
=C2=A0recipes-kernel/linux/linux-yocto%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++--<br>
=C2=A0recipes-kernel/linux/linux-yocto_5.4.bbappend=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 4 ++--<br>
=C2=A08 files changed, 18 insertions(+), 18 deletions(-)<br>
<br>
diff --git a/classes/rockchip-gpt-img.bbclass b/classes/rockchip-gpt-img.b=
bclass<br>
index 3ee46c8..4d22e3a 100644<br>
--- a/classes/rockchip-gpt-img.bbclass<br>
+++ b/classes/rockchip-gpt-img.bbclass<br>
@@ -40,7 +40,7 @@ do_image_rockchip_gpt_img[depends] =3D &quot;parted-nati=
ve:do_populate_sysroot \<br>
=C2=A0PER_CHIP_IMG_GENERATION_COMMAND_rk3288 =3D &quot;generate_rk3288_loa=
der1_image&quot;<br>
=C2=A0PER_CHIP_IMG_GENERATION_COMMAND_rock2-square =3D &quot;generate_rock=
2_loader1_image&quot;<br>
<br>
-IMAGE_CMD_rockchip-gpt-img () {<br>
+IMAGE_CMD:rockchip-gpt-img () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Change to image directory<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cd ${DEPLOY_DIR_IMAGE}<br>
<br>
diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/=
rockchip-wic.inc<br>
index 61d9f3d..b5939f7 100644<br>
--- a/conf/machine/include/rockchip-wic.inc<br>
+++ b/conf/machine/include/rockchip-wic.inc<br>
@@ -23,7 +23,7 @@ RK_CONSOLE_DEVICE ?=3D &quot;${@d.getVar(&#39;SERIAL_CON=
SOLES&#39;).split(&#39;;&#39;)[1].split()[0]}&quot;<br>
=C2=A0# boot device (sd-card/emmc)<br>
=C2=A0RK_BOOT_DEVICE ??=3D &quot;mmcblk0&quot;<br>
<br>
-WICVARS_append =3D &quot; \<br>
+WICVARS:append =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RK_BOOT_DEVICE \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RK_CONSOLE_BAUD \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RK_CONSOLE_DEVICE \<br>
diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/d=
ynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend<br>
index a977229..645bf8d 100644<br>
--- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend<br>
+++ b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend<br>
@@ -1,9 +1,9 @@<br>
=C2=A0PACKAGECONFIG_GL_rk3399 =3D &quot;${@bb.utils.contains(&#39;DISTRO_F=
EATURES&#39;, &#39;x11 opengl&#39;, &#39;gl&#39;, \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.utils.contains(&#39;DISTRO_FEATUR=
ES&#39;, &#39;opengl&#39;, &#39;eglfs gles2&#39;, \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;&#39;, d), d)}&quot;<br>
-PACKAGECONFIG_GL_append_rk3399 =3D &quot; kms gbm&quot;<br>
+PACKAGECONFIG_GL:append_rk3399 =3D &quot; kms gbm&quot;<br>
<br>
=C2=A0PACKAGECONFIG_FONTS_rk3399 =3D &quot;fontconfig&quot;<br>
<br>
-PACKAGECONFIG_append_rk3399 =3D &quot; libinput examples tslib xkbcommon&=
quot;<br>
-PACKAGECONFIG_remove_rk3399 =3D &quot;tests&quot;<br>
+PACKAGECONFIG:append_rk3399 =3D &quot; libinput examples tslib xkbcommon&=
quot;<br>
+PACKAGECONFIG:remove_rk3399 =3D &quot;tests&quot;<br>
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend =
b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend<br>
index c90673e..05fdc61 100644<br>
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend<br>
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend<br>
@@ -1,11 +1,11 @@<br>
=C2=A0# Rockchip RK3399 compiles some M0 firmware which requires an arm-no=
ne-eabi GCC<br>
=C2=A0# toolchain<br>
-DEPENDS_append_rk3399 =3D &quot; virtual/arm-none-eabi-gcc-native&quot;<b=
r>
+DEPENDS:append_rk3399 =3D &quot; virtual/arm-none-eabi-gcc-native&quot;<b=
r>
<br>
-COMPATIBLE_MACHINE_append_rk3399 =3D &quot;|rk3399&quot;<br>
-COMPATIBLE_MACHINE_append_rk3328 =3D &quot;|rk3328&quot;<br>
+COMPATIBLE_MACHINE:append_rk3399 =3D &quot;|rk3399&quot;<br>
+COMPATIBLE_MACHINE:append_rk3328 =3D &quot;|rk3328&quot;<br>
<br>
-FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
+FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/files:&quot;<br>
=C2=A0SRC_URI +=3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0file://serial-console-baudrate.patch \<br>
=C2=A0 =C2=A0 =C2=A0file://0001-Fix-build-with-gcc-11.patch \<br>
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-bo=
ot%.bbappend<br>
index 95c019d..93b629b 100644<br>
--- a/recipes-bsp/u-boot/u-boot%.bbappend<br>
+++ b/recipes-bsp/u-boot/u-boot%.bbappend<br>
@@ -1,4 +1,4 @@<br>
-do_compile_append_rock2-square () {<br>
+do_compile:append_rock2-square () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # copy to default search path<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot;${SPL_BINARY}&quot; =3D &quot;u-boo=
t-spl-dtb.bin&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cp ${B}/spl/${SPL_=
BINARY} ${B}<br>
@@ -7,9 +7,9 @@ do_compile_append_rock2-square () {<br>
<br>
=C2=A0ATF_DEPENDS ??=3D &quot;&quot;<br>
<br>
-EXTRA_OEMAKE_append_rk3399 =3D &quot; BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3=
399.elf&quot;<br>
+EXTRA_OEMAKE:append_rk3399 =3D &quot; BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3=
399.elf&quot;<br>
=C2=A0ATF_DEPENDS_rk3399 =3D &quot; virtual/trusted-firmware-a:do_deploy&q=
uot;<br>
-EXTRA_OEMAKE_append_rk3328 =3D &quot; BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3=
328.elf&quot;<br>
+EXTRA_OEMAKE:append_rk3328 =3D &quot; BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3=
328.elf&quot;<br>
=C2=A0ATF_DEPENDS_rk3328 =3D &quot; virtual/trusted-firmware-a:do_deploy&q=
uot;<br>
<br>
=C2=A0do_compile[depends] .=3D &quot;${ATF_DEPENDS}&quot;<br>
diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa=
/mesa_%.bbappend<br>
index 3e8711c..e81eee8 100644<br>
--- a/recipes-graphics/mesa/mesa_%.bbappend<br>
+++ b/recipes-graphics/mesa/mesa_%.bbappend<br>
@@ -1,2 +1,2 @@<br>
-PACKAGECONFIG_append_rk3288 =3D &quot; kmsro panfrost&quot;<br>
-PACKAGECONFIG_append_rk3399 =3D &quot; kmsro panfrost&quot;<br>
+PACKAGECONFIG:append_rk3288 =3D &quot; kmsro panfrost&quot;<br>
+PACKAGECONFIG:append_rk3399 =3D &quot; kmsro panfrost&quot;<br>
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/l=
inux/linux-yocto%.bbappend<br>
index c2fe9ad..9d9533b 100644<br>
--- a/recipes-kernel/linux/linux-yocto%.bbappend<br>
+++ b/recipes-kernel/linux/linux-yocto%.bbappend<br>
@@ -11,7 +11,7 @@ COMPATIBLE_MACHINE_nanopi-m4-2gb =3D &quot;nanopi-m4-2gb=
&quot;<br>
=C2=A0COMPATIBLE_MACHINE_rock64 =3D &quot;rock64&quot;<br>
=C2=A0COMPATIBLE_MACHINE_rock-pi-e =3D &quot;rock-pi-e&quot;<br>
<br>
-FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
+FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/files:&quot;<br>
<br>
=C2=A0# indeed applicable to all rk3328 boards<br>
-SRC_URI_append_rock64 =3D &quot; file://0001-ayufan-dtsi-rk3328-add-mmc0-=
mmc1-aliases.patch&quot;<br>
+SRC_URI:append_rock64 =3D &quot; file://0001-ayufan-dtsi-rk3328-add-mmc0-=
mmc1-aliases.patch&quot;<br>
diff --git a/recipes-kernel/linux/linux-yocto_5.4.bbappend b/recipes-kerne=
l/linux/linux-yocto_5.4.bbappend<br>
index e832529..266317f 100644<br>
--- a/recipes-kernel/linux/linux-yocto_5.4.bbappend<br>
+++ b/recipes-kernel/linux/linux-yocto_5.4.bbappend<br>
@@ -1,5 +1,5 @@<br>
-FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
+FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
=C2=A0# tinker-board and tinker-board-s. rk3288 covers both<br>
-SRC_URI_append_rk3288 =3D &quot; file://0001-ARM-dts-rockchip-Keep-rk3288=
-tinker-SD-card-IO-power.patch&quot;<br>
+SRC_URI:append_rk3288 =3D &quot; file://0001-ARM-dts-rockchip-Keep-rk3288=
-tinker-SD-card-IO-power.patch&quot;<br>
<br>
-- <br>
2.32.0<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000b7f7ca05c8ab863f--
