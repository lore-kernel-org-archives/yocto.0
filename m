Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDE72E01447
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 09:31:34 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Aug 2012 09:31:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="181252476"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 03 Aug 2012 09:31:33 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 3 Aug 2012 09:31:33 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.44]) with mapi id
	14.01.0355.002; Fri, 3 Aug 2012 09:31:32 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>
Thread-Topic: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
Thread-Index: AQHNcN1T6FUNdJbEi02kS/84l8+49ZdIrGsAgAAIGAD//5IRgA==
Date: Fri, 3 Aug 2012 16:31:32 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD448EE@ORSMSX105.amr.corp.intel.com>
References: <cover.1343932163.git.kishore.k.bodke@intel.com>
	<501BEDBA.9070900@windriver.com> <501BF484.2010904@linux.intel.com>
In-Reply-To: <501BF484.2010904@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
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
X-List-Received-Date: Fri, 03 Aug 2012 16:31:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Darren Hart [mailto:dvhart@linux.intel.com]
>Sent: Friday, August 03, 2012 8:56 AM
>To: Bruce Ashfield
>Cc: Bodke, Kishore K; yocto@yoctoproject.org
>Subject: Re: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
>
>
>
>On 08/03/2012 08:26 AM, Bruce Ashfield wrote:
>> On 12-08-02 02:35 PM, kishore.k.bodke@intel.com wrote:
>>> From: Kishore Bodke<kishore.k.bodke@intel.com>
>>>
>>> Hi,
>>>
>>> This is a revised patch set is for creating the new Crystal Forest Mach=
ine.
>>> Crystal Forest Machine is Sandybridge CPU with Cave Creek Chipset.
>>>
>>> This machine is based on standard/default/common-pc-64.
>>>
>>> Please create a new branch called standard/default/common-pc-
>64/crystalforest
>>> for linux-yocto-3.4 kernel and push this new meta branch.
>>
>> I'd rather not push this out right on the M3 pull request deadline,
>> but there is very little risk to it .. so I'm not really opinionated
>> on it.
>>
>> Can this wait a few days, or do we want/need it in M3 ?
>
>
>Kishore still needs to address the i915 question.


Hi Bruce,

This could wait until after M3, if it has to. =20

Hi Darren,

I have no idea if i915 is needed, I just derived from Romley since this is =
close to it.
I can try without this feature, but I would still keep it until I test with=
 all the 4 different versions of Crystal Forest Boards and remove it if it =
is not needed.

Thanks
Kishore.

>
>--
>Darren
>
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Thanks
>>> Kishore.
>>>
>>> The following changes since commit
>459165c1dd61c4e843c36e6a1abeb30949a20ba7:
>>>
>>>    kconf: add 8250 Kconfig to hardware listing audit (2012-07-26 16:23:=
26 -
>0400)
>>>
>>> are available in the git repository at:
>>>
>>>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-
>crystalforest
>>>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-
>contrib/log/?h=3Dkishore/meta-crystalforest
>>>
>>> Kishore Bodke (1):
>>>    meta: Crystal Forest Machine Created.
>>>
>>>   .../bsp/crystalforest/crystalforest-preempt-rt.scc |    9 ++++++
>>>   .../bsp/crystalforest/crystalforest-standard.scc   |    8 +++++
>>>   .../bsp/crystalforest/crystalforest.cfg            |   32
>++++++++++++++++++++
>>>   .../bsp/crystalforest/crystalforest.scc            |   23 +++++++++++=
+++
>>>   4 files changed, 72 insertions(+)
>>>   create mode 100644 meta/cfg/kernel-
>cache/bsp/crystalforest/crystalforest-preempt-rt.scc
>>>   create mode 100644 meta/cfg/kernel-
>cache/bsp/crystalforest/crystalforest-standard.scc
>>>   create mode 100644 meta/cfg/kernel-
>cache/bsp/crystalforest/crystalforest.cfg
>>>   create mode 100644 meta/cfg/kernel-
>cache/bsp/crystalforest/crystalforest.scc
>>>
>>
>
>--
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Technical Lead - Linux Kernel

