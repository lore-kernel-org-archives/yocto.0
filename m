Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCBBAE00B63; Sun, 18 Jun 2017 22:48:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 773DBE00AF0
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 22:48:35 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id m47so51159466iti.0
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 22:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=FTjwCDptIpMRAie+8ayZ7GUbZGVlc/KYz9byAAoaRJY=;
	b=r4lxo6cH2+7JsNziUc4vWrUcGvY6DJ0xkkAVuQRCGonmNeNjVFVc1t878qbFHz6UgY
	044zheMPuh+pRbGg62V9AWf1EJrlZXxg9aU3IBgUUzYjVK/vBNxWgu7HdkMfj7j/tNy7
	koxjahjwQf2O1JyNPVgg3HOJ87hYWct/lwLuC9If0Mh9sz7LyNxSCM8glk9q/enGFCpm
	oZ5u5kMNc3kum0J3QqJvmuqi9IxddLithRsJOWjnMCbeDzUPxcJd8vsdXMQJbu7Qs/8m
	Ji8SjEOxuAVtz2SVa6hTaKFmO3ubfuVhaWleABaYy0Pae11kKKeADT8NaNFNxD7weHvu
	w3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=FTjwCDptIpMRAie+8ayZ7GUbZGVlc/KYz9byAAoaRJY=;
	b=c7pKnwW5O9hFY293A63dVCw5C4S11k3ZPDbOiL0vUIglrvFZOmP6YS+rZTO/BHP3Yl
	aaSjozMDyHIj4TN5ZRrC1RekO4UBrO0HfD/wku5+++792IYiK88Vb7PpaSkqbA1ZIG0A
	EezX0OzxCgpmsdWjWaTylFu1D6dwpWjnkZnSxYg9gcchu6cjUiAQZoL0Hu+8IPu3SPUH
	Q+Mj1Q2q3Qq5S3Cz2XHTGDIEMn+1hJ01IPvB9E2rKqHfxwE1rZC4s4HOi3MZku50wpfk
	UXOE1iadkOx/G9jT7UeOt2WDjuJ//BJFCg3E8Tv8pUjNMIn/nU4N7x2pWxwLO80tJUzo
	51Dg==
X-Gm-Message-State: AKS2vOzs0qQh48NYROOqK8rCFHiLD+CocV0jU8w5kHiN4pFwUR63Pgj0
	YERTf2e0TpEN+A==
X-Received: by 10.36.98.206 with SMTP id d197mr20777887itc.50.1497851315017;
	Sun, 18 Jun 2017 22:48:35 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	q191sm3381156itb.18.2017.06.18.22.48.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Jun 2017 22:48:34 -0700 (PDT)
Date: Mon, 19 Jun 2017 01:48:32 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: drew.moseley@mender.io
Message-ID: <20170619054832.GA7840@linux-uys3>
References: <cover.1497646644.git.drew.moseley@mender.io>
	<195a92fc1faa49495d1a2b6cda0134f07ce72189.1497646644.git.drew.moseley@mender.io>
MIME-Version: 1.0
In-Reply-To: <195a92fc1faa49495d1a2b6cda0134f07ce72189.1497646644.git.drew.moseley@mender.io>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-chip][RFC PATCH 3/3] chip: Add chip-u-boot-scr recipe and flash script
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
X-List-Received-Date: Mon, 19 Jun 2017 05:48:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2017-06-16 @ 05:15:40 PM, drew.moseley@mender.io wrote:
> +This script will take some time to execute.

true

> If you have a serial console connected to
> +your board, you will see the progress and a message on the console will indicate when
> +the flashing is completed.

hmmm, never saw this. I have a console connected, the moment the script
started, on the console I got:

	U-Boot SPL 2016.01 (Jun 19 2017 - 00:32:19)
	DRAM: 512 MiB
	CPU: 1008000000Hz, AXI/AHB/APB: 3/2/2
	Trying to boot from

which looks right, the date+time are good.

Where I started the script I get:

	# UBI_IMAGE=core-image-full-cmdline-chip.ubi
	# tmp-glibc/deploy/images/chip/flash_CHIP_board.sh
	100% [================================================]  3537 kB,  557.5 kB/s 
	100% [================================================]   616 kB,  823.9 kB/s 
	100% [================================================]     2 kB,  733.9 kB/s
	100% [================================================] 654311 kB,  771.4 kB/s

> Additionally, once the image is properly flashed, the status
> +LED on the CHIP board will flash 30 times per second indicating that it is safe to power
> +down your board and disable FEL mode.

I don't get any LED flashing, and nothing other than what I've pasted above on
the console.

Rebooting the board after flashing outside of FEL mode simply boots the
previous u-boot and image.

Any thoughts?

