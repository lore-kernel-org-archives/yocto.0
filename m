Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2AF4E00ABE; Mon, 21 Nov 2016 23:54:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9EFEE00A7F
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 23:54:24 -0800 (PST)
Received: by mail-io0-f196.google.com with SMTP id j92so9954677ioi.0
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 23:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=XtLu6zzscwhQzfRgyiS7fZvCcTBiBKp2OEytvxFqdDs=;
	b=XDqvvH5C6c6rk35EpYNEZb+jzrr95YPzkEYrJRz9MhGQdJYKtF45/13eMIVZrqJXmk
	1BJbEKY2KL6x/RyWTrm8bfq3F0zKUyAd9JHPpFa4LTDgfGrRhy/ln/RpEXmD7nRTDHVs
	8obc913DtUv6lnCGb9d5VjlKHtft3YQYQKlJ3kDPV35oLExmAakz8MlHk/+UbsjguMbh
	yu9YWTUFA6BvsM2SYqzFem8h6Fysykn+l3ArW+r8TWS3zGDseBkOp5TeL+47D9ugHufd
	Lj5tHYNGC1kvt7PwI318tdIsWf/ll0mZyedu29j/pxnNzBK5iksYDyIf6lYrN+0gzcVS
	PXBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=XtLu6zzscwhQzfRgyiS7fZvCcTBiBKp2OEytvxFqdDs=;
	b=GjCoWq/SsI8dWfVURQr+eV3m31q+sU2EcLLbuwjpek0JuNKK3wZyekaUaQ9Vev3Y4U
	aLy1MdiemEVthPhRmOvimh9U3WdWsoz8ysogt7lnfXO30x3ou5z9ZVSuykDIhp4GLiYo
	NAXURrRq236+OtZtobJcU9lf8p9SO7BIE9erxcms86xJ3BAXzmkoS3LKf/q+K+yLXbg8
	GM0PTcFJ6Dt8PQd0H1FmoPFnqGNTrwxt9KolZTolFswtIKIST6T7bOAc4bORDbAJNszt
	2mpWukJ7NTLVDzr3S7Zezwgj0rMcyDcgxdXDtnQIby8ukRIu27riIsVHwqorgQ0arsUo
	l/7Q==
X-Gm-Message-State: AKaTC010JvHaO6ZcAVEbFkgN5gd/9mqRwCK8u/4MpHRt15rHzK3ka31yYpowWV0TKp3swg==
X-Received: by 10.107.31.194 with SMTP id f185mr15026290iof.100.1479801263239; 
	Mon, 21 Nov 2016 23:54:23 -0800 (PST)
Received: from openSUSE-i7.site (157-52-0-130.cpe.teksavvy.com. [157.52.0.130])
	by smtp.gmail.com with ESMTPSA id
	k130sm437758ita.20.2016.11.21.23.54.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Nov 2016 23:54:22 -0800 (PST)
Date: Tue, 22 Nov 2016 02:54:20 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161122075419.GA31256@openSUSE-i7.site>
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
	<CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
	<20161121230726.GA14157@openSUSE-i7.site>
	<5e81cb71-ff35-4525-0e53-ded77e59dad2@gmail.com>
	<20161122053929.GB16570@openSUSE-i7.site>
	<4d14c20b-1360-d3dd-c61c-b0d5929d5819@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4d14c20b-1360-d3dd-c61c-b0d5929d5819@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Tue, 22 Nov 2016 07:54:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2016-11-21 @ 10:29:18 PM, Khem Raj wrote:
> Did you take
> 
> https://github.com/kraj/meta-raspberrypi/commit/361757b9c1538b0a15577d75308ecef93db55965
> 
> as well?

Yes, I'm using the following as of 4735e7cde210b2b0b855bca1eb90ef4adca8019b,
which includes 361757b9c1538b0a15577d75308ecef93db55965.
> 
> >>> My build configuration is:
> >>> 	Build Configuration:
> >>> 	BB_VERSION        = "1.32.0"
> >>> 	BUILD_SYS         = "x86_64-linux"
> >>> 	NATIVELSBSTRING   = "opensuse-42.1"
> >>> 	TARGET_SYS        = "aarch64-oe-linux"
> >>> 	MACHINE           = "raspberrypi3-64"
> >>> 	DISTRO            = "nodistro"
> >>> 	DISTRO_VERSION    = "nodistro.0"
> >>> 	TUNE_FEATURES     = "aarch64"
> >>> 	TARGET_FPU        = ""
> >>> 	meta-raspberrypi__kraj = "kraj/master:4735e7cde210b2b0b855bca1eb90ef4adca8019b"
> >>> 	meta              = "master:a675b2c89e477af088faee9b3be96eae19a85f0b"
> >>> 	meta-oe           
> >>> 	meta-gnome        = "master:7f8915a6ecdd5c4b03c7e5b5f1fa903f89c2d560"

What's even more odd is commit 361757b9c1538b0a15577d75308ecef93db55965
switched the SRCREV from 6abac13566786086cd912d87e4f1a922e2a391b2 to
ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7, but neither of those are found in
git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y (or in
that repository at all).

	commit 361757b9c1538b0a15577d75308ecef93db55965
	Author: Khem Raj <raj.khem@gmail.com>
	Date:   Sat Nov 12 11:32:56 2016 -0800

	    linux-raspberrypi-4.8: Update to 4.8.8
	    
	    Signed-off-by: Khem Raj <raj.khem@gmail.com>

	diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
	index 4664249..323b0ea 100644
	--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
	+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
	@@ -1,8 +1,8 @@
	 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
	 
	-LINUX_VERSION ?= "4.8.6"
	+LINUX_VERSION ?= "4.8.8"
	 
	-SRCREV = "6abac13566786086cd912d87e4f1a922e2a391b2"
	+SRCREV = "ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7"
	 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
	 "
	 require linux-raspberrypi.inc

I'm currently trying 3ce7378bb505825f492615bd71d19a2339e5bf55, which is the
current HEAD of the 4.8.y branch of the raspi kernel repository.

