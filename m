Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
 by mx.groups.io with SMTP id smtpd.web11.59696.1629316433118502976
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 12:53:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=Ge+P5lOH;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.24, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 7A430320047A
	for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 15:53:52 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Wed, 18 Aug 2021 15:53:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=nJBAfXnSC7XTYGWLvdaZ4lQy1G2SQDy
	o+/vuS17YnC4=; b=Ge+P5lOHOrs+13j/XEMJ/r9jS8dgptk5luwsK9NZC8bwmJu
	1bfLXCdeRtZ3p0dGso9725VultIoRq0JlQfKPL8S6XtXwEei6jsiL8B9DbgQtxep
	Sg+KNkMKNJ2cxPpPAtwXbi85o6ZgyZ/WMuYS8ZI4jvJN4F5v+54Ce67Ai430Vzn8
	x8n4hmoO5gLSBvp/MJY3V5A7GncXC5aPkNyZEARbnZcTfqb8GhcRg11BkGvlnBmw
	sCOBUsUnfavU0mqJlWnUqAyCZeaE+IOOd8es2tEjg158iKbFvXdC/MheTaco27Fe
	HV4GhPkKwzFYi6wUw7oVU/Wrg+3eW+5qsL0NRvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=nJBAfX
	nSC7XTYGWLvdaZ4lQy1G2SQDyo+/vuS17YnC4=; b=wlWeGElb6ckJmkRqjLMZyn
	rSLIFbDYyZl5J9sjxeEGH8XCESx1+3RExLOKWpV5xiI2X0W5pMUOs17A6j2EwLTT
	Lyh/rn3xd61z96O8Inf+bP5iEGbQXrXyyfdQPBnSzXYVnlrIAY+Y4nQxOFI1sZCo
	HHwCzYDFM7TLVUTzp2b9CNwYBb36NaAACY041RZXfbDT6r+owku1kRtNOJok4O9t
	1G2mj8Xfa0qhTgboDeWlNOM6+WzyI/rSA9Gk/3AKhnT3vNbf2+sSHx2BRDhbK+uB
	RaRkuACLc0+V5YBWrcfF2+BF3uW6U5sbP9h5o3SYZE0F6T8X7O30JhJKqwaIE9Tw
	==
X-ME-Sender: <xms:T2UdYeJk7l8z3acRMsW4-237GkEOhbIsC79JhR2VDB5JpEUUpALpTw>
    <xme:T2UdYWIcckujRo3bpB0RQskHW8oFUCDkr8yix8QvyhPDWTBjeDCQKMSv0XgrMToVq
    YlnQRyF8KdY87PX>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrleehgddugeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
    ertderreejnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceo
    ofgrnhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeeuieetgf
    duledvhfevkeeufeeuhffgkeeivefgtefhffffudehfeejueefheeuvdenucffohhmrghi
    nhepuggvthgvtghtvggurdguvghvpdgvlhhinhhugidrohhrghdpghhithhlrggsrdgtoh
    hmpdgsohhrrgdqihhmrghgvgdrsggspdhgihhthhhusgdrtghomhenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtof
    grihhlrdfhof
X-ME-Proxy: <xmx:T2UdYet5zsJ-aqNPYMJP2kWqmpYT-kMs4XhBFHiyFreU5vGnvUSuuw>
    <xmx:T2UdYTZ3-ubTtdCT4FEylvaiNqGCyT-5mtAtL3_AjLZBipi_xiGSSQ>
    <xmx:T2UdYVYKy1VFgX8yexmCgdq3gncAddORszmAt7taVXypeUAjdC0qVQ>
    <xmx:UGUdYenJXe3mv6NghMx4RJCzhoFLsje-1m4Vt3RZ8dXCg4SUx5LxZA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id D5B2E3C0F7B; Wed, 18 Aug 2021 15:53:51 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1118-g75eff666e5-fm-20210816.002-g75eff666
Mime-Version: 1.0
Message-Id: <90ad4fa8-ada2-4577-87e1-db17d49bced0@www.fastmail.com>
In-Reply-To: <169B95427CB7EE20.3513@lists.yoctoproject.org>
References: <169B95427CB7EE20.3513@lists.yoctoproject.org>
Date: Wed, 18 Aug 2021 21:53:29 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] Would like to run xterm on Raspberry Pi 4 but Xorg fails with "module fbdev not found"
Content-Type: text/plain

Hello all,

Am So, 15. Aug 2021, um 22:36, schrieb Manuel Wagesreither:
> I'm building my project for qemux86-64 and Raspberry Pi 4. Currently, 
> when booted, it displays a textual root shell. I can work with it in 
> both qemu and Raspi and all is good. Now I want to change my image to 
> display a graphical terminal when booted.
> 
> On qemu, this already works. In Raspberry Pi, not yet. It still 
> provides me the textual root shell.
> 
> On Raspberry Pi, `/var/log/Xorg.0.log` contains the following:
> ```
> [  1049.676] (II) LoadModule: "fbdev"
> [  1049.681] (WW) Warning, couldn't open module fbdev
> [  1049.681] (EE) Failed to load module "fbdev" (module does not exist, 0)
> [  1049.681] (II) modesetting: Driver for Modesetting Kernel Drivers: kms
> [  1049.684] (WW) Falling back to old probe method for modesetting
> [  1049.684] (EE) open /dev/dri/card0: No such file or directory
> [  1049.684] (WW) Falling back to old probe method for modesetting
> [  1049.684] (EE) open /dev/dri/card0: No such file or directory
> [  1049.684] (EE) No devices detected.
> ```
> 
> `/dev/fb0` does exist, so something like a framebuffer does at least 
> seem to exist.
> 
> So how can I install the fbdev module on my Raspberry Pi? I looked 
> around a bit and found this: https://elinux.org/RPi_Xorg_rpi_Driver I 
> tried it out and installed the 
> `/usr/lib/xorg/modules/drivers/fbdev_drv.so` file provided in the page, 
> but it's 32bit armhf architecture. My Raspi image is built for aarch64 
> architecture, so it naturally doesn't run there.
> 
> I googled a bit and there seem to be quite a few technologies around to 
> hw-accelerate output rendering. Read about EGL, GLX, OpenGL and DRI. 
> Are some of these options available on RasperryPi or qemux86_64? I 
> runqemu with the kvm option. Booting is fast, but the GUI terminal 
> window doesn't even catch the keypresses in time.
> 
> My image is a core-image-minimal with IMAGE_FEATURES x11-base. 
> (https://gitlab.com/manuel_wagesreither/bora-proj/-/blob/master/meta-manwag/recipes-core/images/bora-image.bb)
> 
> The distro is a modified Poky with DISTRO_FEATURES x11. 
> (https://gitlab.com/manuel_wagesreither/bora-proj/-/blob/master/meta-manwag/conf/distro/bora-device.conf) To work around https://github.com/agherzan/meta-raspberrypi/issues/228 I made DISTRO_FEATURES_append = " opengl".

just for documentational purposes, if I recall correctly, adding package "kernel-features" to IMAGE_INSTALL did the trick.

Regards,
Manuel
