Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C3E0E00985; Thu,  6 Apr 2017 03:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8CA0E0095F
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 03:10:50 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id C569A265710
Message-ID: <1491473447.25991.43.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 06 Apr 2017 12:10:47 +0200
In-Reply-To: <a84d3714-2329-914c-8e16-5fad1edca7e8@kiversal.com>
References: <fa8e9123-8ed8-ff2f-b3a1-54467af4457f@kiversal.com>
	<a84d3714-2329-914c-8e16-5fad1edca7e8@kiversal.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
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
X-List-Received-Date: Thu, 06 Apr 2017 10:10:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-04-06 at 10:35 +0200, Stefano Zuín wrote:
> 
> 
> 
> -------- Mensaje reenviado --------
> Asunto:	[yocto] iMX6UL - QtQuick - QtQuick2DRenderer
> Fecha:	Wed, 5 Apr 2017 13:29:13 +0200
> De:	Stefano Zuín <szuin@kiversal.com>
> Para:	yocto@yoctoproject.org
> 
> Hi all,
> 
> I'm trying to run a graphical Qt application based in QtQuick2 and QML 
> (example calqtr) in my iMX6UL (Variscite's Dart6UL). As this device 
> doesn't have GPU, I have to use QtQuick2DRenderer to substitute openGL. 
> I'm using Ubuntu 14.04 64bits and Krogoth 2.1.2
> 
> I have the enterprise license, followed the Qt's instructions 
> (http://doc.qt.io/QtQuick2DRenderer/qtquick2drenderer-installation-guide.html) 
> and use the qmake built with meta-toolchain-qt5. So QtQuick2DRenderer is 
> correctly installed.
> 
> Then, before run the app, I declared export 
> QMLSCENE_DEVICE=softwarecontext before running the application. 
> Unfortunately, I get the next message when try to run a demo example:
> 
> ./calqlatr --platform linuxfb
> QML debugging is enabled. Only use this in a safe environment.
> This plugin does not support createPlatformOpenGLContext!
> Failed to create OpenGL context for format QSurfaceFormat(version 2.0, 
> options QFlags(), depthBufferSize 24, redBufferSize -1, greenBufferSize 
> -1, blueBufferSize -1, alphaBufferSize -1, stencilBufferSize 8, samples 
> -1, swapBehavior 2, swapInterval 1, profile  0)
> Aborted (core dumped)

Did you try to look at the core dumped. maybe the backtrace can help.

> 
> I did the SDK using meta-toolchain-qt5 and the image with fsl-image-qt5. 
> When I run a console app or a graphical which uses QtQuick 1, it works 
> correctly.
> 
> This is my conf/local.conf file:
> 
> MACHINE ??= 'imx6ul-var-dart'
> DISTRO ?= 'fsl-imx-fb'
> PACKAGE_CLASSES ?= "package_rpm"
> EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
> USER_CLASSES ?= "buildstats image-mklibs"
> PATCHRESOLVE = "noop"
> BB_DISKMON_DIRS = "\
>      STOPTASKS,${TMPDIR},1G,100K \
>      STOPTASKS,${DL_DIR},1G,100K \
>      STOPTASKS,${SSTATE_DIR},1G,100K \
>      STOPTASKS,/tmp,100M,100K \
>      ABORT,${TMPDIR},100M,1K \
>      ABORT,${DL_DIR},100M,1K \
>      ABORT,${SSTATE_DIR},100M,1K \
>      ABORT,/tmp,10M,1K"
> PACKAGECONFIG_append_pn-qemu-native = " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
> CONF_VERSION = "1"
> 
> DL_DIR ?= "${BSPDIR}/downloads/"
> ACCEPT_FSL_EULA = "1"
> 
> # Add Eclipse debug and Qt creator support to your images
> EXTRA_IMAGE_FEATURES = " \
>      debug-tweaks \
>      tools-debug \
>      eclipse-debug \
> "
> 
> IMAGE_INSTALL_append = " \
>      tcf-agent \
>      openssh-sftp-server \
>         qtbase-fonts \
>          qtbase-plugins \
>          qtbase-tools \
>          qtbase-examples \
>          qtdeclarative \
>          qtdeclarative-plugins \
>          qtdeclarative-tools \
>          qtdeclarative-examples \
>          qtdeclarative-qmlplugins \
>          qtquickcontrols-qmlplugins \
> "
> 
> # Use systemd instead of SysV init
> DISTRO_FEATURES_append = " systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> VIRTUAL-RUNTIME_initscripts = ""
> IMX_DEFAULT_DISTRO_FEATURES_append = " systemd"
> 
> 
> I think, that problem could be in configuring -opengl es2 in qtbase 
> recipe. But when I set it manually I get errors doing bitbake 
> fsl-image-qt5....
> 
> 
> 
> Este correo electrónico y sus documentos adjuntos contienen información privilegiada, personal y
> estrictamente confidencial, y está prohibida la copia, reenvío o utilización de la información.
> Si usted no es la persona destinataria del presente mensaje, no está autorizada a leerlo,
> retenerlo o difundirlo.
> 
> This e-mail and its attachments are privileged, confidential and contain private information, and
> any sending, using or copy of its information is prohibited.
> Any person other than its intended recipient is not authorised to read, retain or distribute this
> information.
> 
> 

