Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 676FFE00930; Wed, 10 Dec 2014 03:17:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAD4AE00922
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 03:17:39 -0800 (PST)
Received: by mail-la0-f45.google.com with SMTP id gq15so2201919lab.32
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 03:17:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:content-transfer-encoding:in-reply-to
	:organization:user-agent;
	bh=0jwBANTavAS+RFKBivxpNSfFNMAAD0+BkRezesbDJS0=;
	b=JqJrFZv54ZoquDzl86sLY4lcGAT4anwzLH0gWKNHL2L+aaUMR2+S1+jlBHEENEM9Un
	8gIpBpq/UKQHLdWmXBcpRJC6x9NqLV1EpS9YFs9hWQ9+YwEje/DOvYm+CN+QhxsDXz6t
	H6Dd8UxgbjPd+ufFY5XnCbjF0GaEj//VLkonOEFYvg+Xc9E080nRuIWgomVwx3vxBxFI
	Qf1ImWTlzQJbzXLJ9qzlFiqYxm+8LFkNMwNTPX3Ie+jJJhVMzBoh56jCbBCGYBBboev2
	Ddkr4L6zqcvKGHlR9120HiIXsROX7uPdOC5z0vkUJU/vXEDNtZ2c0vHogo31zcae6jW2
	2O6g==
X-Gm-Message-State: ALoCoQmPdC1n5/1Zqrww9RHxPpUBARJgMC2Kiv1oMWjTOGhIDK5PkAG2luz0GZry64xtlTF0a6SH
X-Received: by 10.152.7.180 with SMTP id k20mr3669809laa.4.1418210258209;
	Wed, 10 Dec 2014 03:17:38 -0800 (PST)
Received: from ad.chargestorm.se (81-232-163-241-no29.business.telia.com.
	[81.232.163.241])
	by mx.google.com with ESMTPSA id n4sm619028lan.39.2014.12.10.03.17.36
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 Dec 2014 03:17:37 -0800 (PST)
Date: Wed, 10 Dec 2014 12:16:51 +0100
From: Anders Darander <anders@chargestorm.se>
To: Matthias.Heise@atlas-elektronik.com
Message-ID: <20141210111651.GD14155@ad.chargestorm.se>
Mail-Followup-To: Matthias.Heise@atlas-elektronik.com,
	jimr@spectralogic.com, yocto@yoctoproject.org
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A77@MSSRVS5.atlas.de>
	<86196249137E0843B2E0673D4F731E0C0108E2916C@reactor.sldomain.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A78@MSSRVS5.atlas.de>
	<20141210102413.GC14155@ad.chargestorm.se>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A7A@MSSRVS5.atlas.de>
MIME-Version: 1.0
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A7A@MSSRVS5.atlas.de>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: jimr@spectralogic.com, yocto@yoctoproject.org
Subject: Re: nfs-boot problem
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
X-List-Received-Date: Wed, 10 Dec 2014 11:17:45 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Matthias.Heise@atlas-elektronik.com <Matthias.Heise@atlas-elektronik.com>=
 [141210 11:48]:
> > -----Urspr=FCngliche Nachricht-----
> > Von: Anders Darander [mailto:anders@chargestorm.se]
> > Gesendet: Mittwoch, 10. Dezember 2014 11:24
> > An: Heise, Matthias
> > Cc: jimr@spectralogic.com; yocto@yoctoproject.org
> > Betreff: Re: [yocto] nfs-boot problem

> > * Matthias.Heise@atlas-elektronik.com <Matthias.Heise@atlas-
> > elektronik.com> [141210 09:35]:
> > > As to the rootfs, this folder
> > > fsl-community-bsp/build/tmp/work/wandboard_quad-poky-linux-
> > gnueabi/cor
> > > e-image-minimal/1.0-r0/rootfs seems to be exactly the structure that
> > > is packed into the
> > > image.tar.bz2 so I thought it is a good idea to directly use it as nfs
> > > share. Is there some reason not to do so ?

> > Well, there're quite few. For instance file and directory ownership,
> > permissions etc.

> Yes, I can see that

> >If you're not using devtmpfs, and thus would like static
> > device nodes, they wouldn't be created in the build directory.

> This is a little beyond my horizon, if you don't mind, could you
> please explain this a little, I may be lacking some knowledge here...
> sorry

Well, nowadays most people are letting the kernel create the device
nodes itself (possibly with some extra help from udev/mdev). Though, on
really tiny systems you might still want to manually create all device
nodes statically during image create time. In that special case, the
device node names will be available in the build directory .../rootfs,
but they will be regular files, not device nodes.

If you don't know about this, it's quite likely you don't have to bother
with this at the moment.

> > Thus, you really should be using the tarball when you want to run an nf=
sroot.

> Tried again but again it didn't work, do you have an idea what could be w=
rong ?

What steps have you taken?

How have you unpacked and exported the rootfs?

If you have export e.g. /export/rootfs, it's usually enough (for a
simple image at least) to run `sudo tar xf ....rootfs.tar.bz2`.


Cheers,
Anders
--=20
Anders Darander
ChargeStorm AB / eStorm AB

