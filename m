Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59228E00D15; Wed, 27 Feb 2019 10:48:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB196E00D01
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:48:04 -0800 (PST)
Received: by mail-io1-f45.google.com with SMTP id k21so14397691ior.13
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6yCSGxWbTT/0MnCFmDv3NZ6RXNRWnbw/V0CvQbuXjL0=;
	b=VacmrHMZ0QUxsKcrRSCyongbDpjJz/00SUGSchDbap2vGTyevaBLiqGeGygDKlPeet
	LtLmEK521o3si9OLcD+QcCaOAT3BbCu+VS4ysDP82Gz1UKcmOSiW22lU50CaAVmIelmk
	4Udo5NqgqePH6Ewg1ITmzJ7O1prnDHkaQ6q81Ate9C3Cuh8InXB3RFkFiD8FIO/cqmG9
	j9B5y/pjtRx5vB4Un5sQjqCOWu6lmY+yaeAefKSigiEzWP4Pe0M7OC9EIJNqE8+KD4MN
	NyFM5fGGtVmk0MLu3BzzN+vuClnXUmK4RCtneDLwoGrRdZ8J8DG+lEBggUsv70vb1kpr
	eUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6yCSGxWbTT/0MnCFmDv3NZ6RXNRWnbw/V0CvQbuXjL0=;
	b=IzzNKadnwzAfcwA16QnFYI8sREiCrz+YxCesRGT/aVsHt3XqzwX3+p/tdktDT7//RR
	3MzEfD/WQkq7q3/O5fkRMMOlmivz2IpIbTqO6e8q8Z4CRezmrlSmkrcNKJOv7+uE5ab9
	xx9R9D+64auCIfGyIcYhBm+XZI2s1S9IA9rTuv34lVB5+14g2pHiggAxN9RdmFkBXy14
	DHSid8Npi8ElSknDxGBH0MFANGyxkbMUTYnUnBaP950jMppj5O/m6i6WVqtowqiWyfEi
	jauKPOvdWuJZJPQxpMcIGLwnJ469jIQ10irHYSv9Egm06tp1M+H7EkHTIYgaX+hNY4fP
	4z5w==
X-Gm-Message-State: APjAAAWMGx8G5tkwVmxd0LQJfZp39OacijJTYqVP5te1oaKRChlzQl2Z
	BkxtTsVUwLvZmHhldNZJpk/bN3NDviyNZB1MDypITw==
X-Google-Smtp-Source: APXvYqyWMux0tMjBpen2WPJHo+uZzktmkmHfG0ktREpUFuwz+uPcjBdm3EJn7iMXUuAgOhHfDj83OUrt8pPh5buTf6I=
X-Received: by 2002:a6b:ee1a:: with SMTP id i26mr2759708ioh.201.1551293284367; 
	Wed, 27 Feb 2019 10:48:04 -0800 (PST)
MIME-Version: 1.0
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
	<CAJTo0LbJUurHkyTz1EuOHnxkYK1MOX8MxUXzzSmPFZBqd_=qcQ@mail.gmail.com>
	<20190227175814.GW12046@bill-the-cat>
	<CAJTo0Lboemkg2+rxxBqgj7K1LLQGEioDqsJUQx1AtCzMgrGHrg@mail.gmail.com>
	<20190227184542.GB12046@bill-the-cat>
In-Reply-To: <20190227184542.GB12046@bill-the-cat>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Feb 2019 18:47:52 +0000
Message-ID: <CAJTo0LbveDoW=oinew3FKZW80r1Xe0kuq5vJ6E1fb-EL0nyKfQ@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 18:48:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 27 Feb 2019 at 18:45, Tom Rini <trini@konsulko.com> wrote:
> OK, so I've kicked things a bit harder again, and here's what I see as
> the (small) rub.
> $ git grep hddimg meta/conf/
> meta/conf/machine/include/x86-base.inc:IMAGE_FSTYPES ?= "hddimg"
>
> So yes, we can do a test with qemux86/qemux86-64 and documenting this in
> local.conf.sample is good (and a packagegroup that gives more 1:1
> functionality is on my TODO list somewhere).  But it's also true that
> we'll get people with "I can't remove busybox and I tried what it says"
> posts since blindly pulling in hddimg gives at least:
> ERROR: Nothing RPROVIDES 'busybox-mdev' (but
> /home/trini/work/OE/oe-core/meta/recipes-core/initrdscripts/initramfs-framework_1.0.bb
> RDEPENDS on or otherwise requires it)
>
> That's the point I want to make, after throwing out a quick test build
> dir.

Sure, so the instructions include "don't use hddimg" until we've a way
of not using busybox in the initramfs.

Ross

