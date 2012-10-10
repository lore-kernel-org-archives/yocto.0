Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 988A7E0027E
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 09:27:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Oct 2012 09:27:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,565,1344236400"; d="scan'208";a="232295127"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2012 09:27:55 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 10 Oct 2012 09:27:49 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.116]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.168]) with mapi id
	14.01.0355.002; Wed, 10 Oct 2012 09:27:49 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Chris Tapp
	<opensource@keylevel.com>
Thread-Topic: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs
	in the kernel
Thread-Index: AQHNpY/ojWM3DzDM6UWxtca6mh6yM5ev2DkAgACCoYCAAqsIgP//txfQ
Date: Wed, 10 Oct 2012 16:27:48 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2264DCB5C@ORSMSX105.amr.corp.intel.com>
References: <443D93B8-DA6A-40DD-854F-7007FE63854C@keylevel.com>
	<63ECFF2A2302B44093D7CE9E9962C49003CD2F97@ORSMSX107.amr.corp.intel.com>
	<E413C1D3-D599-437C-A1ED-8A57DAC3E8D3@keylevel.com>
	<CADkTA4NAnqoBBzHkWNErMr2J=0p1xdSVocSpFCMLkV_8ztrwPg@mail.gmail.com>
	<4ED03A84-C184-4A15-BB50-B83AEE211BB4@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DBE54@ORSMSX105.amr.corp.intel.com>
	<0E3AEF49-829E-47BC-BEF4-C66A23DA3DC7@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DBF38@ORSMSX105.amr.corp.intel.com>
	<CB24F010-05C7-459E-98C1-54FAF07D5611@keylevel.com>
	<50757C83.1060204@windriver.com>
In-Reply-To: <50757C83.1060204@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
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
X-List-Received-Date: Wed, 10 Oct 2012 16:27:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>Sent: Wednesday, October 10, 2012 6:48 AM
>To: Chris Tapp
>Cc: Bodke, Kishore K; yocto@yoctoproject.org Project
>Subject: Re: [yocto] Meta Intel / Cedartrail / Denzil - how to get unionfs=
 in the
>kernel
>
>On 12-10-08 05:03 PM, Chris Tapp wrote:
>> On 8 Oct 2012, at 21:30, Bodke, Kishore K wrote:
>>
>> <  snip ...>
>>
>> Thanks for the really fast response on this :-)
>>
>>> For denzil, try with this by creating a new file in meta-cedartrail/rec=
ipes-
>kernel/linux/linux-yocto_3.2.bbappend.
>>>
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>
>>> SRC_URI_cedartrail-nopvr =3D "git://git.yoctoproject.org/linux-yocto-
>3.2;protocol=3Dgit;nocheckout=3D1;branch=3D${KBRANCH},meta;name=3Dmachine,=
m
>eta"
>>
>> I had to add 'bareclone=3D1' to this to get it to run.
>>
>>> COMPATIBLE_MACHINE_cedartrail-nopvr =3D "cedartrail"
>>> KMACHINE_cedartrail-nopvr  =3D "cedartrail"
>>> KBRANCH_cedartrail-nopvr  =3D "yocto/standard/cedartrail"
>>> KERNEL_FEATURES_append_cedartrail-nopvr +=3D " cfg/smp.scc"
>>>
>>> SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?=3D
>"8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c"
>>> SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>>
>> I think it's nearly there, but I get a failure when validating the branc=
h:
>
>I'm back to the office now. Is this issue still lurking/active ?
>

Issue of validating the branches is resolved.

Thanks
Kishore.


