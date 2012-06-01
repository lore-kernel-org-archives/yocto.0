Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4553AE01443
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 13:13:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Jun 2012 13:13:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="147144441"
Received: from unknown (HELO envy.home) ([10.255.12.201])
	by orsmga001.jf.intel.com with ESMTP; 01 Jun 2012 13:13:17 -0700
Message-ID: <4FC9221E.2040008@linux.intel.com>
Date: Fri, 01 Jun 2012 13:12:14 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4FC79837.2070309@gmail.com> <4FC7B4E3.1010401@linux.intel.com>
	<4FC7BE80.4060700@gmail.com> <4FC7C965.1020809@linux.intel.com>
	<4FC8E39D.3010702@gmail.com> <4FC8F564.90704@linux.intel.com>
	<4FC8FE53.4030508@gmail.com> <4FC8FF90.20403@linux.intel.com>
	<4FC90183.2080107@gmail.com> <4FC9021D.1050706@linux.intel.com>
	<4FC92126.1020105@gmail.com>
In-Reply-To: <4FC92126.1020105@gmail.com>
X-Enigmail-Version: 1.4.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - serial console
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
X-List-Received-Date: Fri, 01 Jun 2012 20:13:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/01/2012 01:08 PM, jfabernathy wrote:

> Next test is to see how to override the syslinux and kernel boot console 
> statements in cedartrail.conf by placing statements in local.conf.
> 

SYSLINUX_OPTS



-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

