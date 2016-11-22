Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07DA9E00BFF; Tue, 22 Nov 2016 06:38:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.68 listed in dnsbl.sorbs.net]
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC85AE00BFF
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 06:38:45 -0800 (PST)
Received: by mail-it0-f68.google.com with SMTP id b123so1983494itb.2
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 06:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=iQ8sv+xoWgUDPrZfrpq2Fr6JGt/y96Mk8pNyZdcM1Mo=;
	b=lkPZvDvQVYLWytLIpnTKm6t659lD+WZic6jruDdOeyDh3Bl9eJPaisXHr8xfGG4ZAZ
	Wyis8Bh33VeHzUrdQEwk8Jl3E3WseJRX3JwX7hEZdVU7Ke/0piuV9qsRe2bcXz6kMmoF
	hKg1AXW7uoen6kSpgLasBm0Mu5RzCN56n4ALcTNr+C984gY1t8ipnz/iXdmdbz/g78NM
	4HFeUHiyb3zp9TpPWP6ptnYrTjbUxAerH146UvAk8ENIhBUMXAqdHq3Bp23uL7bQkSWU
	G/XDP9GRCGJwoJb0lkCSR0tTRJ0DLiZP7BMO7qylO8ILxmsQxzoAIuoBlJmjUgWuFShT
	fOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=iQ8sv+xoWgUDPrZfrpq2Fr6JGt/y96Mk8pNyZdcM1Mo=;
	b=hrRM61/JY4xsECX+UObE4r1cBj5HNMg/HtqzjNeEkvaSB/bCxrjiAW1iPKjXFLn5If
	i+9O8ybz1B2FEQcqktSTmjP0qVxrrfL2KMtpYsKznsJ9ut+MyxQr2uCQ9XvrWyGOoh7k
	+T+rxLdoOjtR0W2Yx7yuZTMmjrdEgkRuOmBFEw8zQWcsR97pc8EEVuWm1H1QiC6zbzog
	lvbcbm+oRZJsVqdBYhDtYeWewpYNkl2xM40bt/TQEwztvjsTvTR+JDkdKP4BM9Ca7joT
	RHf74gyuVE4x0eRsFr+pbtE4hD58F2egX50B+MYCnkH5GMtGj1gl6FtP59YXCN54BM3C
	naug==
X-Gm-Message-State: AKaTC02LCUFWk2R+0Z2OfItibZkFTJVX61A1tFe4vdS1Avl4LehIRVRsSeTfi6hPF0KVbw==
X-Received: by 10.36.115.6 with SMTP id y6mr2657291itb.83.1479825524994;
	Tue, 22 Nov 2016 06:38:44 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	l14sm9760333ioi.18.2016.11.22.06.38.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Nov 2016 06:38:43 -0800 (PST)
Date: Tue, 22 Nov 2016 09:38:41 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161122143841.GA7846@openSUSE-i7.site>
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
	<CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
	<20161121230726.GA14157@openSUSE-i7.site>
	<5e81cb71-ff35-4525-0e53-ded77e59dad2@gmail.com>
	<20161122053929.GB16570@openSUSE-i7.site>
	<4d14c20b-1360-d3dd-c61c-b0d5929d5819@gmail.com>
	<20161122075419.GA31256@openSUSE-i7.site>
MIME-Version: 1.0
In-Reply-To: <20161122075419.GA31256@openSUSE-i7.site>
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
X-List-Received-Date: Tue, 22 Nov 2016 14:38:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue 2016-11-22 @ 02:54:20 AM, Trevor Woerner wrote:
> I'm currently trying 3ce7378bb505825f492615bd71d19a2339e5bf55, which is the
> current HEAD of the 4.8.y branch of the raspi kernel repository.

It builds if I:

	diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
	index 323b0ea..cbb8a50 100644
	--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
	+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
	@@ -1,8 +1,8 @@
	 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
	 
	-LINUX_VERSION ?= "4.8.8"
	+LINUX_VERSION ?= "4.8.9"
	 
	-SRCREV = "ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7"
	+SRCREV = "3ce7378bb505825f492615bd71d19a2339e5bf55"
	 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
	 "
	 require linux-raspberrypi.inc

but it doesn't (appear to) boot.

Is there a way to enable the console of the bootloader? I don't get anything
on the console (which I do if I load a raspi2 image), and no lights are
blinking (which occurs with a raspi2 image).

