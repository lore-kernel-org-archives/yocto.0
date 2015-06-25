Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCE4CE00A38; Thu, 25 Jun 2015 09:43:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76AB1E00A07
	for <yocto@yoctoproject.org>; Thu, 25 Jun 2015 09:43:51 -0700 (PDT)
Received: from [99.240.204.5] (port=41659 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Z8AGH-0004eI-1B; Thu, 25 Jun 2015 12:44:25 -0400
Date: Thu, 25 Jun 2015 12:43:47 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Bryan Evenson <bevenson@melinkcorp.com>
In-Reply-To: <BN3PR0501MB10900D0C13CEEC030AC648C5BBAE0@BN3PR0501MB1090.namprd05.prod.outlook.com>
Message-ID: <alpine.LFD.2.11.1506251241110.4028@localhost>
References: <alpine.LFD.2.11.1506250625460.5572@localhost>
	<BN3PR0501MB10900D0C13CEEC030AC648C5BBAE0@BN3PR0501MB1090.namprd05.prod.outlook.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a doc section on yocto distribution creation/versioning?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 25 Jun 2015 16:43:55 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 25 Jun 2015, Bryan Evenson wrote:

> Robert,
>
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> > Sent: Thursday, June 25, 2015 6:29 AM
> > To: Yocto discussion list
> > Subject: [yocto] is there a doc section on yocto distribution
> > creation/versioning?
> >
> >
> >   is there a recommended workflow for tagging/versioning one's own builds
> > from yocto? that is, given the collection of layers that might go into one's
> > local builds, in order to properly version your builds for release, one would
> > have to keep track of not only the checkouts of the various layers, but any
> > local fixes added to them, combined with all of the local conf settings used
> > for that build, and so on.
> >
> >   is there a writeup on this?
>
> If there is a writeup on this I have not seen it.  I've developed a
> workflow on my own for our setup that works okay.  Whether it'd be a
> recommended workflow or not is a different question.

  ... snip ...

  backing up just a bit, i'm *assuming* this is a reasonable question
to ask, yes? if one wants to build for a custom product, one assumes
that product will have versioned releases and bug-fix releases, all
possibly based on some combination of different YP layers, each which
might have local enhancements, and all wrapped up with custom config
files. so defining a workflow to handle all this seems like a
reasonable thing to ask for. i'm surprised it hasn't already been
written up somewhere.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

