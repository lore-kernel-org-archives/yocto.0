Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1BE7E0144A
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2013 15:15:34 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Feb 2013 15:15:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,683,1355126400"; d="scan'208";a="258129604"
Received: from unknown (HELO [10.255.13.17]) ([10.255.13.17])
	by azsmga001.ch.intel.com with ESMTP; 17 Feb 2013 15:15:33 -0800
Message-ID: <1361142932.1691.55.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 17 Feb 2013 17:15:32 -0600
In-Reply-To: <CAHUNapQTq1wsLtJ94dH9n8W40gi4hYwbsLDRDyAZBMtiT5jvQA@mail.gmail.com>
References: <CAHUNapQTq1wsLtJ94dH9n8W40gi4hYwbsLDRDyAZBMtiT5jvQA@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel menuconfig unusable Was: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Sun, 17 Feb 2013 23:15:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2013-02-17 at 16:22 -0500, Trevor Woerner wrote:
> On Fri, Feb 15, 2013 at 9:29 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > I'm happy to announce that an updated version of the Yocto 'Hands-on
> > Kernel Lab' has been released and is available here:
> 
> This is awesome, and much appreciated (especially by those of us who
> can't make it out to these events).
> 
> Following the lab, however, I very quickly ran into the dreaded
> "kernel menuconfig unusable" issue. Is there any way Liang Li's
> suggested fix[1] could make it into mainline and the danny branch
> which is used for these labs? Is there a better fix? Is there another
> way around this issue, perhaps with a pure conf/local.conf setting?
> 

Yeah, I ran into this too on Fedora 17, but not Ubuntu.  I thought it
was a local thing and basically 'powered through it' and changed the
settings, knowing I was seeing double.

I don't know what the proper fix for this is - if it's the patch you
pointed to, I'm not sure why it wasn't pulled in.  If not, I guess a bug
should be opened for it.

Tom

> Thanks and best regards,
>     Trevor
> 
> [1] http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/027130.html
> 
> NOTE: simply setting OE_TERMINAL to "xterm" doesn't fix the problem,
> it only changes the terminal :-)
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



