Return-Path: <denis@denix.org>
Received: from vms173025pub.verizon.net (vms173025pub.verizon.net
	[206.46.173.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9E10E00BE5
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 18:12:32 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173025.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N43006DKNCV8IA0@vms173025.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 15 Apr 2014 20:12:32 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id EBCC7201BF; Tue,
	15 Apr 2014 21:12:30 -0400 (EDT)
Date: Tue, 15 Apr 2014 21:12:30 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-id: <20140416011230.GH11339@denix.org>
References: <534C0415.20701@mlbassoc.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org> <20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org> <1397605018.15843.119.camel@ted>
MIME-version: 1.0
In-reply-to: <1397605018.15843.119.camel@ted>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 16 Apr 2014 01:12:33 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Wed, Apr 16, 2014 at 12:36:58AM +0100, Richard Purdie wrote:
> On Tue, 2014-04-15 at 15:43 -0400, Denys Dmytriyenko wrote:
> > I don't yet know what is going on, but building in the same directory with 
> > sources (B = S) makes it work regarless of the path length:
> > 
> > /OE/RAM/poky-111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111/22222222222222222222222222222222222222222222222222222222222222222222/3333333333333333333333333333333333333333333333333333/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
> > 
> > So, I just commented out setting kernel-specific B in linux-yocto.inc and any 
> > kernel now boots with long path:
> > 
> > #B = "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
> > 
> > I'm copying Richard and Bruce directly to see if they may have a quick insight 
> > and/or accept it as a workaround for the release. I'll keep digging further, 
> > but if anyone cares to verify the above workaround works for them, I would 
> > appreciate. Thanks!
> 
> I'm travelling and don't have hardware so I'm limited in what I can look
> at right now. I suspect this workaround "works" because it makes the
> "beaglebone-standard-build" extra characters on the path. I have a
> feeling your -1111111 test above may have reused sstate or something
> like that and given misleading results. I'd be interested in the vmlinux
> file from the build above to see if the poky-111111 pathnames are in
> there (they get stripped out when you create the zImage).

Nope, I was fooled by sstate once, so this time I tested with cleansstate and 
compared timestamps of the kernel when it boots - it is definitely the new 
one. And to make sure 'beaglebone-standard-build' extra suffix doesn't affect 
it, I increased the path length even further - that extra level with 333 is 
there to over-compensate, as it was failing before even with just 111 and 222 
levels only... Looks like Gary was also able to verify it.

But, you are right about vmlinux - it doesn't have those paths in there any 
more! I've seen them there when building with B != S, but they are gone when 
building with B = S. Wondering why. You can check it for yourself:

http://arago-project.org/files/short-term/misc/vmlinux-3.14.0-yocto-standard

-- 
Denys

