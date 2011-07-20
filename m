Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 28E4E4C800A3
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 22:00:15 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Jul 2011 20:00:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,232,1309762800"; d="scan'208";a="29660481"
Received: from unknown (HELO [10.255.14.58]) ([10.255.14.58])
	by orsmga001.jf.intel.com with ESMTP; 19 Jul 2011 20:00:11 -0700
Message-ID: <4E2644B7.5030109@linux.intel.com>
Date: Tue, 19 Jul 2011 20:00:07 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: "Li, Simon" <simon.li@intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECD100C5F6@pgsmsx507.gar.corp.intel.com>
	<4E25CE94.5080806@linux.intel.com>
	<23F1A04A50711046AF124F3D4D1EB2ECD100C755@pgsmsx507.gar.corp.intel.com>
In-Reply-To: <23F1A04A50711046AF124F3D4D1EB2ECD100C755@pgsmsx507.gar.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Yocto image for EeePC901
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
X-List-Received-Date: Wed, 20 Jul 2011 03:00:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/19/2011 07:49 PM, Li, Simon wrote:
> Hi, Darren,
> Yes, I use poky-image-sato-live and it works well on EeePC901 now.
> Since it run from USB drive directly, it runs quite slow.
> Is there any way to install it into SSD driver from USB drive?

At boot time, press tab at the syslinux boot: prompt, it will list
"boot" and "install". It runs "boot" by default. Type "install" followed
by Enter and it will attempt to install on the hard disk - it will
destroy any data on the drive, so beware.

--
Darren

> Thanks.
> 
> Best Regards,
> 
> Simon
> 
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com] 
> Sent: Wednesday, July 20, 2011 2:36 AM
> To: Li, Simon
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Build Yocto image for EeePC901
> 
> On 07/18/2011 11:17 PM, Li, Simon wrote:
>> To whom may concern,
>>
>> I tried to build Yocto for a real device, which is EeePC901. Because of
>> README.hardware mentioned.
>>
>> Here are my steps:
>> # source poky-bernard-5.0.1/poky-init-build.env build-poky-5.0.1
>>
>> Modify the local.conf (As attachment)
>>
>> # bitbake poky-image-sato-directdisk
>>
>> However I got the build failed, please refer to the attachment,
>> build_fail_log.txt
>>
>> I think the key fail message is
>>
>> | ERROR: Function 'poky-image-sato-directdisk: LIC_FILES_CHKSUM points
>> to invalid file: ${COREBASE}/LICENSE' failed
>>
>> Is there any problem I got? Or where can I find the files? Thanks.
> 
> I _think_ this has to do with the move from POKY to CORE in the naming.
> Looks like the directdisk image type may have been missed.
> 
> I suggest you try the poky-image-sato-live image and install from that.
> The directdisk images have some known issues that I suspect will prevent
> them from working for you.
> 
> --
> Darren
> 
>>
>>  
>>
>> Best Regards,
>>
>>  
>>
>> Simon
>>
>>  
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

