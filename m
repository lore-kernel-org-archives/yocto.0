Return-Path: <denis@denix.org>
Received: from vms173019pub.verizon.net (vms173019pub.verizon.net
	[206.46.173.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B50E00B99
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 10:16:03 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173019.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N4300BWX1AQ3D00@vms173019.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 15 Apr 2014 12:16:02 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 357D6201BF; Tue,
	15 Apr 2014 13:16:01 -0400 (EDT)
Date: Tue, 15 Apr 2014 13:16:01 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-id: <20140415171601.GD11339@denix.org>
References: <534C0415.20701@mlbassoc.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
MIME-version: 1.0
In-reply-to: <16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 15 Apr 2014 17:16:05 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Apr 15, 2014 at 05:36:10PM +0100, Paul Eggleton wrote:
> On Tuesday 15 April 2014 12:26:39 Denys Dmytriyenko wrote:
> > On Tue, Apr 15, 2014 at 03:49:42PM +0100, Paul Eggleton wrote:
> > > On Tuesday 15 April 2014 11:52:49 Stanacar, StefanX wrote:
> > > > On Tue, 2014-04-15 at 09:03 +0000, Stanacar, StefanX wrote:
> > > > > On Tue, 2014-04-15 at 01:17 -0400, Denys Dmytriyenko wrote:
> > > > > > On Tue, Apr 15, 2014 at 01:07:28AM -0400, Denys Dmytriyenko wrote:
> > > > > > > On Tue, Apr 15, 2014 at 05:44:04AM +0100, Richard Purdie wrote:
> > > > > > > > On Mon, 2014-04-14 at 21:38 -0400, Denys Dmytriyenko wrote:
> > > > > > > > > On Tue, Apr 15, 2014 at 01:20:03AM +0100, Richard Purdie 
> wrote:
> > > > > > > > > > On Mon, 2014-04-14 at 18:44 -0400, Denys Dmytriyenko wrote:
> > > > > > > > > > > On Mon, Apr 14, 2014 at 02:11:05PM -0600, Gary Thomas 
> wrote:
> > > > > > > > > > > > Very interesting results!  These are the results from
> > > > > > > > > > > > the
> > > 
> > > build hosts I have:
> > > > > > > > > > > >   Fedora 13 (i686) - fails
> > > > > > > > > > > >   Fedora 17 (i686) - fails
> > > > > > > > > > > >   Ubuntu 12.04 (x86_64) - boots
> > > > > > > > > > > 
> > > > > > > > > > > Interesting indeed. I have no idea what's so special about
> > > > > > > > > > > Fedora host - this is the first time I hear about issues
> > > > > > > > > > > with
> > > > > > > > > > > it. I may try experimenting with different VMs once I have
> > > > > > > > > > > more time...
> > > > > > > > > > 
> > > > > > > > > > I've been having a look at this. The biggest differences I
> > > > > > > > > > can
> > > > > > > > > > find
> > > > > > > > > > between working and non working builds is the path length to
> > > > > > > > > > the
> > > > > > > > > > build
> > > > > > > > > > directory for the kernel. This is from comparing vmlinux
> > > > > > > > > > files
> > > > > > > > > > from
> > > > > > > > > > working and non working builds.
> > > > > > > > > > 
> > > > > > > > > > Works:
> > > > > > > > > > /home/paul/poky/build/tmp/work/beaglebone-poky-linux-gnueabi
> > > > > > > > > > 
> > > > > > > > > > Doesn't Work:
> > > > > > > > > > /media/data1/build1/poky/build/tmp/work/beaglebone-poky-linu
> > > > > > > > > > x-gn
> > > > > > > > > > ueabi
> > > > > > > > > > 
> > > > > > > > > > I also have been wondering if the version strings may be
> > > > > > > > > > making
> > > > > > > > > > a
> > > > > > > > > > difference.
> > > > > > > > > > 
> > > > > > > > > > http://dan.rpsys.net/uImage-rp2 is a uImage from a broken
> > > > > > > > > > build
> > > > > > > > > > where I
> > > > > > > > > > truncated the path length to a "working" build path length
> > > > > > > > > > and
> > > > > > > > > > patched
> > > > > > > > > > in the same version strings:
> > > > > > > > > > 
> > > > > > > > > > const char linux_banner[] =
> > > > > > > > > > 
> > > > > > > > > >        "Linux version 3.14.0-yocto-standard
> > > > > > > > > >        (paul@ubuntu-build01) (gcc
> > > > > > > > > > 
> > > > > > > > > > version 4.8.2 (GCC) ) #1 PREEMPT Mon Apr 14 16:00:52 BST
> > > > > > > > > > 2014\n";
> > > > > > > > > > 
> > > > > > > > > > const char linux_proc_banner[] = "%s version %s
> > > > > > > > > > (paul@ubuntu-build01)
> > > > > > > > > > (gcc version 4.8.2 (GCC) ) %s\n";
> > > > > > > > > > 
> > > > > > > > > > to init/version.c.
> > > > > > > > > > 
> > > > > > > > > > I don't have hardware and would be interested to know if the
> > > > > > > > > > kernel
> > > > > > > > > > linked to above works or not. If it doesn't, it rules out
> > > > > > > > > > these
> > > > > > > > > > path and
> > > > > > > > > > string lengths, if it does work, it points to a problem
> > > > > > > > > > there.
> > > > > > > > > 
> > > > > > > > > Richard,
> > > > > > > > 
> > > > > > > > > Good catch! It boots:
> > > > > > > > Thanks Denys, this helps narrow down the issue. I've shared
> > > > > > > > http://dan.rpsys.net/uImage-rp3 which is the same as the last
> > > > > > > > one
> > > > > > > > but
> > > > > > > > with my changes to version.c reverted. The one should tell us if
> > > > > > > > its
> > > > > > > > the
> > > > > > > > paths or the strings.
> > > > > > > 
> > > > > > > This one also boots for me:
> > > > > > > 
> > > > > > > Linux version 3.14.0-yocto-standard (richard@ted) (gcc version
> > > > > > > 4.8.2
> > > > > > > (GCC) ) #2 PREEMPT Tue Apr 15 05:40:19 IST 2014> > >
> > > > > > > 
> > > > > > > > I'm guessing the path problem is more likely but anything is
> > > > > > > > possible.
> > > > > > > > This is starting to look like some kind of compiler or linker
> > > > > > > > issue.
> > > > > > > > If
> > > > > > > > it is that, it would help to have more data points about what
> > > > > > > > works
> > > > > > > > and
> > > > > > > > what doesn't. With that in mind could people who have good or
> > > > > > > > bad
> > > > > > > > builds
> > > > > > > > please share the paths they built the kernels in so we can see
> > > > > > > > if we
> > > > > > > > can
> > > > > > > > spot some kind of pattern.
> > > > > > 
> > > > > > BTW, my path is /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi
> > > > > > and
> > > > > > it works.
> > > > > 
> > > > > I can confirm:
> > > > >  build dir in /home/stefans/b1  works,
> > > > > 
> > > > > but /home/stefans/yocto/poky/build doesn't.
> > > > 
> > > > But this works
> > > > [stefans@firebird bu]$ pwd
> > > > /home/stefans/yocto/poky/bu
> > > > [stefans@firebird bu]$ echo `pwd`| wc -c
> > > > 28
> > > > 
> > > > But 29 doesn't.
> > > > So, what now?
> > > 
> > > Some other things I tried with a "long" TMPDIR path (note that it's the
> > > TMPDIR path that makes the difference - in my tests I've been using
> > > /home/paul/poky/build2/much/longer/path/to/tmp). None of this helped:
> > > 
> > > * kernel built with gcc 4.7.2 and binutils 2.23.2
> > > * u-boot built with gcc 4.7.2 and binutils 2.23.2
> > > * u-boot from http://downloads.angstrom-distribution.org/demo/beaglebone/
> > > * earlyprintk and CONFIG_DEBUG_LL - no additional output printed
> > > 
> > > I think we're now at the point where we'd benefit from someone with better
> > > knowledge debugging the issue.
> > 
> > Ok, should we expand the search area? Since this is supposed to be vanilla
> > 3.14 kernel, can we try other platforms and see if they are similarly
> > affected? I'll try pinging our kernel guys for any ideas...
> 
> As far as I know it has only been observed with beaglebone (both white and 
> black, if it makes a difference). FWIW, qemuarm images from the autobuilder 
> boot just fine, and apparently the same is true of edgerouter (different 
> architecture but also uses u-boot).

But do those other platforms use uImage or zImage?

Anyway, just for testing, I switched to zImage and it seems to boot fine for 
me regarldless of the path length...

I just sent 2 patches to test this out - unfortunately booting zImage isntead 
of uImage requires fiddling with U-boot variables a bit, when using 2013.07. 
So I also provided a quick update patch to get U-boot 2014.01 that has zImage 
enabled by default.

Those patches are not yet for merging and they are directly against Poky - 
could anyone having issues with booting BBB try them? Place new u-boot.img 
into first boot FAT partition and new zImage kernel image to /boot dir of the 
rootfs partition. Please let me know if it works for your long paths. Thanks.

-- 
Denys

