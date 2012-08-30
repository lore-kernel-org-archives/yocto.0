Return-Path: <rahul.saxena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7072AE01404
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 22:06:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Aug 2012 22:06:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,337,1344236400"; d="scan'208";a="186988028"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 29 Aug 2012 22:06:04 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 29 Aug 2012 22:06:04 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.246]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.174]) with mapi id
	14.01.0355.002; Wed, 29 Aug 2012 22:06:03 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>, "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [yocto] Poky 1.3_M3 branch does not work with linux-yocto 3.0
	kernel ?
Thread-Index: Ac2EshDbe88X/yhnTvyfYJ1eQgJkOQBW5S/JAA7SzwAAAL4kAAAINXDQ
Date: Thu, 30 Aug 2012 05:06:03 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C4900332201E@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C4900332062C@ORSMSX103.amr.corp.intel.com>
	<503C3896.5080509@windriver.com> <503D1D55.1010205@intel.com>
	<CADkTA4MxAKcbtnEpCDKB==G2hxjRqt5F32kCqtg6HPo1QBcfUA@mail.gmail.com>
	<D956029D25CF204F948EA0FB515E1EE20AD632AA@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20AD632AA@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky 1.3_M3 branch does not work with linux-yocto 3.0 kernel ?
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
X-List-Received-Date: Thu, 30 Aug 2012 05:06:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Bodke, Kishore K
Sent: Wednesday, August 29, 2012 11:08 AM
To: Bruce Ashfield; Hart, Darren
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Poky 1.3_M3 branch does not work with linux-yocto 3.0 =
kernel ?



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-=20
>bounces@yoctoproject.org] On Behalf Of Bruce Ashfield
>Sent: Wednesday, August 29, 2012 10:47 AM
>To: Hart, Darren
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Poky 1.3_M3 branch does not work with linux-yocto=20
>3.0 kernel ?
>
>On Tue, Aug 28, 2012 at 3:34 PM, Darren Hart <darren.hart@intel.com> wrote=
:
>> On 08/27/2012 08:18 PM, Bruce Ashfield wrote:
>>> On 12-08-27 8:14 PM, Saxena, Rahul wrote:
>>>> Hi,
>>>>
>>>> I am building a BSP (meta-cedartrail) using 1.3 M3 branch of Poky.
>>>>
>>>> When I try to boot a image such as core-image-sato, I get kernel=20
>>>> panic and errors such as:
>>>>
>>>> VFS: Cannot open root device "ram0" or unkown-block(0,0)
>>>>
>>>> Please append a correct "root=3D" boot option; here are the available
>>>>
>>>> partitions:
>>>>
>>>> VFS: unable to mount root fs on unknown block(0,0)
>>>>
>>>> User configuration error - no valid rootfilesystem found
>>>>
>>>> I do see that the root file system exists in=20
>>>> cedartrail-poky-linux/core-image-sato-1.0-r0/rootfs dir..
>>>>
>>>> I did not see this problem when I uses a earlier commit of the Poky=20
>>>> master branch.
>>>>
>>>> It seems like something broke with 1.3 M3 branch that prevents a=20
>>>> proper build with 3.0 kernel. I do need to build my BSP with 3.0 kerne=
l.
>>>>
>>>> (I was also told by Laurentiu Serban that 1.3 M3 Full Pass testing=20
>>>> does not include testing with the 3.0 kernel)
>>>>
>>>> Any suggestions would be most welcome. I do need to build my BSP=20
>>>> with the 3.0 kernel.
>>>
>>> Hmm. It should work, I booted one not that long ago. Can you force
>>> qemux86 to prefer the 3.0 kernel and see if that boots ? That would=20
>>> at least start to isolate the potential problem areas.
>>
>> However, won't 3.0 be removed for the 1.3 release? Keeping with 3.4=20
>> and
>3.2?
>
>For 1.3 the 3 kernel sliding window plan was 3.4, 3.2 and 3.0 with=20
>2.6.37 being voted off the island. Or did you mean 1.4 ? Regardless,=20
>anything using 3.0 needs to be updated since it's time is running=20
>short! :)
>

Cedartrail BSP has PVR Graphics drivers which works only with 3.0 Kernel.

Thanks
Kishore.


I am mainly interested in ensuring 3.0 Kernel works with the next Yocto rel=
ease (i.e. Yocto 1.3)
since the CedarTrail BSP will work only with 3.0 Kernel due to a graphics d=
river dependency.

We will not port the Cedartrail BSP beyond Yocto 1.3.

Thanks
Rahul

>Cheers,
>
>Bruce
>
>>
>> --
>> Darren
>>
>>>
>>> Bruce
>>>
>>>>
>>>> Thanks
>>>>
>>>> Rahul
>>>>
>>>
>>
>>
>> --
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Linux Kernel
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>--
>"Thou shalt not follow the NULL pointer, for chaos and madness await=20
>thee at its end"
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

