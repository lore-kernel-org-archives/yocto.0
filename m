Return-Path: <darren.hart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D2A3E0049D
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 15:14:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Oct 2012 15:14:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,537,1344236400"; d="scan'208";a="230133375"
Received: from unknown (HELO envy.home) ([10.255.13.182])
	by fmsmga001.fm.intel.com with ESMTP; 04 Oct 2012 15:14:28 -0700
Message-ID: <506E0A16.3000002@intel.com>
Date: Thu, 04 Oct 2012 15:13:42 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <cover.1349381455.git.nitin.a.kamble@intel.com>
	<ADD6A3980E8C39419A432FF422031B4C1572F973@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C1572F973@ORSMSX106.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] meta-intel misc commits
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
X-List-Received-Date: Thu, 04 Oct 2012 22:14:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm familiar with the user-guide and have read through it. What I'm
saying is that there should be a technical reason for adding a kernel
command line and we should cite it in the commit. How does this improve
the current state of things?

--
Darren

On 10/04/2012 02:56 PM, Kamble, Nitin A wrote:
> Darren,
>    The EMGD user guide is attached for reference.
> Thanks,
> Nitin
> 
> 
>> -----Original Message-----
>> From: Kamble, Nitin A
>> Sent: Thursday, October 04, 2012 1:17 PM
>> To: Hart, Darren; Zanussi, Tom; yocto@yoctoproject.org
>> Cc: Kamble, Nitin A
>> Subject: [PATCH 0/1] meta-intel misc commits
>>
>> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>>
>> Here is a commit to add a kernel parameter to crownbay BSP. It is
>> recommended in the EMGD 1.14 User Guide for video acceleration with the
>> EMGD driver.
>>
>> Darren,
>>   Other EMGD based BSPs like FRI2 & sys940x should add the vmalloc=256MB
>> kernel parameter too. (not needed for noemgd BSPs)
>>
>> Thanks,
>> Nitin
>>
>> The following changes since commit
>> bc6f631c1eaa7154e667325da8fd636a05628f87:
>>
>>   jasperforest: uprev v3.4 kernel commit ids (2012-10-04 14:21:55 -0500)
>>
>> are available in the git repository at:
>>   git://git.yoctoproject.org/meta-intel-contrib nitin/misc
>>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc
>>
>> Nitin A Kamble (1):
>>   crownbay.conf: add kernel parameters for EMGD video acceleration
>>
>>  meta-crownbay/conf/machine/crownbay.conf |    2 +-
>>  1 files changed, 1 insertions(+), 1 deletions(-)
>>
>> --
>> 1.7.3.4

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

