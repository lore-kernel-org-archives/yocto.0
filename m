Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86437E0169E
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 08:48:51 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Nov 2013 08:48:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,700,1378882800"; d="scan'208";a="433522433"
Received: from pmcgurk-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.79])
	by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2013 08:48:50 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Thu, 14 Nov 2013 16:48:48 +0000
Message-ID: <1733345.i7ehKFuPNv@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311140901570.24348@oneiric>
References: <alpine.DEB.2.02.1311140901570.24348@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: is the ref manual DISTRO_FEATURES list meant to be exhaustive?
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
X-List-Received-Date: Thu, 14 Nov 2013 16:48:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Thursday 14 November 2013 09:05:09 Robert P. J. Day wrote:
>   just noticed that the list of DISTRO_FEATURES values listed here:
> 
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-featu
> res-distro
> 
> is somewhat incomplete. is that deliberate? just from poking around
> the dora release, i can see tests for DISTRO_FEATURES values of ptest,
> directfb, pam, zeroconf, acl, xattr, sysvinit and more. should those
> values also be part of that list, or is the ref manual only attempting
> to present a subset?

It's meant to be complete. I think as new values have been introduced we have 
neglected to add them to the list, but they should be added.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

