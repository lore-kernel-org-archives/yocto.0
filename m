Return-Path: <denis@denix.org>
Received: from vms173003pub.verizon.net (vms173003pub.verizon.net
	[206.46.173.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A613E0070C
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 14:54:58 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.48.117.33])
	by vms173003.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M3G005YGVJGP300@vms173003.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 03 May 2012 16:54:52 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 0D92C20099; Thu,
	03 May 2012 17:54:51 -0400 (EDT)
Date: Thu, 03 May 2012 17:54:51 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Gary Thomas <gary@mlbassoc.com>
Message-id: <20120503215451.GE9822@denix.org>
References: <880CAB78-91DC-46B5-A4BB-00D33FFA9624@gmail.com>
	<11827908.GWIN234cRG@helios> <4FA2A6A5.6030807@mlbassoc.com>
	<27A92832-EECC-4D6B-A77A-834E20FB4C75@gmail.com>
	<4FA2D75A.3040504@mlbassoc.com>
MIME-version: 1.0
In-reply-to: <4FA2D75A.3040504@mlbassoc.com>
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
X-List-Received-Date: Thu, 03 May 2012 21:54:58 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, May 03, 2012 at 01:07:06PM -0600, Gary Thomas wrote:
> On 2012-05-03 12:22, Elvis Dowson wrote:
> >Hi,
> >
> >On May 3, 2012, at 5:39 PM, Gary Thomas wrote:
> >
> >>On 2012-05-03 07:21, Paul Eggleton wrote:
> >>I saw this checkin yesterday on meta-ti:
> >>Module: meta-ti
> >>Branch: refs/tags/v2012.05-yocto1.2
> >>Tag: ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c
> >>URL: http://arago-project.org/git/meta-ti.git/?a=tag;h=ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c
> >>
> >>Tagger: Denys Dmytriyenko <denys@ti.com <mailto:denys@ti.com>>
> >>Date: Wed May 2 03:41:43 2012 -0400
> >>
> >>2012.05 release, compatible with Yocto Project 1.2 Denzil
> >>
> >>So it looks like it should be close at least :-) I don't know how the
> >>meta-ti repo on yoctoproject.org <http://yoctoproject.org> tracks the arago-project one...
> >
> >The meta-ti repo on yoctoproject.org <http://yoctoproject.org> tracks the arago-project one closely.
> >
> >The following bblayers.conf configuration worked
> >
> >BBFILES ?= ""
> >BBLAYERS ?= " \
> >/tool/yocto/poky/meta \
> >/tool/yocto/poky/meta-yocto \
> >/tool/yocto/meta-openembedded/meta-oe \
> >/tool/yocto/meta-gumstix \
> >/tool/yocto/meta-ti \
> >/tool/yocto/meta-xilinx \
> >"
> 
> IMO, you should be able to use meta-ti *without* meta-oe (I do anyway)

You still need to BBMASK recipes-misc to avoid systemd when used w/o meta-oe

-- 
Denys

