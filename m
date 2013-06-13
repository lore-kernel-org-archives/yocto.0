Return-Path: <denis@denix.org>
Received: from vms173013pub.verizon.net (vms173013pub.verizon.net
	[206.46.173.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 990B7E013A8
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 11:24:31 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.45.150.102])
	by vms173013.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0MOC00GAHGFR2CG1@vms173013.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 13 Jun 2013 13:24:02 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 9B105200E2; Thu,
	13 Jun 2013 14:23:51 -0400 (EDT)
Date: Thu, 13 Jun 2013 14:23:51 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Message-id: <20130613182351.GB11656@denix.org>
References: <CANwz6nzC4O8bN92q2YCCLtmGKK1S9LwYPLyWR0VZZBY+EiAUtg@mail.gmail.com>
	<CAMUsWmD6F_qEm95q5y92xuP5yg3sNeBm+6GnaMQGOge3CmP8xw@mail.gmail.com>
	<CAP71Wjx=WoR6MAgGpU+nVAGt2Grnk1Y88qOepDjUeyKeX027Ug@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAP71Wjx=WoR6MAgGpU+nVAGt2Grnk1Y88qOepDjUeyKeX027Ug@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Edward Vidal <vidal.develone@gmail.com>
Subject: Re: yocto with meta-ti
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
X-List-Received-Date: Thu, 13 Jun 2013 18:24:31 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Wed, Jun 05, 2013 at 08:05:52AM +0200, Nicolas Dechesne wrote:
> On Wed, Jun 5, 2013 at 7:55 AM, Akshay Sahota <akki.sahota@gmail.com> wrote:
> 
> > *
> > BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/"
> >  #BBMASK = "meta-ti/recipes-misc meta-oe/recipes-graphics"
> > #BBMASK = "meta-oe/recipes-devtools"
> > #BBMASK = "meta-oe/recipes-graphics"
> > #
> > # Parallelism Options*...
> >
> >
> > and bblayers.conf
> >
> > *BBLAYERS ?= " \
> >   /home/asahota/poky-try/poky/meta \
> >   /home/asahota/poky-try/poky/meta-yocto \
> >   /home/asahota/poky-try/poky/meta-yocto-bsp \
> >   /home/asahota/poky-try/poky/meta-ti \

Please pay attention to the order of BSP layers, especially those providing 
the same machine configuration... For example, in the above setup, you won't 
be able to use "beagleboard" machine config from meta-ti, as you have it 
shadowed by the config from meta-yocto-bsp.

-- 
Denys


> >   /home/asahota/poky-try/poky/meta-openembedded/meta-oe \
> >   "
> > *
> >
> 
> i suspect you are using wrong combination of branch/version, but you don't
> give what branch/version you are using, not cannot confirm.
> 
> 
> > *
> > BBLAYERS_NON_REMOVABLE ?= " \
> >   /home/asahota/poky-try/poky/meta \
> >   /home/asahota/poky-try/poky/meta-yocto \
> >   "*
> >
> > and the output is :
> > *$ bitbake -k core-image-minimal
> > Pseudo is not present but is required, building this first before the main
> > build
> > WARNING: Host distribution "Ubuntu 12.04.2 LTS" has not been validated
> > with this version of the build system; you may possibly experience
> > unexpected failures. It is recommended that you use a tested distribution.
> > ERROR: ParseError at
> > /home/asahota/poky-try/poky/meta-openembedded/meta-oe/recipes-devtools/cloud9/
> > cloud9_0.6.bb:11: Could not inherit file classes/systemd.bbclass
> > *
> >
> 
> systemd.bbclass was introduced in 'dylan' version of Yocto (aka 1.4). are
> you sure this is what you are using? to be it sounds like you are using
> Yocto/danny with meta-ti and meta-oe 'master' branch (or dylan branch).
> 
> 
> *ERROR: Command execution failed: Exited with 1
> >
> > Summary: There was 1 WARNING message shown.
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> > *
> > What is the mistake, sounds too silly.!

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


