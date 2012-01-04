Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98355E00748
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 20:59:07 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iapp10 with SMTP id p10so42863466iap.35
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2012 20:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=UB7N14DonJy4oHCoeeSpS/dGmgThdSBS8fcDtmF1qpU=;
	b=RjFjD4RQX4vCfZH9sWpiRRe1qGXor8ZTBMWtSBo2HYlUC48LDFkMoXJ7qlyLLhXym5
	L57mKfVThyg+AM+Z+uN0ZbihRn3PC595gymQNBTzc9lGNDLeaVpStR8Yvu748GOf6nwX
	RHurXpaTiZ6hVoa4kMaueDG6dTjjrd8n/w4J8=
Received: by 10.50.202.105 with SMTP id kh9mr64327374igc.3.1325653146433;
	Tue, 03 Jan 2012 20:59:06 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id t5sm103897093igb.4.2012.01.03.20.59.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jan 2012 20:59:05 -0800 (PST)
Date: Tue, 3 Jan 2012 20:59:27 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Message-ID: <20120104045927.GC31275@sakrah.homelinux.org>
Mail-Followup-To: Jim Abernathy <jfabernathy@gmail.com>, yocto@yoctoproject.org
References: <CANSwnwggQwOgZk61xvppWXnz3+Wks9jSaNcp0+cBf9eS2xNNOg@mail.gmail.com>
	<4EF20847.1030106@gmail.com>
	<loom.20111229T062302-471@post.gmane.org>
	<4EFC9755.60805@linux.intel.com> <4F033A40.3070507@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4F033A40.3070507@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: build error on meta-cedarview
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Jan 2012 04:59:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (03/01/12 12:26), Jim Abernathy wrote:
> On 12/29/2011 11:37 AM, Saul Wold wrote:
> >On 12/28/2011 09:26 PM, Andrew Schweitzer wrote:
> >>Jim Abernathy<jfabernathy@...>  writes:
> >>
> >>>
> >>>
> >>>     While running a build of the core-image-sato using the
> >>>edison latest
> >>>     commits and the meta-cedartrail bsp, I notices some errors fly by
> >>>     and thought I'd see if anyone knows the reason.  The build is just
> >>>     to test the bsp with no changes.  Basically, doing the
> >>>Appendix A of
> >>>     the Development manual substituting cedartrail for crownbay.
> >>>     snippet of the console log below:
> >>>     NOTE: package icon-naming-utils-native-0.8.7-r3: task do_unpack:
> >>>     Started
> >>>     ERROR: Function 'Unpack failure for URL:
> >>'http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz'.
> >>
> >>I don't know the reason, but I did get the same error when
> >>trying to build yocto
> >>per the getting started page, changing local.conf to create qemuarm
> >>
> >>I would be interested in knowing the reason too.
> >>
> >There has been a bug filed against this issue, it seems that the
> >tarballs have moved or are unavailable from that location for some
> >reason.  You are getting a download page, and I believe that the
> >failure should occur earlier with a checksum mismatch, but is not.
> >
> >You can fetch this file from our mirror at:
> >http://downloads.yoctoproject.org/mirror/sources/icon-naming-utils-0.8.7.tar.gz
> >
> >
> Saul,
> 
> Sorry for the dumb question, but how do I download the file and fool
> bitbake into not trying to download it from the invalid site?  Or do
> I need to change a file somewhere to specific our mirror URL
> instead??

cd into DL_DIR
wget the <tar>
then touch <tar>.done

You can add http://downloads.yoctoproject.org/mirror/sources/
to MIRRORS

something like
MIRRORS =+ "http://downloads.yoctoproject.org/mirror/sources/"
to the concerned recipe.

