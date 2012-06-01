Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B9FAE01443
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 14:20:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Jun 2012 14:20:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="173812884"
Received: from unknown (HELO envy.home) ([10.255.12.201])
	by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2012 14:20:03 -0700
Message-ID: <4FC931C4.3040409@linux.intel.com>
Date: Fri, 01 Jun 2012 14:19:00 -0700
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
	<4FC91488.9080106@gmail.com> <4FC91FE0.9040909@linux.intel.com>
	<4FC92118.1060606@gmail.com> <4FC921B3.8060904@linux.intel.com>
	<4FC926A6.2070902@gmail.com>
In-Reply-To: <4FC926A6.2070902@gmail.com>
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
X-List-Received-Date: Fri, 01 Jun 2012 21:20:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/01/2012 01:31 PM, jfabernathy wrote:
> On 06/01/2012 04:10 PM, Darren Hart wrote:
>>
>> On 06/01/2012 01:07 PM, jfabernathy wrote:
>>> On 06/01/2012 04:02 PM, Darren Hart wrote:
>>>>>> What is the boot error?
>>>>>>
>>>>> SYSLINUX 4.03 2010-10-22 CHS Load error- Boot error
>>>>>
>>>>> Jim A
>>>> OK, I suggest following the instructions for creating a USBZIP format in
>>>> README.hardware. If that fails, this merits a bug. Regardless, as rework
>>>> the images for 1.3, we should be able to avoid the many many boot errors
>>>> like this that people have been reporting and we've been working around.
>>>>
>>> I'll test the USBZIP method, but that has a many steps as the How Do I-
>>> hard drive method.  I think we need a script like ddimage for USBZIP method.
>>>
>> Attached. I've passed this out to a few people. Would people like to see
>> this in scripts/contrib?
>>
> I think the script is great and should be in the contrib directory.  One 
> question about it.  on the instructions to remove and reinsert the usb 
> key, mine automounts on reinsertion.  Is that going to create a 
> problem?? What the script created booted, but it seemed odd that the 
> automount happened, and the script seems to mount in the /tmp dir.

It should probably force an unmount in a few places. Care to write up a
patch?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

