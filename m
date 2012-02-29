Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 781C6E0030B
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 08:03:41 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Feb 2012 08:03:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112816311"
Received: from unknown (HELO helios.localnet) ([10.252.123.96])
	by azsmga001.ch.intel.com with ESMTP; 29 Feb 2012 08:03:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 29 Feb 2012 16:03:38 +0000
Message-ID: <5062861.2KUtZu5UgK@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1202291046100.31971@oneiric>
References: <alpine.DEB.2.02.1202291046100.31971@oneiric>
MIME-Version: 1.0
Subject: Re: worth adding PREMIRRORS_prepend note to QS guide?
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
X-List-Received-Date: Wed, 29 Feb 2012 16:03:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 29 February 2012 10:50:30 Robert P. J. Day wrote:
>   just starting to go thru the thread regarding the QS guide and i
> have to agree that there's probably too much lead-in when the people
> reading the QS guide are probably competent enough to just want the
> recipe, so it should be shorter.

Yes, I hadn't yet responded to that thread but I also agree.

>   having said that, i think there is a note that should be *added*,
> and that's telling users how to add something like this to their
> local.conf:
> 
> PREMIRRORS_prepend = "\
> git://.*/.* file:///home/rpjday/dl/ \n \
> svn://.*/.* file:///home/rpjday/dl/ \n \
> cvs://.*/.* file:///home/rpjday/dl/ \n \
> ftp://.*/.* file:///home/rpjday/dl/ \n \
> http://.*/.* file:///home/rpjday/dl/ \n \
> https://.*/.* file:///home/rpjday/dl/ \n"
>
>   if people are showing up at yocto having worked with build systems
> like OE and angstrom, they probably already have a sizable directory
> of tarballs they can take advantage of, but the QS guide gives them no
> advice on how to do that.

Why wouldn't you just point your DL_DIR there? I just have one downloads 
directory I share between Poky (multiple build dirs) and OE/Angstrom.
 
>   i think a note on how to do that would be useful.  experienced users
> would immediately realize its value and take advantage of it, while
> users without that kind of background would realize it doesn't apply
> to them, skip it and carry on.
> 
>   thoughts?  anyway, i'm about to do another pass thru the QS guide so
> prepare for pedantry.

I think this is beyond the scope of a quickstart. You could easily have a FAQ 
entry "can I share/re-use my downloads directory?" that would cover that for 
those who already have such a directory.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

