Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1220.1588168206776646695
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Apr 2020 06:50:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FADCE019FE; Wed, 29 Apr 2020 06:50:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.14 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 551 seconds by postgrey-1.32 at yocto-www; Wed, 29 Apr 2020 06:50:04 PDT
Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C989CE019E9
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2020 06:50:04 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49C05c0KDQz5tn1;
	Wed, 29 Apr 2020 15:40:51 +0200 (CEST)
Date: Wed, 29 Apr 2020 15:40:50 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [yocto] python3-misc-native issue
Message-ID: <20200429134050.dtyozdpv2hpxerm3@qschulz>
References: <CAAfyv37pt_QP_kGSNfAN=BnR0_hWbt_e1Bh_TAZv=-d=9CDB0w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAfyv37pt_QP_kGSNfAN=BnR0_hWbt_e1Bh_TAZv=-d=9CDB0w@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Marek,

On Wed, Apr 29, 2020 at 02:40:57PM +0200, Marek Belisko wrote:
> Hi,
> 
> I'm using poky zeus release and need to add python3-werkzeug recipe. I
> extend recipe with bbappend with BBLACCEXTEND = "native nativesdk".
> But when added that it complains about :
> 
> ERROR: Nothing RPROVIDES 'python3-misc-native'
> 

This seems wrong. **RDEPENDS** (dependency at runtime, on the target) on
a **native** (for the host only) package does not make sense to me.

I think we need more context (what are you trying to do, what is the
encountered issue, ...) and log before we can help a bit more.

Quentin
