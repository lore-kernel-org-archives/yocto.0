Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18AA5E00D11; Wed, 18 May 2016 14:46:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D941BE00C80
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 14:46:41 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id y2so1012058vka.0
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 14:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=zu1TKkf5DoOMlyDfs9i1VcU48kuwjh5ssvla8b/iPVE=;
	b=bzhT8C0OxYgRxUoTXJQ0GpVoQ7iJkCb1sYjCAQbeCcsUhyDkaRfShv3cQiSAybKhP4
	RHcKLHnT1/g0ufMb32Ac0xFeuO+Dt1x25K2II53VFNuKoFquOr+HQbadFWKpWGS16rr/
	8Ohxk13Z7/uZ5tCoan3gf0UV5VlYJ/bxr1PbXtxiO/tlVoBMIIgSIlGSqvhAFnGiUHrD
	JdTnsv5LmkLNIOw4Y8OCWCd5qiH2YmQenA8/em1Y1mG4AGt4AL20RRw40KAiOKdiWDYx
	GjW3pFR6o641X9r4qbNtHgFfjzXVrFtsd5aeCgUrn16VqNmbK/cZ+cagPI2FhDqm502O
	Znkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=zu1TKkf5DoOMlyDfs9i1VcU48kuwjh5ssvla8b/iPVE=;
	b=Bh3y4sBC8I0IZFCgvpo6kJex3r/NM2kFLZv5YCZyUKAloWwm8iUzqKvES9NV8qQlJ0
	Lomo/2ivNPACQajvwlM5kyIUMaDsM2AwrJkaLWPcxlh9FE94aGldBvOPjkFCv8Jh4Udo
	cX7SZU5BLqb1r+BTBaiZwDFtzdttbZX7Atm09J5xwGNTMdfjpZ3/Bz+UfMMhZ3sKwrF0
	64ED3evZAzSNmokkTAXT8ktynrli2IwILLGegPOvDJXZwQqTlwpVZdjs7oDWzA6ChfaE
	dTEh5bgteENBH74w40A7YnD0CJBkVfsVduQv+vc5Zf2wdoSN1//M+WJVTHfoQQb8lv3T
	U9qw==
X-Gm-Message-State: AOPr4FURO2p1KJVSgdFrShDJeWuwWvn0IEewZha7lSESpwMMMA9a6c/OIl/l8hK+n39+iE+8gDcMwdcdE3Y5fA==
MIME-Version: 1.0
X-Received: by 10.159.37.72 with SMTP id 66mr5324488uaz.111.1463607999489;
	Wed, 18 May 2016 14:46:39 -0700 (PDT)
Received: by 10.159.39.68 with HTTP; Wed, 18 May 2016 14:46:39 -0700 (PDT)
In-Reply-To: <5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
Date: Wed, 18 May 2016 23:46:39 +0200
Message-ID: <CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Wed, 18 May 2016 21:46:45 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> One thing I didn't make configurable, but that maybe could be, is the parameter passed to the overlay.
> I selected cma-256, based on experience from other people, and because my configuration is RPI2/3 with 1G of memory.
> I realize it might not work well with RPI0/1, which have less memory available...
> So even if I believe cma-256 is a good default value, it might be made selectable by the user, if we want to consider vc4 on RPI0/1.
I played around with vc4 to but did not manage to get it work for an
elder version 4.1 of kernel.

I did in rpi-config:

CMA_SIZE = "cma-256"
CMA_SIZE_raspberrypi = "cma-64"
CMA_SIZE_raspberrypi0 = "cma-128"
...
echo "dtoverlay=vc4-kms-v3d-overlay,${CMA_SIZE}"
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt

This is nothing but an untested suggestion.

Without testing your series I would be very happy to see this or very
similar applied in master: Since vc4 works, RaspberryPi turned into my
reference test board - e.g. have not seen kde5 running that nice on
another board..

Andreas

