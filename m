Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6603.1589378653601347375
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 07:04:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3710BE01A83; Wed, 13 May 2020 07:04:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F30B7E01A7F
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 07:04:11 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49Mby23C9Nz5tlD;
	Wed, 13 May 2020 16:04:10 +0200 (CEST)
Date: Wed, 13 May 2020 16:04:09 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Richard Leitner <richard.leitner@skidata.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] what is the proper treatment of the "Unlicense" license?
Message-ID: <20200513140409.jclu6q4rhbosnejf@qschulz>
References: <alpine.LFD.2.21.2005130622090.7657@localhost.localdomain>
 <20200513103944.5d7jjdnqs352htpy@qschulz>
 <20200513105030.GA225130@pcleri>
 <alpine.LFD.2.21.2005130719200.10141@localhost.localdomain>
 <20200513121940.d3qf2wrse7ph3anb@qschulz>
 <alpine.LFD.2.21.2005130839330.13342@localhost.localdomain>
 <20200513134127.sprsrldj6nv2zg6o@qschulz>
 <alpine.LFD.2.21.2005130945260.16212@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2005130945260.16212@localhost.localdomain>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2020 at 09:53:12AM -0400, Robert P. J. Day wrote:
[...]
> 
>   it gets weirder ... the project i'm working with is based on morty
> so that variable *would* still be relevant, but even adding
> "Unlicense" to that variable didn't stop the offending recipe
> from still generating a warning. so i thought, "i wonder if there are
> any other recipes in the layers i'm working with that have
> 'Unlicense," and sure enough, there's one: pyelftools (created
> in-house).
> 
>   so i added pyelftools to the image i'm building, but *that* recipe
> *didn't* generate a warning, so now i'm thoroughly baffled. and,
> finally, i decided to check the current state of pyelftools to see
> what its licensing is, and in meta-python, we have the recipe
> python3-pyelftools_0.25.bb, wherein we read:
> 
> LICENSE = "PD"
> 
>   argh ... and if one checks OE/meta/files/common-licenses, there is
> indeed a license file named "PD" whose contents are simply:
> 
> This is a placeholder for the Public Domain License
> 
> so now i'm not sure if a "Unlicense" license file is redundant or
> what.
> 

If Unlicense and Public Domain (PD) were actual synonyms we could put
them into the SPDXLICENSEMAP in
openembedded-core/meta/conf/licenses.conf, but according to
https://unlicense.org/ lists there should be a difference between both.

It looks like it's decently used though as GitHub reported that 2% of
the projects they host are Unlicense-licensed[1] which is more than
BSD-2 or [AL]GPLv3!

[1] https://github.blog/2015-03-09-open-source-license-usage-on-github-com/

>   i'm confused.
> 

Since we have [AL]GPLv3 "support", I'd say Unlicense has its place as
well.

Quentin
