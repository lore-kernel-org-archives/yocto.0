Return-Path: <cordlandwehr@kde.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F30D4E00826; Mon, 17 Apr 2017 11:29:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [46.4.96.248 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 453 seconds by postgrey-1.32 at yocto-www;
	Mon, 17 Apr 2017 11:29:37 PDT
Received: from postbox.kde.org (postbox.kde.org [46.4.96.248])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E3F6E00826
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 11:29:37 -0700 (PDT)
Received: from weatherwax.localnet (ip-95-223-36-88.hsi16.unitymediagroup.de
	[95.223.36.88]) (Authenticated sender: cordlandwehr)
	by postbox.kde.org (Postfix) with ESMTPSA id B6F67BF11E;
	Mon, 17 Apr 2017 18:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=kde.org; s=default;
	t=1492453323; bh=bAXIQoUlmXk2YuY60tRkUm8AqKfbUkxpVXP4hJ8vPQI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Io/sJZ8Srhf/s+EG48mWchA3Hc+Iw/RUbKC8FuGPkSkeSY0yw2+uyAU0YIEKoTTii
	hK9yt8BCMLPRbOTp4HtkJRPxM7w56WZ5EgVOck6ViGyfeJqn6TJNzvXyvNP3WPHa+B
	cB6PTNxlNUo2LYhBAJRjVDZ8H6G8jzYzqqZ91YV0=
From: Andreas Cord-Landwehr <cordlandwehr@kde.org>
To: Stefano =?ISO-8859-1?Q?Zu=EDn?= <szuin@kiversal.com>
Date: Mon, 17 Apr 2017 20:22:01 +0200
Message-ID: <6299403.yV3Tuu9tZj@weatherwax>
In-Reply-To: <a84d3714-2329-914c-8e16-5fad1edca7e8@kiversal.com>
References: <fa8e9123-8ed8-ff2f-b3a1-54467af4457f@kiversal.com>
	<a84d3714-2329-914c-8e16-5fad1edca7e8@kiversal.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: iMX6UL - QtQuick - QtQuick2DRenderer
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
X-List-Received-Date: Mon, 17 Apr 2017 18:29:41 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi, one point I noticed directly, you should only use one "-", i.e.=20
"-platform linuxfb" . Moreover, best check with "export QT_DEBUG_PLUGINS=3D=
1"=20
that linuxfb is located and loaded correctly.
Only if all of this works fine, you should start looking into the compile=20
options.

Cheers,
Andreas

On Thursday, April 6, 2017 10:35:20 AM CEST Stefano Zu=EDn wrote:
> -------- Mensaje reenviado --------
> Asunto: 	[yocto] iMX6UL - QtQuick - QtQuick2DRenderer
> Fecha: 	Wed, 5 Apr 2017 13:29:13 +0200
> De: 	Stefano Zu=EDn <szuin@kiversal.com>
> Para: 	yocto@yoctoproject.org
>=20
>=20
>=20
> Hi all,
>=20
> I'm trying to run a graphical Qt application based in QtQuick2 and QML
> (example calqtr) in my iMX6UL (Variscite's Dart6UL). As this device
> doesn't have GPU, I have to use QtQuick2DRenderer to substitute openGL.
> I'm using Ubuntu 14.04 64bits and Krogoth 2.1.2
>=20
> I have the enterprise license, followed the Qt's instructions
> (http://doc.qt.io/QtQuick2DRenderer/qtquick2drenderer-installation-guide.=
htm
> l) and use the qmake built with meta-toolchain-qt5. So QtQuick2DRenderer =
is
> correctly installed.
>=20
> Then, before run the app, I declared export
> QMLSCENE_DEVICE=3Dsoftwarecontext before running the application.
> Unfortunately, I get the next message when try to run a demo example:
>=20
> ./calqlatr --platform linuxfb
> QML debugging is enabled. Only use this in a safe environment.
> This plugin does not support createPlatformOpenGLContext!
> Failed to create OpenGL context for format QSurfaceFormat(version 2.0,
> options QFlags(), depthBufferSize 24, redBufferSize -1, greenBufferSize
> -1, blueBufferSize -1, alphaBufferSize -1, stencilBufferSize 8, samples
> -1, swapBehavior 2, swapInterval 1, profile  0)
> Aborted (core dumped)
>=20
> I did the SDK using meta-toolchain-qt5 and the image with fsl-image-qt5.
> When I run a console app or a graphical which uses QtQuick 1, it works
> correctly.
>=20
> This is my conf/local.conf file:
>=20
> MACHINE ??=3D 'imx6ul-var-dart'
> DISTRO ?=3D 'fsl-imx-fb'
> PACKAGE_CLASSES ?=3D "package_rpm"
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
> USER_CLASSES ?=3D "buildstats image-mklibs"
> PATCHRESOLVE =3D "noop"
> BB_DISKMON_DIRS =3D "\
>       STOPTASKS,${TMPDIR},1G,100K \
>       STOPTASKS,${DL_DIR},1G,100K \
>       STOPTASKS,${SSTATE_DIR},1G,100K \
>       STOPTASKS,/tmp,100M,100K \
>       ABORT,${TMPDIR},100M,1K \
>       ABORT,${DL_DIR},100M,1K \
>       ABORT,${SSTATE_DIR},100M,1K \
>       ABORT,/tmp,10M,1K"
> PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
> CONF_VERSION =3D "1"
>=20
> DL_DIR ?=3D "${BSPDIR}/downloads/"
> ACCEPT_FSL_EULA =3D "1"
>=20
> # Add Eclipse debug and Qt creator support to your images
> EXTRA_IMAGE_FEATURES =3D " \
>       debug-tweaks \
>       tools-debug \
>       eclipse-debug \
> "
>=20
> IMAGE_INSTALL_append =3D " \
>       tcf-agent \
>       openssh-sftp-server \
>          qtbase-fonts \
>           qtbase-plugins \
>           qtbase-tools \
>           qtbase-examples \
>           qtdeclarative \
>           qtdeclarative-plugins \
>           qtdeclarative-tools \
>           qtdeclarative-examples \
>           qtdeclarative-qmlplugins \
>           qtquickcontrols-qmlplugins \
> "
>=20
> # Use systemd instead of SysV init
> DISTRO_FEATURES_append =3D " systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
> VIRTUAL-RUNTIME_initscripts =3D ""
> IMX_DEFAULT_DISTRO_FEATURES_append =3D " systemd"
>=20
>=20
> I think, that problem could be in configuring -opengl es2 in qtbase
> recipe. But when I set it manually I get errors doing bitbake
> fsl-image-qt5....
>=20
>=20
>=20
> Este correo electr=F3nico y sus documentos adjuntos contienen informaci=
=F3n
> privilegiada, personal y estrictamente confidencial, y est=E1 prohibida la
> copia, reenv=EDo o utilizaci=F3n de la informaci=F3n. Si usted no es la p=
ersona
> destinataria del presente mensaje, no est=E1 autorizada a leerlo, retener=
lo o
> difundirlo.
>=20
> This e-mail and its attachments are privileged, confidential and contain
> private information, and any sending, using or copy of its information is
> prohibited. Any person other than its intended recipient is not authorised
> to read, retain or distribute this information.



