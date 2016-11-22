Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79BB0E009C3; Mon, 21 Nov 2016 21:39:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4485DE00953
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 21:39:32 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id b123so565676itb.2
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 21:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=inf9o3Y1uEfyBv6oJ8sokQxGA28TS3pjaxFjLqHF1+Y=;
	b=tMrl/yQMXm1ZyZ2LpFgBOJoZsTx5M9aR2kXY64GodIOea0fmBlW0WjAXev0HsF81Yf
	Umj5V6qxBbyVpn0uKrWZzwOxwcX+q1rNKcBuLRjPczmXbqndrKhpsoD1zkPQpq6X0LB+
	OzEx2WfKRDIQuHfvvJNWmKYkohnjYk6q5/PuWJWTQE5lrT8M70RB9BI9jFFOpjUhGf6Y
	81HYECSJPhdiMLCwMyfzV/4rVJLqR1n6c027UQELrMryC990M+edgwgTQYQMy81TRAuD
	ABUIpazJB+F+mXO7eyXbwIcAnEK4CYQL51Cq31tC9XsiEVe5lnPLPh9ZugjLK6fl8AWH
	7s9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=inf9o3Y1uEfyBv6oJ8sokQxGA28TS3pjaxFjLqHF1+Y=;
	b=nKyLBzJhYTt/TxaEpSk2ne8i7kM6TUBnxoqQsNMD4hjaKpHArWxdx/JHkkA5I7AZZF
	nq4wTEQxdmQazsV+s/JHpO43JloO0X2UpuaiBcobGZvTSbqPZbhi+u3R+a08caIKuc8/
	gWaumBUym2NfuXbovvHcLRxV7GnIp+aUFl2Xm8GOG/ipeAc8UNWVzb/g/btKUrqeytAN
	mLDteQnbXOz8dg2QgOq02sB0S1cb/a7//KXfqL2IsHo7DxDirJpd85RM/rnkcTPWjfyE
	eTAyDocoz7SZRSUd/c5fw8w/fj7suHo7b16KYB6JF7/3VuMXRSWensyQ2LxHkwahWINh
	/fCA==
X-Gm-Message-State: AKaTC014gXGN4vH2KWJCHpnrsyneDsWkdX+Z8y4A6qis43aF8odS5a1eMUmD4gkSb/AKyg==
X-Received: by 10.36.200.68 with SMTP id w65mr672445itf.85.1479793172171;
	Mon, 21 Nov 2016 21:39:32 -0800 (PST)
Received: from openSUSE-i7.site (157-52-0-130.cpe.teksavvy.com. [157.52.0.130])
	by smtp.gmail.com with ESMTPSA id v74sm9238513ioi.2.2016.11.21.21.39.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Nov 2016 21:39:31 -0800 (PST)
Date: Tue, 22 Nov 2016 00:39:29 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161122053929.GB16570@openSUSE-i7.site>
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
	<CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
	<20161121230726.GA14157@openSUSE-i7.site>
	<5e81cb71-ff35-4525-0e53-ded77e59dad2@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5e81cb71-ff35-4525-0e53-ded77e59dad2@gmail.com>
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
X-List-Received-Date: Tue, 22 Nov 2016 05:39:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2016-11-21 @ 04:09:50 PM, Khem Raj wrote:
> 4.4 does not support 64-bit pi3, do you set the PREFERRED_VERSION in local
> conf metadata ?

Yes, my conf/local.conf contains:

	PREFERRED_VERSION_linux-raspberrypi = "4.8%"

If you clone git://github.com/raspberrypi/linux.git and checkout the 4.8.y
branch, you'll see that there's no commit
ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7 anywhere in that branch. In fact
there is no such commit anywhere in that repository:

	$ git branch --contains ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7
	error: no such commit ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7

> 
> On 11/21/16 3:07 PM, Trevor Woerner wrote:
> > On Sun 2016-11-20 @ 11:28:48 AM, Khem Raj wrote:
> >> I gave a whirl at building and looking closely at them. As it seems
> >> the OE core patch is
> >> not needed since for armv8 we want to keep it like x86 ( common )
> >> I have therefore made changes to your patches and staged them here.
> >>
> >> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
> >>
> >> Which should work without any change in OE-Core, secondly I have
> >> further divided them
> >> and also fixed 4.8 to compile arm64.
> > 
> > I tried giving this a whirl.
> > 
> > Maybe the order of my layers in bblayers isn't correct, but by default my
> > build uses 4.4% instead of 4.8%.
> > 
> > conf/machine/raspberrypi3-64.conf includes:
> > 	...
> > 	include conf/machine/include/rpi-base.inc
> > 	...
> > 	PREFERRED_VERSION_linux-raspberrypi ?= "4.8.%"
> > 
> > conf/machine/include/rpi-base.inc contains:
> > 	...
> > 	include conf/machine/include/rpi-default-versions.inc
> > 	...
> > 
> > conf/machine/include/rpi-default-versions.inc contains:
> > 	...
> > 	PREFERRED_VERSION_linux-raspberrypi ?= "4.4.%"
> > 
> > In any case when I try building with 4.4 I get:
> > 
> > 	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel_configme: No default configuration for raspberrypi3-64 / bcmrpi3_defconfig available.
> > 	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel_configme: Function failed: do_kernel_configme (log file is located at /z/layerindex-master/raspi3-64/tmp-glibc/work/raspberrypi3_64-oe-linux/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_configme.15498)
> > 
> > When I switch to 4.8 explicitly in my conf/local.conf I get:
> > 
> > 	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: Fetcher failure: Unable to find revision ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7 in branch rpi-4.8.y even from upstream
> > 	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: Fetcher failure for URL: 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y'. Unable to fetch URL from any source.
> > 
> > My build configuration is:
> > 	Build Configuration:
> > 	BB_VERSION        = "1.32.0"
> > 	BUILD_SYS         = "x86_64-linux"
> > 	NATIVELSBSTRING   = "opensuse-42.1"
> > 	TARGET_SYS        = "aarch64-oe-linux"
> > 	MACHINE           = "raspberrypi3-64"
> > 	DISTRO            = "nodistro"
> > 	DISTRO_VERSION    = "nodistro.0"
> > 	TUNE_FEATURES     = "aarch64"
> > 	TARGET_FPU        = ""
> > 	meta-raspberrypi__kraj = "kraj/master:4735e7cde210b2b0b855bca1eb90ef4adca8019b"
> > 	meta              = "master:a675b2c89e477af088faee9b3be96eae19a85f0b"
> > 	meta-oe           
> > 	meta-gnome        = "master:7f8915a6ecdd5c4b03c7e5b5f1fa903f89c2d560"
> > 
> 




