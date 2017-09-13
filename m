Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E160BE00C62; Wed, 13 Sep 2017 04:44:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.44 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D4CE00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 04:43:59 -0700 (PDT)
Received: by mail-lf0-f44.google.com with SMTP id m199so33441903lfe.3
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 04:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=j3CANkN16XuAmglH2+IZrcRWbD23NU8tPmBMURMX/u4=;
	b=qCEgDnsgVfO2C6MsQkyiJJ2hG7gwOx44tph75TQedVviQa/OYNliWgbE2Xc2QwG5s8
	eSVK0j1kDAzx5hVsz1G28qEv+6MtCp0Mm4VOSSr5gOhoO6sQRpVkxpb4d9q4Wx+Jb56c
	oiHM0EC18EfQnsJfaV1E8KJsL+l7/+saSudk3R2WTef3ZUUUoXAQ5TZCrxMbl0SRRh8/
	9iQhcYP9yptd1Jt1JrMmoFHpRxwx4rxIAYIUCK532DU6TxHmoMKBxsi8FumpT8VgX9Z2
	Gr3KfmQfuxhqO098oayWMyed+Eq0QM/fx/XiaqIEMphEGBhoN5ODlB6fvBO9mKdw87HA
	lcTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:organization:user-agent;
	bh=j3CANkN16XuAmglH2+IZrcRWbD23NU8tPmBMURMX/u4=;
	b=dU6ObftklrDP9hxERcBh+Tg//E1Zt9drrrHvVyhPvOnS6tpMWKu4bUP0CVaDh8YadY
	Nj7eSoo7nD6g1PomvRdSOYR4/2cm/c7EJ0h98d9LMSax1Kmz9849Qu/7hF/37vx4+Hyw
	a1RxhDtWUe3UEZ4WS4yQPEXC9oB/HdnFuVnNxqWomH5DTNKkHR0FtrnbRm7wdkD0SgXi
	hXPB5Z3VQSYMu75GVPXKQV2GGjcHretlXJmXg+w23BSvZ6ib6rH+CYS6WdvLNGUpo/56
	vrrQx9ORAoaE6BRuwhv2XZVozosslHvSdQ5xgy/5l74kg+1hMODYFLzDSPYYigJDOrz2
	hvVQ==
X-Gm-Message-State: AHPjjUjNgjj8D/Z0SKchAQvYjkUalq8CRwp13xAJ+NGESJEeopir1HNp
	WhDIJD3YtnND8+7gcZOglg==
X-Google-Smtp-Source: AOwi7QB9kMaUdJq4PYVD8oqOfQAYvUcc/8ObbxJWBWHqLSLhlqGP59b4tvGSMvTbUCzgJ/lfVOZT9Q==
X-Received: by 10.25.147.207 with SMTP id w76mr7663891lfk.169.1505303038836;
	Wed, 13 Sep 2017 04:43:58 -0700 (PDT)
Received: from ad.chargestorm.se (h83-209-191-235.cust.se.alltele.net.
	[83.209.191.235])
	by smtp.gmail.com with ESMTPSA id 72sm2914298lje.96.2017.09.13.04.43.57
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 13 Sep 2017 04:43:58 -0700 (PDT)
Date: Wed, 13 Sep 2017 13:43:56 +0200
From: Anders Darander <anders@chargestorm.se>
To: Olaf Mandel <o.mandel@menlosystems.com>
Message-ID: <20170913114356.rpb76i365g5r2vec@ad.chargestorm.se>
Mail-Followup-To: Olaf Mandel <o.mandel@menlosystems.com>,
	yocto@yoctoproject.org
References: <264515b7-d412-2188-ad66-003c0e3d0dd8@menlosystems.com>
MIME-Version: 1.0
In-Reply-To: <264515b7-d412-2188-ad66-003c0e3d0dd8@menlosystems.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20170609 (1.8.3)
Cc: yocto@yoctoproject.org
Subject: Re: Question about populate_sdk
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
X-List-Received-Date: Wed, 13 Sep 2017 11:44:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi, 

* Olaf Mandel <o.mandel@menlosystems.com> [170913 13:16]:

> I hope this is the right place to ask this: I wanted to generate an SDK
> bundle to work on an applications code outside of the bitbake
> environment (also without devtool, if possible). So I selected an image
> containing the application and ran the populate_sdk task of that image.
> But the generated SDK is missing some dependencies of the application.

> Is this expected? Or am I doing something wrong?

No, all the dependencies should be part of the generated SDK.

I've seen this, and unfortunately, not had time to debug it, nor create
a small test example. And when I took time to make a small test, I
didn't immediately find theh issue...

See Yocto #11724, at https://bugzilla.yoctoproject.org/show_bug.cgi?id=11724

> I made a minimal demo layer that shows the problem (see below for the 7
> files making up the demo). I ran "bitbake -c populate_sdk test-image"
> and I expected the file usr/lib/test-lib to be present in the SDK, but
> it is not.

Ah, a small test example? Perfect!
Could you add it the bug above? It would likely make it easier to debug.

Cheers
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

