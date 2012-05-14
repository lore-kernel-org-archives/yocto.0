Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5BCFE013BB
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 09:32:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 May 2012 09:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="143764736"
Received: from dkrish4-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.153])
	by orsmga002.jf.intel.com with ESMTP; 14 May 2012 09:32:11 -0700
Message-ID: <4FB13360.9010601@linux.intel.com>
Date: Mon, 14 May 2012 09:31:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
	<20a3426ff2f30e450ec7b67de50bd92d2f09519e.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <20a3426ff2f30e450ec7b67de50bd92d2f09519e.1336851382.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 10/22] meta/sugarbay: factor out policy-related options
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
X-List-Received-Date: Mon, 14 May 2012 16:32:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/12/2012 12:41 PM, tom.zanussi@intel.com wrote:

>  include features/usb/ehci-hcd.scc
> -include features/usb/ohci-hcd.scc
> -include features/usb/uhci-hcd.scc

EHCI only?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

