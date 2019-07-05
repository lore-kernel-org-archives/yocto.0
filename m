Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1AFBE00D88; Fri,  5 Jul 2019 02:46:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8943AE00CB9
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 02:46:54 -0700 (PDT)
Received: by mail-io1-f68.google.com with SMTP id u19so17876570ior.9
	for <yocto@yoctoproject.org>; Fri, 05 Jul 2019 02:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sjiPlpEm9h3VgOlv1gEQbEC12XiUlaHHFCgCxrML/j4=;
	b=gFZrNiTMkpyduVJYFwKGTSyZWgn6r6vap/bqvqp504rAJ1D0BlE8RyPVlgOH36W1Pw
	Rrmy6XkHHpcLhtiscYD9dcJOWQJpI/YZpo6Wlbfx2cu5y2uZqe+scP0ycnBr45fyUuVp
	dduNQM+vUGz2xIJnynAJrfzDmJ/Sn8gcjsxtGbc+QXNx7yvBDXPB8rOrAnCUQJd5SCnD
	3DMU+vtIpE61ayqgZzTZnutxykgiKlRTSnaF6aGxExkP6GnH/ofwO7mvZzCXELmoeMaF
	l+/F6a6+mIF+3UCQOiIjp82ZnQ49f72bA2Jl2yoHZRXBMRRN0bQQU0bawJeXzAkNrjM2
	BgSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sjiPlpEm9h3VgOlv1gEQbEC12XiUlaHHFCgCxrML/j4=;
	b=UQLTeD6PCO59KH2hnUtEz4glrR+BjmmPFc52exuX4thJcmPrjCaDrMHvBcvdEnPtnU
	0R3LoKFAcdk2/VSF5XBHvvL52ROQZtHJQYB21d72zX17K6VLSTim3NyLT0cXTa3CHg5M
	Hx4jDl6qR0X2Kh/h9rwZhDD8myyC1bNgDz4rrqn4jIwOLV4GHFlXyezVBzJpKeWWw66n
	ztrev1VOPrGIEsrx4EslMpgGC3TIyvs1U0f3sB0VPiJkHfglHQIdVI9k6zFz2bkCDufU
	Cv0kEzBmuAC1AZAeac/AjiU7mJBC19GRRlxzUqB65Dh4i1q5hTAAtSMN4+CidgzID2Dh
	gHOQ==
X-Gm-Message-State: APjAAAVmRPIfWNSkRMOmZlXNwK//5gmqp5/uBUA0rnRTafD75fdX0kzj
	3mFtpPCyqiMXI4JNVzBVtwl+7mRTkVMq3TCjLd+vag==
X-Google-Smtp-Source: APXvYqwTHVHvw1djmLrCegjWMVW+LYrcbAfL7vw1JgoDgfU54XkhrzdbGqSfiDdvXtk3h34NntWXqyDlCl2N6HC+D/M=
X-Received: by 2002:a02:7303:: with SMTP id y3mr3301817jab.97.1562320014070;
	Fri, 05 Jul 2019 02:46:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZYNO2VFCrgimh6GQoZXgGY7tn2aRURDSjoTuvNak=3cA@mail.gmail.com>
In-Reply-To: <CAG+Ob8ZYNO2VFCrgimh6GQoZXgGY7tn2aRURDSjoTuvNak=3cA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Jul 2019 10:46:42 +0100
Message-ID: <CAJTo0LbWoHvMK55jXu3Ux28yGAip0U9VbGCm1CQsQBNcE+AAeg@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: dev_pkgs feature caused conflict
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
X-List-Received-Date: Fri, 05 Jul 2019 09:46:55 -0000
Content-Type: text/plain; charset="UTF-8"

file /lib/firmware/ti-connectivity/wl18xx-fw-4.bin from install of
linux-firmware-wl12xx-1:0.0+git0+d114732723-r0.noarch conflicts with
file from package firmware-wireless-wilink8-1.0-r0.cortexa9hf_neon
file /lib/firmware/brcm/brcmfmac4330-sdio.bin from install of
linux-firmware-bcm4330-1:0.0+git0+d114732723-r0.noarch conflicts with
file from package firmware-wireless-brcm-1.0-r0.cortexa9hf_neon


Looks like your BSP is shipping its own firmware (firmware-wireless-*)
that ships the same files as linux-firmware.  Speak to your BSP
provider to detemine what one of those needs to be removed.

Ross

On Fri, 5 Jul 2019 at 10:40, Onur Eser <onureser12@gmail.com> wrote:
>
> Hello everyone,
>
> I am trying to build a toolchain for my image. Added line
> IMAGE_FEATURES += "dev-pkgs"
> to my local.conf file and rebuilt everything from zero.
> It gives two conflict errors.
>
> Check my error log:
> https://paste.ee/p/HbC5r#zh4fQsZhX9vAQEXQiwIqc7c2VkK82i2d
>
> Note: If I exclude the line
> IMAGE_FEATURES += "dev-pkgs"
> image is being builded and booted successfully.
> But I need it to cross compile if I am not wrong.
> If I include this line, following error shows up.
>
> Note2: My base image is core-image-weston.
> My device is SolidRun Humming Board 2 i.MX6 ARMv7
>
> Cheers,
> Onur
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

