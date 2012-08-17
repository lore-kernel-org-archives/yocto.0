Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5CA7E002A6
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 06:36:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7HDa9q4018516
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Aug 2012 06:36:09 -0700 (PDT)
Received: from [128.224.146.65] (128.224.146.65) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Fri, 17 Aug 2012 06:36:09 -0700
Message-ID: <502E48C8.7060505@windriver.com>
Date: Fri, 17 Aug 2012 09:36:08 -0400
From: Paul Gortmaker <paul.gortmaker@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1343409056-6235-1-git-send-email-paul.gortmaker@windriver.com>
	<502D73D4.6090408@linux.intel.com>
In-Reply-To: <502D73D4.6090408@linux.intel.com>
X-Originating-IP: [128.224.146.65]
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 17 Aug 2012 13:36:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 12-08-16 06:27 PM, Saul Wold wrote:
> On 07/27/2012 10:10 AM, Paul Gortmaker wrote:
>> The updated patch series to support this target is in place
>> on the BSP specific branch in the 3.4 kernel tree now[1], so
>> we can move it ahead off of the old 3.0 kernel.
>>
>> [1] https://lists.yoctoproject.org/pipermail/linux-yocto/2012-July/000023.html
>>
>> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
>>
>> diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
>> index 3c2f56f..adf36a9 100644
>> --- a/meta-yocto/conf/machine/routerstationpro.conf
>> +++ b/meta-yocto/conf/machine/routerstationpro.conf
>> @@ -10,7 +10,7 @@ KERNEL_IMAGETYPE = "vmlinux"
>>   KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>>
>>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>> -PREFERRED_VERSION_linux-yocto ?= "3.0%"
>> +PREFERRED_VERSION_linux-yocto ?= "3.4%"
>>   PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
>>   XSERVER = "xserver-kdrive-fbdev"
>>
>> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> index 2ff467b..1c8d26a 100644
>> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> @@ -4,11 +4,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
>>   KBRANCH_beagleboard = "standard/beagleboard"
>>
>>   SRCREV_machine_atom-pc ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
>> -SRCREV_machine_routerstationpro ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
>> +SRCREV_machine_routerstationpro ?= "27019633ccdaa88dc55101615d936d1d74db9a1e"
>>   SRCREV_machine_mpc8315e-rdb ?= "47d3076aa7e2a640a1dab8d663529a784709f697"
>>   SRCREV_machine_beagleboard ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
>>
>>   COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>> -# COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>> +COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>>   # COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>>   COMPATIBLE_MACHINE_atom-pc = "atom-pc"
>>
> 
> Yup, this got lost, sorry about that.  It will need to be rebased 
> against the patchset that Bruce put up, as I am working with that set also.

I'll resend with the latest SRCREV.  Too bad SRCREV="latest" isn't
the default, it would save a lot of churn, at least in dev cycles
where there is no excuse for not wanting the latest...

> 
> Also, changes to meta-yocto should go to poky@yoctoproject.org.

Is there something akin to a maintainers file or similar that
adds some clarity as to what goes where?  I'm looking at the
list summaries here:  https://lists.yoctoproject.org/  and it
isn't helping me understand what bits I should send where.

Thanks,
Paul.
--

> 
> Sau!
> 

