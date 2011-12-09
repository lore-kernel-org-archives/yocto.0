Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD938E00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 15:09:41 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Dec 2011 15:09:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="84177316"
Received: from unknown (HELO envy.home) ([10.255.12.30])
	by azsmga001.ch.intel.com with ESMTP; 09 Dec 2011 15:09:40 -0800
Message-ID: <4EE29544.8010206@linux.intel.com>
Date: Fri, 09 Dec 2011 15:09:56 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>, 
	Yocto Project <yocto@yoctoproject.org>
References: <4EE2911E.3090708@linux.intel.com>
In-Reply-To: <4EE2911E.3090708@linux.intel.com>
X-Enigmail-Version: 1.3.3
Subject: Re: linux-yocto: ktypes/tiny and some questions along the way
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
X-List-Received-Date: Fri, 09 Dec 2011 23:09:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/09/2011 02:52 PM, Darren Hart wrote:

> There are three patches in standard, only two of which (the perf ones)
> are listed in the standard.scc. As I believe any kernel we build should
> have these, I would like to see any global patches applied to base,
> leaving standard to define policy, and include named features.

I guess the same goes for patches/patches.scc. Seems like this belongs
in base as well. Possibly the same for arch/*/*.scc.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

