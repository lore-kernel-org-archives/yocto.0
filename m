Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 133E9E0134D
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2012 13:28:03 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Jan 2012 13:28:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="99710814"
Received: from unknown (HELO [10.255.13.234]) ([10.255.13.234])
	by orsmga002.jf.intel.com with ESMTP; 17 Jan 2012 13:28:02 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <4F15C93B.5000009@linux.intel.com>
References: <cover.1326216128.git.josh@linux.intel.com>
	<1326225293.2413.49.camel@elmorro> <4F15C93B.5000009@linux.intel.com>
Date: Tue, 17 Jan 2012 15:28:05 -0600
Message-ID: <1326835685.2308.203.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3][meta-intel] Alsa enhancements
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
X-List-Received-Date: Tue, 17 Jan 2012 21:28:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-01-17 at 11:17 -0800, Joshua Lock wrote:
> 
> On 10/01/12 11:54, Tom Zanussi wrote:
> > On Tue, 2012-01-10 at 09:39 -0800, Joshua Lock wrote:
> >> CAVEAT: This series requires the alsa-state series recently submitted to the
> >> OE-Core mailing list.
> >>
> >
> > Nice.  Thanks for finally resolving this.  When the other patches hit
> > oe-core, I'll pull these in...
> 
> FYI the alsa-state recipe has hit master.
> 

Boot-tested on n450 and pulled into meta-intel/master.

Thanks,

Tom

> Joshua



