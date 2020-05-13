Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4709.1589372386693992909
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 05:19:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1227E01B4B; Wed, 13 May 2020 05:19:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4268E01B0B
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 05:19:42 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49MYdT5z9mz5tlN;
	Wed, 13 May 2020 14:19:41 +0200 (CEST)
Date: Wed, 13 May 2020 14:19:40 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Richard Leitner <richard.leitner@skidata.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] what is the proper treatment of the "Unlicense" license?
Message-ID: <20200513121940.d3qf2wrse7ph3anb@qschulz>
References: <alpine.LFD.2.21.2005130622090.7657@localhost.localdomain>
 <20200513103944.5d7jjdnqs352htpy@qschulz>
 <20200513105030.GA225130@pcleri>
 <alpine.LFD.2.21.2005130719200.10141@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2005130719200.10141@localhost.localdomain>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robert,

On Wed, May 13, 2020 at 07:19:59AM -0400, Robert P. J. Day wrote:
> On Wed, 13 May 2020, Richard Leitner wrote:
> 
> > On Wed, May 13, 2020 at 12:39:44PM +0200, Quentin Schulz wrote:
> > > On Wed, May 13, 2020 at 06:25:01AM -0400, Robert P. J. Day wrote:
> >
> > ...
> >
> > > If it's really widely used, maybe something to add to
> > > openembedded-core/files/common-licenses/ ? So that you don't need any of
> > > the suggested ways?
> >
> > +1 for adding Unlicense to openembedded-core's common-licenses
> 
>   as long as this requires only adding an Unlicense file to that
> directory, i can do that shortly.
> 

I'm not sure, but there might be a need to add it to SRC_DISTRIBUTE_LICENSES
in openembedded-core/meta/conf/licenses.conf.

Quentin
