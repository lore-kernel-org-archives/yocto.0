Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A7D7E011ED
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 09:53:03 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:43252 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TdPLC-0007mK-GX; Tue, 27 Nov 2012 12:53:02 -0500
Date: Tue, 27 Nov 2012 12:52:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Trevor Woerner <twoerner@gmail.com>
In-Reply-To: <CAHUNapRCGZMs-=eorNUfrjeKikyDW-O0K7GfREOHzs86B6pxEw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1211271251090.7125@oneiric>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
	<CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
	<20121127113952.06050a25@eb-e6520>
	<CAHUNapSULHA0kmWi9Qb61kxRJsuvGdbTjm9Wvktxc=PmGfVOSg@mail.gmail.com>
	<20121127161136.GA94097@gmail.com>
	<alpine.DEB.2.02.1211271203380.4220@oneiric>
	<CAHUNapRCGZMs-=eorNUfrjeKikyDW-O0K7GfREOHzs86B6pxEw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 27 Nov 2012 17:53:03 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 27 Nov 2012, Trevor Woerner wrote:

> On Tue, Nov 27, 2012 at 12:24 PM, Robert P. J. Day
> <rpjday@crashcourse.ca> wrote:
> > and ran the fetchall again.  this time, no strace source was fetched,
> > so it looks like an issue with simple fetching.
>
> Thank you for your testing and observations.
>
> But I'd like to point out that in my tests, all the relevant files
> have already been fetched. My DL_DIR already contains everything to
> do with bash, trace-cmd, and various others that I have been
> testing. The errors I am getting are not fetching-related errors,
> but are errors because do_rootfs can't find any packages (since
> packages relating to the recently-appended recipes have not been
> built).
>
> Somewhere in the guts of bitbake a modified IMAGE_INSTALL_append
> variable is not being noticed; packages aren't being created (as
> I've noticed) and sources aren't being downloaded (as you have just
> noticed). But somehow do_rootfs is noticing the change and
> complaining it can't find the necessary packages.

  ah, quite so ... but it's still useful to note that the problem
extends even to the act of fetching.  weird.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

