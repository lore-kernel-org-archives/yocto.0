Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6259.1589377292338574024
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 06:41:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D55DBE01A83; Wed, 13 May 2020 06:41:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB13CE01A7F
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 06:41:30 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49MbRs1tPgz5tld;
	Wed, 13 May 2020 15:41:28 +0200 (CEST)
Date: Wed, 13 May 2020 15:41:27 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Richard Leitner <richard.leitner@skidata.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] what is the proper treatment of the "Unlicense" license?
Message-ID: <20200513134127.sprsrldj6nv2zg6o@qschulz>
References: <alpine.LFD.2.21.2005130622090.7657@localhost.localdomain>
 <20200513103944.5d7jjdnqs352htpy@qschulz>
 <20200513105030.GA225130@pcleri>
 <alpine.LFD.2.21.2005130719200.10141@localhost.localdomain>
 <20200513121940.d3qf2wrse7ph3anb@qschulz>
 <alpine.LFD.2.21.2005130839330.13342@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2005130839330.13342@localhost.localdomain>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2020 at 08:40:28AM -0400, Robert P. J. Day wrote:
> On Wed, 13 May 2020, Quentin Schulz wrote:
> 
> > Hi Robert,
> >
> > On Wed, May 13, 2020 at 07:19:59AM -0400, Robert P. J. Day wrote:
> > > On Wed, 13 May 2020, Richard Leitner wrote:
> > >
> > > > On Wed, May 13, 2020 at 12:39:44PM +0200, Quentin Schulz wrote:
> > > > > On Wed, May 13, 2020 at 06:25:01AM -0400, Robert P. J. Day wrote:
> > > >
> > > > ...
> > > >
> > > > > If it's really widely used, maybe something to add to
> > > > > openembedded-core/files/common-licenses/ ? So that you don't need any of
> > > > > the suggested ways?
> > > >
> > > > +1 for adding Unlicense to openembedded-core's common-licenses
> > >
> > >   as long as this requires only adding an Unlicense file to that
> > > directory, i can do that shortly.
> >
> > I'm not sure, but there might be a need to add it to
> > SRC_DISTRIBUTE_LICENSES in
> > openembedded-core/meta/conf/licenses.conf.
> 
>   that variable is gone:
> 
>   commit 64daaf29e2c12c8b587bafdebf9409433187ddf7
>   Author: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
>   Date:   Wed Dec 11 17:48:14 2019 +0100
> 
>     licenses.conf: Remove the SRC_DISTRIBUTE_LICENSES variable
> 
>     The SRC_DISTRIBUTE_LICENSES variable and its static list of licenses
>     has been replaced by AVAILABLE_LICENSES, which automatically contains
>     all available licenses.
> 
> 

That'll teach me to check in master instead of my release of Yocto :)

Quentin
