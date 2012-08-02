Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF83E01443
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 13:36:27 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Aug 2012 13:36:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129752700"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Aug 2012 13:36:26 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 2 Aug 2012 13:36:25 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.210]) with mapi id
	14.01.0355.002; Thu, 2 Aug 2012 13:36:26 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine Created.
Thread-Index: AQHNcN1Rkcm+i+RPekqv8Vfpc40R3pdHZlEA//+T3jA=
Date: Thu, 2 Aug 2012 20:36:26 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD43645@ORSMSX105.amr.corp.intel.com>
References: <cover.1343932163.git.kishore.k.bodke@intel.com>
	<18e664ce60847e2b100e344c39304da494549f8f.1343932163.git.kishore.k.bodke@intel.com>
	<501ADC2C.6000502@linux.intel.com>
In-Reply-To: <501ADC2C.6000502@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine Created.
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
X-List-Received-Date: Thu, 02 Aug 2012 20:36:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Darren Hart [mailto:dvhart@linux.intel.com]
>Sent: Thursday, August 02, 2012 1:00 PM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com
>Subject: Re: [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine Created.
>
>Looks a lot better. One question still pending from my previous review
>though:
>
>On 08/02/2012 11:35 AM, kishore.k.bodke@intel.com wrote:
>
>> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
>b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
>> new file mode 100644
>> index 0000000..140a4d5
>> --- /dev/null
>> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
>> @@ -0,0 +1,23 @@
>> +kconf hardware crystalforest.cfg
>> +
>> +include cfg/x86_64.scc
>> +include cfg/8250.scc
>> +
>> +include features/i915/i915.scc
>
>Is this (i915) required for the Poulsbo graphics?

I am not quite sure on this.

Thanks
Kishore.

>
>--
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Technical Lead - Linux Kernel

