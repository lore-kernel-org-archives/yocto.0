Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9349.1574760598646747895
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2019 01:29:59 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 239B2E00E8F; Tue, 26 Nov 2019 01:29:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.16 listed in list.dnswl.org]
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 636D3E00E46
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2019 01:29:57 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47Mdsb6NCjz5tlX;
	Tue, 26 Nov 2019 10:29:55 +0100 (CET)
Date: Tue, 26 Nov 2019 10:29:54 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org, andriy.danylovskyy@streamunlimited.com,
	radek.dostal@streamunlimited.com
Subject: Re: [yocto] [warrior] [meta-qt4] recipes-qt4: qt4-embedded: fix build on GCC v8
Message-ID: <20191126092954.b6radogeclqwnvto@qschulz>
References: <20191119160617.8085-1-quentin.schulz@streamunlimited.com>
 <2328670.R456RZBiVa@shodan>
MIME-Version: 1.0
In-Reply-To: <2328670.R456RZBiVa@shodan>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Paul,

On Tue, Nov 26, 2019 at 03:44:40PM +1300, Paul Eggleton wrote:
> Hi Quentin
> 
> On Wednesday, 20 November 2019 5:06:17 AM NZDT Quentin Schulz wrote:
> > At least since gcc v8, source code with asm volatile won't compile
> > anymore.
> > 
> > The volatile qualifier anyway is a no-op since asm blocks are implicitly
> > volatile as written in the documentation[1].
> > 
> > Let's get rid of this redundant qualifier so we can build with newer
> > GCCs.
> 
> So I tested this and the name of the patch doesn't match up with the change to 
> SRC_URI. I have however gone ahead and fixed it and merged it to warrior, but 
> if you could please ensure you test future patches that would be much 
> appreciated.
> 

*sigh* Guilty of "last minute renaming and not retesting".

Thanks for taking care of it, will make sure I'll be more careful before
sending patches.

Quentin
