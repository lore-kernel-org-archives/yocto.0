Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A792E003D9
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 10:32:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2012 10:32:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,302,1352102400"; d="scan'208";a="251155760"
Received: from unknown (HELO helios.localnet) ([10.252.122.201])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2012 10:32:04 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Nov 2012 18:32:03 +0000
Message-ID: <3412513.BZWBHXkP4o@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <1353592833.4660.29.camel@rogue>
References: <1353592833.4660.29.camel@rogue>
MIME-Version: 1.0
Subject: Re: Ada layer for Yocto
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
X-List-Received-Date: Thu, 22 Nov 2012 18:32:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 22 November 2012 14:00:33 Luke A. Guest wrote:
> I managed to get my Ada layer going for the official gumstix repo. I had
> the code in the wrong bbappend file, should be the gcc-cross, not the
> gcc one.
> 
> The repo is here: https://github.com/Lucretia/meta-ada

Thanks, I've added the layer to the layerindex [1].

Cheers,
Paul

[1] http://www.openembedded.org/wiki/LayerIndex

-- 

Paul Eggleton
Intel Open Source Technology Centre

