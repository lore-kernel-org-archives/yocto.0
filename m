Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E0D3E0034A
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 02:18:31 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Jul 2012 02:18:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="183874603"
Received: from unknown (HELO helios.localnet) ([10.252.121.29])
	by fmsmga001.fm.intel.com with ESMTP; 23 Jul 2012 02:18:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Mon, 23 Jul 2012 10:18:29 +0100
Message-ID: <3954503.suT57LYYZ1@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <0944C5D8-3610-4A02-B396-95186FD62F5C@gmail.com>
References: <0944C5D8-3610-4A02-B396-95186FD62F5C@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Do the recent changes to core-image-minimal provide a root login prompt?
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
X-List-Received-Date: Mon, 23 Jul 2012 09:18:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 21 July 2012 20:33:02 Elvis Dowson wrote:
> Hi,
>       Do the recent changes to core-image-minimal provide a root login
> prompt?
> 
> When I build it for the PowerPC440 on the Virtex5 FPGA, the size of the
> core-image-minimal-virtex5.tar.gz file is only around 3.2 MB, so I was
> wondering if the basic functionality provided by core-image-minimal
> includes booting to a root login console?

It does (and always has). The core-image-minimal image recipe itself hasn't 
changed in a while though, what gave you the impression it had?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

