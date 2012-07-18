Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59146E002A8
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 17:32:08 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 17 Jul 2012 17:32:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="123668415"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Jul 2012 17:32:07 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 17 Jul 2012 17:32:07 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.235]) with mapi id
	14.01.0355.002; Tue, 17 Jul 2012 17:32:07 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: ERROR: QA Issue: Architecture did not match (62 to 3)  for
	linux-yocto_3.2.bb
Thread-Index: AQHNZHs85s3WE8uS70W04Q4UgEbUSZcuLapQgAB3ioD//4rYkA==
Date: Wed, 18 Jul 2012 00:32:06 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD36032@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20AD35FDA@ORSMSX105.amr.corp.intel.com>
	<5006016A.7070408@windriver.com>
	<D956029D25CF204F948EA0FB515E1EE20AD36007@ORSMSX105.amr.corp.intel.com>
	<50060371.2030301@windriver.com>
In-Reply-To: <50060371.2030301@windriver.com>
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
X-List-Received-Date: Wed, 18 Jul 2012 00:32:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>Sent: Tuesday, July 17, 2012 5:30 PM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org; Zanussi, Tom; Darren Hart
>Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3) for lin=
ux-
>yocto_3.2.bb
>
>On 12-07-17 8:25 PM, Bodke, Kishore K wrote:
>>
>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Tuesday, July 17, 2012 5:21 PM
>>> To: Bodke, Kishore K
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3) for
>linux-
>>> yocto_3.2.bb
>>>
>>> On 12-07-17 8:16 PM, Bodke, Kishore K wrote:
>>>> Hi,
>>>>
>>>> I am using local clone for 3.2 kernel and I get build fail for
>>>> Linux-yocto_3.2.bb.
>>>>
>>>> WARNING: For recipe linux-yocto, the following files/directories were
>>>> installed but not shipped in any package:
>>>>
>>>> WARNING: /etc
>>>>
>>>> ERROR: QA Issue: Architecture did not match (62 to 3) on
>>>> /work/<....>/linux-yocto-
>>>
>3.2.18+git1+20958298c233d15b1d705e7b0eb93282d6ecb5de_1+7d26ac083cb2
>>> 55888536b42b622b97fb438753ad-r1/packages-split/kernel-
>>> vmlinux/boot/vmlinux-3.2.18-yocto-standard
>>>>
>>>> ERROR: QA run found fatal errors. Please consider fixing them.
>>>>
>>>> ERROR: Function failed: do_package_qa
>>>>
>>>> Any idea why I get this?
>>>
>>> It means you've managed to get a 32 bit object in a 64 bit build.
>>> Have you tweaked the configuration ?
>>
>> I have not edited any configuration.  I am using all 64 bit only.
>
>Can anyone else confirm this ? What BSP is this ? either it isn't
>listed above .. or I missed it. Tom ? Darren ? I don't have a build
>handy to check.

I am building a new BSP which is not listed here.  That is the reason I am =
using local clone.
I cloned 3.2 kernel and created a new BSP based on ROMLEY.

Thanks
Kishore.

>
>I can start a build overnight to try and see what is happening, if you
>send the details about what you are building here.
>
>Cheers,
>
>Bruce
>
>>
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> Thanks
>>>>
>>>> Kishore.
>>>>
>>


