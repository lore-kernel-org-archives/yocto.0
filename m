Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CE21E00852; Fri, 12 May 2017 12:59:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C5C4E00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:59:25 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id 67so6860022itx.2
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Wcly8b3yd5jNQKIqVzFLtSjTr2e866IIPcCekoC7tzY=;
	b=jVs3zoQC4k4n+jwwXOxxJNMQe1vNVMJ2Y4ynWsio9ySr+rVFLsKcdTqI7oayzQQur/
	w9Tc1YBHLOjrnkGAOnqtEJFbkRb4k4i0gqdDBlUApZWJJMWRvmCxIHgAgyzcb02OSnfx
	z78SBSbVylm6Y9bZsO5BcYtcgzJfT5DT7/NgjklrLQd0aDg6Ju3rTIaIun+F56JBKluV
	J6u+Ke4ReX/ylG9qsLJbpNxdiMdFNEZ1iHfbwknTBPy7bq//znYILLeP8bkCWfaC07kN
	jgyUHz48MMeM7ymqvOGTnKhMAbjeZrlOqoDi52/3ezlElNbpVF2TwunA9FAYRyyC9Wos
	ri5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Wcly8b3yd5jNQKIqVzFLtSjTr2e866IIPcCekoC7tzY=;
	b=Y/drli+05lei2B/b4U8MoywX9KrdUU5pOZVpS1lpTpOuSASmbh0i2TrXy0KmGwgXX3
	ITSRMLrx5cQdh42hLdzAQ0/XfzH28NEZ3XW4loi7Lm/X7x+QAz5SFxuTzpKeFcjydrJj
	CSHpw5VtjbiZfeeb2tsFW5r9bDAMbwc1D/r09YdofP+1VWrPy+r2sLAB+Lm9LZ/MQmzX
	Ut2WSYy+az756/b8z5nrkhazevEDky+4tGUB8cp73utbwNXnvgOEyaX0UtUxLMu7vojP
	y2AhPB49NjRkuh4ZGX3t1dNIft0iH190h98kdvPOqWBoSmBZrqvTWTLpT6TnBfp4k8dH
	PYXg==
X-Gm-Message-State: AODbwcAyaG0exQbBWKb1SsEYGgHuX5lJo1ln8w9NYAuvLK4ee1x42nGy
	GK/mfvO59s77jmlO5ykFsOnFj69dspfN
X-Received: by 10.36.66.67 with SMTP id i64mr5293558itb.22.1494619165131; Fri,
	12 May 2017 12:59:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Fri, 12 May 2017 12:58:44 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <CAPyrkgy1KFxGPUyHS+ckjy6FYw2Fy3KCg4Wu2BwpkbBD+7-9oQ@mail.gmail.com>
References: <1493393851-13720-1-git-send-email-costamagnagianfranco@yahoo.it>
	<CAPyrkgy1KFxGPUyHS+ckjy6FYw2Fy3KCg4Wu2BwpkbBD+7-9oQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 12 May 2017 20:58:44 +0100
Message-ID: <CAK18fxGxAJk=DqPrxQsiaK8+qh2jM=GFXOGSX8dFR4z=v9pi_Q@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org,
	Gianfranco Costamagna <costamagna.gianfranco@gmail.com>,
	Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
Subject: Re: [meta-raspberrypi][PATCH] Make CMDLINE overridable from outside
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
X-List-Received-Date: Fri, 12 May 2017 19:59:29 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 12, 2017 at 8:13 PM, Paul Barker <pbarker@toganlabs.com> wrote:
> On Fri, Apr 28, 2017 at 4:37 PM, Gianfranco Costamagna
> <costamagna.gianfranco@gmail.com> wrote:
>> currently there is no way to override the default CMDLINE, lets set if only if not already set from outside
>>
>> Signed-off-by: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>> index cf61cce..9265d55 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>> @@ -21,7 +21,7 @@ KERNEL_DEFCONFIG_raspberrypi2 ?= "bcm2709_defconfig"
>>  KERNEL_DEFCONFIG_raspberrypi3-64 ?= "bcmrpi3_defconfig"
>>
>>  # CMDLINE for raspberrypi
>> -CMDLINE = "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
>> +CMDLINE ?= "dwc_otg.lpm_enable=0 console=serial0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
>>
>>  # Add the kernel debugger over console kernel command line option if enabled
>>  CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=serial0,115200", "", d)}'
>> --
>> 2.7.4
>>
>
> This looks good, I'll add it to my queue to test next week unless
> Andrei has time to pick it up. We've all been a bit busy, sorry you've
> not had a response sooner!

My fault. Completely missed this one. I added a review in github. All
it needs is a commit summary tweak.

Andrei

