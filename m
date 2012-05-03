Return-Path: <denis@denix.org>
Received: from vms173003pub.verizon.net (vms173003pub.verizon.net
	[206.46.173.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51969E00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 14:53:01 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.48.117.33])
	by vms173003.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M3G00765VFVDBH1@vms173003.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 03 May 2012 16:52:43 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 057F420099; Thu,
	03 May 2012 17:52:42 -0400 (EDT)
Date: Thu, 03 May 2012 17:52:42 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-id: <20120503215242.GC9822@denix.org>
References: <880CAB78-91DC-46B5-A4BB-00D33FFA9624@gmail.com>
	<11827908.GWIN234cRG@helios>
MIME-version: 1.0
In-reply-to: <11827908.GWIN234cRG@helios>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: Build error: Could not inherit file classes/systemd.bbclass
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
X-List-Received-Date: Thu, 03 May 2012 21:53:01 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, May 03, 2012 at 02:21:40PM +0100, Paul Eggleton wrote:
> On Thursday 03 May 2012 14:56:03 Elvis Dowson wrote:
> >      I've setup and configured an Ubuntu-12.04 LTS 64-bit system, and I get
> > a build error when I run the following command:
> > 
> > $ bitbake -c fetchall core-image-minimal
> > 
> > Pseudo is not present but is required, building this first before the main
> > build WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated
> > with this version of the build system; you may possibly experience
> > unexpected failures. It is recommended that you use a tested distribution.
> 
> This can be ignored - 12.04 *is* supported; it's just that the final version 
> string wasn't what I expected it to be. I'll send a patch for this soon and it 
> can hopefully go into 1.2.1.
> 
> > ERROR: ParseError at
> > /tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not inherit
> > file classes/systemd.bbclass ERROR: Command execution failed: Exited with 1
> 
> systemd.bbclass is part of the meta-oe layer, so you'll need to add that to 
> your bblayers.conf.
> 
> BTW I'm not sure if the meta-ti maintainers have finished their work to ensure 
> meta-ti works with distros other than Angstrom. If they haven't you may 
> experience problems.

Yes, meta-ti does not require Angstrom.

-- 
Denys

