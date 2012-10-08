Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3B94E00346
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 09:35:54 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Oct 2012 09:35:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="201933353"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 08 Oct 2012 09:35:49 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.116]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.159]) with mapi id
	14.01.0355.002; Mon, 8 Oct 2012 09:35:48 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Chris Tapp <opensource@keylevel.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
Thread-Topic: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs
	in the kernel
Thread-Index: AQHNpSriBV2XjjeJeE21K3+c+lCoIJevmW3w
Date: Mon, 8 Oct 2012 16:35:48 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2264DBE54@ORSMSX105.amr.corp.intel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
In-Reply-To: <4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Meta Intel / Cedartrail / Denzil - how to get unionfs	in the kernel
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
X-List-Received-Date: Mon, 08 Oct 2012 16:36:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Chris Tapp
>Sent: Monday, October 08, 2012 12:59 AM
>To: Bruce Ashfield
>Cc: yocto@yoctoproject.org Project
>Subject: Re: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs=
 in the
>kernel
>
>On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:
>
>> On Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp <opensource@keylevel.com>
>wrote:
>>> On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:
>>>
>>>> Try adding the unionfs feature (below) to your kernel:
>>>>
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-
>3.0/tree/meta/cfg/kernel-cache/features/unionfs?h=3Dmeta
>>>>
>>>> create a file my_cedartrail.scc with following line:
>>>> include features/unionfs/unionfs.scc
>>>>
>>>> put this file in a dir linux-yocto, the dir being created in
>>>>
>>>> meta-cedartrail/recipes-kernel/linux
>>>>
>>>> add following line in  meta-cedartrail/recipes-kernel/Linux/linux-
>yocto_3.0.bbappend
>>>>
>>>> SRC_URI +=3D"file://my_cedartrail.scc"
>>>
>>> Thanks - I thought just running 'menuconfig' would allow me to enable i=
t
>(for a quick test).
>>>
>>> However, this still doesn't seem to be working. I can see that
>'my_cedartrail.scc' gets fetched in to the build area, but I still don't s=
ee
>CONFIG_UNION_FS if I run 'menuconfig'. There is also no 'unionfs' folder i=
n
>fs/ of the build tree.
>>>
>>> Also, if I specify an invalid feature (e.g. feature2/unionfs/unionfs.sc=
c) I'm
>not seeing any diagnostic.
>>
>> unionfs was never merged to the 3.0 kernel, I re-added it to the
>development
>> trees for 3.2 and the 3.4 kernel (aufs for the 3.6 tree at the moment). =
The
>meta
>> data is carried forward from the older kernels as a placeholder and is
>> documented
>> in the .scc file itself:
>>
>> -----------------------
>> kconf non-hardware unionfs.cfg
>>
>> # commented pending update to a newer version ported to 2.6.35+
>> # patch unionfs-2.5.4-integration.patch
>> -----------------------
>>
>> So to get unionfs in the 3.0 kernel, we'd need a port .. but since
>> we've moved on
>> quite a bit past 3.0, I don't know of any pending ports myself.
>
>Thanks Bruce.
>
>I guess I need to ask the Intel guys if there are any plans to move Cedart=
rail on
>from 3.0 ?

If the interest is to have unionfs, you can still get it from 3.2 or 3.4 Ke=
rnel.

But the downside is you will be missing the PVR Graphics and will be fallin=
g back to the=20
basic vesa graphics mode.

PVR graphics has support only for  3.0 kernel only, so we had only put the =
3.0 kernel recipe in the meta-intel.

We do not have plans to port PVR graphics to 3.4 kernel.

We can update the Cedartrail BSP to have 3.2 and 3.4 kernel but it will be =
vesa graphics support only.

Thanks
Kishore.

