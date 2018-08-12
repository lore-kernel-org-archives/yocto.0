Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 928A6E0084F; Sun, 12 Aug 2018 11:31:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71E28E00805
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2018 11:31:21 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id j205-v6so23784188oib.4
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2018 11:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Tl5VINHYiANHC+ry/ShCT5O/FFgtnniyRi1s5305OuQ=;
	b=1ACP0dcsu4v/3iC93fRhaXWfYM4xros4VbdfGDLMcx2qLS2YnBbP7oDHzwQB0kvkBa
	FvEiR1Sz6gfHlSnAGXH8WHmig61ak2cPCMf1dXOImpnFTGtvZxLvYVjAE2A+FiAQP17H
	lyocwGZgHFr3sucE0i7m7eMqgEeBNbIkTN7J9qElOTUkI8QdN1J9fqVGfwGLwEeGBx5O
	EnifJ0pp8poK+ORH3WRtBA2SVTBvgIFG+hPYk+NDJiBrQw00F1jsHdxh1dZDEoutKz2H
	teGtpCIoS6xFlQgykuVFXtbTRD5bJUB0M4/MkmzviTmEcCOOYpuDhWIKRyykZ2uHnJUr
	HBPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Tl5VINHYiANHC+ry/ShCT5O/FFgtnniyRi1s5305OuQ=;
	b=UJSg+MBGlizDSZSxFpoQxvUPdHTE6pB5YJ1bqLkVX8WBPk2XcJ3377E0ai5ZakrumH
	cYTJOCWPcAE0KkWi7RlBpxsAhORz2XCtqHzTsQj1xbXS1MSOEVh5Nkx+dvN5zIMFF2fT
	ThJz8Jh6pb0kkLsrWwYCFRDDzqDwODf6hbZk9nfdUHIHPniEGHX3YgLS1YBJD+V3INdq
	ybDTyM/nNxqZhdluU9mg27aDkNwwBwSTErGo6va8t4gV779JcJD/SjE3m4l5IeYelndc
	PEmx7wJDiQ02v8hKldM1FJ5W0MAnX7TI5Mu1WOLu4YVyP7d0wRpu/SUozLiTpIMB7M4t
	gT7A==
X-Gm-Message-State: AOUpUlGQX2Swu6oBtHO0D0oNeJHhn7+0Yjhnnk9aibmav50DkuyNQJzo
	mW8DgexVZA6SV/KI4X+PhA+AHs0PRsidBIEY63X1tW+a
X-Google-Smtp-Source: AA+uWPzMs6btI5uJaK7Cd3uYg4sBLm48212gvgt4pXkf7mw9+o+M0oKk1AXHXhV87Uja/g/xhRSQoErIiwA71Vt7mTM=
X-Received: by 2002:aca:b256:: with SMTP id
	b83-v6mr15724499oif.235.1534098680648; 
	Sun, 12 Aug 2018 11:31:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Sun, 12 Aug 2018 11:31:00
	-0700 (PDT)
In-Reply-To: <6f61f2a3-4825-2c6e-ece7-39a78e324c1c@iseg-hv.de>
References: <6f61f2a3-4825-2c6e-ece7-39a78e324c1c@iseg-hv.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 12 Aug 2018 19:31:00 +0100
Message-ID: <CAJTo0LZdRG+McpEEvmwxdsQRtX-UF7V3DySuOCyH+15SzsEDew@mail.gmail.com>
To: Yuvarajesh Valleru <yv@iseg-hv.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: custom splash screen using psplash
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
X-List-Received-Date: Sun, 12 Aug 2018 18:31:22 -0000
Content-Type: text/plain; charset="UTF-8"

The easy solution would be to not use meta-poky at all, but if you
insist then you'll have to set the layer priority so bitbake uses your
layer instead of meta-poky

Ross

On 9 August 2018 at 15:43, Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
> Hallo,
>
> I would like to overwrite the poky psplash splash screen [1] with my custom
> splash screen.
>
> I copied the psplash_git.bb recipe from
> openembedded-core/meta/recipes-core/psplash/ to my custom layer and changed
> psplash_poky_img.h to mycustom_image_img.h in mycustom_recipe/files/
>
> But during the boot the Custom splash screen displays along with a progress
> bar from poky splash screen. (I noticed that the psplash.c source file also
> contains progress-bar.h file included)
>
> Is it possible to remove or overwrite the complete poky splash screen files
> with mycustom_splashscreen?
>
> Thank you,
>
> Best Regards;
> Rajesh
>
> [1]
> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/psplash/psplash_git.bb
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

