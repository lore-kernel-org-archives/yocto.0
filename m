Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D808DE0144E
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 17:00:41 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Dec 2012 17:00:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,320,1355126400"; d="scan'208";a="236696070"
Received: from unknown (HELO envy.home) ([10.255.14.13])
	by orsmga001.jf.intel.com with ESMTP; 19 Dec 2012 17:00:41 -0800
Message-ID: <50D25ED5.6000206@linux.intel.com>
Date: Wed, 19 Dec 2012 16:41:57 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
	<0fa9aa4dd2070f9f0245dc0af2958cfa895a04b5.1355766001.git.tom.zanussi@intel.com>
In-Reply-To: <0fa9aa4dd2070f9f0245dc0af2958cfa895a04b5.1355766001.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.6
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/5] scripts/lib/bsp/engine.py: refactor bsp-creation code
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
X-List-Received-Date: Thu, 20 Dec 2012 01:00:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/17/2012 09:51 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This does a bit of refactoring of the bsp-generation code to make it
> generically reusable for generating non-bsp layers.
> 
> The first user remains the existing yocto-bsp tool; these changes
> allow a second user, the new yocto-layer tool, to use the same code.

Aha, this is what I was looking for earlier - sorry my email search
pattern dropped this patch initially.

Just a cursory review, but looks good to me.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

