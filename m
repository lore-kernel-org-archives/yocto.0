Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 332AFE0027F
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 09:45:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2012 09:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,797,1336374000"; d="scan'208";a="188823198"
Received: from unknown (HELO envy.home) ([10.7.199.146])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2012 09:39:27 -0700
Message-ID: <503267C8.6080904@linux.intel.com>
Date: Mon, 20 Aug 2012 09:37:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <cover.1345218399.git.mihaix.lindner@linux.intel.com>
	<43dcdb1922fe530749e6050df3a77bc95ba49620.1345218399.git.mihaix.lindner@linux.intel.com>
	<D956029D25CF204F948EA0FB515E1EE20AD5DDE8@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20AD5DDE8@ORSMSX105.amr.corp.intel.com>
X-Enigmail-Version: 1.4.3
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] meta-cedartrail: fixed PREFERRED_VERSION_linux-yocto
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
X-List-Received-Date: Mon, 20 Aug 2012 16:45:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/17/2012 09:54 AM, Bodke, Kishore K wrote:
> 
> 
>> -----Original Message-----
>> From: Mihai Lindner [mailto:mihaix.lindner@linux.intel.com]
>> Sent: Friday, August 17, 2012 8:54 AM
>> To: yocto@yoctoproject.org; Bodke, Kishore K
>> Subject: [PATCH 1/1] meta-cedartrail: fixed PREFERRED_VERSION_linux-yocto
>>
>> Missing PREFERRED_VERSION_linux-yocto generated NOTEs when building.
>> """
>> NOTE: preferred version 3.4% of linux-yocto not available (for item
>> virtual/kernel)
>> """
> 
> Acked-by: Kishore Bodke <kishore.k.bodke@intel.com>

Merged to master, thanks.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

