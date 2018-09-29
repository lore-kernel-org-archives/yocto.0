Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC7D7E00A0A; Fri, 28 Sep 2018 23:46:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 712C2E009D9
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 23:46:09 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id r63-v6so56715wma.4
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 23:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=SylxjWX1XNcO7qSzm32m04kHp56U8NcUw1eK1r3qVxw=;
	b=laq9uWHkRJ9tjdIl0TzxhCzDtbaVRpwWK+S0DKI7mYE9Rs/IjRS80DGftmpTQYzqL4
	eClqafDShfYRZ9r2Mpvkbok1UduZStwS/oL+UZxnxJ0odsCDaclfTIO9KCCXBOvMbmb8
	jx139VikzqOpOGqQe5OsESzjHsoRaO1ADuEbUaRrnYCKs7gkOIp7ARWc2cJyYvBX97RF
	PlJt4TRbPQ+ovERU8VfmPqQvJNEkX5+Y864DQDRjmawn4DqD6fHMbfD7K6Zj3C6uTID0
	kbMHRN+bMErW6XCpW2ZQp+xqDWFQoGlj2RSvNXVTPnaj+0gAkON9N2OarbaRDILfHNii
	w23g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SylxjWX1XNcO7qSzm32m04kHp56U8NcUw1eK1r3qVxw=;
	b=B8pMGkq0ldXq1Ke5bXZv78BPlTb7Sy53mRaks64PJK2DyFs9loSUq8L0dx4TBlJ0rN
	ORL6WioeQGC/jy8ykZ0xcukkvXxqjPQexnj47zofgXImxBhjgxfAREnD/XRgIhz17c2d
	zBI/XyxehAR70E1w90ar6GQ2oFTZEAd8HcbN7OTBqzRwcumbVkv8wkDC5XOtL4s2tpsA
	kYjAFlNFFkFwLV3QvreyaVtn42EgFFsJD3OOt+80r3NAxnPSERGHlPnXf9XTIrgP7qSi
	GYFPgYM82jxxDStP8u1fqV1gXHZAsvupp3nqgd6tTu9JsXkDTC9Xiaw5B2F1XpCNQrJX
	bg3g==
X-Gm-Message-State: ABuFfojzsq5/0omklsOAC4DAHcAkRvhbhpFTmYkBxx1wifCRzVPcIb8R
	ReK5cQKn4Nshs2lzFNaWcGdaZcsxT8oGGBP8BJ4NEgAw
X-Google-Smtp-Source: ACcGV617g3HqVx5qPXvGQwB49VFGCQ25O8R1NHk9WeOd2tR2lctj8yw8BEGJsskTci2N+8FPnzaepSLXAPqTJVe4xQY=
X-Received: by 2002:a1c:908b:: with SMTP id
	s133-v6mr3582431wmd.69.1538203568099; 
	Fri, 28 Sep 2018 23:46:08 -0700 (PDT)
MIME-Version: 1.0
From: Outback Dingo <outbackdingo@gmail.com>
Date: Sat, 29 Sep 2018 13:45:31 +0700
Message-ID: <CAKYr3zzFeej=AvTO-m+ixSd3608qeiL2DL1N3pSTgwcr0Uh+=w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto poky headless Pi 0 W - OTG /RNDIS
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
X-List-Received-Date: Sat, 29 Sep 2018 06:46:11 -0000
Content-Type: text/plain; charset="UTF-8"

Headless Raspberry PI 0 W cant get OTG rndis up, i followed the guide and set
ENABLE_UART = "1"
ENABLE_DWC2_PERIPHERAL = "1"

current config is

MACHINE ??= "raspberrypi0-wifi"
SERIAL_CONSOLE = ""
ENABLE_UART = "1"
ENABLE_DWC2_PERIPHERAL = "1"
DISABLE_RPI_BOOT_LOGO = "1"
DISABLE_OVERSCAN = "1"
DISABLE_SPLASH = "1"
BOOT_DELAY = "0"
GPU_MEM_256 = "128"
GPU_MEM_512 = "196"
GPU_MEM_1024 = "396"
DISTRO_FEATURES_remove = "x11"
DISTRO_FEATURES_append = " opengl"
PACKAGE_CLASSES = "package_ipk"
IMAGE_INSTALL_append = " chrony"
IMAGE_INSTALL_append = " linux-firmware-bcm43430 wpa-supplicant"
IMAGE_FSTYPES = "tar.bz2 ext4 rpi-sdimg"
SDIMG_ROOTFS_TYPE = "ext4"
CORE_IMAGE_EXTRA_INSTALL += "openssh"
DISTRO_FEATURES_append += "bluez5 bluetooth wifi"


as following the docs it stated
ENABLE_UART = "1"
ENABLE_DWC2_PERIPHERAL = "1"

for OTG, buut i dont seem to see any rndis on my laptop via thhe
second poort, Rasbian / DietPI work fine, so do i need to edit the
config.txt and cmdline.txt like in Raspbian? also do we need a ssh
file in boot as also with Raspbian ?

Edit the file config.txt and add dtoverlay=dwc2 on its own line at the end.
Edit the file cmdline.txt and add modules-load=dwc2,g_ether right
after it says rootwait


Thanks in Advance

