Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 609E2E01439
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 17:15:41 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id ha12so2230629vcb.8
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 17:15:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=/xwYXt44fynfaYbunHbbr/5vhBB9uAIMYuc3rINhpxw=;
	b=U1KSrdTfDiv/7k2opkCaEuRC5g5AwZT1FZB8Ji8EG4iUAl6FtckieoXdtofp6fVHO3
	GLR80y5ugmw3YfA8e6lXRxYkshLMdC5ELhgDHOM4FDQrZs/KYOIcaLSe5p9cMsnk/dRh
	e1FSB5FQgm2Cgln8XR8dMOiWKOcQgeziUtM6ao7O7LepHWx8enemT1zIRpM1sca+RQyd
	7Q61rRQmeKC6oM3W7yI4LU9TgOMiicpWJ1dHcKoEsvxLrxsfWoexEbRogII2mbbl/17o
	j3z+znfKtTU9CvpzT4AozKWfjGfhzYaDrOcqncxr2kvE+8DVDiMOaxqzgOlXiWkEMKfS
	FGhw==
MIME-Version: 1.0
X-Received: by 10.220.67.200 with SMTP id s8mr6289550vci.66.1368058540679;
	Wed, 08 May 2013 17:15:40 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Wed, 8 May 2013 17:15:40 -0700 (PDT)
Date: Wed, 8 May 2013 17:15:40 -0700
Message-ID: <CAPhnLPCLuA2W1kiZagXJx0XBrqMABvj47XHkQ--9DUHZqnD_+A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQknLw2grs8wVt52qZ/qv1Mla1/NgNDss8gR0/nEHGE7FI5wdUaL+Rvf36Uq27rLd4kA0QdH
Subject: 1.3.2_rc1 respin (failing)
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
X-List-Received-Date: Thu, 09 May 2013 00:15:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

I've respun 1.3.2_rc1 per request. So far, there are a few known
issues that I've been opening bugs for: gnome-desktop fails
do_install, powertop fails do_compile and a still more sanity test
failures mainly around connman and shutdown.

meta-fsl-arm a0e486a76af5819ee76ac34e966feb72bd3c48bd
meta-fsl-ppc 084331c6f72dfe8be2f4981c802c43ae44d3b812
meta-intel c216fec83f2941632460245de13f0b859738baae
meta-qt3 c86fb1727ae09526c442ec29fffde3f010aa70eb
poky d6cc4edb533b196753cf90820d1e2b9ccd8fed7c

The artifacts should be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/nightly/20130508-2

--
Elizabeth Flanagan
Yocto Project
Build and Release

