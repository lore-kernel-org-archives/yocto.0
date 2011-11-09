Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 228D4E00309
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 06:41:43 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Nov 2011 06:41:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,484,1315206000"; d="scan'208";a="72322617"
Received: from unknown (HELO helios.localnet) ([10.252.121.129])
	by azsmga001.ch.intel.com with ESMTP; 09 Nov 2011 06:41:27 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: James Abernathy <jfabernathy@gmail.com>
Date: Wed, 09 Nov 2011 14:41:26 +0000
Message-ID: <1589795.WumM70vV8d@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.2 (Linux/3.0.0-12-generic-pae; KDE/4.7.2; i686; ; )
In-Reply-To: <CANFv2EkEsY92-+=Beqw_L68K0bT5HHSfy3fkw90xJgBre4wfHQ@mail.gmail.com>
References: <CANFv2EkEsY92-+=Beqw_L68K0bT5HHSfy3fkw90xJgBre4wfHQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: README.hardware
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
X-List-Received-Date: Wed, 09 Nov 2011 14:41:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 09 November 2011 09:34:40 James Abernathy wrote:
> In the atom-pc platform section, the Hard Disk option mentions a bitbake
> target of 'core-image-minimal-directdisk'.  This target is not listed as an
> option for bitbake after 'source oe-init-build-env' and if you try to use
> it, the bake will fail at some point due to invalid target.
> 
> Am I missing something or is this a documentation problem.

This is a documentation problem - for 1.1 there are no -directdisk or -live 
images; instead this is done by adding "live" to IMAGE_FSTYPES which is done 
automatically if MACHINE is set to atom-pc, so all you need to do is build the 
image you want (e.g. core-image-minimal) and you will also get a corresponding 
live image.

I noticed that we missed updating this document the other day and am putting 
together a patch for README.hardware to fix it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

