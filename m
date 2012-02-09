Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A4DCE01385
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 04:30:37 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2012 04:30:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="123053538"
Received: from unknown (HELO helios.localnet) ([10.252.123.13])
	by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2012 04:30:35 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 09 Feb 2012 12:30:34 +0000
Message-ID: <1636213.TrTs1YKXOm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-15-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <F3D9189D-F27C-4C90-AD58-5071F83FA2AF@beagleboard.org>
References: <4F323C52.8030304@intel.com> <4F3302D3.7070507@linux.intel.com>
	<F3D9189D-F27C-4C90-AD58-5071F83FA2AF@beagleboard.org>
MIME-Version: 1.0
Cc: Koen Kooi <koen@beagleboard.org>
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Thu, 09 Feb 2012 12:30:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 09 February 2012 13:22:10 Koen Kooi wrote:
> I find the 'pending' confusing, is it 'pending submission' or 'pending
> approval'? I'm marking patches in meta-oe with 'Upstream-status: Unknown'
> as default instead of 'Pending' to make it a bit clearer. And patches
> marked 'inappropriate' won't go in, it's 'rejected', 'unknown' or 'needs
> work' in those cases. I'm not going to guess what upstream might think of
> it, since I can't speak for them.

I think the distinction between Pending and Unknown is important. The status 
is not completely unknown - the person who set it made an assessment that the 
patch should be appropriate for sending upstream, even if it would need 
further cleanup beforehand. Maybe "Pending" isn't the best word, I'm not sure, 
but "Unknown" is not right either.

> All patches in OE-core now have an Upstream-status, but how many have an
> *incorrect* Upstream-status?

The status ought to be correct with regard to the patch author's assessment of 
whether or not the patch can go upstream. That's what matters - it's a tool 
you can use in the separate exercise of going through the patches we do have 
and trying to get them merged upstream.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

