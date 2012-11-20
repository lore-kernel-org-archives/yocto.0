Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4784EE01423
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 13:02:32 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Nov 2012 13:02:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,287,1352102400"; d="scan'208";a="222324129"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by orsmga001.jf.intel.com with ESMTP; 20 Nov 2012 13:02:31 -0800
Message-ID: <1353445350.7717.7.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 20 Nov 2012 15:02:30 -0600
In-Reply-To: <alpine.DEB.2.02.1211201525020.27021@oneiric>
References: <alpine.DEB.2.02.1211201525020.27021@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is anyone getting pathetic git download from the new kmod SRC_URI?
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
X-List-Received-Date: Tue, 20 Nov 2012 21:02:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-11-20 at 15:27 -0500, Robert P. J. Day wrote:
> maybe it's something i'm doing, but oe-core just changed the SRC_URI
> for kmod to git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git,
> and the response from the URL couldn't suck any worse than if it
> sucked totally.  i've yet to get a successful clone.
> 
>   thoughts?  is that working fine for others?
> 

No problems here:

[trz@empanada tmp]$ time git clone git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
Cloning into 'kmod'...
remote: Counting objects: 4003, done.
remote: Compressing objects: 100% (1599/1599), done.
remote: Total 4003 (delta 2811), reused 3196 (delta 2264)
Receiving objects: 100% (4003/4003), 4.59 MiB | 850 KiB/s, done.
Resolving deltas: 100% (2811/2811), done.

real	0m7.183s
user	0m0.361s
sys	0m0.429s

Tom

> rday
> 



