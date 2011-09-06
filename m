Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A33ADE0071A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 11:03:56 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 06 Sep 2011 11:03:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,340,1312182000"; d="scan'208";a="14506418"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Sep 2011 11:03:55 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 6 Sep 2011 11:03:53 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Tue, 6 Sep 2011 11:03:52 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 6 Sep 2011 11:03:50 -0700
Thread-Topic: [yocto] RT kernel with core-image-sato build failed for sugarbay
Thread-Index: AcxsvFvHpq+Rd8CrS0SADl73I+BqUQAApl3g
Message-ID: <4BD43A85686FC34D819098DB1C3999D90188A4C06E@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D901889D799F@orsmsx502.amr.corp.intel.com>
	<1314850760.10191.3.camel@elmorro> <4E5FF19D.6000409@linux.intel.com>
	<4BD43A85686FC34D819098DB1C3999D901889D7F2E@orsmsx502.amr.corp.intel.com>
	<4E5FF413.1090205@linux.intel.com>
	<4BD43A85686FC34D819098DB1C3999D901889D7F5C@orsmsx502.amr.corp.intel.com>
	<4E5FFE8F.3020307@linux.intel.com>
	<4BD43A85686FC34D819098DB1C3999D901889D7FF4@orsmsx502.amr.corp.intel.com>
	<4E665B84.3010006@linux.intel.com>
In-Reply-To: <4E665B84.3010006@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RT kernel with core-image-sato build failed for sugarbay
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
X-List-Received-Date: Tue, 06 Sep 2011 18:03:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darren,

With the below Tom's commit IDs, the build was success and I am moving ahea=
d with this.
I am not blocked.  I was also able to build and boot the Crystalforest BSP.

Thanks
Kishore.


-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Tuesday, September 06, 2011 10:42 AM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] RT kernel with core-image-sato build failed for sugarb=
ay

On 09/01/2011 03:05 PM, Bodke, Kishore K wrote:
> For the build I removed the rttests in the IMAGE_INSTALL , so it is not s=
howing up here.
>=20
> bitbake -e core-image-sato | egrep "IMAGE_INSTALL=3D"                    =
                      =20
> # MULTILIB_IMAGE_INSTALL=3D=20
> # IMAGE_INSTALL=3D${POKY_BASE_INSTALL}
> IMAGE_INSTALL=3D"task-core-boot     task-base-extended"
>=20
> I will rebuild with rttests and send the output.

Hi Kishore,

Where are you with this? Are you unblocked and moving ahead?

Thanks,

Darren

>=20
> Thanks
> Kishore.
>=20
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com]=20
> Sent: Thursday, September 01, 2011 2:52 PM
> To: Bodke, Kishore K
> Cc: Zanussi, Tom; yocto@yoctoproject.org; Hart, Darren; Saxena, Rahul
> Subject: Re: RT kernel with core-image-sato build failed for sugarbay
>=20
> Can you report the output of:
>=20
> $ bitbake -e core-image-sato | egrep "^IMAGE_INSTALL=3D"
>=20
> Thanks,
>=20
> Darren
>=20
> On 09/01/2011 02:14 PM, Bodke, Kishore K wrote:
>> Yeah, it is the same do_rootfs failure I get for both the builds.
>> Thanks
>> Kishore.
>>
>> -----Original Message-----
>> From: Darren Hart [mailto:dvhart@linux.intel.com]=20
>> Sent: Thursday, September 01, 2011 2:08 PM
>> To: Bodke, Kishore K
>> Cc: Zanussi, Tom; yocto@yoctoproject.org; Hart, Darren; Saxena, Rahul
>> Subject: Re: RT kernel with core-image-sato build failed for sugarbay
>>
>> On 09/01/2011 02:01 PM, Bodke, Kishore K wrote:
>>> Clean build with the below TOM's two commit IDs worked for me, if I
>>> do not add IMAGE_INSTALL +=3D "rttests" for sugarbay.
>>>
>>> It failed if I add the IMAGE_INSTALL +=3D "rttests"
>>
>> Do you get the same error? If so, it's starting to sound like the second
>> build is what fails since neither of your failure scenarios include
>> a change that's related to the failure. Perhaps an issue with sstate...
>>
>> --
>> Darren
>>
>>>
>>> Thanks Kishore. -----Original Message----- From: Darren Hart
>>> [mailto:dvhart@linux.intel.com] Sent: Thursday, September 01, 2011
>>> 1:57 PM To: Zanussi, Tom Cc: Bodke, Kishore K;
>>> yocto@yoctoproject.org; Hart, Darren; Saxena, Rahul Subject: Re: RT
>>> kernel with core-image-sato build failed for sugarbay
>>>
>>>
>>>
>>> On 08/31/2011 09:19 PM, Tom Zanussi wrote:
>>>>
>>>> On Wed, 2011-08-31 at 16:49 -0700, Bodke, Kishore K wrote:
>>>>> Hi,
>>>>>
>>>>>
>>>>>
>>>>> I am trying to build core-image-sato with rt kernel for sugarbay
>>>>> and it fails for the do_rootfs .
>>>>>
>>>>
>>>> FWIW, I was able to build and boot core-image-sato with the rt
>>>> kernel:
>>>>
>>>> Linux sugarbay 3.0.3-rt8-yocto-preempt-rt+ #1 SMP PREEMPT RT Wed
>>>> Aug 31 21:33:27 CDT 2011 x86_64 GNU/Linux
>>>>
>>>> using the following commits:
>>>>
>>>> poky/master 705ec50edda7f7fb8c132238fe3f1477384a470e meta/intel
>>>> 902d2f3c919cd1d870dc8d35a7521cbba42e53ea
>>>>
>>>> Actually, meta/intel was that commit with Darren's grub patch on
>>>> top (meta-intel/dvhart/grub-freetype).
>>>>
>>>
>>> Kishore, would you try with a clean build and see if this works for
>>> you?
>>>
>>> I'm going to try and build first without -rt and then with rt and see
>>> if I can reproduce the issue.
>>>
>>> Thanks,
>>>
>>> Darren
>>>
>>>> Tom
>>>>
>>>>>
>>>>>
>>>>> Attached is the build log.
>>>>>
>>>>>
>>>>>
>>>>> Could you please let me know what went wrong?
>>>>>
>>>>>
>>>>>
>>>>> Thanks
>>>>>
>>>>> Kishore.
>>>>>
>>>>>
>>>>
>>>>
>>>
>>
>=20

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

