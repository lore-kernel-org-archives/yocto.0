Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web10.1962.1629485347524288351
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Aug 2021 11:49:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=SxEUK+Kx;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.29, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id BACC15C006B;
	Fri, 20 Aug 2021 14:49:06 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Fri, 20 Aug 2021 14:49:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to:cc
	:subject:content-type; s=fm1; bh=vKsvVuKEguKUXIIrdTVmpNJQLaJCdlp
	Pd54GsZAlcAI=; b=SxEUK+KxLIpV83753oJn3VyCX6uU2QBPayC0svTRVH1D9ID
	LsXeMKL0WpqheqBgaU59+wcyL8FG/LkupH7Pr6a9w1v8D7qgmQV/Af+rrN+jlnKw
	sHYN9xcJ9J/NWMg2hIdtGF7uJBpsvKmG49T/OnvNTCpROGUcU5TerWcZ4JIpW2xh
	Qml+bGU732UUmrYjkx5WC9zdYYqP7x4BRKlulY/kPfO7OELX9JRmYnxohVtUn9Qi
	++mSxJzgTyAiLrcz31eDOa+QSIbmUPrMUBRdOXCRek1F2afKYgVCLH9sxOtRTsxd
	0KWlqf1SvzTa8ksWGW3bAsuGmhw0hTnkzQ+tuJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=vKsvVu
	KEguKUXIIrdTVmpNJQLaJCdlpPd54GsZAlcAI=; b=qrXIyAcW2byjt+e4eOOBpv
	idPaTHxyDtQ3UEAkeVyt6k5cyWhi62otfxy9/YcCeTAyYEoyci28LhLNan/K+Pwq
	Z1tjd4z3ZfEv8OzOylteZmUPc3tf7vF3koyjGVbdQ03s+cdgzKGVTPSMV8SggVR7
	QKIwJc9cDTg61oNGINcrNGxc2lsec0w1NQENPEJ/U0HbwtHlucFwj/bprv02DjJ9
	5Rk8M7FrVt24S8Y4zVU+NEwi5dxkvIYBQRrqvyXsqcdYGBEp8aEl9+rMkFd5agif
	4Ks2TRNWC5Y5pF67O5Xe90Tbwp/fNUynnyt0gRTaGEjaoZ7Dis1IZJT4McltgpmQ
	==
X-ME-Sender: <xms:IvkfYRsdpekMu1BWS4D1iv9gRfKepDaQKLT_pwaXaQ4HKuudT29Qxg>
    <xme:IvkfYafCTVoHiCc2AFexf9D54sXkgK8xn2qaOStqTIRb9A4KSPYwPMePaSc8rKAM6
    GRGN8RLpiBTLbUf>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrleelgdduvdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdforghn
    uhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrihhlrd
    fhofeqnecuggftrfgrthhtvghrnhepvdeiiedujeehteduvdeiuddugedvgeekiefhveeh
    jeehgffhffekjedtleettdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:IvkfYUxDUotKZVRGBjXVZ-z4J_GEPop1UdZkH9EZiQvT6a4tBfTg3g>
    <xmx:IvkfYYNbcHGS_cCudl-F15R9oe6iWyyZaedcx6kcBSdtrdFqFNMqjA>
    <xmx:IvkfYR9tFnIb7etPIsCZkb7g6Gm3S4PjizzNmhCoJJe6qd2iJhNGKg>
    <xmx:IvkfYWID0zr-a0n1jkcfnIMP6cUuhruZE1KfoowZmtXOccQD9sOUFw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 68C523C0F7F; Fri, 20 Aug 2021 14:49:06 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1118-g75eff666e5-fm-20210816.002-g75eff666
Mime-Version: 1.0
Message-Id: <595f4f22-2cf0-4efd-9492-23570b768374@www.fastmail.com>
In-Reply-To: 
 <CAMKF1soX249Typnn9OoJmLbBg1S-8egj5rLvpXqHYv2aiTwWJw@mail.gmail.com>
References: <36684fbc-136b-4802-a1f4-d82af4e6348c@www.fastmail.com>
 <CAMKF1soX249Typnn9OoJmLbBg1S-8egj5rLvpXqHYv2aiTwWJw@mail.gmail.com>
Date: Fri, 20 Aug 2021 20:48:46 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Khem Raj" <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Wayland and X11 on Yocto
Content-Type: text/plain

Am Do, 19. Aug 2021, um 00:22, schrieb Khem Raj:
> On Wed, Aug 18, 2021 at 3:06 PM Manuel Wagesreither <ManWag@fastmail.fm> wrote:
> >
> > Hello all,
> >
> > I'm building an image to run on various SBCs and would like to equip it with a graphical interface.
> >
> > There are quite a few things very unclear to me. Can someone help me with that?
> >
> > * Why is X11 enabled by setting an IMAGE_FEATURE (namely  x11, x11-base or x11-sato), while Wayland is enabled by IMAGE_INSTALL only (weston-init and weston)?
> 
> x11-* features is primarily to control what kind of x11 packages you
> want to include in image e.g.
> ./meta/recipes-sato/packagegroups/packagegroup-core-x11-sato.bb is
> pulled in when x11-sato is added to IMAGE_FEATURES
> we have many X11 based images and sato is one of them so thats why its
> separated out.
> 
> you should really is looking at DISTRO_FEATURES e.g. wayland distro
> feature is needed for core-image-weston to build.
> 
> > * Theory: Is IMAGE_FEATURE +=x11 manipulating IMAGE_INSTALL under the hood so you don't have to do it manually? And as there is no IMAGE_FEATURE "wayland", you have do it manually. Correct?
> > * Why is Wayland different in that it doesn't need an IMAGE_FEATURE to enable it?
> 
> there are not many wayland based compositors or images we have in core
> as of now.
> 
> > * Why does core-image-weston.bb need to enable IMAGE_FEATURE hwcodec, while core-image-x11.bb does not? (Dunfell branch.)
> 
> openGL is needed for wayland/weston to work too but hwcodec feature is
> infact to pull in machine specific drivers MACHINE_HWCODECS into image
> if a given BSP defined it.
> e.g. intel bsps define vaapi codecs and mediasdk for specific machines
> via MACHINE_HWCODECS
> defaults for this image features are empty
>
Hi Khem, thanks! will need to look into this and digest what you said.

Thanks, regards, Manuel
