Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11898E005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 11:50:45 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Dec 2011 11:50:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="85110905"
Received: from sharon1-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.161])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2011 11:50:44 -0800
Message-ID: <4EE11521.40100@linux.intel.com>
Date: Thu, 08 Dec 2011 11:50:57 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Marc Ferland <marc.ferland@gmail.com>
References: <CAMRMzCDCBX15T8k+sAojLKiCwn_xReuFc-xyFCCGnBVYwzj7iQ@mail.gmail.com>
In-Reply-To: <CAMRMzCDCBX15T8k+sAojLKiCwn_xReuFc-xyFCCGnBVYwzj7iQ@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: Adding features to a machine
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
X-List-Received-Date: Thu, 08 Dec 2011 19:50:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/08/2011 11:13 AM, Marc Ferland wrote:
> Hi,
> 
> I have a crownbay based machine here and I would like to add the
> bluetooth machine feature to it. Do I have to create a whole new BSP for
> this? I haven't seen any examples showing how to _modify_ a machine
> description.


Have you tried modifying either MACHINE_FEATURES_crownbay or
KERNEL_FEATURES_crownbay from local.conf? I haven't attempted this
myself, but I believe it should work.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

