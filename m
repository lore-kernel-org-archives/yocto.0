Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDC7AE00DE4; Tue, 15 Aug 2017 03:09:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.49 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1E11E00851
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 03:09:09 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id t128so2015108lff.2
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 03:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=wPQ9Wbr49n3SiXg5rDtKodrMz86odxisDVc0RLubLf4=;
	b=G6tui5HBvK5E93q+rrclVj7wRzmbCb1gWI+6+DsYdIDbNOZUib4RO8suBoH64KtT9y
	rqmBr88ENhMQc8EyojYqDIqf6JrcQwJWU3ePF5YwD3hztuf2eeU6trI4potosgGvYxHS
	sID1io+irG89bP/NRfZY81yye9HvtrdBQWCrIB21b9IBLpZ2m9T7uQ/R0JEeckPfBcvi
	Of7HInbh0fA21coO1xY/rcI+FM8Q7fs0YXV6cbLqwTQzhBzYOh39/TFr/5Woc5kLG4rr
	UWoSNjGzcKk6g608VSa/Q0J0zsRreYXErZRfVqxvfehyJbJ+i8KWxw8cGDMWRO4Z0/P+
	PTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=wPQ9Wbr49n3SiXg5rDtKodrMz86odxisDVc0RLubLf4=;
	b=fUYsZVTsSHCT/9hc2uAWEs+laK+BPO9qt6ygKdm4L7UuFbJTpDGgAIHXpVNuw6L947
	PrM/M7iig6ZhcuK0m+5zXo9Df0qV6dEHGdWSEqjjiF2TKVB9S2JP4efBD424LXrDUdN8
	ZGiXwWIeBz5uy00knF4Xb9MPd9SRCjuXsPPuMA+XcvJzutcNUAVo7HaOmP81WvNesvXD
	AJFIu80ujzzwSYV7g6GsdohiwNfFStkMwvTJsk4xo/1pCIalo+zcwUMV409HKKC4hN+C
	sbti12QdJpv2NortvXUmr1MNXP9XaUQNywj9zKoVsz/lcNNt3ieLk4+vF9GhCQr27SgQ
	ApAA==
X-Gm-Message-State: AHYfb5g9byqdNhaivZvlpMAGpass4KDmrSXPYK7Zz3ni+RUEhfQCw948
	D0UKvlBe026qzBc28dHBww==
X-Received: by 10.25.115.19 with SMTP id o19mr7941089lfc.145.1502791748261;
	Tue, 15 Aug 2017 03:09:08 -0700 (PDT)
Received: from ad.chargestorm.se (h83-209-191-235.cust.se.alltele.net.
	[83.209.191.235])
	by smtp.gmail.com with ESMTPSA id s2sm1436052ljd.62.2017.08.15.03.09.07
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 15 Aug 2017 03:09:07 -0700 (PDT)
Date: Tue, 15 Aug 2017 12:09:05 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20170815100905.e5ssrq5kpoljbalt@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <0649cefe-8c90-7268-f363-10ea09f6cd74@gmail.com>
	<CAMKF1srETgqU+m-X99t7ZXAFLTezSX0cbfxVKs7K7Fr8UVBLwA@mail.gmail.com>
	<255b8a2d-8036-76cf-327b-a3128b83ba51@gmail.com>
MIME-Version: 1.0
In-Reply-To: <255b8a2d-8036-76cf-327b-a3128b83ba51@gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: ERROR: gcc-source-6.3.0-6.3.0-r0 do_fetch: Fetcher failure for URL: 'file://0002-uclibc-conf.patch'. Unable to fetch URL from any source.
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
X-List-Received-Date: Tue, 15 Aug 2017 10:09:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Riko <antonius.riko@gmail.com> [170815 07:42]:

> Do you mean this one ?

Yes.

> Build Configuration:
> BB_VERSION        = "1.34.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beaglebone"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.3.1"
> TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa8"
> TARGET_FPU        = "hard"
> meta

^ OE-Core from Poky repo.

> meta-poky
> meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"


> meta              = "master:5a25ed1071f0d9b7d95edcc2b5b4545f960d5f95"

^ OE-Core from a manual checkout?

I see two possible issues, you have multiple copies of oe-core in your
active bblayers.conf.

Remove the 2nd one, if you want to use Poky from the Pyro branch.

> meta-oe
> meta-xfce
> meta-gnome
> meta-python
> meta-multimedia
> Ameta-networking   = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"

If you use the Pyro branch above, change these layers to also use the
pyro branch.

Do not mix release branches unless you know what you do...

Cheers,
Anders

