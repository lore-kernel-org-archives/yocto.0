Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EC46E014D0
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 01:14:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Apr 2013 01:14:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,399,1363158000"; d="scan'208";a="280072911"
Received: from unknown (HELO helios.localnet) ([10.255.13.234])
	by azsmga001.ch.intel.com with ESMTP; 03 Apr 2013 01:14:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ioana Grigoropol <ioanax.grigoropol@intel.com>
Date: Wed, 03 Apr 2013 09:14:05 +0100
Message-ID: <2562063.qdqmlPHIqx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <1363104333-15085-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1363104333-15085-1-git-send-email-ioanax.grigoropol@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Remove clutter project templates
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
X-List-Received-Date: Wed, 03 Apr 2013 08:14:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ioana,

On Tuesday 12 March 2013 18:05:33 Ioana Grigoropol wrote:
> - support for clutter was removed from core-image-sato along with
> clutter-box2d and thus the project templates in Eclipse should not be
> supported anymore; gtk templates should be used instead

The removal of clutter-box2d doesn't signal that clutter itself is 
unsupported, so I think maybe we shouldn't be removing these templates just 
yet.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

