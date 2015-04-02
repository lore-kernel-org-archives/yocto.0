Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1A1EE00932; Thu,  2 Apr 2015 06:12:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78B13E008EC
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 06:12:12 -0700 (PDT)
Received: from [70.30.87.145] (port=53582 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Ydev1-0000pB-3g; Thu, 02 Apr 2015 09:12:23 -0400
Date: Thu, 2 Apr 2015 09:12:07 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <8AC664C9-4035-4A3C-9AD2-A9D442C6E6EF@gmail.com>
Message-ID: <alpine.LFD.2.11.1504020908350.5421@localhost>
References: <alpine.LFD.2.11.1503311547440.7527@localhost>
	<8AC664C9-4035-4A3C-9AD2-A9D442C6E6EF@gmail.com>
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
Subject: Re: what is the proper way to build with fedora rawhide/gcc-5.0?
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
X-List-Received-Date: Thu, 02 Apr 2015 13:12:16 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-2034513355-1427980331=:5421"

--8323328-2034513355-1427980331=:5421
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Tue, 31 Mar 2015, Khem Raj wrote:

>
> > On Mar 31, 2015, at 12:54 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> >
> >  i asked about this a few weeks ago, finally getting back to it ...
> > for better or worse, i'm running fedora rawhide, updated to the point
> > where i have gcc-5.0.0:
> >
> > $ gcc --version
> > gcc (GCC) 5.0.0 20150208 (Red Hat 5.0.0-0.10)
> > Copyright (C) 2015 Free Software Foundation, Inc.
> > This is free software; see the source for copying conditions.  There is NO
> > warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> > $
> >
> > which causes a number of build issues trying to build for something as
> > simple as qemux86.
> >
> >  first, there is a linemarkers issue with gcc-5.0 that i got around
> > by adding to local.conf:
> >
> >  CPPFLAGS_append= " -P”
>
> This should not be required. Can you post the failing package with error details
> it should be fixed.
>
> >
> > and there were two native build issues due to gcc-5.0 being far
> > pickier with warnings that i sidestepped with the cheap hack:
> >
> >  ASSUME_PROVIDED += "elfutils-native"
> >  ASSUME_PROVIDED += "binutils-native”
>
> There is 2.25 update available on my contrib tree.
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/master
> should help with binutils.

  ok, i finally have a full build for qemux86/core-image-minimal.
things i did:

* wiped the old kernel tarball from my local source mirror -- not
  sure why that fixed the kernel issue but a fresh download seems
  to have done the trick.
* removed the above CPPFLAGS_append line from local.conf
* used khem's ncurses recipe
* left the two ASSUME_PROVIDED lines where they were, out of sheer
  laziness since they seem to work.

  enough excitement for one day ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-2034513355-1427980331=:5421--
