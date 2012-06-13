Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46980E01304
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 06:22:35 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 Jun 2012 06:22:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="111653363"
Received: from unknown (HELO helios.localnet) ([10.252.120.116])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Jun 2012 06:22:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jun 2012 14:22:33 +0100
Message-ID: <3775842.SmlgDLmoTM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-24-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FCF72EA.3030200@mlbassoc.com>
References: <alpine.DEB.2.02.1206031757260.20352@oneiric>
	<alpine.DEB.2.02.1206051100550.2774@oneiric>
	<4FCF72EA.3030200@mlbassoc.com>
MIME-Version: 1.0
Subject: Re: something about gtk+-2.24.8.tar.bz2 that requires constant downloading?
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
X-List-Received-Date: Wed, 13 Jun 2012 13:22:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 06 June 2012 09:10:34 Gary Thomas wrote:
> On 2012-06-05 09:01, Robert P. J. Day wrote:
> > On Tue, 5 Jun 2012, Wang, Shane wrote:
> >> Robert P. J. Day wrote on 2012-06-05:
> >>>    at this point, has the problem been identified?  or does this still
> >>> 
> >>> require a bugzilla submission?  it would appear that the issue
> >>> involves any package with a "+" in the package name which, for now,
> >>> appears to be just that gtk+ package.  would any other special
> >>> characters trigger this?  that's the only package i've tripped over
> >>> that caused this behaviour.
> >>> 
> >>> rday
> >> 
> >> Yes, it has been identified. If you can't submit a bug, I can do.
> >> Yes, I believe other special characters will trigger that.
> >> 
> >> Just because I am not familiar with all fetch code, I can fix it for
> >> gtk+ now but I am not sure whether that fix will bring any
> >> regression bugs. Give me more time.
> >> 
> >    ok, i'll leave it in your capable hands and go find something else
> > 
> > to nitpick.
> 
> Has someone filed a bug on this yet?  It breaks all my builds now since
> I always use BB_NO_NETWORK="1" :-(

For reference, Gary has filed bug 2558 to track this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

