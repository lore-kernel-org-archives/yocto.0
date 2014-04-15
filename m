Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68714E00B8C
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 07:49:46 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Apr 2014 07:49:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,864,1389772800"; d="scan'208";a="521040251"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.121.134])
	by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2014 07:49:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Apr 2014 15:49:42 +0100
Message-ID: <3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <1397562801.2977.2.camel@firebird.rb.intel.com>
References: <534C0415.20701@mlbassoc.com>
	<1397552645.2977.0.camel@firebird.rb.intel.com>
	<1397562801.2977.2.camel@firebird.rb.intel.com>
MIME-Version: 1.0
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Tue, 15 Apr 2014 14:49:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 15 April 2014 11:52:49 Stanacar, StefanX wrote:
> On Tue, 2014-04-15 at 09:03 +0000, Stanacar, StefanX wrote:
> > On Tue, 2014-04-15 at 01:17 -0400, Denys Dmytriyenko wrote:
> > > On Tue, Apr 15, 2014 at 01:07:28AM -0400, Denys Dmytriyenko wrote:
> > > > On Tue, Apr 15, 2014 at 05:44:04AM +0100, Richard Purdie wrote:
> > > > > On Mon, 2014-04-14 at 21:38 -0400, Denys Dmytriyenko wrote:
> > > > > > On Tue, Apr 15, 2014 at 01:20:03AM +0100, Richard Purdie wrote:
> > > > > > > On Mon, 2014-04-14 at 18:44 -0400, Denys Dmytriyenko wrote:
> > > > > > > > On Mon, Apr 14, 2014 at 02:11:05PM -0600, Gary Thomas wrote:
> > > > > > > > > Very interesting results!  These are the results from the 
build hosts I have:
> > > > > > > > >   Fedora 13 (i686) - fails
> > > > > > > > >   Fedora 17 (i686) - fails
> > > > > > > > >   Ubuntu 12.04 (x86_64) - boots
> > > > > > > > 
> > > > > > > > Interesting indeed. I have no idea what's so special about
> > > > > > > > Fedora host - this is the first time I hear about issues with
> > > > > > > > it. I may try experimenting with different VMs once I have
> > > > > > > > more time...
> > > > > > > 
> > > > > > > I've been having a look at this. The biggest differences I can
> > > > > > > find
> > > > > > > between working and non working builds is the path length to the
> > > > > > > build
> > > > > > > directory for the kernel. This is from comparing vmlinux files
> > > > > > > from
> > > > > > > working and non working builds.
> > > > > > > 
> > > > > > > Works:
> > > > > > > /home/paul/poky/build/tmp/work/beaglebone-poky-linux-gnueabi
> > > > > > > 
> > > > > > > Doesn't Work:
> > > > > > > /media/data1/build1/poky/build/tmp/work/beaglebone-poky-linux-gn
> > > > > > > ueabi
> > > > > > > 
> > > > > > > I also have been wondering if the version strings may be making
> > > > > > > a
> > > > > > > difference.
> > > > > > > 
> > > > > > > http://dan.rpsys.net/uImage-rp2 is a uImage from a broken build
> > > > > > > where I
> > > > > > > truncated the path length to a "working" build path length and
> > > > > > > patched
> > > > > > > in the same version strings:
> > > > > > > 
> > > > > > > const char linux_banner[] =
> > > > > > > 
> > > > > > >        "Linux version 3.14.0-yocto-standard
> > > > > > >        (paul@ubuntu-build01) (gcc
> > > > > > > 
> > > > > > > version 4.8.2 (GCC) ) #1 PREEMPT Mon Apr 14 16:00:52 BST
> > > > > > > 2014\n";
> > > > > > > 
> > > > > > > const char linux_proc_banner[] = "%s version %s
> > > > > > > (paul@ubuntu-build01)
> > > > > > > (gcc version 4.8.2 (GCC) ) %s\n";
> > > > > > > 
> > > > > > > to init/version.c.
> > > > > > > 
> > > > > > > I don't have hardware and would be interested to know if the
> > > > > > > kernel
> > > > > > > linked to above works or not. If it doesn't, it rules out these
> > > > > > > path and
> > > > > > > string lengths, if it does work, it points to a problem there.
> > > > > > 
> > > > > > Richard,
> > > > > 
> > > > > > Good catch! It boots:
> > > > > Thanks Denys, this helps narrow down the issue. I've shared
> > > > > http://dan.rpsys.net/uImage-rp3 which is the same as the last one
> > > > > but
> > > > > with my changes to version.c reverted. The one should tell us if its
> > > > > the
> > > > > paths or the strings.
> > > > 
> > > > This one also boots for me:
> > > > 
> > > > Linux version 3.14.0-yocto-standard (richard@ted) (gcc version 4.8.2
> > > > (GCC) ) #2 PREEMPT Tue Apr 15 05:40:19 IST 2014> > > 
> > > > > I'm guessing the path problem is more likely but anything is
> > > > > possible.
> > > > > This is starting to look like some kind of compiler or linker issue.
> > > > > If
> > > > > it is that, it would help to have more data points about what works
> > > > > and
> > > > > what doesn't. With that in mind could people who have good or bad
> > > > > builds
> > > > > please share the paths they built the kernels in so we can see if we
> > > > > can
> > > > > spot some kind of pattern.
> > > 
> > > BTW, my path is /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi and
> > > it works.
> > 
> > I can confirm:
> >  build dir in /home/stefans/b1  works,
> > 
> > but /home/stefans/yocto/poky/build doesn't.
> 
> But this works
> [stefans@firebird bu]$ pwd
> /home/stefans/yocto/poky/bu
> [stefans@firebird bu]$ echo `pwd`| wc -c
> 28
> 
> 
> But 29 doesn't.
> So, what now?

Some other things I tried with a "long" TMPDIR path (note that it's the TMPDIR 
path that makes the difference - in my tests I've been using 
/home/paul/poky/build2/much/longer/path/to/tmp). None of this helped:

* kernel built with gcc 4.7.2 and binutils 2.23.2
* u-boot built with gcc 4.7.2 and binutils 2.23.2
* u-boot from http://downloads.angstrom-distribution.org/demo/beaglebone/
* earlyprintk and CONFIG_DEBUG_LL - no additional output printed

I think we're now at the point where we'd benefit from someone with better 
knowledge debugging the issue.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

