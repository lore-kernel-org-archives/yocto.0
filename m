Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D0EBE017FC
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 02:49:27 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Nov 2013 02:49:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,651,1378882800"; d="scan'208";a="423666227"
Received: from unknown (HELO helios.localnet) ([10.252.121.102])
	by fmsmga001.fm.intel.com with ESMTP; 07 Nov 2013 02:48:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 07 Nov 2013 10:48:56 +0000
Message-ID: <2732208.eD41GxcQ8I@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311061409480.2880@oneiric>
References: <alpine.DEB.2.02.1311061409480.2880@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: should yocto filename references start with a leading slash?
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
X-List-Received-Date: Thu, 07 Nov 2013 10:49:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 06 November 2013 14:12:17 Robert P. J. Day wrote:
>   currently reading ref manual, section 6, and i'm seeing filename
> references of the form /meta-yocto/conf, /scripts/oe-setup-builddir,
> and so on.
> 
>   is it really appropriate for those filenames to begin with a leading
> slash? it seems unnecessary, and possibly a bit misleading. is there a
> reason for those leading slashes?

I'd have to agree, there should not be a leading slash. I see there are some 
paths in the reference manual where we use $HOME/poky/ as a prefix, those 
should probably also be removed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

