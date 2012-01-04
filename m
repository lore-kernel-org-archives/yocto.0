Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FA10E006DD
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2012 08:16:34 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2012 08:16:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="108695783"
Received: from vtippara-mobl.amr.corp.intel.com (HELO envy.home)
	([10.19.147.145])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2012 08:16:32 -0800
Message-ID: <4F047B4F.7020809@linux.intel.com>
Date: Wed, 04 Jan 2012 08:16:15 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
	<ffa7a3dfe6a46305c98f2ae7fd05f21a3d220fa8.1325115602.git.dvhart@linux.intel.com>
	<CAMKF1so814A+hqP=xqWjhQCeuwkg__V67Q5OMjYqzsh5k+-tKg@mail.gmail.com>
In-Reply-To: <CAMKF1so814A+hqP=xqWjhQCeuwkg__V67Q5OMjYqzsh5k+-tKg@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/3] distro: Add poky-tiny distro definition
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
X-List-Received-Date: Wed, 04 Jan 2012 16:16:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/03/2012 04:19 PM, Khem Raj wrote:
> On Wed, Dec 28, 2011 at 3:45 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>> Poky-tiny is intended for building very small OS images. The distro
>> definition sets the providers for the kernel and the runtime services.
>> It also reduces the eglibc component list and other DISTRO_FEATURE
>> elements.
>>
>> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
>> ---
>>  meta-yocto/conf/distro/poky-tiny.conf |  103 +++++++++++++++++++++++++++++++++
>>  1 files changed, 103 insertions(+), 0 deletions(-)
>>  create mode 100644 meta-yocto/conf/distro/poky-tiny.conf
>>
>> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
>> new file mode 100644
>> index 0000000..49c4397
>> --- /dev/null
>> +++ b/meta-yocto/conf/distro/poky-tiny.conf
>> @@ -0,0 +1,103 @@
>> +# Distribution definition for: poky-tiny
>> +#
>> +# Copyright (c) 2011, Intel Corporation.
>> +# All rights reserved.
>> +#
> 
> should this be MIT licensed ?
> or do u plan to keep it closed.

Should be MIT - my understanding was that was the default if no license
was specified in a particular file. Is that not correct?


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

