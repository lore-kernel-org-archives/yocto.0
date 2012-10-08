Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BA7EE01275
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 00:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=Um7gCWhSzpzRQ2EF3mtgmZBAnx2IWKZllRjJq4gRzAQ=; 
	b=Ib0Q916FfXWwtTos3LEcajeKuLtqePgsoOKoLkkZY+aZ1K2DLKpXIkB1WN0mgN3DUR6I/CGY1bUBKNz33oFAofhGKLTWgCaluXATKszN9i2E+I0zTa+ms7KMPXkcwNPK;
Received: from [109.224.129.17] (port=24901
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.77)
	(envelope-from <opensource@keylevel.com>)
	id 1TL8Ef-0000vU-Sg; Mon, 08 Oct 2012 08:58:46 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
Date: Mon, 8 Oct 2012 08:58:47 +0100
Message-Id: <4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Mon, 08 Oct 2012 07:59:02 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

On 7 Oct 2012, at 22:41, Bruce Ashfield wrote:

> On Sun, Oct 7, 2012 at 6:08 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> On 7 Oct 2012, at 03:00, Saxena, Rahul wrote:
>>=20
>>> Try adding the unionfs feature (below) to your kernel:
>>>=20
>>> =
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tree/meta/cfg/ke=
rnel-cache/features/unionfs?h=3Dmeta
>>>=20
>>> create a file my_cedartrail.scc with following line:
>>> include features/unionfs/unionfs.scc
>>>=20
>>> put this file in a dir linux-yocto, the dir being created in
>>>=20
>>> meta-cedartrail/recipes-kernel/linux
>>>=20
>>> add following line in  =
meta-cedartrail/recipes-kernel/Linux/linux-yocto_3.0.bbappend
>>>=20
>>> SRC_URI +=3D"file://my_cedartrail.scc"
>>=20
>> Thanks - I thought just running 'menuconfig' would allow me to enable =
it (for a quick test).
>>=20
>> However, this still doesn't seem to be working. I can see that =
'my_cedartrail.scc' gets fetched in to the build area, but I still don't =
see CONFIG_UNION_FS if I run 'menuconfig'. There is also no 'unionfs' =
folder in fs/ of the build tree.
>>=20
>> Also, if I specify an invalid feature (e.g. =
feature2/unionfs/unionfs.scc) I'm not seeing any diagnostic.
>=20
> unionfs was never merged to the 3.0 kernel, I re-added it to the =
development
> trees for 3.2 and the 3.4 kernel (aufs for the 3.6 tree at the =
moment). The meta
> data is carried forward from the older kernels as a placeholder and is
> documented
> in the .scc file itself:
>=20
> -----------------------
> kconf non-hardware unionfs.cfg
>=20
> # commented pending update to a newer version ported to 2.6.35+
> # patch unionfs-2.5.4-integration.patch
> -----------------------
>=20
> So to get unionfs in the 3.0 kernel, we'd need a port .. but since
> we've moved on
> quite a bit past 3.0, I don't know of any pending ports myself.

Thanks Bruce.

I guess I need to ask the Intel guys if there are any plans to move =
Cedartrail on from 3.0 ?

> Cheers,
>=20
> Bruce
>=20
>>=20
>>>=20
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
>>> Sent: Saturday, October 06, 2012 5:43 PM
>>> To: yocto@yoctoproject.org Project
>>> Subject: [yocto] Meta Intel / Cedartrail / Denzil - how to get =
unionfs in the kernel
>>>=20
>>> I' trying to enable unionfs in the 3.0.32 kernel for the cedartrail =
BSP under Denzil 7.0.1.
>>>=20
>>> However, the CONFIG_UNION_FS config flag isn't in the .config ...
>>>=20
>>> Is there something else I need to enable, or do I need to find =
another way?
>>>=20
>>> Chris Tapp
>>>=20
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>=20
>>>=20
>>>=20
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>> Chris Tapp
>>=20
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>>=20
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> --=20
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"

Chris Tapp

opensource@keylevel.com
www.keylevel.com




