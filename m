Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F6ADE011AF
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 10:50:27 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Dec 2012 10:50:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,252,1355126400"; d="scan'208";a="261991839"
Received: from unknown (HELO helios.localnet) ([10.252.122.200])
	by fmsmga002.fm.intel.com with ESMTP; 10 Dec 2012 10:50:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tim Coote <tim+yoctoproject.org@coote.org>
Date: Mon, 10 Dec 2012 18:50:04 +0000
Message-ID: <2432260.5vqSSYcKBz@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <0A6B46B9-C866-4BE9-BBD3-936F67C9CFF6@coote.org>
References: <0A6B46B9-C866-4BE9-BBD3-936F67C9CFF6@coote.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: cannot find the pre-built kernel image for qemu for 1.3
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
X-List-Received-Date: Mon, 10 Dec 2012 18:50:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi there,

On Sunday 09 December 2012 19:29:29 Tim Coote wrote:
> I'm sure that this is an obvious mistake on my part, but I cannot spot what
> I'm doing wrong.  I'm pulling together an initial arm instance under qemu,
> following the instructions here: http://bit.ly/UObwg0. I'm using fedora,
> but I don't think that's relevant.
> 
> For 1.3, I cannot find the pre-built kernel images. I'd expect there to be a
> .bin file in here: http://bit.ly/UObPHz In the same way that the 1.2
> kernel's in here: http://bit.ly/UObTXV
> 
> Have I missed something? is it somewhere else?

This was apparently due to a bug in the release scripts - FYI the kernel 
images have now been published in the expected location.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

