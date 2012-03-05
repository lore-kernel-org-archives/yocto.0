Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D895E0074A
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 08:41:23 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Mar 2012 08:41:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="117850248"
Received: from unknown (HELO helios.localnet) ([10.252.123.129])
	by orsmga002.jf.intel.com with ESMTP; 05 Mar 2012 08:41:20 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 05 Mar 2012 16:41:18 +0000
Message-ID: <1436379.5jf7mCHgF7@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <1330932003.2746.33.camel@babel.joshhome>
References: <CA452391058F6D4E9715FB2C29D9312A0113E694@039-SN2MPN1-021.039d.mgd.msft.net>
	<4F50EFFA.7080809@linux.intel.com>
	<1330932003.2746.33.camel@babel.joshhome>
MIME-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: initramfs support in Yocto
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
X-List-Received-Date: Mon, 05 Mar 2012 16:41:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 05 March 2012 12:50:03 Joshua Immanuel wrote:
> Which means that the initramfs contains the entire rootfs filesystem
> including the user space applications and its related libraries. In my
> case, the size of initramfs comes to 158 MB gziped to 66 MB. Most of the
> files in that are not needed for initramfs.

The recommendation here would be to use a separate recipe to produce the 
intramfs image - we have an example of this in recipes-core/images/core-image-
minimal-initramfs.bb. This way you can fully control the content of the 
initramfs independent of your root filesystem.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

