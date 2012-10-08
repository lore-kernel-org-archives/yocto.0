Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E38D4E0027E
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 13:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=e4Q3G/2jXRLEC+vFTixsBNBwcfcLuvaZ5P1mZADD+vQ=; 
	b=MM8wTuzV4P+msh/C0Ztsul13493MJzGJ4cWe922mk8lht1+/Na1BfzVs4hDQiidWV2Dm6GC6SgD0En0C5pYQL7zSM1ZAzaVeT/1nmKvczj6jfKfV/SacgRZ64nals5Qi;
Received: from [109.224.129.17] (port=54033
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.77)
	(envelope-from <opensource@keylevel.com>)
	id 1TLJXF-0005j5-Fr; Mon, 08 Oct 2012 21:02:41 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE2264DBE54@ORSMSX105.amr.corp.intel.com>
Date: Mon, 8 Oct 2012 21:02:39 +0100
Message-Id: <0E3AEF49-829E-47BC-BEF4-C66A23DA3DC7@keylevel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DBE54@ORSMSX105.amr.corp.intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
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
X-List-Received-Date: Mon, 08 Oct 2012 20:02:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 8 Oct 2012, at 17:35, Bodke, Kishore K wrote:

>=20
>=20
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Chris Tapp
>> Sent: Monday, October 08, 2012 12:59 AM
>> To: Bruce Ashfield
>> Cc: yocto@yoctoproject.org Project
>> Subject: Re: [yocto] Meta Intel / Cedartrail / Denzil - how to get =
unionfs in the
>> kernel
>>=20
>> On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:
>>=20
>>> On Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp <opensource@keylevel.com>
>> wrote:
>>>> On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:
>>>>=20
>>>>> Try adding the unionfs feature (below) to your kernel:
>>>>>=20
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-
>> 3.0/tree/meta/cfg/kernel-cache/features/unionfs?h=3Dmeta
>>>>>=20
>>>>> create a file my_cedartrail.scc with following line:
>>>>> include features/unionfs/unionfs.scc
>>>>>=20
>>>>> put this file in a dir linux-yocto, the dir being created in
>>>>>=20
>>>>> meta-cedartrail/recipes-kernel/linux
>>>>>=20
>>>>> add following line in  meta-cedartrail/recipes-kernel/Linux/linux-
>> yocto_3.0.bbappend
>>>>>=20
>>>>> SRC_URI +=3D"file://my_cedartrail.scc"
>>>>=20
>>>> Thanks - I thought just running 'menuconfig' would allow me to =
enable it
>> (for a quick test).
>>>>=20
>>>> However, this still doesn't seem to be working. I can see that
>> 'my_cedartrail.scc' gets fetched in to the build area, but I still =
don't see
>> CONFIG_UNION_FS if I run 'menuconfig'. There is also no 'unionfs' =
folder in
>> fs/ of the build tree.
>>>>=20
>>>> Also, if I specify an invalid feature (e.g. =
feature2/unionfs/unionfs.scc) I'm
>> not seeing any diagnostic.
>>>=20
>>> unionfs was never merged to the 3.0 kernel, I re-added it to the
>> development
>>> trees for 3.2 and the 3.4 kernel (aufs for the 3.6 tree at the =
moment). The
>> meta
>>> data is carried forward from the older kernels as a placeholder and =
is
>>> documented
>>> in the .scc file itself:
>>>=20
>>> -----------------------
>>> kconf non-hardware unionfs.cfg
>>>=20
>>> # commented pending update to a newer version ported to 2.6.35+
>>> # patch unionfs-2.5.4-integration.patch
>>> -----------------------
>>>=20
>>> So to get unionfs in the 3.0 kernel, we'd need a port .. but since
>>> we've moved on
>>> quite a bit past 3.0, I don't know of any pending ports myself.
>>=20
>> Thanks Bruce.
>>=20
>> I guess I need to ask the Intel guys if there are any plans to move =
Cedartrail on
>> from 3.0 ?
>=20
> If the interest is to have unionfs, you can still get it from 3.2 or =
3.4 Kernel.
>=20
> But the downside is you will be missing the PVR Graphics and will be =
falling back to the=20
> basic vesa graphics mode.

Tricky. One of the reasons for specifying Cedartrail was the accelerated =
graphics. However, I've got code running without acceleration and it =
looks like it should be fast enough to do what I need without it.

> PVR graphics has support only for  3.0 kernel only, so we had only put =
the 3.0 kernel recipe in the meta-intel.
>=20
> We do not have plans to port PVR graphics to 3.4 kernel.

That's a pity, as this platform has a very good level of performance. I =
guess I'll have to be patient and wait for Ivy Bridge graphics ;-)

> We can update the Cedartrail BSP to have 3.2 and 3.4 kernel but it =
will be vesa graphics support only.

How much work would this take? It looks like there is no unification FS =
support in 3.0 that I could use instead, but this is only for a =
low-volume project and I wouldn't like to think it was using resource =
that could be deployed more effectively else where.

Thanks for your input on this - looks like I may need to revise my =
deployment strategy for this project ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




