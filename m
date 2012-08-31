Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 744D5E01446
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 01:31:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Aug 2012 01:30:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,346,1344236400"; d="scan'208";a="216575020"
Received: from unknown (HELO helios.localnet) ([10.252.121.160])
	by fmsmga001.fm.intel.com with ESMTP; 31 Aug 2012 01:30:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: ml@communistcode.co.uk, yocto@yoctoproject.org
Date: Fri, 31 Aug 2012 09:30:56 +0100
Message-ID: <1800372.7lpHqO07Rq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <5040751B.2070900@communistcode.co.uk>
References: <5040751B.2070900@communistcode.co.uk>
MIME-Version: 1.0
Subject: Re: meta-raspberry pi libav bbappend
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
X-List-Received-Date: Fri, 31 Aug 2012 08:31:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 31 August 2012 09:26:03 Jack Mitchell wrote:
> I'm attempting to build for the Raspberry Pi again today and I have hit
> a problem with libav. I have it BBMASK'ed in my local.conf however it
> seems the recipe still gets sanity checked and can't find the recipe to
> go with the bbappend so it fails.

If it's still being in any way considered by the build system when parsing 
actually starts, it's not properly BBMASKed. Check that your regex is valid.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

