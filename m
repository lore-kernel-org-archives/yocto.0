Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD09EE0123C
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 14:32:46 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Feb 2012 14:32:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112445956"
Received: from unknown (HELO envy.home) ([10.255.15.113])
	by azsmga001.ch.intel.com with ESMTP; 28 Feb 2012 14:32:46 -0800
Message-ID: <4F4D55EB.2050101@linux.intel.com>
Date: Tue, 28 Feb 2012 14:32:11 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <a85166ef33afd6f4c520e2cbffe74837240bdc84.1330467937.git.dvhart@linux.intel.com>
	<4F4D5545.8070108@windriver.com>
In-Reply-To: <4F4D5545.8070108@windriver.com>
X-Enigmail-Version: 1.3.5
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-kernel-dev: Fix quoting
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
X-List-Received-Date: Tue, 28 Feb 2012 22:32:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/28/2012 02:29 PM, Bruce Ashfield wrote:
> On 12-02-28 5:25 PM, Darren Hart wrote:
>> Several unquoted variables assignments are now resulting parse errors.
>> Correct them throughout meta-kernel-dev.
> 
> Looks good. I have the same fix that I didn't get around to pushing
> today.
> 
> I assume you'll push this into the layer ?

Done.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

