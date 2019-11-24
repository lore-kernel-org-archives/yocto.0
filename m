Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8069.1574590267444179612
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Nov 2019 02:11:07 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6862E00C4F; Sun, 24 Nov 2019 02:11:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [199.212.143.9 listed in list.dnswl.org]
Received: from k-wcms.com (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB70E008C8
	for <yocto@yoctoproject.org>; Sun, 24 Nov 2019 02:11:05 -0800 (PST)
Received: from [216.208.232.130] (port=33855 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1iYor8-0000IC-C9; Sun, 24 Nov 2019 05:11:03 -0500
Date: Sun, 24 Nov 2019 05:11:00 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Richard Purdie <richard.purdie@linuxfoundation.org>
cc: akuster808 <akuster808@gmail.com>, 
    Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] repost: how to create a SPDX "notice file" from a build?
In-Reply-To: <a126a3ecf7d93e638dc650ef92dfc2fdcebd221b.camel@linuxfoundation.org>
Message-ID: <alpine.LFD.2.21.1911240508040.6069@localhost.localdomain>
References: <alpine.LFD.2.21.1911220952340.7502@localhost.localdomain>  <alpine.LFD.2.21.1911221159250.14879@localhost.localdomain>  <02bee54a-3a3b-aac2-812d-50b5c395aaa3@gmail.com> <a126a3ecf7d93e638dc650ef92dfc2fdcebd221b.camel@linuxfoundation.org>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Sat, 23 Nov 2019, Richard Purdie wrote:

> On Fri, 2019-11-22 at 09:59 -0800, akuster808 wrote:
> >
> >
> > On 11/22/19 9:03 AM, rpjday@crashcourse.ca wrote:
> > > On Fri, 22 Nov 2019, Robert P. J. Day wrote:
> > >
> > >
> > > /////////// end /////////
> > >
> > >   i have absolutely no idea what to think of this, and am open to
> > > suggestions. does anyone have a working scenario to simply
> > > demonstrate
> > > the usage of spdx.bbclass?
> >
> > Would you mind opening a Yocto defect.
>
> That code hasn't been touched in a while and needs some serious
> attention. The underlying tools and processes have changed so much
> it may be a case of starting again and we should perhaps consider
> removing that class...

  as one more followup to this, first, i was asked by a colleague
about the possibility of generating an "SPDX notice file," and as i
don't know what the format of one of those things is, it's hard for me
to know how to answer. it seems clear at this point that spdx.bbclass
is not going to cut it, as richard points out.

  more to the point, has anyone had to do something that seems to
resemble what i was asked about? i'm open to suggestions as to what
*is* supported so i can try it out and hand it over and at least say,
"is this close to what you're looking for?"

  thanks for any pointers.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
