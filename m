Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBC1EE0044C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 08:38:46 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2012 08:38:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="117533273"
Received: from unknown (HELO [10.255.15.167]) ([10.255.15.167])
	by orsmga002.jf.intel.com with ESMTP; 04 Mar 2012 08:38:46 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1203040759260.2396@oneiric>
References: <alpine.DEB.2.02.1203040759260.2396@oneiric>
Date: Sun, 04 Mar 2012 10:37:53 -0600
Message-ID: <1330879073.2319.122.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: some observations about yocto wiki page, "from git checkout to meta-intel BSP"
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
X-List-Received-Date: Sun, 04 Mar 2012 16:38:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-03-04 at 08:09 -0500, Robert P. J. Day wrote:
> yes, i know it's an editable wiki but i'd rather someone else make
> the changes just in case i'm misreading something.  it's early, and
> there's only decaf in the place.  this is bad.
> 
>   anyway, using this page as grist for discussion:
> 
> https://wiki.yoctoproject.org/wiki/Transcript:_from_git_checkout_to_meta-intel_BSP
> 
> "To build and run a meta-intel BSP, you need to check out a local copy
> of the poky repo ..."
> 
>   i think that sentence demonstrates the yocto vs poky confusion koen
> was talking about -- a regular waffling between "yocto" sources and
> "poky" repos.
> 

Yeah, just because poky appears in the URL doesn't mean we need to
reference it beyond that.

>   below that, there are references to
> git://git.pokylinux.org/poky.git -- should those references be updated
> to refer to the git.yoctoproject.org repos?
> 
>   there's a reference to "poky-qemu qemux86" -- change to "runqemu
> qemux86"?  or is that the correct name in the last released version?
> (i rarely look at released versions.)
> 
>   and i'm pretty sure that there's a missing reference to the
> meta-yocto layer here:
> 
> BBLAYERS = " \
>   /usr/local/src/Yocto/meta \
>   /usr/local/src/Yocto/meta-intel/meta-fishriver \
>   "
> 
> unless that's also correct for the last released version.
> 
>   further down,
> 
>   $ bitbake poky-image-sato-live
> 
> there's no such bitbake target these days.
> 
>   anyway, that was about 60 seconds worth of perusing.  if some
> meta-intel person wants to mess with that page, it's all yours.
> 

Yeah, definitely, I need to update these pages for for edison, which
I'll do now that I know somebody's actually making use of them.

Thanks for your comments...

Tom

> rday
> 



