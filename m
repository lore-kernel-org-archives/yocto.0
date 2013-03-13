Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC706E0073E
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:45:14 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id m18so694696vcm.36
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:45:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=QWxsrO0FGVzlWlU8IG2ke0vawqfpkI7kP4IRmYnC1M8=;
	b=MMWw9mw9qjvklHjir4QyChcLxR1Yal7vZigN/f9ePD/qrMPuW4sS7nfTnPzaCNWryS
	TOshdzMlSt9G5DBsaganTJyWOk5ufVSyo4tQV7W/OHIf4Hens43xyjyOtQSQ6M8IcTqy
	/GkNMwYwpLt0SyaAxuqDiVoeC0ZBgBp+I0P9fksxBMdO3mgFjZTe15tg0GUE9YSg4sBw
	Z+nn4vdObys1xemXcXjSyTxjbrWqNnv1x3GEmC/4De6FVcDHCLi9MN5SWNRgT2etJVO0
	9wcuiJWisYpZ/FUzDeKVFaIyAKZBPtjcYDND4GQ36oZ1kmQw9GD5JBi5NGHyhsiUIqJD
	2omw==
X-Received: by 10.58.43.169 with SMTP id x9mr8123620vel.13.1363196714125; Wed,
	13 Mar 2013 10:45:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:44:54 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1360447871-10982-6-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
	<1360447871-10982-6-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:44:54 +0200
Message-ID: <CAK18fxFQQbvtbQetJQhZdT7q03+QKLQDzOcMsVVdLp8VBC-MkQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmIx2fyUik8nJ9mCj+kXIObyPw5F2fxOQv9qgT8bIu0UYMC7LFziwaKWtJzB8FD4K3Xc4Y8
Subject: Re: [meta-raspberrypi][PATCH 6/7] userland: Update to 8700279495e266378d36092ccf86424f0ee2539f
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Mar 2013 17:45:15 -0000
Content-Type: multipart/alternative; boundary=089e0122aeb2e7a96604d7d1f704

--089e0122aeb2e7a96604d7d1f704
Content-Type: text/plain; charset=ISO-8859-1

Merged.


