Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 569A4E0120A
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 19:40:25 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 29 Sep 2011 19:40:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,464,1312182000"; d="scan'208";a="22022010"
Received: from unknown (HELO envy.home) ([10.255.14.197])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Sep 2011 19:40:24 -0700
Message-ID: <4E852C18.7010500@intel.com>
Date: Thu, 29 Sep 2011 19:40:24 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <4BD43A85686FC34D819098DB1C3999D9018A7E818B@orsmsx502.amr.corp.intel.com>
	<4E851EF5.2010900@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9018A7E81C9@orsmsx502.amr.corp.intel.com>
In-Reply-To: <4BD43A85686FC34D819098DB1C3999D9018A7E81C9@orsmsx502.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: preempt-rt kernel shutdown now command does not work
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
X-List-Received-Date: Fri, 30 Sep 2011 02:40:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/29/2011 07:32 PM, Bodke, Kishore K wrote:
> Hi Darren,
> 
> For the non-rt "shutdown now" works perfectly fine. For the rt
> kernel, after the command is issued, it tries to halt the system and
> hangs there  forever after the connection to the X server is lost.

Sounds like a legitimate bug. It works in qemux86 with -rt. I'll be able
to test an rt image on a meta-intel board in the morning. In the mean
time, please open a bug and let us know how critical you feel it is.

Thanks,

--
Darren

> 
> Thanks Kishore.
> 
> -----Original Message----- From: Hart, Darren Sent: Thursday,
> September 29, 2011 6:44 PM To: Bodke, Kishore K Cc:
> yocto@yoctoproject.org Subject: Re: preempt-rt kernel shutdown now
> command does not work
> 
> On 09/29/2011 05:54 PM, Bodke, Kishore K wrote:
>> Hi,
>> 
>> "shutdown -h now" command is not working on core-image-sato image 
>> with preempt-rt kernel 3.0.4  on Romley and crystal forest BSP
>> 
>> I get Warning**: could not initialize ACPI battery. Xinit:
>> connection to X server lost. xinit: uexpected signal 15
> 
> Hi Kishore,
> 
> 
> I don't know that I've tried that specific command.
> 
> I see the unexpected signal message when shutting down the qemux86
> sato image (non-rt) with that or the halt command, but it does shut
> all the way down. In your case does the system continue to be
> responsive after issuing the command?
> 
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

