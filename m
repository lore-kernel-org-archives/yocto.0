Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A613E005BB
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 18:59:36 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Oct 2011 18:59:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,406,1315206000"; d="scan'208";a="82201047"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2011 18:59:35 -0700
Received: from pgsmsx103.gar.corp.intel.com (10.221.44.82) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 26 Oct 2011 09:59:14 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX103.gar.corp.intel.com (10.221.44.82) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Wed, 26 Oct 2011 09:59:14 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 26 Oct 2011 09:59:13 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 26 Oct 2011 09:59:12 +0800
Thread-Topic: [yocto] Eclipse Plugin:  ADT Version too old
Thread-Index: AcyTJPC1I1v0SM3gS8yMPDh5HBHjCgAW7AFg
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F340768E39E@shsmsx502.ccr.corp.intel.com>
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
	<4EA587D6.1090406@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com>
	<4EA6CB6F.9060304@communistcode.co.uk>
In-Reply-To: <4EA6CB6F.9060304@communistcode.co.uk>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Wed, 26 Oct 2011 01:59:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jack Mitchell wrote on 2011-10-25:
>=20
> Hi Jessica,
>=20
> I just did a full fresh re-build from scratch and now my environment=20
> variables are as follows:
>=20
> http://ix.io/1Wf
>=20
> My current git status is:
>=20
> # On branch edision # Untracked files: #   (use "git add <file>..." to
> include in what will be committed) # #  =20
> ../bitbake/lib/bb/pysh/pyshtables.py #    ../conf/ #    ./ #  =20
> ../qemuarm-toolchain/ nothing added to commit but untracked files=20
> present (use "git add" to track)
>=20
> The environment variables are still wrong, can I manually change them,=20
> I understand this is bad practice but I can't develop until I fix this.
>=20
Jack,

You may manually change them, but I doubt this suggesting that there might =
be some mismatch in your local git branch. The "bitbake meta-ide-support" o=
f Edison branch on my machine could generate the right OECORE_DISTRO_VERSIO=
N and OECORE_SDK_VERSION, with the value of "1.1", not "1.1+snapshot".=20

Could you check your file of meta-yocto/conf/distro/poky.conf for the varia=
ble DISTRO_VERSION, it should be "1.1'.=20

b.t.w. When you "bitbake meta-ide-support", there will be some configuratio=
n information on the console which might help you identify the version and =
configurations, e.g.

OE Build Configuration:
BB_VERSION        =3D "1.13.3"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.1"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta
meta-yocto        =3D "(nobranch):1924f52cc894d4dd6b9d9c1a2248b32fc0a24c8c"

Best Regards,
Lianhao


