Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BF79E00536
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 11:48:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Oct 2011 11:48:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="58562528"
Received: from unknown (HELO envy.home) ([10.7.199.150])
	by orsmga001.jf.intel.com with ESMTP; 03 Oct 2011 11:48:32 -0700
Message-ID: <4E8A0380.1030502@linux.intel.com>
Date: Mon, 03 Oct 2011 11:48:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: GRUB fix for 1.1: Preferred approach for default grub version
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
X-List-Received-Date: Mon, 03 Oct 2011 18:48:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

When grub2 was merged int oe-core, it became the default (rather than
being explicitly requested by the 64b meta-intel BSPs). This breaks the
live install on 32b systems, like the n450 - installing grub v1.99 with
a grub v1 config.

We have a couple options on how to fix this.

1) Set PREFERRED_PROVIDER_grub="0.97" in all 32b x86 machine configs
2) Set DEFAULT_PREFERENCE="-1" in the grub_1.99.bb recipe which would
   affect all of oe-core.
3) Some alternate approach which would be the equivalent of
   DEFAULT_PREFERENCE, but only for meta-yocto BSPs or the poky
   "distro".

Given the time frame, I'd prefer to agree on the approach before writing
and testing patches. Preferences?

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

