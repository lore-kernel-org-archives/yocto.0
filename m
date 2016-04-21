Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1DB9E00D6C; Thu, 21 Apr 2016 02:03:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 217 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Apr 2016 02:03:07 PDT
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5813BE00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 02:03:07 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160421085922602_0685;
	Thu, 21 Apr 2016 01:59:22 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [99.240.204.5] (port=49122 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1atATh-0001x5-6f; Thu, 21 Apr 2016 05:00:49 -0400
Date: Thu, 21 Apr 2016 04:59:12 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4Pga=V5+dozKb4tiZXTmBVPSZ3z5tw+zo_4kgssAy1kMQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1604210456050.10388@localhost.localdomain>
References: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
	<20160420180421.GD2561@jama>
	<alpine.LFD.2.20.1604201418060.31154@localhost.localdomain>
	<CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
	<alpine.LFD.2.20.1604201830390.30638@localhost.localdomain>
	<CADkTA4Pga=V5+dozKb4tiZXTmBVPSZ3z5tw+zo_4kgssAy1kMQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 21 Apr 2016 09:03:10 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-1170277421-1461229155=:10388"

--8323328-1170277421-1461229155=:10388
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 20 Apr 2016, Bruce Ashfield wrote:

>
>
> On Wed, Apr 20, 2016 at 6:37 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>       On Wed, 20 Apr 2016, Bruce Ashfield wrote:
>
>       > You haven't supplied your SRC_URI in the question ... what does it
>       > look like ?
>       >
>       > It has no relation to the SRC_URI, probably a run of the mill bug in
>       > the processing code. I'd suggest taking it up with Wind River
>       > support.
>       >
>       > Alternatively, if you have this somewhere that I clone and launch a
>       > test build, I can help you out .. but I won't be able to easily
>       > reproduce that situation from scratch.
>
>         ok, i found what appears to be a cheap workaround for this, and i'm
>       curious if this makes any sense.  recall original kernel recipe
>       directory structure:
>
>         linux-windriver/
>           uio.*
>           ssd.*
>           mxeiii/
>             mm.*
>
>       when SRC_URI mentioned only that first-level stuff (uio, ssd), then
>       the configure step worked fine. but as soon as i added the mm.scc file
>       to SRC_URI, it just seems that any descent into a lower-level
>       directory based on OVERRIDES totally bones the search process. so, i
>       wondered, how can i work around this?
>
>         oh, wait, no problem. see, all target boards are powerpc, so
>       "powerpc" is one of the possible OVERRIDES. obviously, there is no
>       *actual* value in using an OVERRIDE for which *every* *single* *board*
>       is compatible ... oh, wait, there is.
>
>         so i restructured:
>
>         linux-windriver/
>           mxeiii/
>             mm.*
>           powerpc/
>             uio.*
>             ssd.*
>
>       it looks idiotic to take the uio.* and ssd.* content, which should be
>       generic, and deliberately put it in a subdirectory, unless that
>       subdirectory represents an OVERRIDE which matches every board and, ta
>       da, solves the problem.
>
>         i need a drink.
>
>
> Following up to the list. I was able to take a reproducer for this
> and indeed find some *really* old code that didn't handle a trailing
> / properly. The end result was the inability to find the
> configuration fragments that were not in subdirectories.

  just to be clear, there was no problem finding config fragments that
were not in subdirectories until i somehow triggered the bug by
*adding* an item that *was* in a subdirectory, and that's when things
went to hell.

  so the "bug" apparently never manifested itself until i triggered it
by doing something else. does that sound about right?

rday

--8323328-1170277421-1461229155=:10388--
