Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9FB7E00B7D; Sun, 15 Nov 2015 09:32:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7735EE00AE6
	for <yocto@yoctoproject.org>; Sun, 15 Nov 2015 09:32:18 -0800 (PST)
Received: by igvg19 with SMTP id g19so62478696igv.1
	for <yocto@yoctoproject.org>; Sun, 15 Nov 2015 09:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+Esqf8liDGPZTa5WvXEHIRRrRosgt7PkpaaR7CeTYj4=;
	b=JC5b3b7x1GBeVG3xK4X80dOv8HAyz2gCY3PX7mm/r10BT5PJbJa4OTpxeZjhKtebxa
	Tf29O3CZh0LPXpRY38WfOHZ0Vb8Fe4B+RhTdkJ3oteD52SzmgOwhB/g9aTRxtrdNbSdT
	Y0yJ/lJ82oL/gm1JmOmTHUcuzY1PCtJSyjzdLor16lwg8SZcZEA8Uu0XnJ4wykSJCkfc
	KSf++T4yJqkqtqq8HVHg+WchcvIgeVSQZTXWk9DtY2zXyrN9TQqzTnG6eac3zvnIMUhm
	Pp7xkRozHA/LdS7Zncr0vIpAAIo/uFryVwveiZQVKSsKcz5TsnLGyR5WHdf1MZVynvTf
	5tRQ==
X-Received: by 10.50.143.103 with SMTP id sd7mr1265483igb.11.1447608738021;
	Sun, 15 Nov 2015 09:32:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.12.205 with HTTP; Sun, 15 Nov 2015 09:31:48 -0800 (PST)
In-Reply-To: <1447590685-8145-1-git-send-email-net147@gmail.com>
References: <1447590685-8145-1-git-send-email-net147@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 15 Nov 2015 09:31:48 -0800
Message-ID: <CAMKF1sqq0xS6qHSCHVZsn6wmTQEGUuegT31tVN6ppfNem+kXGA@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v5] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Sun, 15 Nov 2015 17:32:22 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 15, 2015 at 4:31 AM, Jonathan Liu <net147@gmail.com> wrote:
> [Support #16]
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  conf/machine/include/rpi-base.inc | 3 +++
>  recipes-qt/qt5/qtbase_%.bbappend  | 8 ++++++++
>  2 files changed, 11 insertions(+)
>  create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index e097702..b390705 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -48,3 +48,6 @@ MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
>  SPLASH = "psplash-raspberrypi"
>
>  IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}"
> +
> +# Qt packages are machine specific due to RPi integration
> +QT_PACKAGES_ARCH = "${MACHINE_ARCH}"
> diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
> new file mode 100644
> index 0000000..7775e70
> --- /dev/null
> +++ b/recipes-qt/qt5/qtbase_%.bbappend
> @@ -0,0 +1,8 @@
> +do_configure_prepend_rpi() {
> +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
> +EGLFS_DEVICE_INTEGRATION = eglfs_brcm

should this should be controlled based on a knob for userspace binary
driver or open source kernel driver is used.

> +QMAKE_INCDIR_EGL = $$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
> +QMAKE_INCDIR_OPENGL_ES2 = $${QMAKE_INCDIR_EGL}
> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
> +EOF
> +}
> --
> 2.6.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

