Subject: Menuconfig for imx8mq-var-dart #yocto
To: yocto@lists.yoctoproject.org
From: "Amrun Nisha.R" <amrunnishar@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (103.232.224.219)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 10 Mar 2020 23:22:28 -0700
Message-ID: <0xOk.1583907748423481371.Inuh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0dZH7IixmAiWK371pvBy"

--0dZH7IixmAiWK371pvBy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I want to use the menu config for the imx8mq-var-dart machine. I have updat=
ed the conf/local.conf with imx8mq-var-dart configurations.

MACHINE ??=3D 'imx8mq-var-dart'
DISTRO ?=3D 'fsl-imx-wayland'
PACKAGE_CLASSES ?=3D "package_rpm"
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS ??=3D "\
STOPTASKS,${TMPDIR},1G,100K \
STOPTASKS,${DL_DIR},1G,100K \
STOPTASKS,${SSTATE_DIR},1G, 100K \
STOPTASKS,/tmp,100M,100K \
ABORT,${TMPDIR},100M,1K \
ABORT,${DL_DIR},100M,1K \
ABORT,${SSTATE_DIR},100M,1K \
ABORT,/tmp,10M,1K"
PACKAGECONFIG_append_pn-qemu- native =3D " sdl"
PACKAGECONFIG_append_pn- nativesdk-qemu =3D " sdl"
CONF_VERSION =3D "1"

COMPATIBLE_MACHINE_imx8mq-var- dart =3D "imx8mq-var-dart"
PREFERRED_PROVIDER_virtual/ kernel =3D "linux-yocto"

DL_DIR ?=3D "${BSPDIR}/downloads/"
ACCEPT_FSL_EULA =3D "1"

EXTRA_IMAGES_FEATURES +=3D "
tools-debug \
eclipse-debug \
read-only-rootfs \
"

IMAGE-INSTALL-append =3D " \
tcf-agent \
openssh-sft-server \
"

While running the command " bitbake linux-yocto -c menuconfig ", it is thr=
owing error as

ERROR: Nothing PROVIDES 'linux-yocto'
linux-yocto was skipped: incompatible with machine imx8mq-var-dart (not in=
 COMPATIBLE_MACHINE)
linux-yocto was skipped: incompatible with machine imx8mq-var-dart (not in=
 COMPATIBLE_MACHINE)
linux-yocto was skipped: incompatible with machine imx8mq-var-dart (not in=
 COMPATIBLE_MACHINE)

How can i work with menuconfig for imx8mq-var-dart?

--0dZH7IixmAiWK371pvBy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">I want to use the menu config for the imx8mq-var-dart mach=
ine. I have updated the conf/local.conf with imx8mq-var-dart configurations=
.&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">MACHINE ??=3D 'imx8mq-var-dart'<br />DISTRO ?=3D 'fsl-imx=
-wayland'<br />PACKAGE_CLASSES ?=3D "package_rpm"<br />EXTRA_IMAGE_FEATURES=
 ?=3D "debug-tweaks"<br />USER_CLASSES ?=3D "buildstats image-mklibs image-=
prelink"<br />PATCHRESOLVE =3D "noop"<br />BB_DISKMON_DIRS ??=3D "\<br />&n=
bsp; &nbsp; STOPTASKS,${TMPDIR},1G,100K \<br />&nbsp; &nbsp; STOPTASKS,${DL=
_DIR},1G,100K \<br />&nbsp; &nbsp; STOPTASKS,${SSTATE_DIR},1G,<wbr />100K \=
<br />&nbsp; &nbsp; STOPTASKS,/tmp,100M,100K \<br />&nbsp; &nbsp; ABORT,${T=
MPDIR},100M,1K \<br />&nbsp; &nbsp; ABORT,${DL_DIR},100M,1K \<br />&nbsp; &=
nbsp; ABORT,${SSTATE_DIR},100M,1K \<br />&nbsp; &nbsp; ABORT,/tmp,10M,1K"<b=
r />PACKAGECONFIG_append_pn-qemu-<wbr />native =3D " sdl"<br />PACKAGECONFI=
G_append_pn-<wbr />nativesdk-qemu =3D " sdl"<br />CONF_VERSION =3D "1"<br /=
><br />COMPATIBLE_MACHINE_imx8mq-var-<wbr />dart =3D "imx8mq-var-dart"<br /=
>PREFERRED_PROVIDER_virtual/<wbr />kernel =3D "linux-yocto"<br /><br />DL_D=
IR ?=3D "${BSPDIR}/downloads/"<br />ACCEPT_FSL_EULA =3D "1"<br /><br />EXTR=
A_IMAGES_FEATURES +=3D "<br />tools-debug \<br />eclipse-debug \<br />read-=
only-rootfs \<br />"<br /><br />IMAGE-INSTALL-append =3D " \<br />tcf-agent=
 \<br />openssh-sft-server \<br />"</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">While running the command "<span style=3D"color: #333333;=
">bitbake linux-yocto -c menuconfig</span>", it is throwing error as&nbsp;<=
/div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">ERROR: Nothing PROVIDES 'linux-yocto'<br />linux-yocto wa=
s skipped: incompatible with machine imx8mq-var-dart (not in COMPATIBLE_MAC=
HINE)<br />linux-yocto was skipped: incompatible with machine imx8mq-var-da=
rt (not in COMPATIBLE_MACHINE)<br />linux-yocto was skipped: incompatible w=
ith machine imx8mq-var-dart (not in COMPATIBLE_MACHINE)<br /><br /></div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">How can i work with menuconfig for imx8mq-var-dart?</div>

--0dZH7IixmAiWK371pvBy--
