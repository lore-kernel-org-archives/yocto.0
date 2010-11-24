Return-Path: <scott.a.garman@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 867614C80FA8
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 15:20:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Nov 2010 13:20:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,249,1288594800"; d="scan'208";a="352916382"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 13:20:51 -0800
Received: from [10.255.13.199] (10.255.13.199) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 24 Nov 2010 14:20:50 -0700
Message-ID: <4CED81B1.9050503@intel.com>
Date: Wed, 24 Nov 2010 13:20:49 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <AANLkTik_ZG=s7P-c0rojD8Udy-AW==WzOxHtKxYa1oON@mail.gmail.com>
In-Reply-To: <AANLkTik_ZG=s7P-c0rojD8Udy-AW==WzOxHtKxYa1oON@mail.gmail.com>
Subject: Re: Using poky qemy for powerpc
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
X-List-Received-Date: Wed, 24 Nov 2010 21:20:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2010 08:26 AM, sachin kumar wrote:
> Dear All:
>
> Please let me know if there is proper documentation of using poky qemu
> for running linux on powerpc platform.

Hi Sachin,

Our Quick Start guide has been updated to reflect the addtional 
arguments required by the poky-qemu script; see the end of:

http://www.yoctoproject.org/docs/yocto-quick-start/yocto-project-qs.html

and let me know if you are still having issues. I realize you've been 
having troubles with this and I'd like to help right them.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

