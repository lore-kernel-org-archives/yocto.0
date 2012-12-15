Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9556E003DA
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 03:04:53 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:58174 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TjpY4-0004hB-J6; Sat, 15 Dec 2012 06:04:52 -0500
Date: Sat, 15 Dec 2012 06:04:45 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tim Bird <tim.bird@am.sony.com>
In-Reply-To: <50CBA44C.4030009@am.sony.com>
Message-ID: <alpine.DEB.2.02.1212150559190.2317@oneiric>
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
	<50CB9004.60908@windriver.com> <50CBA44C.4030009@am.sony.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: What is GMAE?
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
X-List-Received-Date: Sat, 15 Dec 2012 11:04:54 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 14 Dec 2012, Tim Bird wrote:

> On 12/14/2012 12:45 PM, Mark Hatle wrote:
> > On 12/14/12 1:46 PM, Burton, Ross wrote:
> >> On 14 December 2012 19:43, Tim Bird <tim.bird@am.sony.com> wrote:
> >>> "If you need GMAE, you should use the bitbake meta-toolchain-gmae command. The resulting installation script when run will support such development. However, if you are not concerned with GMAE, you
> >>> can generate the toolchain installer using bitbake meta-toolchain."
> >>>
> >>> After googling a bit, I figured out that GMAE stands for Gnome Mobile and Embedded.
> >>>
> >>> It might be good to put this acronym somewhere in the manual.
> >>> (I'm still not sure if I need GMAE or not...)
> >>
> >> Basically, GMAE means GTK+ 2 and bits of the GNOME stack.
> >>
> >> A stealth plan of mine is to remove every trace of GMAE from Yocto.
> >> It was an initiative Poky was involved with back in the OpenedHand
> >> days that didn't really take off, and we're still carrying pieces of
> >> it.
> >
> > I get this question a lot.  With the ability (new in 1.3) to build an SDK based
> > on the contents of any arbitrary image.. the meta-toolchain-gmae is simply not
> > necessary.
> >
> > bitbake -c populate_sdk <image recipe>
>
> Aha.  Thanks very much.
>
> Is this the preferred way to get a toolchain out of yocto?
> That's exactly what I'm working on at the moment (well, after
> fixing up some toolchain build issues I've encountered after
> messing around a bit with the toolchain recipes...;-)

  some observations about the documentation (or lack thereof) of this
task since tim seemed susprised about it, and i remember vaguely
running across it once upon a time but forgetting about it.

  the entirety of mention of populate_sdk in all of the checked out
yocto-docs repo is:

$ grep -rw populate_sdk *
documentation/ref-manual/eclipse/html/poky-ref-manual/ref-variables-glos.html:                <code class="filename">bitbake -c populate_sdk imagename</code>).
documentation/ref-manual/ref-variables.xml:                <filename>bitbake -c populate_sdk imagename</filename>).
documentation/ref-manual/ref-classes.xml:        populate_sdk*.bbclass
$

and part of that is a large comment at the end of ref-classes.xml
listing all of the undocumented classes, so it would seem this task
merits a bit more coverage.

  also, the yocto wiki currently contains this page for the "SDK
Generator" but it hasn't been updated since 2010:

https://wiki.yoctoproject.org/wiki/SDK_Generator

  just making some observations, i'm currently working through the ADT
manual and building an SDK for my beagle as we speak.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

