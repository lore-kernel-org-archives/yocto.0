Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50EEBE01206;
	Wed, 23 May 2012 11:28:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 May 2012 11:28:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="143859614"
Received: from unknown (HELO envy.home) ([10.7.199.60])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2012 11:28:09 -0700
Message-ID: <4FBD2C0C.4030109@intel.com>
Date: Wed, 23 May 2012 11:27:24 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com>
	<20120523054439.75DAD20025A@gemini.denx.de>
In-Reply-To: <20120523054439.75DAD20025A@gemini.denx.de>
Cc: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison 6.0.1
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
X-List-Received-Date: Wed, 23 May 2012 18:28:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/22/2012 10:44 PM, Wolfgang Denk wrote:
> Dear Elizabeth,
> 
> In message <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com> you wrote:
>>
>> This release enables the BSP to use the latest available kernel
>> patches for Intel's PowerVR graphics driver. The BSP image includes
>> time limited kernel images for testing purposes.
> 
> This is probaby a stupid question, so I apologize in advance:
> 
> What is a time limited kernel image?

In short: the time limited kernel limits uptime and warns the user via
the system log.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

