Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED1AE0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 12:38:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Oct 2012 12:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="210192540"
Received: from unknown (HELO envy.home) ([10.255.14.162])
	by orsmga001.jf.intel.com with ESMTP; 24 Oct 2012 12:38:31 -0700
Message-ID: <50884375.1080001@linux.intel.com>
Date: Wed, 24 Oct 2012 12:37:25 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1351085269.git.tom.zanussi@intel.com>
	<d9037bc868e67e785495e15e837a66385cb0062c.1351085269.git.tom.zanussi@intel.com>
In-Reply-To: <d9037bc868e67e785495e15e837a66385cb0062c.1351085269.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.5
Cc: yocto@yoctoproject.org, paul.eggleton@linux.intel.com
Subject: Re: [PATCH 1/1] meta-intel: fix VA_FEATURES assignment in machine configs
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
X-List-Received-Date: Wed, 24 Oct 2012 19:38:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 10/24/2012 06:30 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> commit 2231d38 (meta-intel: make video acceleration choice dependent
> on LICENSE_FLAGS) inadvertently also changed '?=' to a hard
> assignment, making it hard to override as intended.  This changes it
> back.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>


Acked-by: Darren Hart <dvhart@linux.intel.com>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

