Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78F3DE00D7F; Tue, 12 Apr 2016 07:36:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.223.79.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx2.kistler.com (mx2.kistler.com [91.223.79.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDE57E006D3
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 07:36:10 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.24,462,1454972400"; 
   d="scan'208";a="3742180"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx2.kistler.com with ESMTP/TLS/AES256-GCM-SHA384;
	12 Apr 2016 16:36:03 +0200
Received: from mx2.kistler.com (unknown [192.168.52.58])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Tue, 12 Apr 2016 16:36:09 +0200 (CEST)
X-IronPort-AV: E=Sophos;i="5.24,462,1454972400"; 
   d="scan'208";a="3742178"
Received: from kihagwinex01.int.kistler.com ([192.168.100.23])
	by mx2.kistler.com with ESMTP/TLS/AES256-SHA; 12 Apr 2016 16:36:03 +0200
Received: from kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502]) by
	kihagwinex01.int.kistler.com ([fe80::5861:8b22:cfa6:affe%11]) with mapi
	id 14.03.0266.001; Tue, 12 Apr 2016 16:36:08 +0200
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: 'Khem Raj' <raj.khem@gmail.com>
Thread-Topic: [yocto] How to enforce installation of image specific config
	file/package
Thread-Index: AQHRjLetNwxifVhsj0WjBqtxury5RZ98yK/A
Date: Tue, 12 Apr 2016 14:36:08 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E66801AE9B2FFE@kihagwinex02.int.kistler.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E6680194828956@kihagwinex01.int.kistler.com>
	<F6CD090A69E64C4289DC608E1C5D2024253C7ACB@DE08W1305.global.ds.honeywell.com>
	<91B4C1B91AAEFD42AC985EA0F3D4E6680194828C1F@kihagwinex01.int.kistler.com>
	<4D44EDDF-E832-4E62-AB3A-AE560D9B0F7C@gmail.com>
In-Reply-To: <4D44EDDF-E832-4E62-AB3A-AE560D9B0F7C@gmail.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to enforce installation of image specific config file/package
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
X-List-Received-Date: Tue, 12 Apr 2016 14:36:16 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Raj
>=20
>=20
> > On Apr 1, 2016, at 5:38 AM, Isak Lichtenstein <Isak.Lichtenstein@kistle=
r.com>
> wrote:
> >
> > Hi Jo=EBl,
> >>
> >> Hi,
> >>
> >> One idea may be to create one recipe per configuration file.
> >> So in each image recipe, you would add one of those recipes to
> >> IMAGE_INSTALL_append.
> >
> > That's exactly what I'm doing now. But as my base package "A" is in a
> > layer that is used by other developers, I would like to enforce
> > somehow that every image containing this package also provides a
> > config package for it.
>=20
> you can use bitbake diagnostics in a image post process function to imple=
ment
> this logic or in a bbclass which is inherited by every image you build.

Thank you for your suggestion. Will try to solve it as you suggest, but I w=
ill need
to kneel myself into the bitbake library classes to see what methods they p=
rovide
to easily implement this bbclass.


> >> > Hi,
> >> >=20
> >> > I've got a package "A" that has a runtime dependency to a configurat=
ion file.
> >> > This configuration file is image specific. For each image I've got a=
=20
> >> > specific configuration package "config-image-X" that installs this=20
> >> > needed configuration file and I build multiple image in the same bui=
ld directory.
> >> > How can I enforce that each image containing package "A" also instal=
ls=20
> >> > an image specific configuration package?
> >> > I've tried with virtual providers, but then at the second image it=20
> >> > always tried to install the virtual provider from the first image as=
=20
> >> > well, which leads to the following failure during the rootfs task:
> >> >=20
> >> > check_data_file_clashes: Package config-image-1 wants to install fil=
e
> >> > /home/root/build/build_dev/tmp/work/poky-linux-gnueabi/core-image-
> >> > test/1.0-r0/rootfs/usr/bin/config
> >> > 	But that file is already provided by package  * config-image-2

Nevertheless, when I tried using the provider class, I found it's behavior=
=20
a bit weird.

When I have a package build dependency and 2 providers, I expect that=20
Yocto pull in/uses the provider with the highest priority.
But if a package has got a run time dependency, and the image containing=20
the package also includes already a provider for the package, I would expec=
t=20
that the run time dependency is satisfied despite the provider included isn=
't the
one with the highest prio. In reality I found that the image always tried t=
o also=20
include the highest prio provider.

Is that really the expected behavior?

BR

Isak



