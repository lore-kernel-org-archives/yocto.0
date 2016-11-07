Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4555E004E5; Mon,  7 Nov 2016 11:48:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B390E00498
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 11:48:23 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga105.jf.intel.com with ESMTP; 07 Nov 2016 11:48:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,459,1473145200"; d="scan'208";a="783554352"
Received: from woonkong-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.153.169])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Nov 2016 11:48:20 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 08 Nov 2016 08:48:17 +1300
Message-ID: <1589087.fjKFOckh16@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <b7805230-409c-96cf-1562-28bf6a8f81dd@gmail.com>
References: <83DB4EC8FADD45428E3CC4E3664761FD4241815C@AMDTCEX14.actuant.pri>
	<b7805230-409c-96cf-1562-28bf6a8f81dd@gmail.com>
MIME-Version: 1.0
Subject: Re: UTF-89 support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 07 Nov 2016 19:48:26 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Mon, 07 Nov 2016 09:24:18 Khem Raj wrote:
> On 11/7/16 3:48 AM, Keskinarkaus, Teemu wrote:
> > Hi,
> >=20
> >=20
> >=20
> > I tried googling this and reading the manual, but I guess this is t=
oo
> > trivial or I=E2=80=99m doing something wrong.
> >=20
> >=20
> >=20
> > I=E2=80=99m trying to get UTF-8 support to my image. UTF-8 locale m=
ore specific.
> > If I run locale =E2=80=93a command I get these locales listed:
> >=20
> > C
> >=20
> > POSIX
> >=20
> > en_GB
> >=20
> > en_US
> >=20
> >=20
> >=20
> > I added this line to my local.conf:
> >=20
> > GLIBC_GENERATE_LOCALES =3D "en_GB.UTF-8 en_US.UTF-8 en_GB en_US"
>=20
> you also need to set IMAGE_LINGUAS to include it into image
> e.g.
>=20
> GLIBC_GENERATE_LOCALES =3D "en-gb"

I guess you meant IMAGE_LINGUAS =3D "en-gb"

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

