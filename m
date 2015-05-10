Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B2EAE009F6; Sun, 10 May 2015 03:17:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7768CE009ED
	for <yocto@yoctoproject.org>; Sun, 10 May 2015 03:17:11 -0700 (PDT)
Received: by wief7 with SMTP id f7so65391118wie.0
	for <yocto@yoctoproject.org>; Sun, 10 May 2015 03:17:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=pPaqIU9eXq+lBSG6npbGb4isQNA0vmWKsaFx8VMIVfM=;
	b=EL/AADgLygtZJqPs9THKTjgY3pX8+6DXHcB9xdWZcPz4rkLMtF1AhipRwh1KOJJlHm
	bwhlvYDzgffQ84/4QkL3ia3ZqGjEPu9SOOJUGpmGW0Gcz6HaZKuPkNw1h4oXE2D85aXX
	NzOm5cpaakkCXs65A/RQiOmmn0xtPbTtSNH8DPEXV8geIgQfex0g2EJo2N/kgeSTOV5C
	VdrBh0D+MufAszD9Xh+1kdq5B1b1LT5Y8R7T1UzZ6g+ifmOcL1QFtnU2ySUkPvQMq/S/
	O662i0F2IYqFSw7YU3/PB2PUzPK/nKypVw0Q2aTRA6c9cbM/btdoqcn7QPADlzFR6P3R
	R6+Q==
X-Gm-Message-State: ALoCoQmGy0z6ohZOFlSt8uGCdrwcJNYNK5s2GnvWIB6TsaVWuAE5cLNMpb16+qzFezYr1ASNcLKh
X-Received: by 10.194.185.8 with SMTP id ey8mr11277083wjc.118.1431253030600;
	Sun, 10 May 2015 03:17:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.224.136 with HTTP; Sun, 10 May 2015 03:16:50 -0700 (PDT)
X-Originating-IP: [87.63.77.14]
In-Reply-To: <b58053204ede81e2de839e62bc0317d2813d6ec1.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
	<b58053204ede81e2de839e62bc0317d2813d6ec1.1431121258.git.petter@technux.se>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 10 May 2015 12:16:50 +0200
Message-ID: <CAK18fxE7iDxP5RaH4ObZ-PxoOJB+kos6h9zJQFRaacsLqZvUog@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/5] devicetree: auto-disable dts for old kernels
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
X-List-Received-Date: Sun, 10 May 2015 10:17:15 -0000
Content-Type: multipart/alternative; boundary=047d7bd6abee7915a30515b790a1

--047d7bd6abee7915a30515b790a1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Petter,

On Fri, May 8, 2015 at 11:49 PM, Petter Mab=C3=A4cker <petter@technux.se> w=
rote:

> After '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default' was
> introduced, kernel versions < 3.18 might not be buildable. Since full
> device tree support was introduced in 3.18 this change ensures that all
> kernel < 3.18 will automatically disable device tree.
>
> Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
> ---
>  classes/linux-raspberrypi-base.bbclass     | 29
> +++++++++++++++++++++++++++++
>  classes/sdcard_image-rpi.bbclass           |  6 ++++--
>  recipes-kernel/linux/linux-raspberrypi.inc |  4 +++-
>  3 files changed, 36 insertions(+), 3 deletions(-)
>  create mode 100644 classes/linux-raspberrypi-base.bbclass
>
> diff --git a/classes/linux-raspberrypi-base.bbclass
> b/classes/linux-raspberrypi-base.bbclass
> new file mode 100644
> index 0000000..4bcadd0
> --- /dev/null
> +++ b/classes/linux-raspberrypi-base.bbclass
> @@ -0,0 +1,29 @@
> +inherit linux-kernel-base
> +
> +
> +def get_dts(d, ver):
> +    staging_dir =3D d.getVar("STAGING_KERNEL_BUILDDIR", True)
> +    dts =3D d.getVar("KERNEL_DEVICETREE", True)
> +
> +    # d.getVar() might return 'None' as a normal string
> +    # leading to 'is None' check isn't enough.
> +    # TODO: Investigate if this is a bug in bitbake
> +    if ver is None or ver =3D=3D "None":
> +        ''' if 'ver' isn't set try to grab the kernel version
> +        from the kernel staging '''
> +        ver =3D get_kernelversion_file(staging_dir)
> +
> +    if ver is not None:
> +        min_ver =3D ver.split('.', 3)
> +    else:
> +        return dts
> +
> +    # Always turn off device tree support for kernel's < 3.18
> +    try:
> +        if int(min_ver[0]) <=3D 3:
> +            if int(min_ver[1]) < 18:
> +                dts =3D ""
> +    except IndexError:
> +        min_ver =3D None
> +
> +    return dts
> diff --git a/classes/sdcard_image-rpi.bbclass
> b/classes/sdcard_image-rpi.bbclass
> index 1ff664d..ca94566 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -1,4 +1,5 @@
>  inherit image_types
> +inherit linux-raspberrypi-base
>
>  #
>  # Create an image that can by written onto a SD card using dd.
> @@ -88,7 +89,8 @@ IMAGE_CMD_rpi-sdimg () {
>         ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE_ALIGNED} -
> ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
>         SDIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
> ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
>
> -       echo "Creating filesystem with Boot partition
> ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
>

