Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.52290.1590504145409988802
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 May 2020 07:42:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1A78E01B88; Tue, 26 May 2020 07:42:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.14 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0847BE01B6C
	for <yocto@yoctoproject.org>; Tue, 26 May 2020 07:42:20 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49WcB31yYSz5tlW;
	Tue, 26 May 2020 16:42:19 +0200 (CEST)
Date: Tue, 26 May 2020 16:42:18 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: ayoub.zaki@googlemail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto] Overwrite a bblcass globally
Message-ID: <20200526144218.xj6iwwf5gnewn5ei@qschulz>
References: <CA+-BmJZRJ_d+AsrWoZpsu4+ds3ug4BbhFWJ-09tL0rheq0zgcw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+-BmJZRJ_d+AsrWoZpsu4+ds3ug4BbhFWJ-09tL0rheq0zgcw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Ayoub,

On Tue, May 26, 2020 at 04:36:13PM +0200, Ayoub Zaki via lists.yoctoproject.org wrote:
> Hi,
> 
> I would like to make changes on systemd.bblcass in my layer.
> 
> I can create new one e.g my-systemd.bbclass to overwrite the default one
> but this will not work since I want that ALL recipes in all layers I'm
> using to make usage of it.
> 
> are there ways to achieve this?
> 

BBPATH[1] is what's used to locate bbclasses. It's defined in your
conf/layer.conf.

You can either make sure your layer is parsed before the one having the
original systemd.bbclass (in BBLAYERS of conf/bblayers.conf) or prepend
to BBPATH instead of appending.

Although... It's usually bad practice because it means that if I were to use
two layers doing the same thing (overriding the same bbclass), the behavior
is kind of undefined depending on which order they are parsed.

Ideally, you should contribute back the modifications to upstream
systemd.bbclass, that way, no need to duplicate it and override it from
somewhere else.

[1] https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-BBPATH

Cheers,
Quentin
