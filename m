Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F38D4E00348
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 14:46:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jul 2012 14:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="194677411"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jul 2012 14:45:54 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 18 Jul 2012 14:45:53 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.187]) with mapi id
	14.01.0355.002; Wed, 18 Jul 2012 14:45:53 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: ERROR: QA Issue: Architecture did not match (62 to 3)  for
	linux-yocto_3.2.bb
Thread-Index: AQHNZHs85s3WE8uS70W04Q4UgEbUSZcuLapQgAB3ioD//4rYkIAAdpIAgADtL/A=
Date: Wed, 18 Jul 2012 21:45:52 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD3A64C@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20AD35FDA@ORSMSX105.amr.corp.intel.com>
	<5006016A.7070408@windriver.com>
	<D956029D25CF204F948EA0FB515E1EE20AD36007@ORSMSX105.amr.corp.intel.com>
	<50060371.2030301@windriver.com>
	<D956029D25CF204F948EA0FB515E1EE20AD36032@ORSMSX105.amr.corp.intel.com>
	<500604A0.4090001@windriver.com>
In-Reply-To: <500604A0.4090001@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3) for linux-yocto_3.2.bb
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
X-List-Received-Date: Wed, 18 Jul 2012 21:46:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>Sent: Tuesday, July 17, 2012 5:35 PM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org; Zanussi, Tom; Darren Hart
>Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3) for lin=
ux-
>yocto_3.2.bb
>
>On 12-07-17 8:32 PM, Bodke, Kishore K wrote:
>>
>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Tuesday, July 17, 2012 5:30 PM
>>> To: Bodke, Kishore K
>>> Cc: yocto@yoctoproject.org; Zanussi, Tom; Darren Hart
>>> Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3) for
>linux-
>>> yocto_3.2.bb
>>>
>>> On 12-07-17 8:25 PM, Bodke, Kishore K wrote:
>>>>
>>>>
>>>>> -----Original Message-----
>>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>>> Sent: Tuesday, July 17, 2012 5:21 PM
>>>>> To: Bodke, Kishore K
>>>>> Cc: yocto@yoctoproject.org
>>>>> Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3) fo=
r
>>> linux-
>>>>> yocto_3.2.bb
>>>>>
>>>>> On 12-07-17 8:16 PM, Bodke, Kishore K wrote:
>>>>>> Hi,
>>>>>>
>>>>>> I am using local clone for 3.2 kernel and I get build fail for
>>>>>> Linux-yocto_3.2.bb.
>>>>>>
>>>>>> WARNING: For recipe linux-yocto, the following files/directories wer=
e
>>>>>> installed but not shipped in any package:
>>>>>>
>>>>>> WARNING: /etc
>>>>>>
>>>>>> ERROR: QA Issue: Architecture did not match (62 to 3) on
>>>>>> /work/<....>/linux-yocto-
>>>>>
>>>
>3.2.18+git1+20958298c233d15b1d705e7b0eb93282d6ecb5de_1+7d26ac083cb2
>>>>> 55888536b42b622b97fb438753ad-r1/packages-split/kernel-
>>>>> vmlinux/boot/vmlinux-3.2.18-yocto-standard
>>>>>>
>>>>>> ERROR: QA run found fatal errors. Please consider fixing them.
>>>>>>
>>>>>> ERROR: Function failed: do_package_qa
>>>>>>
>>>>>> Any idea why I get this?
>>>>>
>>>>> It means you've managed to get a 32 bit object in a 64 bit build.
>>>>> Have you tweaked the configuration ?
>>>>
>>>> I have not edited any configuration.  I am using all 64 bit only.
>>>
>>> Can anyone else confirm this ? What BSP is this ? either it isn't
>>> listed above .. or I missed it. Tom ? Darren ? I don't have a build
>>> handy to check.
>>
>> I am building a new BSP which is not listed here.  That is the reason I =
am
>using local clone.
>> I cloned 3.2 kernel and created a new BSP based on ROMLEY.
>
>Without seeing your configuration, I can't say more. It looks like the
>tuning for userspace is 64 and you've built a 32 bit kernel, or vice
>versa.

I tried rebuilding from scratch. It built fine.
Not sure why it failed for the first time, Though it was the same configura=
tions settings I had.

Thanks
Kishore.

>
>Darren/Tom may be able to help more.
>
>Cheers,
>
>Bruce
>
>>
>> Thanks
>> Kishore.
>>
>>>
>>> I can start a build overnight to try and see what is happening, if you
>>> send the details about what you are building here.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Bruce
>>>>>
>>>>>>
>>>>>> Thanks
>>>>>>
>>>>>> Kishore.
>>>>>>
>>>>
>>


