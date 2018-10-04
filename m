Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D187FE0053F; Thu,  4 Oct 2018 11:01:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFE03E003D9
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 11:01:10 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id j9-v6so10089082otl.2
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 11:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FZN6rcPLBqFL6qz0f0rIj1K8iiCZZCOazRoyzeJKlkw=;
	b=LoG5tzf+WHU5wrHRqOiICgKHgcWaLzCrK10uTo8YGsvLeTmF/+ac+wQu8tdcEYav62
	aqUZEAmi7EPE11CHXt0wvBctWj5SSCpBtM6MgXMtp3z+IGybLbf/TwxH1Xwz6WC88qkG
	+m6a8IkZsbaNEIK5yvDQhEIayG/qKmIUZZ6ywFampiX0lUG2AbtpoK+jcUnmApyrx+Ei
	cDdxhAE8JLjcNCyVbWmviruV3Uwz9gQYdDZOBV9s1HXX4yHxZZOwnBWWadQBJHjEzW8U
	Q8kr97r0yNfB4ghXop/1mbCQSa4n8/u0lIRDOk0vErPEu/6Myywsmpik/XUpNSPmSfEJ
	izzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FZN6rcPLBqFL6qz0f0rIj1K8iiCZZCOazRoyzeJKlkw=;
	b=SLQKX4+NLuvFHQCzJ+UshjiQbIqm33Tije2Qd0X0ItRivq5/OTdEDuv4/8dwCBCHJK
	vZQSrk3F60K0K28bsS/vPPz50enWTt8ZoB1jiQDLDnmXLE/DyIIrhxXJemuAGJ8gke/l
	+Ffsqwg0Ea/+csCa7LJcLBdy27Nx9KONabqmGLjJ2mrDoxEgtya/zoJAECszeZ+XxZo+
	4Qe/iaTGy82XKpJ4R4dsGnztEooc9i3hbbdQJTyclRPo8kyYulRjUCdmQmIaAe90mBGs
	i2X54/RRNAVVe/vTfshZxq8zZg8jztWd+VkBfWPgrTrsJbQzNI4AEfSGWHEMvDbMDfad
	j+Jg==
X-Gm-Message-State: ABuFfojzcKi0zEdDIwklmgdmoYBJ1S3iRLYuXGDpd1+neqDQ2N/FoTt+
	oz52evUaEWVZZbFYr7O023OSTIzFucfKEUbiyyoQIA==
X-Google-Smtp-Source: ACcGV60tOn7SmsAWXe7TCY83G3Nz5spQdxs/6jYD62nZ2BTsk6+hjQChehdUvGkAubMG6tKeBbI94cqR3qwg54koNLs=
X-Received: by 2002:a9d:70c6:: with SMTP id
	w6-v6mr4076051otj.147.1538676070113; 
	Thu, 04 Oct 2018 11:01:10 -0700 (PDT)
MIME-Version: 1.0
References: <CALh9vaUAcgWqOytyo9Z=Q++Y8JXBNtx7pA1YRyW=THtF6O2T7w@mail.gmail.com>
In-Reply-To: <CALh9vaUAcgWqOytyo9Z=Q++Y8JXBNtx7pA1YRyW=THtF6O2T7w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Oct 2018 19:00:58 +0100
Message-ID: <CAJTo0La_UUWuAeR1tGAFaY87qTmcubJBDxnUX0DoX9LHhkMeRA@mail.gmail.com>
To: tdhammer99@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: DEPENDS=libusb1 | libusb-compat not building package
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
X-List-Received-Date: Thu, 04 Oct 2018 18:01:11 -0000
Content-Type: text/plain; charset="UTF-8"

The recipe you're after for DEPENDS is libusb1.  If that doesn't work
then there's a bug in the configure script.

Ross
On Thu, 4 Oct 2018 at 18:19, Tim Hammer <tdhammer99@gmail.com> wrote:
>
> I am trying to write a recipe for cc-tool (https://sourceforge.net/projects/cctool/) and ran into the following error during the build:
>
> | checking for libusb-1.0 >= 1.0.0... no
> | configure: error: Package requirements (libusb-1.0 >= 1.0.0) were not met:
> |
> | No package 'libusb-1.0' found
>
>
> I have added "libusb1" and then tried "libusb-compat" and also "libusb" as well as "libusb-1.0" to my recipe's DEPENDS but nothing gets fetched/built.
>
> I previously encountered the same failure with Boost and adding it to DEPENDS was the solution. What am I missing for libusb-1.0?
>
> Do I need to instead modify the configure input to look in a different location for libusb-1.0?
> --
>
> .Tim
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

