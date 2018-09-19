Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6AC5E00B4C; Wed, 19 Sep 2018 14:12:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E554E00708
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 14:12:06 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id v44-v6so7207777ote.13
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 14:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pd8ntZBE/zygjnV6VpzpVlemJR3zrRhcBDk3IvopFVA=;
	b=EuLIgQA7X3yc7UyiCmJfcjeDiFpqv1Hc3zjgJy7EgDHur8VEh/FRwlkE2BbkkBJKPJ
	pQ7/7UpZBJQX7exE+sy+SLB2Pu6E0a99C3cR8TZRmVsTj9cpZTTVpGLONLz/ZNdEpTIO
	xwiLowZkXYIofMmdoV32Gd5z0besMwFmXeZbM5DgQele+fEdHesDuZdoW6R0L6Bw4CHO
	CSOd3PIMybAYtvgjqNz23ilXfcoveYK0Ea4ArO3GqOycVtWVAer0iFT4TIUOIhXzs6u0
	dv7DdUdFyPBBCHo6Eock8FgFlJIr0cXhenC+vE7iKJV35USqhk2tWUOzK//GJmN2I6xY
	eTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pd8ntZBE/zygjnV6VpzpVlemJR3zrRhcBDk3IvopFVA=;
	b=cHTqjjh4u23MQL7OnOmZgNzHhvoBDCQ7IEf6le2edn4YJod6gsWNY8ErtQ5vOH2AAs
	c3I2OCyKjNpRtaLbhoqfbtsllKvcxhl70nFDLurs47weZn6UOKfK+GjZnLG+vfYCtg9P
	E1qAw4OhtOGRflIPS3EKURwxTeK4FCU8xe1HJxYqf7v7KdFQybrWfr+LfPAuVED6tQsI
	/wDzVUyka7HOeRfEGMui7JHZ1SXq9/boq9w/FWAEvjR7nrmuRcRNG5UAfK6IDgUv0OZz
	+BlioBBUYCl9AFHiGX9y+eQ1JNZeI2YEDsEmMUoXkMp4UcvVf0u+4FxHR4fhrkZT0k2u
	V+KQ==
X-Gm-Message-State: APzg51C8859OVVSqXT/dmryUtGtpm/fo5VmN/QW2YWcVck0SGaZcPffI
	Ts0n2J/l7DfbC0DnGhOibzkFWVKzUjQGLuG9AwMkcg==
X-Google-Smtp-Source: ANB0VdYwBii0FEEQ9u6bZdsf90RgNzwedGxI4+0UmveCh5ACKJH0SPJ6zbSLztMdEvbv3/AQnCGjPcmrLFmHT/xj0Eg=
X-Received: by 2002:a9d:4ea:: with SMTP id 97-v6mr18755399otm.99.1537391525332;
	Wed, 19 Sep 2018 14:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <1537304423.12258.18.camel@rtfs.org>
	<CANNYZj8nvG3ty5J0vrapSYK+=VQauNQF71dLnbY8gZAfPf19fg@mail.gmail.com>
	<1537377180.12258.22.camel@rtfs.org>
	<CAJTo0LYzacRps6JP9bE6Jqu88+cUhXJp4K09z-EZ0VADX3-acw@mail.gmail.com>
	<1537387636.12258.27.camel@rtfs.org>
In-Reply-To: <1537387636.12258.27.camel@rtfs.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Sep 2018 22:11:54 +0100
Message-ID: <CAJTo0LZvOnPvKKw6+9Lc0yxKyZaHgRP_Jz6WyC8MVvR8dLjcmw@mail.gmail.com>
To: f@rtfs.org
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Native yocto compile in docker container without cross compile
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
X-List-Received-Date: Wed, 19 Sep 2018 21:12:07 -0000
Content-Type: text/plain; charset="UTF-8"

Yes, that's it.
On Wed, 19 Sep 2018 at 21:07, Fabian Sturm <f@rtfs.org> wrote:
>
> Hmm I guess I was way overthinking this. The idea seems to just create
> a secong image definition like this it seems:
>
>
> core-image-minimal-dev.bb:
>
>     require core-image-minimal.bb
>
>     DESCRIPTION = "A small image just capable of allowing a device to
>     boot and \
>     is suitable for development work."
>
>     IMAGE_FEATURES += "dev-pkgs tools-sdk"
>     IMAGE_INSTALL += "cmake"
>
> dev-pkg: selects e.g. all header files for the image packages
> tools-sdk: install the toolchain packages into the image
> IMAGE_INSTALL += "cmake": here I define any other development tool that
> I need in my image
>
> I this correct? At least it seems the created image contains everything
> I need!
>
> Kind regards,
> Fabian
>
>
> Am Mittwoch, den 19.09.2018, 18:21 +0100 schrieb Burton, Ross:
> > If you're targeting just x86 then you can build an image with the
> > tools-sdk IMAGE_FEATURE defined, and use something like systemd-
> > nspawn
> > (insert your preferred container system) to get a shell in it.
> >
> > Ross
>

