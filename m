Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E2D1E00EBC; Wed, 20 Apr 2016 15:38:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29BE7E00BFD
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 15:37:59 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20160420223756875_0486;
	Wed, 20 Apr 2016 22:37:56 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [99.240.204.5] (port=44996 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1at0mI-0004WS-Fa; Wed, 20 Apr 2016 18:39:22 -0400
Date: Wed, 20 Apr 2016 18:37:48 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1604201830390.30638@localhost.localdomain>
References: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
	<20160420180421.GD2561@jama>
	<alpine.LFD.2.20.1604201418060.31154@localhost.localdomain>
	<CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a known issue with how SRC_URI uses OVERRIDES to locate .scc files?
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
X-List-Received-Date: Wed, 20 Apr 2016 22:38:05 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 20 Apr 2016, Bruce Ashfield wrote:

> You haven't supplied your SRC_URI in the question ... what does it
> look like ?
>
> It has no relation to the SRC_URI, probably a run of the mill bug in
> the processing code. I'd suggest taking it up with Wind River
> support.
>
> Alternatively, if you have this somewhere that I clone and launch a
> test build, I can help you out .. but I won't be able to easily
> reproduce that situation from scratch.

  ok, i found what appears to be a cheap workaround for this, and i'm
curious if this makes any sense.  recall original kernel recipe
directory structure:

  linux-windriver/
    uio.*
    ssd.*
    mxeiii/
      mm.*

when SRC_URI mentioned only that first-level stuff (uio, ssd), then
the configure step worked fine. but as soon as i added the mm.scc file
to SRC_URI, it just seems that any descent into a lower-level
directory based on OVERRIDES totally bones the search process. so, i
wondered, how can i work around this?

  oh, wait, no problem. see, all target boards are powerpc, so
"powerpc" is one of the possible OVERRIDES. obviously, there is no
*actual* value in using an OVERRIDE for which *every* *single* *board*
is compatible ... oh, wait, there is.

  so i restructured:

  linux-windriver/
    mxeiii/
      mm.*
    powerpc/
      uio.*
      ssd.*

it looks idiotic to take the uio.* and ssd.* content, which should be
generic, and deliberately put it in a subdirectory, unless that
subdirectory represents an OVERRIDE which matches every board and, ta
da, solves the problem.

  i need a drink.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



