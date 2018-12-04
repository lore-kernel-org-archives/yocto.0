Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84007E00B81; Tue,  4 Dec 2018 02:16:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A966E0097C
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 02:16:11 -0800 (PST)
Received: by mail-io1-f50.google.com with SMTP id r9so5684896ioa.1
	for <yocto@yoctoproject.org>; Tue, 04 Dec 2018 02:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=h1Ehws5GAfmY7/6eK162rORnW2p0TDcbnLFbBX8HrYs=;
	b=vFmfK7+6kAXw39mRn33p8d1hC0YGRAJbGn5pbkPIoh+uVfWeAZQiqiiUQEMmtl0ZqM
	O2zf/eaQafO6qxiV3JlGnSPJsngP5HOcnMGc+uDrVHntXP98hNuZf3wJYFYYJATfdzTS
	/dKHTcUO/t8ywvSsuF8L/A4xT5yh5DgdFfv1xYFrztMiW2A6xs2dZtxCyn+k/pAeKeMp
	NdoxzsbRg+I8AMD3ufONnLOP0Vdny5VlGt9FvSo7j+7GR5DlWGB39urZbZ6KB6SFKEZ1
	yZVtj9y5wbO26lozRjzjeCVtN9nBBpNCHBBR7MNbJd6RdcXIE3GxZF5T5LFKsvg2nNym
	+wRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=h1Ehws5GAfmY7/6eK162rORnW2p0TDcbnLFbBX8HrYs=;
	b=B3lf+s8uVzl2axxzqYcc4AWpOavjzr2kS8lNeXLEo5JAMWoUqU7WAboISoYrdeC3R9
	dSFAKbkEoxM2VZAEcQAeh4RGdAJwKbi+wgzPVraw8Ifaxq/hekM5k8yPf2ymYCv1ufHn
	uhgIpMHTtXP773PCpteSoMQ9Ys0zYzSuFZtGj88+dT+drdXID+5HeU5kq09fqJPDu3Da
	h+c50qXkKqt8J7rNTJS6VJ/zPdU5a+AZgyTj16aFS9ErOuGrU9xlbZy7ZYPZO3MCsUWp
	BVHh6EcslW67owmG/xjteAT4ct7zANLqR7CBgOl5EKnALDT01B4m0R5JQhn/VuAf2hPr
	ZYeg==
X-Gm-Message-State: AA+aEWYTib/TDVauxEP6HyKLsuf9fOPhmDT/CgA+qrp0UyYWUfm29/eC
	/MhWqm3ZO/pEzetANd9uWF9CO6RiHLsMwP9CrHcJaw==
X-Google-Smtp-Source: AFSGD/VXtiGnlKfFz42JpEsJtrYoCfPSGK0y16Ln++xBpdexG7lSI+MDUx+Z8AGXkpUots0WQzSKWYzCgJwBegfskYw=
X-Received: by 2002:a6b:b844:: with SMTP id i65mr16218820iof.20.1543918571540; 
	Tue, 04 Dec 2018 02:16:11 -0800 (PST)
MIME-Version: 1.0
References: <B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68E@KEMPMAIL2.woodward.com>
In-Reply-To: <B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68E@KEMPMAIL2.woodward.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 4 Dec 2018 10:16:00 +0000
Message-ID: <CAJTo0LagP7=zjiXYSU=eXpm6dfH049HDhpF2N8frrB1oha3PZw@mail.gmail.com>
To: Georgi.Georgiev@woodward.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Missing dependencies in recipe-sysroot
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
X-List-Received-Date: Tue, 04 Dec 2018 10:16:12 -0000
Content-Type: text/plain; charset="UTF-8"

We've already gone through this on SO but I'll copy/paste here.

On Tue, 4 Dec 2018 at 08:30, Georgi Georgiev
<Georgi.Georgiev@woodward.com> wrote:
> #####The only dependency
>
> RDEPENDS_${PN} = "libgpiod"
>
> RDEPENDS_${PN}-dev = "libgpiod"
>
> RDEPENDS_${PN}-dbg = "libgpiod"

DEPENDS = "libgpiod".  RDEPENDS will build libgpiod at some point, but
it won't be in the sysroot for compilation.  Before
recipe-specific-sysroots this would mean it *might* be present, now it
reliably won't.

> Then I noticed that the command line is:
>
> arm-poky-linux-gnueabi-gcc  -march=armv7-a -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 --sysroot=/<full path>/recipe-sysroot -L/usr/lib -g -Wall -fpic .....

The problem is the -L/usr/lib, which presumably should be where
libgpiod is.  The makefile is broken, or possibly some tooling that
the makefile is calling.  As you haven't shared the makefile we can't
help further.

Ross

