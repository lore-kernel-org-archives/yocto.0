Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [])
 by mx.groups.io with SMTP id smtpd.web11.21.1582148694607883439
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: <nil>, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CAD7E0165E; Wed, 19 Feb 2020 02:29:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75DCEE01589
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 02:29:12 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48Mv8k19dgz5tlH;
	Wed, 19 Feb 2020 11:29:10 +0100 (CET)
Date: Wed, 19 Feb 2020 11:29:08 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: JH <jupiter.hce@gmail.com>
Cc: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [OE-core] oe-core recipe for defining directories in /
Message-ID: <20200219102908.cpe7lxm3v64ff2hf@qschulz>
References: <CAA=hcWRUzFinBcNXf5EF+2mCwMhA5tz-vEFKubg6_QkwvxOEEg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWRUzFinBcNXf5EF+2mCwMhA5tz-vEFKubg6_QkwvxOEEg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi JH,

On Wed, Feb 19, 2020 at 09:12:08PM +1100, JH wrote:
> Hi,
> 
> Which recipe defines all directories in "/"? I need to make a bbapand
> to add directories to /.
> 

None. Or all of them, depends on how one sees it.

You just create a directory in do_install of a recipe.

You then make sure this directory is part of a package by checking it's
in one of the recipe's generated packages's FILES_<PACKAGE>.

Quentin
