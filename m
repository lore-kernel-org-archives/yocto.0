Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3861EE00DAF; Fri, 15 Dec 2017 01:32:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D822E00D41
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 01:32:16 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id n138so16149945wmg.2
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 01:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=24mSVoUREySmBnB1U+H4jXF/pkKBWaswC1yBWTguAUo=;
	b=DFGsq03ZCOk+3YslEj6Red0KV3isi6DB7GlROJvXMcDT5zTfNh5XQCkOB4Om0JryBT
	SfykBplvxd8Xr/AWc6zGKE48/izLFu4PJUHGQW50IzupP/ajNmSgUFQSmcS4k09MUsxy
	uiiMBeLzZXFZXSofV3SBjvhzvcugnAEudP6pORc4XyY+82Cstc+A17qVj0a6FKacD9YP
	+Nf8TripQrjdIpElJYk3mI6pbOFPMKgcZT2B9EIyJJ9MBB1po26Eaix1QZTNcCBa3/OT
	blK6c7ToXF+ifC2TVes2JKIMHpmAKRPMsXHWpUDdQuRN0qmY1QkQ5nBT21STrqwf+3T4
	Tk3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=24mSVoUREySmBnB1U+H4jXF/pkKBWaswC1yBWTguAUo=;
	b=KgpwmaGgkAsAm7f6Kw/p6s/MK8GD/d1chEbR427O1M60hqJPrK+IrLtvR6j2SEdXMS
	SJ/jhQj6VkqL97B8D4inXRrI1a4C7RBpiohlhiv7lre9F8iEbvtGR2tuPKzc4pyap8cf
	kAQCUgGYb/QbkFg/3MKGHLH74o1RtjEWOcenmfpnALSBA527wwRGEIanj6223g9cLC/A
	rzrZeUslv6BtgKjAe44K6eEGCWzhIdv1Ixif3PjpY7EPnimR9xM77/4b+8grKRefUbSX
	tIB4jfYGeI3h0l2bcskSRWW8fyLC0LmsXyJ0OeEfVvjaVcfphjCI5luUipiFjwyEYtwO
	gRTw==
X-Gm-Message-State: AKGB3mKHyUzIsdRtCYHZ1NlYWMXj1LXHw947KeD7JHi5OalNkJBciiqE
	eWVWKm5sxL/0/M8M9I8ujQd/lGO2WEEIrTXEF8Ax4Q==
X-Google-Smtp-Source: ACJfBosx9KOuRg/vECG5exg6WG/wY3Su5OpvC7Bdi57uqtXjPz4jt6z7oVqfqL9jJH8VCBDEGhY9fajmmhddM2SY4g4=
X-Received: by 10.28.26.139 with SMTP id a133mr4524175wma.90.1513330336181;
	Fri, 15 Dec 2017 01:32:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Fri, 15 Dec 2017 01:32:15 -0800 (PST)
In-Reply-To: <CAPb0b+N8sQbkQ4BgH9nS+mdpYCRzWPH5xnCFm8h3X_cOzNLoKA@mail.gmail.com>
References: <CAPb0b+N8sQbkQ4BgH9nS+mdpYCRzWPH5xnCFm8h3X_cOzNLoKA@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Fri, 15 Dec 2017 09:32:15 +0000
Message-ID: <CAPyrkgzvxtJ6H---FBHyj0omV9rrn3X3ncGpt-W9uvB_J5iUdQ@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] error executing python function in linux-raspberrypi-dev
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
X-List-Received-Date: Fri, 15 Dec 2017 09:32:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 15, 2017 at 5:00 AM, Sherif Omran <sherifomran2000@gmail.com> w=
rote:
> By testing the latest update of meta-raspberry pi with the Rocko or the
> morty branch, i get ERROR executing a python function in code (see
> attachment).
>

Please send error messages in plain text not as an image. The image
doesn't show the full output as well, we'd need to also see the
earlier bitbake output including the build configuration to determine
what's gone wrong here.

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

