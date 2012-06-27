Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ECC1E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 10:52:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jun 2012 10:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="158888887"
Received: from unknown (HELO envy.home) ([10.7.199.154])
	by orsmga001.jf.intel.com with ESMTP; 27 Jun 2012 10:52:23 -0700
Message-ID: <4FEB47FD.4040301@linux.intel.com>
Date: Wed, 27 Jun 2012 10:50:53 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20ACE4833@ORSMSX105.amr.corp.intel.com>
	<CAMKF1spxgo3B2WxsRg=75Nhi8za6rHWejkjihiOoK_uro=8Ojw@mail.gmail.com>
	<D956029D25CF204F948EA0FB515E1EE20ACE5A89@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20ACE5A89@ORSMSX105.amr.corp.intel.com>
X-Enigmail-Version: 1.4.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Display issue with EFI BOOTING
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
X-List-Received-Date: Wed, 27 Jun 2012 17:52:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/27/2012 09:21 AM, Bodke, Kishore K wrote:
> 
> 
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: Friday, June 22, 2012 5:06 PM
>> To: Bodke, Kishore K
>> Cc: yocto@yoctoproject.org; Darren Hart (dvhart@linux.intel.com)
>> Subject: Re: [yocto] Display issue with EFI BOOTING
>>
>> On Fri, Jun 22, 2012 at 3:28 PM, Bodke, Kishore K
>> <kishore.k.bodke@intel.com> wrote:
>>> Hi,
>>>
>>>
>>>
>>> Yocto logo displays fines when booted with BIOS.
>>>
>>> But I see the Logo Display issue when booted with EFI.
>>>
>>> Attached are the screen shot.
>>>
>>> Any Idea why?
>>>
>>>
>>
>> may be screen refresh rate ? just shooting in dark here
> 
> Hi Darren,
> 
> Do you also see the Yocto logo distorted while booting with EFI?
> I don't see this distorted logo with BIOS.

No, it works as expected for me on the FRI2 BSP.

--
Darren

> 
> Thanks
> Kishore.
>>>
>>> Thanks
>>>
>>> Kishore.
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



