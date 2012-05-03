Return-Path: <denis@denix.org>
Received: from vms173011pub.verizon.net (vms173011pub.verizon.net
	[206.46.173.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81798E0070C
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 14:53:47 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.48.117.33])
	by vms173011.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M3G00KZOVHMU7V1@vms173011.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 03 May 2012 16:53:47 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id B8F9820099; Thu,
	03 May 2012 17:53:46 -0400 (EDT)
Date: Thu, 03 May 2012 17:53:46 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Gary Thomas <gary@mlbassoc.com>
Message-id: <20120503215346.GD9822@denix.org>
References: <880CAB78-91DC-46B5-A4BB-00D33FFA9624@gmail.com>
	<11827908.GWIN234cRG@helios> <4FA2A6A5.6030807@mlbassoc.com>
MIME-version: 1.0
In-reply-to: <4FA2A6A5.6030807@mlbassoc.com>
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
X-List-Received-Date: Thu, 03 May 2012 21:53:47 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, May 03, 2012 at 09:39:17AM -0600, Gary Thomas wrote:
> On 2012-05-03 07:21, Paul Eggleton wrote:
> >On Thursday 03 May 2012 14:56:03 Elvis Dowson wrote:
> >>      I've setup and configured an Ubuntu-12.04 LTS 64-bit system, and I get
> >>a build error when I run the following command:
> >>
> >>$ bitbake -c fetchall core-image-minimal
> >>
> >>Pseudo is not present but is required, building this first before the main
> >>build WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated
> >>with this version of the build system; you may possibly experience
> >>unexpected failures. It is recommended that you use a tested distribution.
> >
> >This can be ignored - 12.04 *is* supported; it's just that the final version
> >string wasn't what I expected it to be. I'll send a patch for this soon and it
> >can hopefully go into 1.2.1.
> >
> >>ERROR: ParseError at
> >>/tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not inherit
> >>file classes/systemd.bbclass ERROR: Command execution failed: Exited with 1
> >
> >systemd.bbclass is part of the meta-oe layer, so you'll need to add that to
> >your bblayers.conf.
> >
> >BTW I'm not sure if the meta-ti maintainers have finished their work to ensure
> >meta-ti works with distros other than Angstrom. If they haven't you may
> >experience problems.
> 
> I saw this checkin yesterday on meta-ti:
>   Module: meta-ti
>   Branch: refs/tags/v2012.05-yocto1.2
>   Tag:    ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c
>   URL:    http://arago-project.org/git/meta-ti.git/?a=tag;h=ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c
> 
>   Tagger: Denys Dmytriyenko <denys@ti.com>
>   Date:   Wed May  2 03:41:43 2012 -0400
> 
>   2012.05 release, compatible with Yocto Project 1.2 Denzil
> 
> So it looks like it should be close at least :-)  I don't know how the
> meta-ti repo on yoctoproject.org tracks the arago-project one...

meta-ti on yoctoproject.org is the same exact as on arago-project.org - those 
are just mirrors of the same repository.

-- 
Denys

