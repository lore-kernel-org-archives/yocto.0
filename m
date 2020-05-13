Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6399.1589377997651050207
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 06:53:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3781EE01A83; Wed, 13 May 2020 06:53:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B358E01A7F
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 06:53:16 -0700 (PDT)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:51304 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jYrow-007SOm-DE; Wed, 13 May 2020 09:53:15 -0400
Date: Wed, 13 May 2020 09:53:12 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
cc: Richard Leitner <richard.leitner@skidata.com>, 
    Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] what is the proper treatment of the "Unlicense" license?
In-Reply-To: <20200513134127.sprsrldj6nv2zg6o@qschulz>
Message-ID: <alpine.LFD.2.21.2005130945260.16212@localhost.localdomain>
References: <alpine.LFD.2.21.2005130622090.7657@localhost.localdomain> <20200513103944.5d7jjdnqs352htpy@qschulz> <20200513105030.GA225130@pcleri> <alpine.LFD.2.21.2005130719200.10141@localhost.localdomain> <20200513121940.d3qf2wrse7ph3anb@qschulz>
 <alpine.LFD.2.21.2005130839330.13342@localhost.localdomain> <20200513134127.sprsrldj6nv2zg6o@qschulz>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Wed, 13 May 2020, Quentin Schulz wrote:

> On Wed, May 13, 2020 at 08:40:28AM -0400, Robert P. J. Day wrote:
> > On Wed, 13 May 2020, Quentin Schulz wrote:
> >
> > > Hi Robert,
> > >
> > > On Wed, May 13, 2020 at 07:19:59AM -0400, Robert P. J. Day wrote:
> > > > On Wed, 13 May 2020, Richard Leitner wrote:
> > > >
> > > > > On Wed, May 13, 2020 at 12:39:44PM +0200, Quentin Schulz wrote:
> > > > > > On Wed, May 13, 2020 at 06:25:01AM -0400, Robert P. J. Day wrote:
> > > > >
> > > > > ...
> > > > >
> > > > > > If it's really widely used, maybe something to add to
> > > > > > openembedded-core/files/common-licenses/ ? So that you don't need any of
> > > > > > the suggested ways?
> > > > >
> > > > > +1 for adding Unlicense to openembedded-core's common-licenses
> > > >
> > > >   as long as this requires only adding an Unlicense file to that
> > > > directory, i can do that shortly.
> > >
> > > I'm not sure, but there might be a need to add it to
> > > SRC_DISTRIBUTE_LICENSES in
> > > openembedded-core/meta/conf/licenses.conf.
> >
> >   that variable is gone:
> >
> >   commit 64daaf29e2c12c8b587bafdebf9409433187ddf7
> >   Author: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> >   Date:   Wed Dec 11 17:48:14 2019 +0100
> >
> >     licenses.conf: Remove the SRC_DISTRIBUTE_LICENSES variable
> >
> >     The SRC_DISTRIBUTE_LICENSES variable and its static list of licenses
> >     has been replaced by AVAILABLE_LICENSES, which automatically contains
> >     all available licenses.
> >
> >
>
> That'll teach me to check in master instead of my release of Yocto :)

  it gets weirder ... the project i'm working with is based on morty
so that variable *would* still be relevant, but even adding
"Unlicense" to that variable didn't stop the offending recipe
from still generating a warning. so i thought, "i wonder if there are
any other recipes in the layers i'm working with that have
'Unlicense," and sure enough, there's one: pyelftools (created
in-house).

  so i added pyelftools to the image i'm building, but *that* recipe
*didn't* generate a warning, so now i'm thoroughly baffled. and,
finally, i decided to check the current state of pyelftools to see
what its licensing is, and in meta-python, we have the recipe
python3-pyelftools_0.25.bb, wherein we read:

LICENSE = "PD"

  argh ... and if one checks OE/meta/files/common-licenses, there is
indeed a license file named "PD" whose contents are simply:

This is a placeholder for the Public Domain License

so now i'm not sure if a "Unlicense" license file is redundant or
what.

  i'm confused.

rday
