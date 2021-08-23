Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web08.29003.1629747340479255745
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Aug 2021 12:35:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=kvUBENVM;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.19, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id C5346320055E;
	Mon, 23 Aug 2021 15:35:39 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Mon, 23 Aug 2021 15:35:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to:cc
	:subject:content-type; s=fm1; bh=o7gpLgBKCcHGKIzchLt8hDpc4baNUct
	IIj521t2o1s4=; b=kvUBENVMGIKPUIClR0UYFScF5vrOAtr/imDbRvWEiaZvzne
	wZwWCss0FwGg+xiEDAmq4EMMqWyAWMFVPer0Lg0ZDy4YqTTUBnMoK3AKxEjZM0jd
	L6ts9bXPUVi3lVwFgyEp8bungxUKe+C04JzqPQAk8WbyYaZ3VBuSENPw9pHNR2TB
	affXk9fcyNJTCcJqDvvK4JBG7/mTq5DfyKncHivApPQLpW4DV5x//ftjGT2PgOpT
	uHzQjpXQt4aEttyFmi200FBGw8rqY64WPIZPazPxPT23YQfs2mcBpqcFpFqbmJIf
	yXuoahk4ch+z0HDr9pkTKcDPsvlpzJNxCfvBQMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=o7gpLg
	BKCcHGKIzchLt8hDpc4baNUctIIj521t2o1s4=; b=RbObjkn/74YWA7+C0EVIoG
	OA6zzXZugG5E7l3cz6W1ZN0LDGlouIHbz+C2gMdpfWOFuOaPKAF6s1w4/8VWDgST
	Dz0xbrufojUS+z5LHV+uF0ZAu91bN9ASkYaCoWxe0J+uVohUzsXgjo9xUPVS9FuH
	o/4glb3Qdw2ufsH493bRVKSYkDBkdOP5QrJwhN2gqZcmUtSKT4Blj7gLcWgfOB4V
	Kl5hPD5ikJtgm7U/Lr+SC5KBIEMHcN98WfXPT5pGiayW3Ig079yDNU7pIZaiBS0N
	fQFZrrNs8A4IsoGD2h1s2AJkjXukyT/Aq3PKtzz5hIQ6Pckm06ypbYwD5rDoBJ7g
	==
X-ME-Sender: <xms:i_gjYcZWh4dgynyTD9tB0WgY__zSczYiE-8-owYxhRsC-pJ6utDRPg>
    <xme:i_gjYXbyE0c0giqp5_uFiwz6j_RG_S5NiGFhcBW0RTYkEQMaHKkzRq_IuZyk4Y4tj
    hYItFxwYRX1viIw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddthedgudegtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfofgr
    nhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilh
    drhffoqeenucggtffrrghtthgvrhhnpedvieeiudejheetuddvieduudegvdegkeeihfev
    heejhefghfffkeejtdeltedtgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:i_gjYW-YfP88926kOHm-VgW_3XRHzRHce1HFRI9C3TczIshVhudmLA>
    <xmx:i_gjYWoNOMaMIMIc0YjUlBmZw7ElaU7pa5aOoVTry3BB6aCz1Qu_WQ>
    <xmx:i_gjYXq25ketSTQvzXglPq8rzF9tnKbCX-gZHfS3KXaxv8cFdRkazg>
    <xmx:i_gjYRG--1GvGHIf-TK1GmvMXgeGs6-YqHAjwFShEbb6vA4MAiPGGQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 099993C0F75; Mon, 23 Aug 2021 15:35:39 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1118-g75eff666e5-fm-20210816.002-g75eff666
Mime-Version: 1.0
Message-Id: <4201eb99-b0e3-4f6b-9e0c-f1e0152de476@www.fastmail.com>
In-Reply-To: 
 <CAMKF1soX249Typnn9OoJmLbBg1S-8egj5rLvpXqHYv2aiTwWJw@mail.gmail.com>
References: <36684fbc-136b-4802-a1f4-d82af4e6348c@www.fastmail.com>
 <CAMKF1soX249Typnn9OoJmLbBg1S-8egj5rLvpXqHYv2aiTwWJw@mail.gmail.com>
Date: Mon, 23 Aug 2021 21:35:18 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Khem Raj" <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Wayland and X11 on Yocto
Content-Type: text/plain

Hi all, hi Khem,

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
Okay, so if I get things right then IMAGE_FEATURES+="x11" is under the hood nothing more than an IMAGE_INSTALL+="packagegroup-core-x11". Is that right? If so, what's the purpose of adding the concept of IMAGE_FEATURE? I mean, it doesn't make things SO much easier. Setting an IMAGE_FEATURE or an IMAGE_INSTALL variable is the same to me.

> you should really is looking at DISTRO_FEATURES e.g. wayland distro
> feature is needed for core-image-weston to build.
> 
Yepp, I know. I left them out on purpose because I was mainly interested in where the configuration for X11 and wayland differs conceptually. With "conceptually" I mean that one is added through IMAGE_FEATURES while the other is through IMAGE_INSTALL.

> > * Theory: Is IMAGE_FEATURE +=x11 manipulating IMAGE_INSTALL under the hood so you don't have to do it manually? And as there is no IMAGE_FEATURE "wayland", you have do it manually. Correct?
> > * Why is Wayland different in that it doesn't need an IMAGE_FEATURE to enable it?
> 
> there are not many wayland based compositors or images we have in core
> as of now.
> 
And if there would be more wayland based compositors or images then you would turn extract this into an IMAGE_FEATURE as well? Why? How does that make things easier? Again, I feel there's something to IMAGE_FEATURES I didn't yet understand.

> > * Why does core-image-weston.bb need to enable IMAGE_FEATURE hwcodec, while core-image-x11.bb does not? (Dunfell branch.)
> 
> openGL is needed for wayland/weston to work too but hwcodec feature is
> infact to pull in machine specific drivers MACHINE_HWCODECS into image
> if a given BSP defined it.
> e.g. intel bsps define vaapi codecs and mediasdk for specific machines
> via MACHINE_HWCODECS
> defaults for this image features are empty

Thanks for the explanation on MACHINE_HWCODEC. I'm curious, so is core-image-x11 require DISTRO_FEATURE hwcodec or not? If yes, than it seems to be missing in the core-image-x11.bb (it's in the core-images-weston.bb, after all), if no, then why is it not required for X11?


I know I'm asking quite detailed questions, but I got the feeling I need to understand this once and for all.

Thanks, regards, Manuel
