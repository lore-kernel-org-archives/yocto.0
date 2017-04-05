Return-Path: <szuin@kiversal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1AF3E00777; Wed,  5 Apr 2017 04:29:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_NONE,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [135.84.80.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from sender-of-o52.zoho.com (sender-of-o52.zoho.com [135.84.80.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C33E00655
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 04:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1491391757; 
	s=zoho; d=kiversal.com; i=szuin@kiversal.com;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
	l=3406; bh=N/jPxMgId9srLz28cjPvtS9e5ZxtTCMbw3NcYpuV5bw=;
	b=mbJ8v+G5Gzxu4nLwdQG4RGTN4Sz3Lp+SQCBxfYhmoiNVo0Xuuj7QKOY/wM28KJR6
	6h0vbyfkek+gLSKPpWjcj8EMuk7Gr17GnCWmG6kdwoR9I2yjks/DJJtmatCQGkkJWGD
	bPrz8sDkV5U0/PuGgjWQhSPWV5sgDE2ji8r7U+pk=
Received: from [192.168.1.118] (213.151.116.202 [213.151.116.202]) by
	mx.zohomail.com with SMTPS id 1491391757383796.072225594713;
	Wed, 5 Apr 2017 04:29:17 -0700 (PDT)
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Stefano_Zu=c3=adn?= <szuin@kiversal.com>
Message-ID: <fa8e9123-8ed8-ff2f-b3a1-54467af4457f@kiversal.com>
Date: Wed, 5 Apr 2017 13:29:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
X-ZohoMailClient: External
Subject: iMX6UL - QtQuick - QtQuick2DRenderer
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
X-List-Received-Date: Wed, 05 Apr 2017 11:29:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm trying to run a graphical Qt application based in QtQuick2 and QML 
(example calqtr) in my iMX6UL (Variscite's Dart6UL). As this device 
doesn't have GPU, I have to use QtQuick2DRenderer to substitute openGL. 
I'm using Ubuntu 14.04 64bits and Krogoth 2.1.2

I have the enterprise license, followed the Qt's instructions 
(http://doc.qt.io/QtQuick2DRenderer/qtquick2drenderer-installation-guide.html) 
and use the qmake built with meta-toolchain-qt5. So QtQuick2DRenderer is 
correctly installed.

Then, before run the app, I declared export 
QMLSCENE_DEVICE=softwarecontext before running the application. 
Unfortunately, I get the next message when try to run a demo example:

./calqlatr --platform linuxfb
QML debugging is enabled. Only use this in a safe environment.
This plugin does not support createPlatformOpenGLContext!
Failed to create OpenGL context for format QSurfaceFormat(version 2.0, 
options QFlags(), depthBufferSize 24, redBufferSize -1, greenBufferSize 
-1, blueBufferSize -1, alphaBufferSize -1, stencilBufferSize 8, samples 
-1, swapBehavior 2, swapInterval 1, profile  0)
Aborted (core dumped)

I did the SDK using meta-toolchain-qt5 and the image with fsl-image-qt5. 
When I run a console app or a graphical which uses QtQuick 1, it works 
correctly.

This is my conf/local.conf file:

MACHINE ??= 'imx6ul-var-dart'
DISTRO ?= 'fsl-imx-fb'
PACKAGE_CLASSES ?= "package_rpm"
EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
USER_CLASSES ?= "buildstats image-mklibs"
PATCHRESOLVE = "noop"
BB_DISKMON_DIRS = "\
     STOPTASKS,${TMPDIR},1G,100K \
     STOPTASKS,${DL_DIR},1G,100K \
     STOPTASKS,${SSTATE_DIR},1G,100K \
     STOPTASKS,/tmp,100M,100K \
     ABORT,${TMPDIR},100M,1K \
     ABORT,${DL_DIR},100M,1K \
     ABORT,${SSTATE_DIR},100M,1K \
     ABORT,/tmp,10M,1K"
PACKAGECONFIG_append_pn-qemu-native = " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
CONF_VERSION = "1"

DL_DIR ?= "${BSPDIR}/downloads/"
ACCEPT_FSL_EULA = "1"

# Add Eclipse debug and Qt creator support to your images
EXTRA_IMAGE_FEATURES = " \
     debug-tweaks \
     tools-debug \
     eclipse-debug \
"

IMAGE_INSTALL_append = " \
     tcf-agent \
     openssh-sftp-server \
        qtbase-fonts \
         qtbase-plugins \
         qtbase-tools \
         qtbase-examples \
         qtdeclarative \
         qtdeclarative-plugins \
         qtdeclarative-tools \
         qtdeclarative-examples \
         qtdeclarative-qmlplugins \
         qtquickcontrols-qmlplugins \
"

# Use systemd instead of SysV init
DISTRO_FEATURES_append = " systemd"
VIRTUAL-RUNTIME_init_manager = "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
VIRTUAL-RUNTIME_initscripts = ""
IMX_DEFAULT_DISTRO_FEATURES_append = " systemd"


I think, that problem could be in configuring -opengl es2 in qtbase 
recipe. But when I set it manually I get errors doing bitbake 
fsl-image-qt5....



Este correo electrónico y sus documentos adjuntos contienen información privilegiada, personal y estrictamente confidencial, y está prohibida la copia, reenvío o utilización de la información.
Si usted no es la persona destinataria del presente mensaje, no está autorizada a leerlo, retenerlo o difundirlo.

This e-mail and its attachments are privileged, confidential and contain private information, and any sending, using or copy of its information is prohibited.
Any person other than its intended recipient is not authorised to read, retain or distribute this information.



