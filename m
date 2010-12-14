Return-Path: <scott.a.garman@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08B864C80FA4
	for <yocto@yoctoproject.org>; Tue, 14 Dec 2010 16:30:04 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Dec 2010 14:29:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,344,1288594800"; d="scan'208";a="361710873"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 14 Dec 2010 14:29:59 -0800
Received: from [10.255.13.70] (10.255.13.70) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Tue, 14 Dec 2010 15:29:59 -0700
Message-ID: <4D07EFE5.8040701@intel.com>
Date: Tue, 14 Dec 2010 14:29:57 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <789F9655DD1B8F43B48D77C5D30659733104D391@shsmsx501.ccr.corp.intel.com>		<4D013F9C.2010404@intel.com>
	<1291988079.1554.939.camel@rex>	<789F9655DD1B8F43B48D77C5D3065973312DC52B@shsmsx501.ccr.corp.intel.com>	<4D0581FC.2030600@intel.com>	<789F9655DD1B8F43B48D77C5D3065973312DCC45@shsmsx501.ccr.corp.intel.com>
	<4D07EF67.5090107@intel.com>
In-Reply-To: <4D07EF67.5090107@intel.com>
Subject: Re: Add extra parameters for qemu script
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
X-List-Received-Date: Tue, 14 Dec 2010 22:30:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/14/2010 02:27 PM, Scott Garman wrote:
> On 12/13/2010 07:41 PM, Ke, Liping wrote:
>> Hi, Scott
>>
>> I have updated the patch and tested with poky-tree mode (arm, x86).
>> Since kvm and serial needs special processing, so for avoiding repeating the code, I will exclude serial and kvm in permitted extra-option, user need to use (serial, kvm) it they want to use it.
>>
>> For "<-m XXX>" options, I will keep the original logic. If it's arm, the>   128M memory will be forced back to 128M.
>>
>> It's the high-level user's responsibility to make sure other params are valid.
>>
>> Any problem, just let me know.
>>
>> Thanks a lot for your help!
>
> Thanks for the patch, Criping.
>
> This patch includes the addition of a do_configure_prepend step for the
> libxfixes recipe? That looks like some debugging info crept in that may
> not have been intended.
>
> In the usage() function, please use $MYNAME instead of $0 for
> consistency - see the other help echo lines.
>
> The rest of the patch looks ok. Please respin one last time with the
> above minor changes and I'll accept it.

One final thing - when you resubmit your patch this time, could you use 
the create-pull-request/send-pull-request scripts? That way the patch 
can be pulled in by Richard or Saul with minimal effort, and it will 
help ensure you get proper credit in the commit log.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

