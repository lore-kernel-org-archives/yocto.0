Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 983F3E00AE6; Sun, 18 Jun 2017 12:38:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF005E00718
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 12:38:15 -0700 (PDT)
Received: by mail-wr0-f177.google.com with SMTP id y25so22177215wrd.2
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 12:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nWcbJGV63PypCEO8NKKK+ZR94oy/laEGlQoYOeIbDas=;
	b=sk2Z0ml80a1V0K5qwAPIjM5GSYUEPCOq+87xyx/KecRqAOnbJ9RZdiU5WZXXvUDgqm
	0Z9joC4ruBm4Na38wq75YEvUASj987hgzOqfglN/HGE3FXdoa5BAzd0TSRsEnZOnnxiw
	FNugoxSPvTVUMdm9Z0D2ykKauFS2mx642e1GpOCs455smkbEtFVAUeApg2UpSFL6aKiW
	qzDE0CvDiwKVpcakGeCj/d2BvpYDMJxb6XCjjpSmO+mKzb5gS5XacafQ4Oc53jcJohqi
	h3zrhbyQo9gO4LzQOFgtdvTZqB8nzYT5HOhzLsX28McrzYezYOvekyoyfs9riw3nigeH
	bJFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nWcbJGV63PypCEO8NKKK+ZR94oy/laEGlQoYOeIbDas=;
	b=M2H9wj1TBMhfbAJYU/i15TBB38/BPJiJ4sNPXhXq8CQ9JLpPkpqvUXBLCwwiRoukBE
	2g89FyqPkB0wYWjek0j3n7n15sdVSbek+R6+6nQ624rfTiJCmPICeF+6HAbMxlGm1HPx
	K9BOR3TaoddiH3KFgRezsoyWgByMBmsVN1nVT2fpyBO2+EEnt9IcYKIT0ftfywwMwlcJ
	oORPnQB2rzrPnR6PN2dwOB2FP5ya7E7miLOQDWvr3jEOlOtkjJNT09kD/xpEi0YlvgYP
	VDuFQIOGux8hnatGK5fySgn20jx09B5A/rsqccUn5gtuDLeW+uS4cOBY7KYcLRzGFgVV
	riYA==
X-Gm-Message-State: AKS2vOx7X/cvTrswpwaisNmX7SR5DUqoPrhlUtvaWsSV9xK7329nwzGR
	2hidtq8tJFevcl42VKu/90sCQSWAR/YJ
X-Received: by 10.223.161.149 with SMTP id u21mr8379955wru.70.1497814694247;
	Sun, 18 Jun 2017 12:38:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.58.198 with HTTP; Sun, 18 Jun 2017 12:37:53 -0700 (PDT)
In-Reply-To: <CAJTo0Larp6KyHDWNvA+b4CQ-jHdHMo2OAgYr-dQu+2-M4qcYYA@mail.gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
	<6bd2859e-81c5-3089-f8fe-44bd2c24bf96@gmail.com>
	<CAJTo0Larp6KyHDWNvA+b4CQ-jHdHMo2OAgYr-dQu+2-M4qcYYA@mail.gmail.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Sun, 18 Jun 2017 21:37:53 +0200
Message-ID: <CAD4b0_Jo9sFCfbtwijnDAFsMY4A4rVH_xMuhpQF1TLRajndLuA@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dd image to sdcard ?
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
X-List-Received-Date: Sun, 18 Jun 2017 19:38:18 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Jun 18, 2017 at 9:17 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 18 June 2017 at 12:48, Riko Ho <antonius.riko@gmail.com> wrote:
>>
>> Which one of these files can be downloaded by "dd" directly to SDcard ? or
>> how to write it to sdcard ?
>
>
> The beaglebone BSP doesn't write a SD card image (although it probably
> should now that wic exists).  Google has various pages explaining how a
> beaglebone needs a SD card to be formatted,
> https://github.com/linneman/planck/wiki/How-to-create-a-Boot-SD-Card-for-the-BeagleBone-black
> was near the top of my search.
>

If you're using 'beaglebone' machine defined in meta-yocto-bsp, then
there is a corresponding wks file
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/wic/beaglebone.wks
which should produce a bootable SD card image. Both `wic` and
`wic.bmap` are added to IMAGE_FSTYPES automatically.

Cheers,
-- 
Maciej Borzecki
RnDity

