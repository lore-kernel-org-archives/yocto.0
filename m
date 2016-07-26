Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D514E00D56; Tue, 26 Jul 2016 14:02:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D5AE00D47
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 14:02:22 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jul 2016 14:02:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,426,1464678000"; d="scan'208";a="854063604"
Received: from kleong8-mobl2.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.151.203])
	by orsmga003.jf.intel.com with ESMTP; 26 Jul 2016 14:02:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 27 Jul 2016 09:02:18 +1200
Message-ID: <2790869.UOM62mz7Au@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.4-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <nn6vhe$fct$1@ger.gmane.org>
References: <nn6vhe$fct$1@ger.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: minimal image without GPLv3
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
X-List-Received-Date: Tue, 26 Jul 2016 21:02:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Tue, 26 Jul 2016 09:21:34 Robert Berger wrote:
> I am yocto-izing people again and someone asked how to build a minimal
> Yocto image without GPLv3 components.
> 
> I said like this[1]
> 
> 1. Comment out the EXTRA_IMAGE_FEATURES line
> 2. Set INCOMPATIBLE_LICENSE = "GPL-3.0 LGPL-3.0 AGPL-3.0"
> 
> ... and indeed a core-image-minimal was built with alternative packages
> like busybox instead of bash ...
> 
> but it did not run on qemu due to some kernel issues.
> 
> I did not investigate it further, but is this s known problem?

Not that I know of - and on the face of it it seems unlikely that this would 
be related, unless perhaps the bootloader changed - most of the parts that are 
switched out under these circumstances are part of userspace; the tools used 
to build the kernel should be the same.

In any event this sort of thing shouldn't happen. Could you perhaps file a bug 
for this with more details?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