Why do you remove this line? Maybe by mistake?


> +       # Check if we are building with device tree support
> +       DTS=3D"${@get_dts(d, None)}"
>

Aren't we able to use the same variable name, KERNEL_DEVICETREE? What that
be a little clearer?


>
>         # Initialize sdcard image file
>         dd if=3D/dev/zero of=3D${SDIMG} bs=3D1024 count=3D0 seek=3D${SDIM=
G_SIZE}
> @@ -112,7 +114,7 @@ IMAGE_CMD_rpi-sdimg () {
>                 mcopy -i ${WORKDIR}/boot.img -s
> ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin
> ::uImage
>                 ;;
>         *)
> -               if test -n "${KERNEL_DEVICETREE}"; then
> +               if test -n "${DTS}"; then
>                         # Copy board device trees to root folder
>                         for DTB in ${DT_ROOT}; do
>                                 DTB_BASE_NAME=3D`basename ${DTB} .dtb`
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
> b/recipes-kernel/linux/linux-raspberrypi.inc
> index 84d4f9e..7e36408 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -1,4 +1,5 @@
>  require linux.inc
> +inherit linux-raspberrypi-base
>
>  DESCRIPTION =3D "Linux Kernel for Raspberry Pi"
>  SECTION =3D "kernel"
> @@ -26,7 +27,8 @@ UDEV_GE_141 ?=3D "1"
>  # See
> http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user=
-manual.html#anonymous-python-functions
>  python __anonymous () {
>      kerneltype =3D d.getVar('KERNEL_IMAGETYPE', True)
> -    kerneldt =3D d.getVar('KERNEL_DEVICETREE', True)
> +    kerneldt =3D get_dts(d, d.getVar('LINUX_VERSION', True))
> +    d.setVar("KERNEL_DEVICETREE", kerneldt)
>
>      # Add dependency to 'rpi-mkimage-native' package only if RPi
> bootloader is used with DT-enable kernel
>      if kerneldt:
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
*Andrei Gherzan*
*e: **andrei@gherzan.ro <andrei@gherzan.ro>*
*w: *www.gherzan.ro

--047d7bd6abee7915a30515b790a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Petter,<br><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, May 8, 2015 at 11:49 PM, Petter Mab=C3=A4cker <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:petter@technux.se" target=3D"_blank">pe=
tter@technux.se</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:r=
gb(204,204,204);border-left-style:solid;padding-left:1ex">After &#39;6392a6=
3 rpi-base.inc: Use KERNEL_DEVICETREE by default&#39; was<br>
introduced, kernel versions &lt; 3.18 might not be buildable. Since full<br=
>
device tree support was introduced in 3.18 this change ensures that all<br>
kernel &lt; 3.18 will automatically disable device tree.<br>
<br>
Signed-off-by: Petter Mab=C3=A4cker &lt;<a href=3D"mailto:petter@technux.se=
">petter@technux.se</a>&gt;<br>
---<br>
=C2=A0classes/linux-raspberrypi-base.bbclass=C2=A0 =C2=A0 =C2=A0| 29 ++++++=
+++++++++++++++++++++++<br>
=C2=A0classes/sdcard_image-rpi.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0|=C2=A0 6 ++++--<br>
=C2=A0recipes-kernel/linux/linux-raspberrypi.inc |=C2=A0 4 +++-<br>
=C2=A03 files changed, 36 insertions(+), 3 deletions(-)<br>
=C2=A0create mode 100644 classes/linux-raspberrypi-base.bbclass<br>
<br>
diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspber=
rypi-base.bbclass<br>
new file mode 100644<br>
index 0000000..4bcadd0<br>
--- /dev/null<br>
+++ b/classes/linux-raspberrypi-base.bbclass<br>
@@ -0,0 +1,29 @@<br>
+inherit linux-kernel-base<br>
+<br>
+<br>
+def get_dts(d, ver):<br>
+=C2=A0 =C2=A0 staging_dir =3D d.getVar(&quot;STAGING_KERNEL_BUILDDIR&quot;=
, True)<br>
+=C2=A0 =C2=A0 dts =3D d.getVar(&quot;KERNEL_DEVICETREE&quot;, True)<br>
+<br>
+=C2=A0 =C2=A0 # d.getVar() might return &#39;None&#39; as a normal string<=
br>
+=C2=A0 =C2=A0 # leading to &#39;is None&#39; check isn&#39;t enough.<br>
+=C2=A0 =C2=A0 # TODO: Investigate if this is a bug in bitbake<br>
+=C2=A0 =C2=A0 if ver is None or ver =3D=3D &quot;None&quot;:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;&#39; if &#39;ver&#39; isn&#39;t set=
 try to grab the kernel version<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 from the kernel staging &#39;&#39;&#39;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ver =3D get_kernelversion_file(staging_dir)<br=
>
+<br>
+=C2=A0 =C2=A0 if ver is not None:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 min_ver =3D ver.split(&#39;.&#39;, 3)<br>
+=C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return dts<br>
+<br>
+=C2=A0 =C2=A0 # Always turn off device tree support for kernel&#39;s &lt; =
3.18<br>
+=C2=A0 =C2=A0 try:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if int(min_ver[0]) &lt;=3D 3:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if int(min_ver[1]) &lt; 18:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dts =3D &quot;&quo=
t;<br>
+=C2=A0 =C2=A0 except IndexError:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 min_ver =3D None<br>
+<br>
+=C2=A0 =C2=A0 return dts<br>
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bb=
class<br>
index 1ff664d..ca94566 100644<br>
--- a/classes/sdcard_image-rpi.bbclass<br>
+++ b/classes/sdcard_image-rpi.bbclass<br>
@@ -1,4 +1,5 @@<br>
=C2=A0inherit image_types<br>
+inherit linux-raspberrypi-base<br>
<br>
=C2=A0#<br>
=C2=A0# Create an image that can by written onto a SD card using dd.<br>
@@ -88,7 +89,8 @@ IMAGE_CMD_rpi-sdimg () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ROOTFS_SIZE_ALIGNED=3D$(expr ${ROOTFS_SIZE_ALIG=
NED} - ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SDIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNMENT} +=
 ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;Creating filesystem with Boot partit=
ion ${BOOT_SPACE_ALIGNED} KiB and RootFS ${ROOTFS_SIZE_ALIGNED} KiB&quot;<b=
r></blockquote><div><br></div><div>Why do you remove this line? Maybe by mi=
stake?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex">
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# Check if we are building with device tree sup=
port<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0DTS=3D&quot;${@get_dts(d, None)}&quot;<br></blo=
ckquote><div><br></div><div>Aren&#39;t we able to use the same variable nam=
e, KERNEL_DEVICETREE? What that be a little clearer?=C2=A0</div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:s=
olid;padding-left:1ex">
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Initialize sdcard image file<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dd if=3D/dev/zero of=3D${SDIMG} bs=3D1024 count=
=3D0 seek=3D${SDIMG_SIZE}<br>
@@ -112,7 +114,7 @@ IMAGE_CMD_rpi-sdimg () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mcopy -i ${WORKDIR}=
/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${M=
ACHINE}.bin ::uImage<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 *)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if test -n &quot;${=
KERNEL_DEVICETREE}&quot;; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if test -n &quot;${=
DTS}&quot;; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # Copy board device trees to root folder<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 for DTB in ${DT_ROOT}; do<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DTB_BASE_NAME=3D`basename ${DTB} .dt=
b`<br>
diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/li=
nux/linux-raspberrypi.inc<br>
index 84d4f9e..7e36408 100644<br>
--- a/recipes-kernel/linux/linux-raspberrypi.inc<br>
+++ b/recipes-kernel/linux/linux-raspberrypi.inc<br>
@@ -1,4 +1,5 @@<br>
=C2=A0require linux.inc<br>
+inherit linux-raspberrypi-base<br>
<br>
=C2=A0DESCRIPTION =3D &quot;Linux Kernel for Raspberry Pi&quot;<br>
=C2=A0SECTION =3D &quot;kernel&quot;<br>
@@ -26,7 +27,8 @@ UDEV_GE_141 ?=3D &quot;1&quot;<br>
=C2=A0# See <a href=3D"http://www.yoctoproject.org/docs/current/bitbake-use=
r-manual/bitbake-user-manual.html#anonymous-python-functions" target=3D"_bl=
ank">http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-u=
ser-manual.html#anonymous-python-functions</a><br>
=C2=A0python __anonymous () {<br>
=C2=A0 =C2=A0 =C2=A0kerneltype =3D d.getVar(&#39;KERNEL_IMAGETYPE&#39;, Tru=
e)<br>
-=C2=A0 =C2=A0 kerneldt =3D d.getVar(&#39;KERNEL_DEVICETREE&#39;, True)<br>
+=C2=A0 =C2=A0 kerneldt =3D get_dts(d, d.getVar(&#39;LINUX_VERSION&#39;, Tr=
ue))<br>
+=C2=A0 =C2=A0 d.setVar(&quot;KERNEL_DEVICETREE&quot;, kerneldt)<br>
<br>
=C2=A0 =C2=A0 =C2=A0# Add dependency to &#39;rpi-mkimage-native&#39; packag=
e only if RPi bootloader is used with DT-enable kernel<br>
=C2=A0 =C2=A0 =C2=A0if kerneldt:<br>
<span class=3D""><font color=3D"#888888">--<br>
1.9.1<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v style=3D"text-align:center"></div><div style=3D"text-align:center"><div a=
lign=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51=
,51);text-align:center">Andrei Gherzan</b><br></div><div align=3D"left"><b =
style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:c=
enter">e: </b><span style=3D"font-family:Arial;font-size:small;color:rgb(51=
,51,51);text-align:center"><i><a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a></i></span></div><div align=3D"left"><span=
 style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:=
center"><i><b>w:</b> </i><a href=3D"http://www.gherzan.ro" target=3D"_blank=
">www.gherzan.ro</a></span></div></div></div></div></div></div>
</div></div>

--047d7bd6abee7915a30515b790a1--
