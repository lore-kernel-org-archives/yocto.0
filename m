Return-Path: <rahul.saxena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 370AAE00346
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 09:28:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Oct 2012 09:28:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="203006670"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga001.jf.intel.com with ESMTP; 08 Oct 2012 09:28:46 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 8 Oct 2012 09:28:46 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.10.146]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.168]) with mapi id
	14.01.0355.002; Mon, 8 Oct 2012 09:28:46 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>, Chris Tapp
	<opensource@keylevel.com>
Thread-Topic: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs
	in the kernel
Thread-Index: AQHNpSrKLL3yhH25DU6jZZe+AWt9jpev5XMA//+zIKA=
Date: Mon, 8 Oct 2012 16:28:45 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003CD3284@ORSMSX107.amr.corp.intel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
	<CADkTA4Oecym=XyX13qosTD634MkfKfO1PYi=Pzp5kWtPLSdd2w@mail.gmail.com>
In-Reply-To: <CADkTA4Oecym=XyX13qosTD634MkfKfO1PYi=Pzp5kWtPLSdd2w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Meta Intel / Cedartrail / Denzil - how to get unionfs in the kernel
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
X-List-Received-Date: Mon, 08 Oct 2012 16:28:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]=20
Sent: Monday, October 08, 2012 7:00 AM
To: Chris Tapp
Cc: Saxena, Rahul; yocto@yoctoproject.org Project
Subject: Re: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs =
in the kernel

On Mon, Oct 8, 2012 at 3:58 AM, Chris Tapp <opensource@keylevel.com> wrote:
> On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:
>
>> On Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp <opensource@keylevel.com> wro=
te:
>>> On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:
>>>
>>>> Try adding the unionfs feature (below) to your kernel:
>>>>
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta
>>>> /cfg/kernel-cache/features/unionfs?h=3Dmeta
>>>>
>>>> create a file my_cedartrail.scc with following line:
>>>> include features/unionfs/unionfs.scc
>>>>
>>>> put this file in a dir linux-yocto, the dir being created in
>>>>
>>>> meta-cedartrail/recipes-kernel/linux
>>>>
>>>> add following line in =20
>>>> meta-cedartrail/recipes-kernel/Linux/linux-yocto_3.0.bbappend
>>>>
>>>> SRC_URI +=3D"file://my_cedartrail.scc"
>>>
>>> Thanks - I thought just running 'menuconfig' would allow me to enable i=
t (for a quick test).
>>>
>>> However, this still doesn't seem to be working. I can see that 'my_ceda=
rtrail.scc' gets fetched in to the build area, but I still don't see CONFIG=
_UNION_FS if I run 'menuconfig'. There is also no 'unionfs' folder in fs/ o=
f the build tree.
>>>
>>> Also, if I specify an invalid feature (e.g. feature2/unionfs/unionfs.sc=
c) I'm not seeing any diagnostic.
>>
>> unionfs was never merged to the 3.0 kernel, I re-added it to the=20
>> development trees for 3.2 and the 3.4 kernel (aufs for the 3.6 tree=20
>> at the moment). The meta data is carried forward from the older=20
>> kernels as a placeholder and is documented in the .scc file itself:
>>
>> -----------------------
>> kconf non-hardware unionfs.cfg
>>
>> # commented pending update to a newer version ported to 2.6.35+ #=20
>> patch unionfs-2.5.4-integration.patch
>> -----------------------
>>
>> So to get unionfs in the 3.0 kernel, we'd need a port .. but since=20
>> we've moved on quite a bit past 3.0, I don't know of any pending=20
>> ports myself.
>
> Thanks Bruce.
>
> I guess I need to ask the Intel guys if there are any plans to move Cedar=
trail on from 3.0 ?

It will have to happen post yocto 1.3 (as far as I know), since the
3.0 kernel will be
dropped at that point.

For the short term, it's likely easier to backport/update unionfs than it w=
ould be to update the BSP .. but I can't speak for the time to be spent doi=
ng it :)

Cheers,

Bruce


Chris,

There are no plans to port Cedartrail BSP to support any other Kernel other=
 than 3.0. The reason is that
the Cedartrail PVR Graphics driver is supported only for 3.0 kernel.

Rahul

>
>> Cheers,
>>
>> Bruce
>>
>>>
>>>>
>>>> -----Original Message-----
>>>> From: yocto-bounces@yoctoproject.org=20
>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
>>>> Sent: Saturday, October 06, 2012 5:43 PM
>>>> To: yocto@yoctoproject.org Project
>>>> Subject: [yocto] Meta Intel / Cedartrail / Denzil - how to get=20
>>>> unionfs in the kernel
>>>>
>>>> I' trying to enable unionfs in the 3.0.32 kernel for the cedartrail BS=
P under Denzil 7.0.1.
>>>>
>>>> However, the CONFIG_UNION_FS config flag isn't in the .config ...
>>>>
>>>> Is there something else I need to enable, or do I need to find another=
 way?
>>>>
>>>> Chris Tapp
>>>>
>>>> opensource@keylevel.com
>>>> www.keylevel.com
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> Chris Tapp
>>>
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await=20
>> thee at its end"
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>



--
"Thou shalt not follow the NULL pointer, for chaos and madness await thee a=
t its end"

