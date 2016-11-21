Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EF99E00803; Mon, 21 Nov 2016 15:07:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA85FE007B3
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 15:07:30 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id b123so729654itb.2
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 15:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=p8lFq4Kecvhkd2xr57H0DQfKOnsyMfC4CP1j1je65Zg=;
	b=hLQkp2eN+gFVhBy7rS2mhmALvrhxNEMdIo3z4AXwS/t2KGu/aF0zG2qEAGvzcctfbD
	Uc8bo4k/uj6dqW/fk+HApV3jcV/LrL6BqHYiOgAkIAgY2bI1S544s8LliMMZfY6V097M
	Pf2IfW7y9dQC00O7/Oq9Ljao7ggU6No/BhllbgdYjZtseNouoVvK4jlQrZ5CShk/etLX
	UuhO9LYfqSvHLoBWg1mnNNlt+V9ee+YuNdg2ZjKZengQEyUwedFEiUjIOiwra8ml4y9l
	aW320GFHkXKXTqAdQsrKE2/HUMmuL2O29PrqzSV7tlJ+L7VwWaEYPVUcQAJHC3SRyL58
	towA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=p8lFq4Kecvhkd2xr57H0DQfKOnsyMfC4CP1j1je65Zg=;
	b=YC06QosVzxJBD2kzd1hmFCSZVSovi9oB2S88Qcnx8TzxbXGTMx3V/3y3FUIjFUqkoI
	pRDePY8sIgzjervQxaOWTd5Bd8jAn9fVu1YbhBy7N6cSjF13BL5c0oCBe9ziFlUBauqK
	TjbBmzk0T/m7kH98gbIiyQcSfjNPJwKGnMqeSZYBAv0EDJyXimKZ49r8F6Z5chjcGEIv
	ZKsk1sIso7G1od71gEQVCb/bJ4ap4xtJvEoLaTfoBtqtGVBJyIR/NAf1kI68YdqLi0zI
	/vnx9u4aL6p4Lkgp6EejRnTd0Bk7rUTYfGhXgnc+RRKpR0xS4jrVE4KAdOU92d9mu/cw
	MOug==
X-Gm-Message-State: AKaTC00AzCUOyfk3fQWB6A35s3TqTRJHJsgTkbhwGCDpuTYNdMHeBNYfJ9Y+rucfrj0lJg==
X-Received: by 10.36.58.129 with SMTP id m123mr12140168itm.7.1479769649712;
	Mon, 21 Nov 2016 15:07:29 -0800 (PST)
Received: from openSUSE-i7.site (157-52-0-130.cpe.teksavvy.com. [157.52.0.130])
	by smtp.gmail.com with ESMTPSA id
	j201sm6736445ita.20.2016.11.21.15.07.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Nov 2016 15:07:28 -0800 (PST)
Date: Mon, 21 Nov 2016 18:07:26 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161121230726.GA14157@openSUSE-i7.site>
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
	<CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
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
X-List-Received-Date: Mon, 21 Nov 2016 23:07:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun 2016-11-20 @ 11:28:48 AM, Khem Raj wrote:
> I gave a whirl at building and looking closely at them. As it seems
> the OE core patch is
> not needed since for armv8 we want to keep it like x86 ( common )
> I have therefore made changes to your patches and staged them here.
> 
> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
> 
> Which should work without any change in OE-Core, secondly I have
> further divided them
> and also fixed 4.8 to compile arm64.

I tried giving this a whirl.

Maybe the order of my layers in bblayers isn't correct, but by default my
build uses 4.4% instead of 4.8%.

conf/machine/raspberrypi3-64.conf includes:
	...
	include conf/machine/include/rpi-base.inc
	...
	PREFERRED_VERSION_linux-raspberrypi ?= "4.8.%"

conf/machine/include/rpi-base.inc contains:
	...
	include conf/machine/include/rpi-default-versions.inc
	...

conf/machine/include/rpi-default-versions.inc contains:
	...
	PREFERRED_VERSION_linux-raspberrypi ?= "4.4.%"

In any case when I try building with 4.4 I get:

	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel_configme: No default configuration for raspberrypi3-64 / bcmrpi3_defconfig available.
	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel_configme: Function failed: do_kernel_configme (log file is located at /z/layerindex-master/raspi3-64/tmp-glibc/work/raspberrypi3_64-oe-linux/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_configme.15498)

When I switch to 4.8 explicitly in my conf/local.conf I get:

	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: Fetcher failure: Unable to find revision ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7 in branch rpi-4.8.y even from upstream
	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: Fetcher failure for URL: 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y'. Unable to fetch URL from any source.

My build configuration is:
	Build Configuration:
	BB_VERSION        = "1.32.0"
	BUILD_SYS         = "x86_64-linux"
	NATIVELSBSTRING   = "opensuse-42.1"
	TARGET_SYS        = "aarch64-oe-linux"
	MACHINE           = "raspberrypi3-64"
	DISTRO            = "nodistro"
	DISTRO_VERSION    = "nodistro.0"
	TUNE_FEATURES     = "aarch64"
	TARGET_FPU        = ""
	meta-raspberrypi__kraj = "kraj/master:4735e7cde210b2b0b855bca1eb90ef4adca8019b"
	meta              = "master:a675b2c89e477af088faee9b3be96eae19a85f0b"
	meta-oe           
	meta-gnome        = "master:7f8915a6ecdd5c4b03c7e5b5f1fa903f89c2d560"

