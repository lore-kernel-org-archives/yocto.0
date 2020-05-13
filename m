Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.3307.1589366391481727404
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 03:39:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D11FFE01B4C; Wed, 13 May 2020 03:39:50 -0700 (PDT)
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
Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E835BE01B0B
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 03:39:48 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49MWQB63vZz5tlF;
	Wed, 13 May 2020 12:39:46 +0200 (CEST)
Date: Wed, 13 May 2020 12:39:44 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] what is the proper treatment of the "Unlicense" license?
Message-ID: <20200513103944.5d7jjdnqs352htpy@qschulz>
References: <alpine.LFD.2.21.2005130622090.7657@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2005130622090.7657@localhost.localdomain>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robert,

On Wed, May 13, 2020 at 06:25:01AM -0400, Robert P. J. Day wrote:
> 
>   colleague added a new recipe to a build, got a warning "The license
> listed Unlicense was not in the licenses collected for recipe
> python-filelock" and, sure enough, that source was released under the
> "Unlicense" which i had never heard of:
> 
> https://github.com/benediktschmitt/py-filelock/blob/master/LICENSE
> 
>   what is the standard strategy for dealing with that? should i just
> whitelist that license? has anyone else run into this "Unlicense"
> license?
> 

You can add a license to your layer by doing the following in
conf/layer.conf:
LICENSE_PATH += "${LAYERDIR}/licenses"

and in there you put the Unlicense file named exactly the same with the
correct content. That's one way.

The other is to use NO_GENERIC_LICENSE[Unlicense] = "/path/to/Unlicense"
in the recipe.

If it's really widely used, maybe something to add to
openembedded-core/files/common-licenses/ ? So that you don't need any of
the suggested ways?

Quentin