On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> * install_vmcs not needed anymore
> * By default package is installed in /opt/vc. Move everything in ${prefix}.
> * Move recipe in recipes-graphics
> * Add PACKAGE_ARCH = MACHINE_ARCH
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-bcm/userland/userland-git/install_vmcs |  279
> ------------------------
>  recipes-bcm/userland/userland_git.bb           |   43 ----
>  recipes-graphics/userland/userland_git.bb      |   39 ++++
>  3 files changed, 39 insertions(+), 322 deletions(-)
>  delete mode 100755 recipes-bcm/userland/userland-git/install_vmcs
>  delete mode 100644 recipes-bcm/userland/userland_git.bb
>  create mode 100644 recipes-graphics/userland/userland_git.bb
>
> diff --git a/recipes-bcm/userland/userland-git/install_vmcs
> b/recipes-bcm/userland/userland-git/install_vmcs
> deleted file mode 100755
> index 980522e..0000000
> --- a/recipes-bcm/userland/userland-git/install_vmcs
> +++ /dev/null
> @@ -1,279 +0,0 @@
> -#!/bin/sh
> -
> -# edit this file only at <vc4>\makefiles\cmake\scripts\install_vmcs
> -# update (via root staging area) using cmake {args} <vc4>, etc.
> -
> -cmd="$0"
> -cmd_dir="`dirname -- "$cmd"`"
> -cmd_dir=`(cd "$cmd_dir">/dev/null;pwd)`
> -cmd_name="`basename -- $cmd`"
> -
> -# this command should be run as root from ${dir_install}/sbin
> -
> -dir_install="`dirname -- "$cmd_dir"`"
> -dir_data="$dir_install/share/install"
> -dir_sd="/sd"
> -
> -do_force=false
> -
> -# install contents of $dir_data into the system
> -
> -if [ "`whoami`" != "root" ]; then
> -    echo "$cmd_name: you need to be root to execute this command">&2
> -    exit 1
> -fi
> -
> -[ "_$1" = "_-f" -o "_$1" = "_--force" ] && { do_force=true; shift; }
> -
> -
> -# Uninstall script
> -
> -#################################
> -#################################
> -
> -create_uninstall()
> -{  cat <<'EOF'
> -#!/bin/sh
> -
> -####
> -#### WARNING: this script is written and overwritten by $cmd - don't edit
> -####
> -
> -cmd="$0"
> -cmd_dir="`dirname -- "$cmd"`"
> -cmd_dir=`(cd "$cmd_dir">/dev/null;pwd)`
> -cmd_name="`basename -- "$cmd"`"
> -
> -# this command should be run from <dir_install>/sbin
> -
> -if [ "`whoami`" != "root" ]; then
> -    echo "$cmd_name: you need to be root to execute this command">&2
> -    exit 1
> -fi
> -
> -# uninstall the new libraries
> -
> -if [ -f /etc/ld.so.conf.d/vmcs.conf ]; then
> -    rm /etc/ld.so.conf.d/vmcs.conf
> -    ldconfig
> -fi
> -
> -vcfiled=/etc/init.d/vcfiled
> -if [ -x $vcfiled ]; then
> -    $vcfiled stop
> -    if update-rc.d -f vcfiled remove; then
> -        rm -f $vcfiled
> -    else
> -        echo "$cmd_name: failed to install $vcfiled, sorry">&2
> -    fi
> -fi
> -
> -EOF
> -}
> -
> -
> -#################################
> -#################################
> -
> -rc=0
> -
> -# install un-installation script
> -
> -if [ -f "$cmd_dir/uninstall_vmcs" ]; then
> -    if mv -f "$cmd_dir/uninstall_vmcs" "$cmd_dir/uninstall_last_vmcs";
> then
> -        echo "$cmd_name: previous installation's uninstallation script
> saved in">&2
> -        echo "$cmd_name: $cmd_dir/uninstall_last_vmcs">&2
> -    else
> -        echo "$cmd_name: failed to rename previous installation's
> uninstallation script">&2
> -    fi
> -fi
> -create_uninstall > "$cmd_dir/uninstall_vmcs"
> -chmod +x "$cmd_dir/uninstall_vmcs"
> -
> -# install the new libraries
> -
> -if $do_force || [ -d /etc/ld.so.conf.d ]; then
> -    if $do_force || [ ! -f /etc/ld.so.conf.d/vmcs.conf ]; then
> -        if [ ! -f "$dir_data/vmcs.conf" ]; then
> -            echo "$cmd_name: expected file missing in
> $dir_data/vmcs.conf">&2
> -            rc=1
> -        else
> -            mkdir -p /etc/ld.so.conf.d
> -            cp -af "$dir_data/vmcs.conf" /etc/ld.so.conf.d/vmcs.conf
> -            ldconfig
> -        fi
> -    fi
> -else
> -    echo "$cmd_name: don't know how to install libraries, sorry">&2
> -    rc=2
> -fi
> -
> -# install VC file daemon
> -
> -if $do_force || [ ! -f /etc/init.d/vcfiled ]; then
> -    if [ ! -f "$dir_data/vcfiled" ]; then
> -        echo "$cmd_name: expected file missing in $dir_data/vcfiled">&2
> -        rc=3
> -    else
> -        cp -af "$dir_data/vcfiled" /etc/init.d/vcfiled
> -        if ! update-rc.d vcfiled defaults 16; then
> -            echo "$cmd_name: don't know how to install new
> /etc/init.d/vcfiled, sorry">&2
> -            rc=4
> -        elif ! update-rc.d vcfiled enable; then
> -            echo "$cmd_name: failed to enable new /etc/init.d/vcfiled,
> sorry">&2
> -            rc=5
> -        fi
> -    fi
> -fi
> -
> -# make sure vchiq device finder is installed
> -
> -if $do_force || [ ! -f /etc/init.d/vchiq ]; then
> -    if [ ! -f "$dir_data/vchiq" ]; then
> -        echo "$cmd_name: expected file missing in $dir_data/vchiq">&2
> -    else
> -        cp -af "$dir_data/vchiq" /etc/init.d/vchiq
> -        if ! update-rc.d vchiq defaults 12; then
> -            echo "$cmd_name: don't know how to install new
> /etc/init.d/vchiq, sorry">&2
> -            rc=6
> -        elif ! update-rc.d vchiq enable; then
> -            echo "$cmd_name: failed to enable new /etc/init.d/vchiq,
> sorry">&2
> -            rc=7
> -        fi
> -    fi
> -fi
> -
> -# set up a module directory from SD card if possible
> -
> -current_moddir=/lib/modules
> -pkg_moddir=${dir_install}$current_moddir
> -sd_moddir=/boot$current_moddir
> -
> -if [ -h "$pkg_moddir" ]; then
> -    # this should never have been made into a symbolic link - it will mean
> -    # different things on the ARM and the build machines
> -    # Unfortunately a previous version of this script made it symbolic
> -    rm "$pkg_moddir"
> -    echo "------------------------"
> -    echo "$cmd_name: Damage to $pkg_moddir caused by previous script
> version has"
> -    echo "$cmd_name: been corrected.  Sorry, but you have to re-build the
> "
> -    echo "$cmd_name: vchiq module now"
> -    echo "------------------------"
> -fi
> -
> -if $do_force || [ ! -f "$pkg_moddir" ]; then
> -    if [ -d "$sd_moddir" ]; then
> -        echo "$cmd_name: Installing any newer modules from SD card"
> -        cp -auT "$sd_moddir" "$current_moddir"
> -    fi
> -fi
> -
> -# install the vchiq module from install dir (if present)
> -
> -current_mod=${current_moddir}/`uname -r`/extra/vchiq.ko
> -pkg_mod=${dir_install}$current_mod
> -
> -if [ -f "$pkg_mod" ]; then
> -    if $do_force || \
> -       [ ! -f "$current_mod" ] || \
> -       [ "$pkg_mod" -nt "$current_mod" ]; then
> -        mkdir -p "`dirname -- "$current_mod"`"
> -        # copy new vchiq module over - try to keep same date for debugging
> -        if cp -af "$pkg_mod" "$current_mod"; then
> -            echo "$cmd_name: updated vchiq module taken from
> $pkg_moddir">&2
> -        else
> -            echo "$cmd_name: couldn't overwrite $current_mod">&2
> -            rc=8
> -        fi
> -    fi
> -fi
> -
> -if [ ! -f "$current_mod" ]; then
> -    echo "$cmd_name: no vchiq module found for this kernel (`uname
> -r`)">&2
> -    rc=9
> -else
> -    # make sure the module is loaded automatically when we reboot
> -    # before the vcqhiq script runs by placing its name in /etc/modules
> -    # (This is suppose to have been done already in mklinux)
> -    if ! grep "^vchiq$" /etc/modules>/dev/null; then
> -        echo vchiq >> /etc/modules
> -    fi
> -fi
> -
> -if $do_force || [ ! -f "${current_moddir}/`uname -r`/modules.dep" ]; then
> -    depmod
> -fi
> -
> -# install vlls
> -
> -if $do_force || [ ! -f "$dir_sd/vlls" ]; then
> -    if [ -d /boot/vlls/ ]; then
> -        # remove $dir_sd/vlls assuming it is a symbolic link
> -        rm -f "$dir_sd/vlls"
> -        ln -s /boot/vlls "$dir_sd/vlls"
> -    else
> -        echo "$cmd_name: Warning - no VLLs in $dir_sd/vlls">&2
> -        echo "$cmd_name: installation would normally link this location
> to /boot/vlls"
> -        echo "$cmd_name: ensure VLLs are present in /boot/vlls (probably
> the "
> -        echo "$cmd_name: DOS partition of your SD card), and rerun this "
> -        echo "$cmd_name: installation">&2
> -    fi
> -fi
> -
> -# warn about empty media files ... player X needs some
> -
> -if [ -d "$dir_install/mediafiles/" -a ! -d "$dir_sd/mediafiles" ]; then
> -    rm -f "$dir_sd/mediafiles"
> -    ln -s "$dir_install/mediafiles" "$dir_sd/mediafiles"
> -elif [ ! -d "$dir_sd/mediafiles/" ]; then
> -    echo "$cmd_name: warning - $dir_sd/mediafiles does not exist, some
> applications require this">&2
> -else
> -    filecount=`ls "$dir_sd/mediafiles/" | wc -l`
> -    if [ -z "$filecount" -o $filecount -eq 0 ]; then
> -        echo "$cmd_name: warning - /sd/mediafiles is empty, some apps
> need content">&2
> -    fi
> -fi
> -
> -
> -# start up anything we rely on
> -
> -if [ -x /sbin/modprobe -a -f /proc/modules ]; then
> -    modprobe -q vchiq
> -fi
> -
> -if [ -x /etc/init.d/vchiq ]; then
> -    if ! /etc/init.d/vchiq start; then
> -        echo "$cmd_name: /etc/init.d/vchiq failed - rc $?"
> -        rc=10
> -    fi
> -else
> -    echo "$cmd_name: couldn't find expected file - /etc/init.d/vchiq">&2
> -    rc=11
> -fi
> -
> -if [ -x /etc/init.d/vcfiled ]; then
> -    if ! /etc/init.d/vcfiled start; then
> -        echo "$cmd_name: /etc/init.d/vcfiled failed - rc $?"
> -        rc=12
> -    elif ! pidof vcfiled>/dev/null; then
> -        echo "$cmd_name: vcfiled daemon not started"
> -        if [ ! -x "${dir_install}/sbin/vcfiled" ]; then
> -            echo "$cmd_name: ${dir_install}/sbin/vcfiled missing or bad?"
> -            rc=13
> -        elif ! head -0 /dev/vchiq >/dev/null; then
> -            echo "$cmd_name: /dev/vchiq bad?"
> -            echo "$cmd_name: vchiq module file information -"
> -            ls -l "$current_mod"
> -            rc=14
> -        else
> -            echo "$cmd_name: /etc/init.d/vcfiled bad?"
> -            rc=15
> -        fi
> -    fi
> -else
> -    echo "$cmd_name: couldn't find expected file - /etc/init.d/vcfiled">&2
> -    rc=16
> -fi
> -
> -exit $rc
> -
> diff --git a/recipes-bcm/userland/userland_git.bb b/recipes-bcm/userland/
> userland_git.bb
> deleted file mode 100644
> index c2c6641..0000000
> --- a/recipes-bcm/userland/userland_git.bb
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -DESCRIPTION = "This repository contains the source code for the ARM side \
> -libraries used on Raspberry Pi. These typically are installed in
> /opt/vc/lib \
> -and includes source for the ARM side code to interface to: EGL, mmal,
> GLESv2,\
> -vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
> -LICENSE = "Broadcom"
> -LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
> -
> -PR = "r0"
> -
> -PROVIDES = "virtual/libgles2 \
> -            virtual/egl"
> -COMPATIBLE_MACHINE = "raspberrypi"
> -
> -SRCREV = "ef62d33406ee01864d58b80f6d0c0355ed86aaa1"
> -SRC_URI = "git://
> github.com/raspberrypi/userland.git;protocol=git;branch=master \
> -           file://install_vmcs \
> -          "
> -S = "${WORKDIR}/git"
> -
> -inherit cmake
> -
> -EXTRA_OECMAKE = " \
> -                 -DCMAKE_BUILD_TYPE=Release \
> -                "
> -
> -do_configure_prepend () {
> -    sed -i "/10-vchiq.rules/d" ${S}/interface/vchiq_arm/CMakeLists.txt
> -    mkdir -p makefiles/cmake/scripts
> -    cp ${WORKDIR}/install_vmcs ${S}/makefiles/cmake/scripts
> -}
> -
> -FILES_${PN} = "/opt/vc/lib/*.so \
> -               /opt/vc/sbin \
> -               /opt/vc/bin \
> -               /etc \
> -              "
> -FILES_${PN}-dbg += "/opt/vc/lib/.debug \
> -                   /opt/vc/sbin/.debug \
> -                   /opt/vc/bin/.debug \
> -                  "
> -FILES_${PN}-dev = "/opt/vc/include/"
> -FILES_${PN}-staticdev = "/opt/vc/lib/*.a"
> -FILES_${PN}-doc = "/opt/vc/share/"
> \ No newline at end of file
> diff --git a/recipes-graphics/userland/userland_git.bbb/recipes-graphics/userland/
> userland_git.bb
> new file mode 100644
> index 0000000..fe4132a
> --- /dev/null
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -0,0 +1,39 @@
> +DESCRIPTION = "This repository contains the source code for the ARM side \
> +libraries used on Raspberry Pi. These typically are installed in
> /opt/vc/lib \
> +and includes source for the ARM side code to interface to: EGL, mmal,
> GLESv2,\
> +vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
> +LICENSE = "Broadcom"
> +LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
> +
> +PR = "r1"
> +
> +PROVIDES = "virtual/libgles2 \
> +            virtual/egl"
> +COMPATIBLE_MACHINE = "raspberrypi"
> +
> +SRCREV = "8700279495e266378d36092ccf86424f0ee2539f"
> +SRC_URI = "git://
> github.com/raspberrypi/userland.git;protocol=git;branch=master \
> +          "
> +S = "${WORKDIR}/git"
> +
> +inherit cmake
> +
> +EXTRA_OECMAKE = " \
> +                 -DCMAKE_BUILD_TYPE=Release \
> +                "
> +# The compiled binaries don't provide sonames.
> +SOLIBS = "${SOLIBSDEV}"
> +
> +do_install_append() {
> +    mkdir -p ${D}/${prefix}
> +    mv ${D}/opt/vc/* ${D}/${prefix}
> +    rm -rf ${D}/opt
> +}
> +
> +FILES_${PN} += "${libdir}/*${SOLIBS}"
> +FILES_${PN}-dev = "${includedir} \
> +                   ${prefix}/src"
> +FILES_${PN}-doc += "${datadir}/install"
> +
> +PACKAGE_ARCH = "${MACHINE_ARCH}"
> +
> --
> 1.7.9.5
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e0122aeb2e7a96604d7d1f704
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">* install_vmcs not needed anymore<br>
* By default package is installed in /opt/vc. Move everything in ${prefix}.=
<br>
* Move recipe in recipes-graphics<br>
* Add PACKAGE_ARCH =3D MACHINE_ARCH<br>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-bcm/userland/userland-git/install_vmcs | =A0279 ----------------=
--------<br>
=A0recipes-bcm/userland/<a href=3D"http://userland_git.bb" target=3D"_blank=
">userland_git.bb</a> =A0 =A0 =A0 =A0 =A0 | =A0 43 ----<br>
=A0recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=3D"_=
blank">userland_git.bb</a> =A0 =A0 =A0| =A0 39 ++++<br>
=A03 files changed, 39 insertions(+), 322 deletions(-)<br>
=A0delete mode 100755 recipes-bcm/userland/userland-git/install_vmcs<br>
=A0delete mode 100644 recipes-bcm/userland/<a href=3D"http://userland_git.b=
b" target=3D"_blank">userland_git.bb</a><br>
=A0create mode 100644 recipes-graphics/userland/<a href=3D"http://userland_=
git.bb" target=3D"_blank">userland_git.bb</a><br>
<br>
diff --git a/recipes-bcm/userland/userland-git/install_vmcs b/recipes-bcm/u=
serland/userland-git/install_vmcs<br>
deleted file mode 100755<br>
index 980522e..0000000<br>
--- a/recipes-bcm/userland/userland-git/install_vmcs<br>
+++ /dev/null<br>
@@ -1,279 +0,0 @@<br>
-#!/bin/sh<br>
-<br>
-# edit this file only at &lt;vc4&gt;\makefiles\cmake\scripts\install_vmcs<=
br>
-# update (via root staging area) using cmake {args} &lt;vc4&gt;, etc.<br>
-<br>
-cmd=3D&quot;$0&quot;<br>
-cmd_dir=3D&quot;`dirname -- &quot;$cmd&quot;`&quot;<br>
-cmd_dir=3D`(cd &quot;$cmd_dir&quot;&gt;/dev/null;pwd)`<br>
-cmd_name=3D&quot;`basename -- $cmd`&quot;<br>
-<br>
-# this command should be run as root from ${dir_install}/sbin<br>
-<br>
-dir_install=3D&quot;`dirname -- &quot;$cmd_dir&quot;`&quot;<br>
-dir_data=3D&quot;$dir_install/share/install&quot;<br>
-dir_sd=3D&quot;/sd&quot;<br>
-<br>
-do_force=3Dfalse<br>
-<br>
-# install contents of $dir_data into the system<br>
-<br>
-if [ &quot;`whoami`&quot; !=3D &quot;root&quot; ]; then<br>
- =A0 =A0echo &quot;$cmd_name: you need to be root to execute this command&=
quot;&gt;&amp;2<br>
- =A0 =A0exit 1<br>
-fi<br>
-<br>
-[ &quot;_$1&quot; =3D &quot;_-f&quot; -o &quot;_$1&quot; =3D &quot;_--forc=
e&quot; ] &amp;&amp; { do_force=3Dtrue; shift; }<br>
-<br>
-<br>
-# Uninstall script<br>
-<br>
-#################################<br>
-#################################<br>
-<br>
-create_uninstall()<br>
-{ =A0cat &lt;&lt;&#39;EOF&#39;<br>
-#!/bin/sh<br>
-<br>
-####<br>
-#### WARNING: this script is written and overwritten by $cmd - don&#39;t e=
dit<br>
-####<br>
-<br>
-cmd=3D&quot;$0&quot;<br>
-cmd_dir=3D&quot;`dirname -- &quot;$cmd&quot;`&quot;<br>
-cmd_dir=3D`(cd &quot;$cmd_dir&quot;&gt;/dev/null;pwd)`<br>
-cmd_name=3D&quot;`basename -- &quot;$cmd&quot;`&quot;<br>
-<br>
-# this command should be run from &lt;dir_install&gt;/sbin<br>
-<br>
-if [ &quot;`whoami`&quot; !=3D &quot;root&quot; ]; then<br>
- =A0 =A0echo &quot;$cmd_name: you need to be root to execute this command&=
quot;&gt;&amp;2<br>
- =A0 =A0exit 1<br>
-fi<br>
-<br>
-# uninstall the new libraries<br>
-<br>
-if [ -f /etc/ld.so.conf.d/vmcs.conf ]; then<br>
- =A0 =A0rm /etc/ld.so.conf.d/vmcs.conf<br>
- =A0 =A0ldconfig<br>
-fi<br>
-<br>
-vcfiled=3D/etc/init.d/vcfiled<br>
-if [ -x $vcfiled ]; then<br>
- =A0 =A0$vcfiled stop<br>
- =A0 =A0if update-rc.d -f vcfiled remove; then<br>
- =A0 =A0 =A0 =A0rm -f $vcfiled<br>
- =A0 =A0else<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: failed to install $vcfiled, sorry&qu=
ot;&gt;&amp;2<br>
- =A0 =A0fi<br>
-fi<br>
-<br>
-EOF<br>
-}<br>
-<br>
-<br>
-#################################<br>
-#################################<br>
-<br>
-rc=3D0<br>
-<br>
-# install un-installation script<br>
-<br>
-if [ -f &quot;$cmd_dir/uninstall_vmcs&quot; ]; then<br>
- =A0 =A0if mv -f &quot;$cmd_dir/uninstall_vmcs&quot; &quot;$cmd_dir/uninst=
all_last_vmcs&quot;; then<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: previous installation&#39;s uninstal=
lation script saved in&quot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: $cmd_dir/uninstall_last_vmcs&quot;&g=
t;&amp;2<br>
- =A0 =A0else<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: failed to rename previous installati=
on&#39;s uninstallation script&quot;&gt;&amp;2<br>
- =A0 =A0fi<br>
-fi<br>
-create_uninstall &gt; &quot;$cmd_dir/uninstall_vmcs&quot;<br>
-chmod +x &quot;$cmd_dir/uninstall_vmcs&quot;<br>
-<br>
-# install the new libraries<br>
-<br>
-if $do_force || [ -d /etc/ld.so.conf.d ]; then<br>
- =A0 =A0if $do_force || [ ! -f /etc/ld.so.conf.d/vmcs.conf ]; then<br>
- =A0 =A0 =A0 =A0if [ ! -f &quot;$dir_data/vmcs.conf&quot; ]; then<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: expected file missing in $di=
r_data/vmcs.conf&quot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0 =A0 =A0rc=3D1<br>
- =A0 =A0 =A0 =A0else<br>
- =A0 =A0 =A0 =A0 =A0 =A0mkdir -p /etc/ld.so.conf.d<br>
- =A0 =A0 =A0 =A0 =A0 =A0cp -af &quot;$dir_data/vmcs.conf&quot; /etc/ld.so.=
conf.d/vmcs.conf<br>
- =A0 =A0 =A0 =A0 =A0 =A0ldconfig<br>
- =A0 =A0 =A0 =A0fi<br>
- =A0 =A0fi<br>
-else<br>
- =A0 =A0echo &quot;$cmd_name: don&#39;t know how to install libraries, sor=
ry&quot;&gt;&amp;2<br>
- =A0 =A0rc=3D2<br>
-fi<br>
-<br>
-# install VC file daemon<br>
-<br>
-if $do_force || [ ! -f /etc/init.d/vcfiled ]; then<br>
- =A0 =A0if [ ! -f &quot;$dir_data/vcfiled&quot; ]; then<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: expected file missing in $dir_data/v=
cfiled&quot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0rc=3D3<br>
- =A0 =A0else<br>
- =A0 =A0 =A0 =A0cp -af &quot;$dir_data/vcfiled&quot; /etc/init.d/vcfiled<b=
r>
- =A0 =A0 =A0 =A0if ! update-rc.d vcfiled defaults 16; then<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: don&#39;t know how to instal=
l new /etc/init.d/vcfiled, sorry&quot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0 =A0 =A0rc=3D4<br>
- =A0 =A0 =A0 =A0elif ! update-rc.d vcfiled enable; then<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: failed to enable new /etc/in=
it.d/vcfiled, sorry&quot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0 =A0 =A0rc=3D5<br>
- =A0 =A0 =A0 =A0fi<br>
- =A0 =A0fi<br>
-fi<br>
-<br>
-# make sure vchiq device finder is installed<br>
-<br>
-if $do_force || [ ! -f /etc/init.d/vchiq ]; then<br>
- =A0 =A0if [ ! -f &quot;$dir_data/vchiq&quot; ]; then<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: expected file missing in $dir_data/v=
chiq&quot;&gt;&amp;2<br>
- =A0 =A0else<br>
- =A0 =A0 =A0 =A0cp -af &quot;$dir_data/vchiq&quot; /etc/init.d/vchiq<br>
- =A0 =A0 =A0 =A0if ! update-rc.d vchiq defaults 12; then<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: don&#39;t know how to instal=
l new /etc/init.d/vchiq, sorry&quot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0 =A0 =A0rc=3D6<br>
- =A0 =A0 =A0 =A0elif ! update-rc.d vchiq enable; then<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: failed to enable new /etc/in=
it.d/vchiq, sorry&quot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0 =A0 =A0rc=3D7<br>
- =A0 =A0 =A0 =A0fi<br>
- =A0 =A0fi<br>
-fi<br>
-<br>
-# set up a module directory from SD card if possible<br>
-<br>
-current_moddir=3D/lib/modules<br>
-pkg_moddir=3D${dir_install}$current_moddir<br>
-sd_moddir=3D/boot$current_moddir<br>
-<br>
-if [ -h &quot;$pkg_moddir&quot; ]; then<br>
- =A0 =A0# this should never have been made into a symbolic link - it will =
mean<br>
- =A0 =A0# different things on the ARM and the build machines<br>
- =A0 =A0# Unfortunately a previous version of this script made it symbolic=
<br>
- =A0 =A0rm &quot;$pkg_moddir&quot;<br>
- =A0 =A0echo &quot;------------------------&quot;<br>
- =A0 =A0echo &quot;$cmd_name: Damage to $pkg_moddir caused by previous scr=
ipt version has&quot;<br>
- =A0 =A0echo &quot;$cmd_name: been corrected. =A0Sorry, but you have to re=
-build the &quot;<br>
- =A0 =A0echo &quot;$cmd_name: vchiq module now&quot;<br>
- =A0 =A0echo &quot;------------------------&quot;<br>
-fi<br>
-<br>
-if $do_force || [ ! -f &quot;$pkg_moddir&quot; ]; then<br>
- =A0 =A0if [ -d &quot;$sd_moddir&quot; ]; then<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: Installing any newer modules from SD=
 card&quot;<br>
- =A0 =A0 =A0 =A0cp -auT &quot;$sd_moddir&quot; &quot;$current_moddir&quot;=
<br>
- =A0 =A0fi<br>
-fi<br>
-<br>
-# install the vchiq module from install dir (if present)<br>
-<br>
-current_mod=3D${current_moddir}/`uname -r`/extra/vchiq.ko<br>
-pkg_mod=3D${dir_install}$current_mod<br>
-<br>
-if [ -f &quot;$pkg_mod&quot; ]; then<br>
- =A0 =A0if $do_force || \<br>
- =A0 =A0 =A0 [ ! -f &quot;$current_mod&quot; ] || \<br>
- =A0 =A0 =A0 [ &quot;$pkg_mod&quot; -nt &quot;$current_mod&quot; ]; then<b=
r>
- =A0 =A0 =A0 =A0mkdir -p &quot;`dirname -- &quot;$current_mod&quot;`&quot;=
<br>
- =A0 =A0 =A0 =A0# copy new vchiq module over - try to keep same date for d=
ebugging<br>
- =A0 =A0 =A0 =A0if cp -af &quot;$pkg_mod&quot; &quot;$current_mod&quot;; t=
hen<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: updated vchiq module taken f=
rom $pkg_moddir&quot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0else<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: couldn&#39;t overwrite $curr=
ent_mod&quot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0 =A0 =A0rc=3D8<br>
- =A0 =A0 =A0 =A0fi<br>
- =A0 =A0fi<br>
-fi<br>
-<br>
-if [ ! -f &quot;$current_mod&quot; ]; then<br>
- =A0 =A0echo &quot;$cmd_name: no vchiq module found for this kernel (`unam=
e -r`)&quot;&gt;&amp;2<br>
- =A0 =A0rc=3D9<br>
-else<br>
- =A0 =A0# make sure the module is loaded automatically when we reboot<br>
- =A0 =A0# before the vcqhiq script runs by placing its name in /etc/module=
s<br>
- =A0 =A0# (This is suppose to have been done already in mklinux)<br>
- =A0 =A0if ! grep &quot;^vchiq$&quot; /etc/modules&gt;/dev/null; then<br>
- =A0 =A0 =A0 =A0echo vchiq &gt;&gt; /etc/modules<br>
- =A0 =A0fi<br>
-fi<br>
-<br>
-if $do_force || [ ! -f &quot;${current_moddir}/`uname -r`/modules.dep&quot=
; ]; then<br>
- =A0 =A0depmod<br>
-fi<br>
-<br>
-# install vlls<br>
-<br>
-if $do_force || [ ! -f &quot;$dir_sd/vlls&quot; ]; then<br>
- =A0 =A0if [ -d /boot/vlls/ ]; then<br>
- =A0 =A0 =A0 =A0# remove $dir_sd/vlls assuming it is a symbolic link<br>
- =A0 =A0 =A0 =A0rm -f &quot;$dir_sd/vlls&quot;<br>
- =A0 =A0 =A0 =A0ln -s /boot/vlls &quot;$dir_sd/vlls&quot;<br>
- =A0 =A0else<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: Warning - no VLLs in $dir_sd/vlls&qu=
ot;&gt;&amp;2<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: installation would normally link thi=
s location to /boot/vlls&quot;<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: ensure VLLs are present in /boot/vll=
s (probably the &quot;<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: DOS partition of your SD card), and =
rerun this &quot;<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: installation&quot;&gt;&amp;2<br>
- =A0 =A0fi<br>
-fi<br>
-<br>
-# warn about empty media files ... player X needs some<br>
-<br>
-if [ -d &quot;$dir_install/mediafiles/&quot; -a ! -d &quot;$dir_sd/mediafi=
les&quot; ]; then<br>
- =A0 =A0rm -f &quot;$dir_sd/mediafiles&quot;<br>
- =A0 =A0ln -s &quot;$dir_install/mediafiles&quot; &quot;$dir_sd/mediafiles=
&quot;<br>
-elif [ ! -d &quot;$dir_sd/mediafiles/&quot; ]; then<br>
- =A0 =A0echo &quot;$cmd_name: warning - $dir_sd/mediafiles does not exist,=
 some applications require this&quot;&gt;&amp;2<br>
-else<br>
- =A0 =A0filecount=3D`ls &quot;$dir_sd/mediafiles/&quot; | wc -l`<br>
- =A0 =A0if [ -z &quot;$filecount&quot; -o $filecount -eq 0 ]; then<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: warning - /sd/mediafiles is empty, s=
ome apps need content&quot;&gt;&amp;2<br>
- =A0 =A0fi<br>
-fi<br>
-<br>
-<br>
-# start up anything we rely on<br>
-<br>
-if [ -x /sbin/modprobe -a -f /proc/modules ]; then<br>
- =A0 =A0modprobe -q vchiq<br>
-fi<br>
-<br>
-if [ -x /etc/init.d/vchiq ]; then<br>
- =A0 =A0if ! /etc/init.d/vchiq start; then<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: /etc/init.d/vchiq failed - rc $?&quo=
t;<br>
- =A0 =A0 =A0 =A0rc=3D10<br>
- =A0 =A0fi<br>
-else<br>
- =A0 =A0echo &quot;$cmd_name: couldn&#39;t find expected file - /etc/init.=
d/vchiq&quot;&gt;&amp;2<br>
- =A0 =A0rc=3D11<br>
-fi<br>
-<br>
-if [ -x /etc/init.d/vcfiled ]; then<br>
- =A0 =A0if ! /etc/init.d/vcfiled start; then<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: /etc/init.d/vcfiled failed - rc $?&q=
uot;<br>
- =A0 =A0 =A0 =A0rc=3D12<br>
- =A0 =A0elif ! pidof vcfiled&gt;/dev/null; then<br>
- =A0 =A0 =A0 =A0echo &quot;$cmd_name: vcfiled daemon not started&quot;<br>
- =A0 =A0 =A0 =A0if [ ! -x &quot;${dir_install}/sbin/vcfiled&quot; ]; then<=
br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: ${dir_install}/sbin/vcfiled =
missing or bad?&quot;<br>
- =A0 =A0 =A0 =A0 =A0 =A0rc=3D13<br>
- =A0 =A0 =A0 =A0elif ! head -0 /dev/vchiq &gt;/dev/null; then<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: /dev/vchiq bad?&quot;<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: vchiq module file informatio=
n -&quot;<br>
- =A0 =A0 =A0 =A0 =A0 =A0ls -l &quot;$current_mod&quot;<br>
- =A0 =A0 =A0 =A0 =A0 =A0rc=3D14<br>
- =A0 =A0 =A0 =A0else<br>
- =A0 =A0 =A0 =A0 =A0 =A0echo &quot;$cmd_name: /etc/init.d/vcfiled bad?&quo=
t;<br>
- =A0 =A0 =A0 =A0 =A0 =A0rc=3D15<br>
- =A0 =A0 =A0 =A0fi<br>
- =A0 =A0fi<br>
-else<br>
- =A0 =A0echo &quot;$cmd_name: couldn&#39;t find expected file - /etc/init.=
d/vcfiled&quot;&gt;&amp;2<br>
- =A0 =A0rc=3D16<br>
-fi<br>
-<br>
-exit $rc<br>
-<br>
diff --git a/recipes-bcm/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a> b/recipes-bcm/userland/<a href=3D"http://us=
erland_git.bb" target=3D"_blank">userland_git.bb</a><br>
deleted file mode 100644<br>
index c2c6641..0000000<br>
--- a/recipes-bcm/userland/<a href=3D"http://userland_git.bb" target=3D"_bl=
ank">userland_git.bb</a><br>
+++ /dev/null<br>
@@ -1,43 +0,0 @@<br>
-DESCRIPTION =3D &quot;This repository contains the source code for the ARM=
 side \<br>
-libraries used on Raspberry Pi. These typically are installed in /opt/vc/l=
ib \<br>
-and includes source for the ARM side code to interface to: EGL, mmal, GLES=
v2,\<br>
-vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG.&quot;<br>
-LICENSE =3D &quot;Broadcom&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://LICENCE;md5=3D957f6640d5e2d2acfce73a36a5=
6cb32f&quot;<br>
-<br>
-PR =3D &quot;r0&quot;<br>
-<br>
-PROVIDES =3D &quot;virtual/libgles2 \<br>
- =A0 =A0 =A0 =A0 =A0 =A0virtual/egl&quot;<br>
-COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
-<br>
-SRCREV =3D &quot;ef62d33406ee01864d58b80f6d0c0355ed86aaa1&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/userland.=
git;protocol=3Dgit;branch=3Dmaster" target=3D"_blank">github.com/raspberryp=
i/userland.git;protocol=3Dgit;branch=3Dmaster</a> \<br>
- =A0 =A0 =A0 =A0 =A0 file://install_vmcs \<br>
- =A0 =A0 =A0 =A0 =A0&quot;<br>
-S =3D &quot;${WORKDIR}/git&quot;<br>
-<br>
-inherit cmake<br>
-<br>
-EXTRA_OECMAKE =3D &quot; \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 -DCMAKE_BUILD_TYPE=3DRelease \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
-<br>
-do_configure_prepend () {<br>
- =A0 =A0sed -i &quot;/10-vchiq.rules/d&quot; ${S}/interface/vchiq_arm/CMak=
eLists.txt<br>
- =A0 =A0mkdir -p makefiles/cmake/scripts<br>
- =A0 =A0cp ${WORKDIR}/install_vmcs ${S}/makefiles/cmake/scripts<br>
-}<br>
-<br>
-FILES_${PN} =3D &quot;/opt/vc/lib/*.so \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 /opt/vc/sbin \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 /opt/vc/bin \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 /etc \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
-FILES_${PN}-dbg +=3D &quot;/opt/vc/lib/.debug \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /opt/vc/sbin/.debug \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /opt/vc/bin/.debug \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
-FILES_${PN}-dev =3D &quot;/opt/vc/include/&quot;<br>
-FILES_${PN}-staticdev =3D &quot;/opt/vc/lib/*.a&quot;<br>
-FILES_${PN}-doc =3D &quot;/opt/vc/share/&quot;<br>
\ No newline at end of file<br>
diff --git a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" t=
arget=3D"_blank">userland_git.bb</a> b/recipes-graphics/userland/<a href=3D=
"http://userland_git.bb" target=3D"_blank">userland_git.bb</a><br>
new file mode 100644<br>
index 0000000..fe4132a<br>
--- /dev/null<br>
+++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a><br>
@@ -0,0 +1,39 @@<br>
+DESCRIPTION =3D &quot;This repository contains the source code for the ARM=
 side \<br>
+libraries used on Raspberry Pi. These typically are installed in /opt/vc/l=
ib \<br>
+and includes source for the ARM side code to interface to: EGL, mmal, GLES=
v2,\<br>
+vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG.&quot;<br>
+LICENSE =3D &quot;Broadcom&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://LICENCE;md5=3D957f6640d5e2d2acfce73a36a5=
6cb32f&quot;<br>
+<br>
+PR =3D &quot;r1&quot;<br>
+<br>
+PROVIDES =3D &quot;virtual/libgles2 \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0virtual/egl&quot;<br>
+COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
+<br>
+SRCREV =3D &quot;8700279495e266378d36092ccf86424f0ee2539f&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/userland.=
git;protocol=3Dgit;branch=3Dmaster" target=3D"_blank">github.com/raspberryp=
i/userland.git;protocol=3Dgit;branch=3Dmaster</a> \<br>
+ =A0 =A0 =A0 =A0 =A0&quot;<br>
+S =3D &quot;${WORKDIR}/git&quot;<br>
+<br>
+inherit cmake<br>
+<br>
+EXTRA_OECMAKE =3D &quot; \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 -DCMAKE_BUILD_TYPE=3DRelease \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
+# The compiled binaries don&#39;t provide sonames.<br>
+SOLIBS =3D &quot;${SOLIBSDEV}&quot;<br>
+<br>
+do_install_append() {<br>
+ =A0 =A0mkdir -p ${D}/${prefix}<br>
+ =A0 =A0mv ${D}/opt/vc/* ${D}/${prefix}<br>
+ =A0 =A0rm -rf ${D}/opt<br>
+}<br>
+<br>
+FILES_${PN} +=3D &quot;${libdir}/*${SOLIBS}&quot;<br>
+FILES_${PN}-dev =3D &quot;${includedir} \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${prefix}/src&quot;<br>
+FILES_${PN}-doc +=3D &quot;${datadir}/install&quot;<br>
+<br>
+PACKAGE_ARCH =3D &quot;${MACHINE_ARCH}&quot;<br>
+<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--089e0122aeb2e7a96604d7d1f704--
