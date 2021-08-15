Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
 by mx.groups.io with SMTP id smtpd.web10.15596.1629059802465005067
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 13:36:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=T1CQRPJy;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.27, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id A0B755C00D5
	for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 16:36:39 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Sun, 15 Aug 2021 16:36:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm3; bh=4TcxIYTjhcHK5guNRWra6qkgILPnqROoszdm2N34zLo=; b=T1CQRPJy
	ToK1ll+2/rjoEtlPwZxKhCoMkgHNDteJ/kiv3Kecrosgsotn4mlJAq9U+ClNfUET
	THDMsdRR7Es0XlCJZbW2Icyf6U+7vfN8rMnN+LKJzMD+FEvSd24wQpltRDy70G2Z
	kw7NyAIm0jdejzlpHfw/3KCxW0/7WIVRHjo5dFHtquR4qh+nn6fhd0rN64Uwrbf/
	lCirdqfzP1KzesNc/GWLZ53sIyF/UP8fWZ/+VeaOPc533WoIs2PpZkUK0qC6SgER
	jumLKUmHYrK/Di4UewqfFQ3HU5CVW0qs4uLKbmGD//5UHQ0ZwpOizH4nYkzSXpPE
	7SdiPEsvgbyKEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=4TcxIYTjhcHK5guNRWra6qkgILPnq
	ROoszdm2N34zLo=; b=B6Z3e1kn+hx0zBJ6JhymuxVudmeutRWVm7RkNv6LeDQXB
	0Zt7Nu2OA3jzr5YrKmOVNB/Ue3eRy215BNKYC2FDw9jhYrBE3aTwyHQPU57kZPhB
	utqx77kWMdMC1KbUglBXAE1WyLnzPQtcDBR3X+cQlAX7EYpEPYvnv9M+PDZb+GHi
	PWUEqfd7wMl2YYR4mack7GBqkKwJ9X9uXQw0J3pWMj/NpN0eGtwaLZtkwPXDDF49
	VAZYUWhpA+r0dmmloOXC+U0xzhQ3yq/v6tlJzXtKizRxlc7DyHTT3yLTGAB3/ZIn
	9qCAIl3MpoTkTK3ktexK9UjF5YU+VX1h0ffbVHcrA==
X-ME-Sender: <xms:13oZYboy4ipHbe5k9pVUzVecDiwpUB3ET4RfRRr7J84IOk03DsTFWw>
    <xme:13oZYVrRUNOuegR7DbFz4yVLWZV-UzAnpNBgN7BczGn2XBNn0ETTY4AsvJIoxVII7
    1SmobThjS9Z09Fq>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrkeelgdduhedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erreejnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeehjeegjeeutd
    elkeelheeuvdfgueeuhefhgeeuffdvledvfffgteejjeffieekvdenucffohhmrghinhep
    uggvthgvtghtvggurdguvghvpdgvlhhinhhugidrohhrghdpghhithhlrggsrdgtohhmpd
    gsohhrrgdqihhmrghgvgdrsggspdhgihhthhhusgdrtghomhenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrih
    hlrdfhof
X-ME-Proxy: <xmx:13oZYYNX2JeH8qI9Gw253BqsnDdu5M6y2QEUHokk13y1oIFy6oAjUw>
    <xmx:13oZYe5gZJFxnWt-3aUKhnUcMD53MgjxmmcvtnY7W6ehJXhwbtmWDw>
    <xmx:13oZYa7dfhI-JTdlS_qG5vDFqCBp6dIfMa1g20LXkUH5qQ3K2FK1HQ>
    <xmx:13oZYcF63GuxFXU4syg26ubswgKaD0wJ6JzgQVeaNSzIygMT1gk29A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 756283C0453; Sun, 15 Aug 2021 16:36:39 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1082-gccb13bca62-fm-ubox-20210811.001-gccb13bca
Mime-Version: 1.0
Message-Id: <4c37145a-98b7-49ad-a007-c152024c37fb@www.fastmail.com>
Date: Sun, 15 Aug 2021 22:36:14 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: [meta-raspberrypi] Would like to run xterm on Raspberry Pi 4 but Xorg fails with "module fbdev not found"
Content-Type: text/plain

Hello all,

I'm building my project for qemux86-64 and Raspberry Pi 4. Currently, when booted, it displays a textual root shell. I can work with it in both qemu and Raspi and all is good. Now I want to change my image to display a graphical terminal when booted.

On qemu, this already works. In Raspberry Pi, not yet. It still provides me the textual root shell.

On Raspberry Pi, `/var/log/Xorg.0.log` contains the following:
```
[  1049.676] (II) LoadModule: "fbdev"
[  1049.681] (WW) Warning, couldn't open module fbdev
[  1049.681] (EE) Failed to load module "fbdev" (module does not exist, 0)
[  1049.681] (II) modesetting: Driver for Modesetting Kernel Drivers: kms
[  1049.684] (WW) Falling back to old probe method for modesetting
[  1049.684] (EE) open /dev/dri/card0: No such file or directory
[  1049.684] (WW) Falling back to old probe method for modesetting
[  1049.684] (EE) open /dev/dri/card0: No such file or directory
[  1049.684] (EE) No devices detected.
```

`/dev/fb0` does exist, so something like a framebuffer does at least seem to exist.

So how can I install the fbdev module on my Raspberry Pi? I looked around a bit and found this: https://elinux.org/RPi_Xorg_rpi_Driver I tried it out and installed the `/usr/lib/xorg/modules/drivers/fbdev_drv.so` file provided in the page, but it's 32bit armhf architecture. My Raspi image is built for aarch64 architecture, so it naturally doesn't run there.

I googled a bit and there seem to be quite a few technologies around to hw-accelerate output rendering. Read about EGL, GLX, OpenGL and DRI. Are some of these options available on RasperryPi or qemux86_64? I runqemu with the kvm option. Booting is fast, but the GUI terminal window doesn't even catch the keypresses in time.

My image is a core-image-minimal with IMAGE_FEATURES x11-base. (https://gitlab.com/manuel_wagesreither/bora-proj/-/blob/master/meta-manwag/recipes-core/images/bora-image.bb)

The distro is a modified Poky with DISTRO_FEATURES x11. (https://gitlab.com/manuel_wagesreither/bora-proj/-/blob/master/meta-manwag/conf/distro/bora-device.conf) To work around https://github.com/agherzan/meta-raspberrypi/issues/228 I made DISTRO_FEATURES_append = " opengl".

Thank you all for your input!

Manuel
