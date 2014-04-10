Return-Path: <denis@denix.org>
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D79BE00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 09:23:51 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173017.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N3T0047UPJ7JXA0@vms173017.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 10 Apr 2014 11:23:32 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id A48912016D; Thu,
	10 Apr 2014 12:23:31 -0400 (EDT)
Date: Thu, 10 Apr 2014 12:23:31 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Patrick Doyle <wpdster@gmail.com>
Message-id: <20140410162331.GO3370@denix.org>
References: <CAF_dkJABdHQcftHoPJ1EO_bdjahyYJ84HZL5V+mErqzQaTKJSQ@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAF_dkJABdHQcftHoPJ1EO_bdjahyYJ84HZL5V+mErqzQaTKJSQ@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Why increment PRINC by 2?
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
X-List-Received-Date: Thu, 10 Apr 2014 16:23:53 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, Apr 10, 2014 at 11:55:08AM -0400, Patrick Doyle wrote:
> The BSP guide gives the following helpful tip for installing a custom
> /etc/network/interfaces file (see
> https://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html#customizing-a-recipe-for-a-bsp
> -- and thank you, BTW -- that addressed a specific problem I needed to
> solve):
> 
> 1. Edit the init-ifupdown_1.0.bbappend file so that it contains the following:
> 
>      FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>      PRINC := "${@int(PRINC) + 2}"
> 
> 
> The append file needs to be in the meta-xyz/recipes-core/init-ifupdown
> directory.
> 
> 2. Create and place the new interfaces configuration file in the BSP's
> layer here:
> 
>      meta-xyz/recipes-core/init-ifupdown/files/xyz/interfaces
> 
> In my continuing attempt to understand the mindset of Yocto
> practitioners, I would appreciate any light folks can shed on this... it
> opens up so many questions to me...
> 
> 1) Why does FILESEXTRAPATHS exist?  The documentation says, "You can
> extend FILESPATH variable by using FILESEXTRAPATHS."  Errr, can't one
> extend FILESPATH with
> 
> FILESPATH = "blah:" + $FILESPATH
> 
> or
> FILESPATH_prepend = "blah:"
> 
> I see that the documentation for FILESPATH specifically states:
> 
> "Do not hand-edit the FILESPATH variable. If you want the build system
> to look in directories other than the defaults, extend the FILESPATH
> variable by using the FILESEXTRAPATHS variable."
> 
> but that doesn't help me understand why this method is preferred for
> extending FILESPATH.
> 
> 2) Why does PRINC exist?  The documentation says that PRINC "causes
> the PR variable of .bbappend files to dynamically increment" and that
> "This increment minimizes the impact of layer ordering."  I guess that
> means that the init-ifupdown_1.0.bb file has some revision (which I
> think is "1.0") and that, when my .bbappend file is appended to it,
> causes the recipe to effectively be "3.0".  Why do I care?  If there
> is an "init-ifupdown_5.0.bb" file someplace in my search path, won't I
> get that one anyway?  How does this minimize the impact of layer
> ordering?

That is PV (package version) you are thinking of. But PRINC increments PR 
(package revision).

PR is not used in the recipe names, but rather in resulting binary packages. 
So your init-ifupdown_1.0.bb/bbappend will result in a binary package of 
init-ifupdown_1.0-r0_<arch/mach>.ipk/rpm

That portion -r0 will be incremented, becoming -r2 or the original+2 (can be 
any number)

PV usually corresponds to changes in the sources, while PR corresponds to 
changes in the recipe. If a recipe is composed from multiple parts (.inc file 
or .bbappend) you may want to distinguish that.

As an alternative, some distro chose to append a more meaningful suffix to PR 
instead of just incrementing PR. I.e. our Arago distro appends "-aragoX" where 
X is the number of revisions we made in our distro on top of the main recipe. 
The end result of the package version will be "3.5-r6-arago2". It means the 
sources for the package are of version 3.5, the main recipe was updated 6 
times and there were also 2 more recipe bbappend updates by the distro...

It's a common practice in Linux Distro world - Ubuntu uses the same principle, 
when updating packages inherited from Debian, e.g. bash_4.1-2ubuntu3_i386.deb

-- 
Denys


> Oh yeah, and why increment by 2?  Why not 1, or pi?
> 
> I guess I only had 2 questions... but 1,000,000 subquestions :-)
> 
> Thanks for any tips you can give me.
> 
> --wpd
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

