Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4724B4C80205
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 06:05:57 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jul 2011 04:05:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,534,1304319600"; d="scan'208";a="30682400"
Received: from unknown (HELO helios.localnet) ([10.255.17.182])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jul 2011 04:05:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Jul 2011 12:05:46 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <alpine.DEB.2.02.1107150616300.5001@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1107150616300.5001@localhost6.localdomain6>
MIME-Version: 1.0
Message-Id: <201107151205.46359.paul.eggleton@linux.intel.com>
Subject: Re: when checksums collide -- the saga of linux-2.6.37.2.tar.bz2
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
X-List-Received-Date: Fri, 15 Jul 2011 11:05:57 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Friday 15 July 2011 11:47:44 Robert P. J. Day wrote:
> unsurprisingly, the fetch for the linux tarball still failed for the
> same reason as before -- incorrect checksums.  huh.  i typically don't
> expect to see that in a simple fetch.  so check KERNELORG_MIRROR (http
> site), *manually* download that tarball and, sure enough, its md5 and
> sha256 sums are the (incorrect) ones that bitbake is reporting, which
> don't match what's expected.  how odd.  (i verified this two
> additional times, same result.)
> 
>   just as a test, i edited the bitbake.conf and changed
> KERNELORG_MIRROR to refer to the kernel ftp site, cleared out the
> remnants of that fetch, re-ran it and ... success!  huh?  so the
> tarball via http is broken, but the one via ftp is good?  but it was
> late, so i just threw up my hands and went to bed.
> 
>   this morning, manually download both tarballs (ftp and http), check
> their sums and ... they match!  reset everything, go back to the
> original http KERNELORG_MIRROR value and it's all good.  what the heck
> was *that* all about?

Do you still have the tarball with the bad md5sum? Can you diff the contents? 
Or was it simply a case of the bad tarball being truncated?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

