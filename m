Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA9A4E002A5
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 08:12:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Aug 2012 08:12:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,773,1336374000"; d="scan'208";a="181062400"
Received: from unknown (HELO envy.home) ([10.255.13.24])
	by orsmga001.jf.intel.com with ESMTP; 15 Aug 2012 08:12:03 -0700
Message-ID: <502BBBD6.7060204@intel.com>
Date: Wed, 15 Aug 2012 08:10:14 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1344927805.git.nitin.a.kamble@intel.com>
	<d441d277d3f4aaa5a4ec8de76cfcf5bb4aed3058.1344927805.git.nitin.a.kamble@intel.com>
In-Reply-To: <d441d277d3f4aaa5a4ec8de76cfcf5bb4aed3058.1344927805.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] sys940x: fix libva dependency issues
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
X-List-Received-Date: Wed, 15 Aug 2012 15:12:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/14/2012 12:07 AM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This fixes bug:
> [YOCTO #2946]
> 
> Avoids these errors:
> | error: Failed dependencies:
> | libva.so.1 is needed by libegl1-1.10-r0.core2
> | libva-tpi.so.1 is needed by libegl1-1.10-r0.core2
> | libva-x11.so.1 is needed by libegl1-1.10-r0.core2
> NOTE: package core-image-sato-sdk-1.0-r0: task do_rootfs: Failed
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Darren Hart <dvhart@linux.intel.com>

Merged, Thanks.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

