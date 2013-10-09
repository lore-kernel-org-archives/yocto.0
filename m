Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24C3E016AA
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 03:58:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Oct 2013 03:58:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1062,1371106800"; d="scan'208";a="416577756"
Received: from unknown (HELO helios.localnet) ([10.252.120.216])
	by orsmga002.jf.intel.com with ESMTP; 09 Oct 2013 03:58:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Wed, 09 Oct 2013 11:58:25 +0100
Message-ID: <2004576.X6Q3phGT91@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1310090638350.32355@oneiric>
References: <alpine.DEB.2.02.1310090638350.32355@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: clarification on what packages are *truly* needed for a yocto build?
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
X-List-Received-Date: Wed, 09 Oct 2013 10:58:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Wednesday 09 October 2013 06:45:36 Robert P. J. Day wrote:
>   (aside: prepping to teach an OE/yocto course in a couple weeks,
> going thru the docs again, so be prepared for questions, some of them
> potentially silly but all in aid of clarifying bits of documentation.
> i'm sure scott rifenbark is currently steeling himself for the
> experience. :-)
> 
>   i'm intimately aware of the current doc pages that list how to
> establish your yocto build environment, such as this:
> 
> https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies

That page is very much unmaintained and out-of-date. We should probably note
as much on the page (or just delete it). The canonical list of build host
dependencies can always be found in the Quick Start guide:

http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html

(substitute "current" in that URL with "1.5" if you'll be training with the
1.5 release, until the release happens at which point those will be the same
thing).

> but a question or two.
> 
>   in some cases, i've seen, say, subversion listed as a prerequisite,
> even though subversion is clearly built natively. so is it *truly* a
> user-installable prerequisite? or am i misreading something?

No, subversion is not needed on the host. git is however (and specifically for
the 1.5 release onwards, git 1.7.5 or later is required.)

>   also, at this point, is there a list of what one can safely add to
> ASSUME_PROVIDED to cut down build time on a new project? i recall from
> way back when that, if you use ASSUME_PROVIDED, you're sort of voiding
> the warranty in terms of what's been quality checked. but if one is
> willing to take a chance, is there a set of packages that would be
> considered "safe" to assume are provided? (for example, i would assume
> that, in any current distro, git would certainly be safe, no?)

When we say you're on your own setting this, you really are on your own ;)
We do not QA setting this variable differently from the default, and so it's a
bit hard for us to make any guarantees that any particular value that differs
from the default will be "safe". (FWIW, in dylan/1.4 and later, git-native is
already in the default value of ASSUME_PROVIDED).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

