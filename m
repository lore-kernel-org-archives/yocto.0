Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EFE14C80B7B
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2011 03:12:43 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Apr 2011 01:12:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,281,1299484800"; d="scan'208";a="674084000"
Received: from unknown (HELO [10.255.12.210]) ([10.255.12.210])
	by fmsmga002.fm.intel.com with ESMTP; 01 Apr 2011 01:12:42 -0700
Message-ID: <4D9588FA.4060303@intel.com>
Date: Fri, 01 Apr 2011 01:12:42 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Li, Simon" <simon.li@intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECC073F3FE@pgsmsx507.gar.corp.intel.com>
	<4D94AD91.2060207@intel.com>
	<23F1A04A50711046AF124F3D4D1EB2ECC073F5EC@pgsmsx507.gar.corp.intel.com>
In-Reply-To: <23F1A04A50711046AF124F3D4D1EB2ECC073F5EC@pgsmsx507.gar.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to compile Qt library with bitbake?
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
X-List-Received-Date: Fri, 01 Apr 2011 08:12:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/31/2011 11:15 PM, Li, Simon wrote:
> Hi, Saul,
> Thanks for your reply. However, I got error messages as below:
> It seems not support "poky-image-sato-sdk"
Simon for 0.9 version then it would be poky-image-sdk, we changed the 
image name in 1.0.  Sorry for the confusion.

Sau!

> =====================================
> simonli@simonli-Aspire-2930:~/Yocto_related/pocky-4.0-build$ bitbake poky-image-sato-sdk
> NOTE: Psyco JIT Compiler (http://psyco.sf.net) not available. Install it to increase performance.
> NOTE: Handling BitBake files: \ (0844/0844) [100 %]
> Parsing of 844 .bb files complete (791 cached, 53 parsed). 997 targets, 34 skipped, 0 masked, 0 errors.
>
> OE Build Configuration:
> BB_VERSION        = "1.11.0"
> METADATA_BRANCH   = "<unknown>"
> METADATA_REVISION = "<unknown>"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "0.9"
> TARGET_FPU        = ""
>
> ERROR: Nothing PROVIDES 'poky-image-sato-sdk'
> Command execution failed: Traceback (most recent call last):
>    File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 88, in runAsyncCommand
>      commandmethod(self.cmds_async, self, options)
>    File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 184, in buildTargets
>      command.cooker.buildTargets(pkgs_to_build, task)
>    File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooker.py", line 756, in buildTargets
>      taskdata.add_provider(localdata, self.status, k)
>    File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 354, in add_provider
>      self.add_provider_internal(cfgData, dataCache, item)
>    File "/home/simonli/Yocto_related/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 374, in add_provider_internal
>      raise bb.providers.NoProvider(item)
> NoProvider: poky-image-sato-sdk
> =====================================
> Best Regards,
>
> Simon
>
>
> -----Original Message-----
> From: Wold, Saul
> Sent: Friday, April 01, 2011 12:37 AM
> To: Li, Simon
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to compile Qt library with bitbake?
>
> On 03/30/2011 11:52 PM, Li, Simon wrote:
>> To whom may concern,
>>
>> Since Qt library is not existed in the default build configuration, I
>> have to port it by myself.
>>
>> Is there any plan to compile Qt in the Yocto? I cannot find Qt with
>> zypper as well.
>>
> Simon,
>
> Qt4 is part of the yocto meta data.
>
> The poky-image-sato-sdk image contains the qt4-pkgs, so you can use the
> following command to build the image:
>
> bitbake poky-image-sato-sdk
>
> Sau!
>
>
>> If not, is there any document to describe how to complie Qt with bitbake?
>>
>> Best Regards,
>>
>> Simon Li
>>
>> Intel Software&  Service Group
>>
>> B1 #205 Tun-Hwa North Rd, Taipei, Taiwan
>>
>> Desk
>>
>> 	
>>
>> +886-2-2514-4287
>>
>> Mobile
>>
>> 	
>>
>> +886-987-303-523
>>
>> E-Mail
>>
>> 	
>>
>> simon.li@intel.com<mailto:gorden.nieh@intel.com>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


