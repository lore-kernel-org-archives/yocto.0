Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5F12E00828; Wed,  1 Apr 2015 04:24:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06DB2E006E9
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 04:24:25 -0700 (PDT)
Received: from [70.30.87.145] (port=58395 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YdGl9-0006ZH-Be; Wed, 01 Apr 2015 07:24:35 -0400
Date: Wed, 1 Apr 2015 07:24:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <551BD3A5.8020807@windriver.com>
Message-ID: <alpine.LFD.2.11.1504010722160.13136@localhost>
References: <alpine.LFD.2.11.1503311824570.28969@localhost>
	<551B4086.8050200@windriver.com>
	<alpine.LFD.2.11.1504010306190.24212@localhost>
	<551BD3A5.8020807@windriver.com>
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
Subject: Re: "fatal: A branch named 'meta-orig' already exists."
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
X-List-Received-Date: Wed, 01 Apr 2015 11:24:33 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 1 Apr 2015, Bruce Ashfield wrote:

> On 2015-04-01 3:07 AM, Robert P. J. Day wrote:
> > On Tue, 31 Mar 2015, Bruce Ashfield wrote:
> >
> > > On 2015-03-31 6:26 PM, Robert P. J. Day wrote:
> > > >
> > > >     oh, what fresh hell is this?
> > > >
> > > > ... snip ...
> > > > NOTE: Preparing RunQueue
> > > > NOTE: Executing SetScene Tasks
> > > > NOTE: Executing RunQueue Tasks
> > > > ERROR: Function failed: do_validate_branches (log file is located at
> > > > /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524)
> > > > ERROR: Logfile of failure stored in:
> > > > /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524
> > > > Log data follows:
> > > > | DEBUG: Executing shell function do_validate_branches
> > > > | NOTE: Setting branch meta to
> > > > 9e70b482d3773abf92c9c5850e134cbca1d5651f
> > > > | fatal: A branch named 'meta-orig' already exists.
> > > >
> > > >     this is building core-image-minimal for qemux86, and i'm assuming
> > > > this is not fedora rawhide related.
> > >
> > > You've got a borked tree sitting in work-shared. If you clean-all
> > > and start again, does it show up ?
> > >
> > > If it repeats, then it very well could be the version of git in
> > > rawhide that is causing the issue.
> >
> >    i started with a fresh build, got a validate_branches error, and
> > used "bb" to dump the log file for that step:
>
> There's definitely something wrong or a strange integration between
> the version of git and that tree.
>
> Without a place to poke at this, there's not much I can say about
> actually changing that behaviour.
>
> All my local builds are green, all the yocto release builds are green,
> etc, so this is somehow specific to your build and location
> environment.
>
> This is on a fully up to date master ?

... snip ...

  yup. and i realize that fedora rawhide isn't supported here, but if
there's something funky about fedora rawhide that's causing this, best
to figure it out earlier than later. i'll try more testing later, but
i've redone this test three times, same result each time.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

