Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FB4EE00769
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 11:08:10 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Aug 2012 11:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,335,1344236400"; d="scan'208";a="215828600"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 29 Aug 2012 11:08:09 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 29 Aug 2012 11:08:08 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.178]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.246]) with mapi id
	14.01.0355.002; Wed, 29 Aug 2012 11:08:07 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>, "Hart, Darren"
	<darren.hart@intel.com>
Thread-Topic: [yocto] Poky 1.3_M3 branch does not work with linux-yocto 3.0
	kernel ?
Thread-Index: AQHNhMwME3GmTVwxyEaiEW+DAl5V5pdwFBuAgAF0LgD//5AjkA==
Date: Wed, 29 Aug 2012 18:08:06 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD632AA@ORSMSX105.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C4900332062C@ORSMSX103.amr.corp.intel.com>
	<503C3896.5080509@windriver.com> <503D1D55.1010205@intel.com>
	<CADkTA4MxAKcbtnEpCDKB==G2hxjRqt5F32kCqtg6HPo1QBcfUA@mail.gmail.com>
In-Reply-To: <CADkTA4MxAKcbtnEpCDKB==G2hxjRqt5F32kCqtg6HPo1QBcfUA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
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
X-List-Received-Date: Wed, 29 Aug 2012 18:08:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Bruce Ashfield
>Sent: Wednesday, August 29, 2012 10:47 AM
>To: Hart, Darren
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Poky 1.3_M3 branch does not work with linux-yocto 3.0
>kernel ?
>
>On Tue, Aug 28, 2012 at 3:34 PM, Darren Hart <darren.hart@intel.com> wrote=
:
>> On 08/27/2012 08:18 PM, Bruce Ashfield wrote:
>>> On 12-08-27 8:14 PM, Saxena, Rahul wrote:
>>>> Hi,
>>>>
>>>> I am building a BSP (meta-cedartrail) using 1.3 M3 branch of Poky.
>>>>
>>>> When I try to boot a image such as core-image-sato, I get kernel panic
>>>> and errors such as:
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
>>>> I do see that the root file system exists in
>>>> cedartrail-poky-linux/core-image-sato-1.0-r0/rootfs dir..
>>>>
>>>> I did not see this problem when I uses a earlier commit of the Poky
>>>> master branch.
>>>>
>>>> It seems like something broke with 1.3 M3 branch that prevents a prope=
r
>>>> build with 3.0 kernel. I do need to build my BSP with 3.0 kernel.
>>>>
>>>> (I was also told by Laurentiu Serban that 1.3 M3 Full Pass testing doe=
s
>>>> not include testing with the 3.0 kernel)
>>>>
>>>> Any suggestions would be most welcome. I do need to build my BSP with
>>>> the 3.0 kernel.
>>>
>>> Hmm. It should work, I booted one not that long ago. Can you force
>>> qemux86 to prefer the 3.0 kernel and see if that boots ? That would
>>> at least start to isolate the potential problem areas.
>>
>> However, won't 3.0 be removed for the 1.3 release? Keeping with 3.4 and
>3.2?
>
>For 1.3 the 3 kernel sliding window plan was 3.4, 3.2 and 3.0 with 2.6.37 =
being
>voted off the island. Or did you mean 1.4 ? Regardless, anything using 3.0
>needs
>to be updated since it's time is running short! :)
>

Cedartrail BSP has PVR Graphics drivers which works only with 3.0 Kernel.

Thanks
Kishore.
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
>"Thou shalt not follow the NULL pointer, for chaos and madness await
>thee at its end"
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

