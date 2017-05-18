Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D00BBE00AE6; Thu, 18 May 2017 09:01:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51D4BE00852
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 09:01:04 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id d127so57414379wmf.0
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 09:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jhTQSJR+5Sm3lrfO7LDN2pDw4sobQEAMs3UoEu9u2Jk=;
	b=bx8U1rlpZIbUSAKckY7DF76mHEGanA9y7qF/q1Z4MBvIKNmNySEquTzeBVT/bIN+Bn
	RqHY66KmpkTa/TwZZXXZ1ANuxZ/L2QvCnPXe1LmkXWhxtjzL/by8GZJkv/SNIUtxNtTT
	b5PWWlswmy5v5Xh6Kl6IU4l+tUJeJUEDFd+Y2eTvjRy6s/22OzM1+/hg4tB+ppIoEVzI
	xuyY1z/qhVugivHiuf0tYq6lRUlbegAx4+5/sKKUqa60XnqyNLxugS08jk6eMPC+Dpt2
	hOOsbUrdagTMaVwtu0SFGSRGQdRXY36oxynjaQKdj/5ZqDMoSgjWpcLw1f+rP9jrtmIr
	MlxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jhTQSJR+5Sm3lrfO7LDN2pDw4sobQEAMs3UoEu9u2Jk=;
	b=FPqp9wCUPb/v5RKviBUgZ7ukDn3Eh9wk497TbZBPQZueMTAuicQ9wVkHCr+yOR3oG7
	HA/2sFDjdKAJGCYBtwOlhHyDHPeXT5W9BjCCxnu+gaAUwZcbl9TP//d5xgx8wKacOkOs
	lXzYzFTrA5KLJeVGaGfbYXqx+FrKlMNAcGgITBV6Lh+QJfOjY4owOCY2use5mtYeYDlD
	2eX9e6Tww/Nc7m2PttnmZaY3gADBkICFthJ3o8xx/39l4ONxEtS1YhlGqCrarAbdISev
	6Im7xEkJpfzLSy8fTH6EyaOBqP4EWf8Gm5tyUXiEyBARTLDazspYAUHTOr71+fjez3LF
	VmAQ==
X-Gm-Message-State: AODbwcB7vGbO2VIJU9XgIx9IHKk2O67I1ngf5wJ3ySgiyicqIHu6qQHA
	bt4MBfS3emjY+FJW2lll6+BEjEVhZg==
X-Received: by 10.80.137.56 with SMTP id e53mr3842131ede.67.1495123263573;
	Thu, 18 May 2017 09:01:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Thu, 18 May 2017 09:00:33 -0700 (PDT)
In-Reply-To: <973975c4-73b9-d312-b7cc-493678a53805@iseg-hv.de>
References: <973975c4-73b9-d312-b7cc-493678a53805@iseg-hv.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 18 May 2017 09:00:33 -0700
Message-ID: <CAMKF1soSDHzsPyDhBrYxu4--7vq-i2uRbACTrHJKYBTX32HBaA@mail.gmail.com>
To: Yuvarajesh Valleru <yv@iseg-hv.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error: when reparsing
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
X-List-Received-Date: Thu, 18 May 2017 16:01:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 18, 2017 at 8:14 AM, Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
> Hi,
>
> I was building a custom-linux-image. I succesfully build the image with the
> help of bitbake tool.
>
> When rebuilding the same image again, i was experiencing an error.
>
> ERROR: When reparsing <filepath>.do_install, the basehash value changed from
> 3c2401cc61fce5eb899de19dbf78862f to 558516a74162944aff656a7d01321b12. The
> metadata is not deterministic and this needs to be fixed.
>
> Then i deleted the build/tmp and build/sstate, and again tried to rebuild.
> But Now I encountered with an another errors.
>
> Error:
> </home/hutch/yocto_master_wcs_10_4_2013/oe-core/build/tmp/deploy/ipk/all/nativesdk-packagegroup-sdk-host_1.0-r11_all.ipk
>    Matched in b manifest-i686-nativesdk-packagegroup-sdk-host.deploy-ipk
> Please verify which package should provide the above files.
> NOTE: Tasks Summary: Attempted 3172 tasks of which 2449 didn't need to be
> rerun and all succeeded.
>
> I deleted all the files in /deploy/ipk, build/sstate, build/tmp-glibc and
> also deploy/sdk/ for building a new image.
>
> Is there any alternative for rebuilding the image without the above errors
> and without deleting the file everytime.

if you are using DATE, TIME or combination of these
variables in metadata then this could cause
such issues.

>
> Best Regards,
> Rajesh
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

