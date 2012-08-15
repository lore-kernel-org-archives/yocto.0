Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90FD9E01400
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 13:18:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7FKINFq014060
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 15 Aug 2012 13:18:23 -0700 (PDT)
Received: from [128.224.146.65] (128.224.146.65) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Wed, 15 Aug 2012 13:18:22 -0700
Message-ID: <502C040D.8000402@windriver.com>
Date: Wed, 15 Aug 2012 16:18:21 -0400
From: Paul Gortmaker <paul.gortmaker@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1343409056-6235-1-git-send-email-paul.gortmaker@windriver.com>
	<50131526.1030708@linux.intel.com>
In-Reply-To: <50131526.1030708@linux.intel.com>
X-Originating-IP: [128.224.146.65]
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH] routerstationpro: move board off 3.0 and onto the 3.4 kernel
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
X-List-Received-Date: Wed, 15 Aug 2012 20:18:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 12-07-27 06:24 PM, Darren Hart wrote:
> 
> 
> On 07/27/2012 10:10 AM, Paul Gortmaker wrote:
>> The updated patch series to support this target is in place
>> on the BSP specific branch in the 3.4 kernel tree now[1], so
>> we can move it ahead off of the old 3.0 kernel.
>>
>> [1] https://lists.yoctoproject.org/pipermail/linux-yocto/2012-July/000023.html
>>
>> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> 
> Acked-by: Darren Hart <dvhart@linux.intel.com>

Hi All,

Just checking this didn't fall through the cracks since it has
been two weeks.

Thanks,
Paul.
--

> 
>>
>> diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
>> index 3c2f56f..adf36a9 100644
>> --- a/meta-yocto/conf/machine/routerstationpro.conf
>> +++ b/meta-yocto/conf/machine/routerstationpro.conf
>> @@ -10,7 +10,7 @@ KERNEL_IMAGETYPE = "vmlinux"
>>  KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>>  
>>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>> -PREFERRED_VERSION_linux-yocto ?= "3.0%"
>> +PREFERRED_VERSION_linux-yocto ?= "3.4%"
>>  PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
>>  XSERVER = "xserver-kdrive-fbdev"
>>  
>> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> index 2ff467b..1c8d26a 100644
>> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> @@ -4,11 +4,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
>>  KBRANCH_beagleboard = "standard/beagleboard"
>>  
>>  SRCREV_machine_atom-pc ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
>> -SRCREV_machine_routerstationpro ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
>> +SRCREV_machine_routerstationpro ?= "27019633ccdaa88dc55101615d936d1d74db9a1e"
>>  SRCREV_machine_mpc8315e-rdb ?= "47d3076aa7e2a640a1dab8d663529a784709f697"
>>  SRCREV_machine_beagleboard ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
>>  
>>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>> -# COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>> +COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>>  # COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>>  COMPATIBLE_MACHINE_atom-pc = "atom-pc"
>>
> 

