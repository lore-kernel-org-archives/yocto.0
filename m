Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 587A3E009BB; Thu, 14 May 2015 09:48:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAA4CE00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 09:48:54 -0700 (PDT)
Received: from [99.240.204.5] (port=51762 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YswK0-0001fA-3S; Thu, 14 May 2015 12:49:20 -0400
Date: Thu, 14 May 2015 12:48:48 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1622249.AcBk4fCPKl@peggleto-mobl.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1505141248110.4139@localhost>
References: <641241749.3202512.1431617240967.JavaMail.yahoo@mail.yahoo.com>
	<alpine.LFD.2.11.1505141217350.3849@localhost>
	<F14AEF751653024287138321000C846AF4821E78@BOS-DAG1.zone1.flir.net>
	<1622249.AcBk4fCPKl@peggleto-mobl.ger.corp.intel.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: recipe removing (some)contents of /etc
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
X-List-Received-Date: Thu, 14 May 2015 16:48:57 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1420414909-1431622131=:4139"

--8323328-1420414909-1431622131=:4139
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Thu, 14 May 2015, Paul Eggleton wrote:

> On Thursday 14 May 2015 16:34:56 Smith, Virgil wrote:
> > > > Change
> > > > IMAGE_INSTALL += “canlogger”
> > > > to
> > > > IMAGE_INSTALL_append = “ canlogger”
> > > > or possibly better
> > > > EXTRA_IMAGE_INSTALL_append = “ canlogger”
> > >
> > >
> > >
> > >   if you're putting this in local.conf, i'm pretty sure the preferred
> > >   syntax is just:
> > EXTRA_IMAGE_INSTALL = "canlogger"
> >
> >
> > Yes, I think rday is correct and the intended purpose of EXTRA_IMAGE_INSTALL
> > is to be used entirely from local.conf and thereby avoid the += vs ?= vs
> > _append issues I mentioned.  At least EXTRA_IMAGE_FEATURES is listed this
> > way in the Yocto manual.
>
> There's no such thing as EXTRA_IMAGE_INSTALL, not in the core system anyway.
> There is CORE_IMAGE_EXTRA_INSTALL though which you can add to with += (since
> there aren't any default items in it, unlike IMAGE_INSTALL).

  ack, you're right, i was thinking of EXTRA_IMAGE_FEATURES, i think.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1420414909-1431622131=:4139--
