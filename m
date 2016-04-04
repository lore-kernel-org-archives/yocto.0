Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 416E6E00C37; Mon,  4 Apr 2016 08:08:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0629E00BFD
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 08:08:30 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id fe3so146077086pab.1
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 08:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=8XFOBbMY0EmMckHr4e0rX92MyFKMQ+WDiyxBaBwQPuA=;
	b=GSf8AgNIzQuB/c+eVNLG7WMCKP6WChl7D2k+RV8Av8r2hDFPyjdZpN3du8qGBvvjn8
	8mPZ6+QJcq7RBaY9EEU+/3pnjEAqYPdxRsSMHRQ8z3iJ9ZPwIEzdVw02FQ8HbHrzR9b5
	r+AP4MEejtmOoUZLpEjUjnG5GkTj9AzWUVkPT1uDFP/PTijh0jwhmgnfu1zs3u3ok5j7
	3YlCQBinKHA16T1XYxPlajDPfH6peWvLCIFzLmdemB+V+IpmeDPMVT35zKc4OGqAzMJ/
	UqaFeFzchI+WnVoiUNBfDNomC17YFMM9xA6pmFLw9WzR6KbeXD8TspgOk0LHDJl2JOgz
	idGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=8XFOBbMY0EmMckHr4e0rX92MyFKMQ+WDiyxBaBwQPuA=;
	b=HhZ7EX7xFEwmz1Iaa9HaEyyIrjXUBCWrUhMvxhLCP2yXNNQ7Vdh/wq5Ha6goB1uokT
	GCjratDeUUhsBcZptSs2mtscBXzrTanEPcXQct2T4aswVcVfs0jaPlSF9+qTebMY2fnP
	0c+a7sgrmhM52J6TQgoJXtG2m5uBhoYQN/fXNqKIL2ySUvRsTf8rzhAzrWwYmD5C2FZL
	RpAQsfxVon/5vAVQGDL/IeQTKnBdL43VyFHcXrJkJsOlDlzaPhFIm2ZT/B3SfEwvIEvD
	0vl2nkYz9WvLcLmuL8PZiXo0GBrTO/kEGtfvmaiXa4exui54U4JPMdq24vuM6LtfkU4B
	koQw==
X-Gm-Message-State: AD7BkJLkV3JhEdVbko6QtRQZlNOwUdN1NZ4dQC6TrzemBghp87WmDNMLwpT4qVviwWzHyQ==
X-Received: by 10.67.8.100 with SMTP id dj4mr54264322pad.88.1459782509626;
	Mon, 04 Apr 2016 08:08:29 -0700 (PDT)
Received: from linux-mkz6 ([209.65.105.133]) by smtp.gmail.com with ESMTPSA id
	n11sm40265854pfb.74.2016.04.04.08.08.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Apr 2016 08:08:28 -0700 (PDT)
Date: Mon, 4 Apr 2016 08:08:21 -0700
From: Trevor Woerner <twoerner@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <20160404150821.GA15145@linux-mkz6>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
	<20160404013856.GA6212@linux-mkz6>
	<CAMKF1srVw_661GixzEC7gy-Kt7dBGKOAw_dXPzs4KdR5AajNxg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srVw_661GixzEC7gy-Kt7dBGKOAw_dXPzs4KdR5AajNxg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Mon, 04 Apr 2016 15:08:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun 2016-04-03 @ 07:29:59 PM, Khem Raj wrote:
> On Sun, Apr 3, 2016 at 6:38 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > Thanks to everyone for their help!! It looks like I've got something working,
> > not sure if this is a "solution" or if most would just consider it a
> > work-around:
> >
> > 1) use Andrei's meta-raspberrypi layer (which selects linux kernel 4.1 by
> > default)
> 
> thats good.

Here's some more details that will, hopefully, help others duplicate my
results:

	Build Configuration:
	BB_VERSION        = "1.29.1"
	BUILD_SYS         = "x86_64-linux"
	NATIVELSBSTRING   = "openSUSE-project-13.2"
	TARGET_SYS        = "arm-poky-linux-gnueabi"
	MACHINE           = "raspberrypi3"
	DISTRO            = "poky"
	DISTRO_VERSION    = "2.0+snapshot-20160404"
	TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
	TARGET_FPU        = "hard"
	meta-raspberrypi  = "contrib/twoerner/raspi3:7037617fca920f6e26c2a6968fa1ec67f495035d"
	meta-poky
	meta              = "master:af5f423887d1c41cf7279f6e537077726ae13082"

	meta-raspberrypi
		git://git.yoctoproject.org/meta-raspberrypi
		(branch based on master at 84af6e7de3b8ea64ab374028aa95dc3a288ae85c)

	meta-poky
		git://git.yoctoproject.org/poky

My bblayers just pulls in these two layers, my local.conf has no local tweaks,
and you need to apply the two patches I recently sent to the mailing list.



> 
> >
> > 2) add the following to your local.conf:
> >
> >         SERIAL_CONSOLE_forcevariable = "115200 ttyS0"
> >         CORE_FREQ = "250"
> 
> Send a patch to document this in README.
> 
> >
> > 3) ??
> >
> > 4) profit!!
> >
> > I've tested with poky building both core-image-x11 and
> > core-image-full-cmdline.
> >
> > Best regards,
> >         Trevor
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

