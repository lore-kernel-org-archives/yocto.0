Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B4C7E00B82
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 21:44:44 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s3F4gV5S008773; Tue, 15 Apr 2014 05:44:24 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 7PYiYCmJkFLb; Tue, 15 Apr 2014 05:44:24 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s3F4iBL0008788
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 15 Apr 2014 05:44:16 +0100
Message-ID: <1397537044.15843.66.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Denys Dmytriyenko <denis@denix.org>
Date: Tue, 15 Apr 2014 05:44:04 +0100
In-Reply-To: <20140415013846.GG3370@denix.org>
References: <20140414023328.GY3370@denix.org>
	<534BB7B3.3060104@mlbassoc.com> <20140414154653.GZ3370@denix.org>
	<534C0415.20701@mlbassoc.com> <20140414160038.GB3370@denix.org>
	<534C0719.5050908@mlbassoc.com> <20140414160838.GC3370@denix.org>
	<534C40D9.40509@mlbassoc.com> <20140414224409.GF3370@denix.org>
	<1397521203.15843.62.camel@ted> <20140415013846.GG3370@denix.org>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Tue, 15 Apr 2014 04:44:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-04-14 at 21:38 -0400, Denys Dmytriyenko wrote:
> On Tue, Apr 15, 2014 at 01:20:03AM +0100, Richard Purdie wrote:
> > On Mon, 2014-04-14 at 18:44 -0400, Denys Dmytriyenko wrote:
> > > On Mon, Apr 14, 2014 at 02:11:05PM -0600, Gary Thomas wrote:
> > > > Very interesting results!  These are the results from the build hosts I have:
> > > >   Fedora 13 (i686) - fails
> > > >   Fedora 17 (i686) - fails
> > > >   Ubuntu 12.04 (x86_64) - boots
> > > 
> > > Interesting indeed. I have no idea what's so special about Fedora host - this 
> > > is the first time I hear about issues with it. I may try experimenting with 
> > > different VMs once I have more time...
> > 
> > I've been having a look at this. The biggest differences I can find
> > between working and non working builds is the path length to the build
> > directory for the kernel. This is from comparing vmlinux files from
> > working and non working builds.
> > 
> > Works:
> > /home/paul/poky/build/tmp/work/beaglebone-poky-linux-gnueabi
> > 
> > Doesn't Work:
> > /media/data1/build1/poky/build/tmp/work/beaglebone-poky-linux-gnueabi
> > 
> > I also have been wondering if the version strings may be making a
> > difference.
> > 
> > http://dan.rpsys.net/uImage-rp2 is a uImage from a broken build where I
> > truncated the path length to a "working" build path length and patched
> > in the same version strings:
> > 
> > const char linux_banner[] = 
> >        "Linux version 3.14.0-yocto-standard (paul@ubuntu-build01) (gcc
> > version 4.8.2 (GCC) ) #1 PREEMPT Mon Apr 14 16:00:52 BST 2014\n";
> > 
> > const char linux_proc_banner[] = "%s version %s (paul@ubuntu-build01)
> > (gcc version 4.8.2 (GCC) ) %s\n";
> > 
> > to init/version.c.
> > 
> > I don't have hardware and would be interested to know if the kernel
> > linked to above works or not. If it doesn't, it rules out these path and
> > string lengths, if it does work, it points to a problem there.
> 
> Richard,
> 
> Good catch! It boots:

Thanks Denys, this helps narrow down the issue. I've shared
http://dan.rpsys.net/uImage-rp3 which is the same as the last one but
with my changes to version.c reverted. The one should tell us if its the
paths or the strings.

I'm guessing the path problem is more likely but anything is possible.
This is starting to look like some kind of compiler or linker issue. If
it is that, it would help to have more data points about what works and
what doesn't. With that in mind could people who have good or bad builds
please share the paths they built the kernels in so we can see if we can
spot some kind of pattern.

Cheers,

Richard


