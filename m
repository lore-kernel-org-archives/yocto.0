Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB207E0156E
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 02:07:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 06 Aug 2013 02:04:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,825,1367996400"; d="scan'208";a="376827851"
Received: from unknown (HELO helios.localnet) ([10.252.122.203])
	by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2013 02:07:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Francesco Del Degan <f.deldegan@endian.com>
Date: Tue, 06 Aug 2013 10:07:17 +0100
Message-ID: <1711663.0D350BQnql@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <87iozjfe3p.fsf@endian.com>
References: <87iozjfe3p.fsf@endian.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Package specific version dependencies
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
X-List-Received-Date: Tue, 06 Aug 2013 09:07:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Francesco,

On Tuesday 06 August 2013 09:55:06 Francesco Del Degan wrote:
> Playing with RDEPENDS variable i'm facing the needs to
> specify a dependency based on specific version of a package
> (greather than, in my specific case).
> 
> The underlying package managers supports declaring dependencies
> including version relationships, for example:
> 
> Rpm:  Requires: package_xxx >= 1.0.27
> Deb:  Depends: libc6 (>= 2.2.1)
> Okpg: Depends: xfree (>= 6.0), glib2
> 
> Is this feature just missing in yocto or it's explicitly denied
> for some reason?

This should work, in fact we use it (with =) in conjunction with EXTENDPKGV 
when we want to force packages from the same recipe to upgrade in lock-step.

Have you tried adding these specifications to an RDEPENDS value?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

