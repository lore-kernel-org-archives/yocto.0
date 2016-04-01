Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92979E00C96; Fri,  1 Apr 2016 05:38:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 090A4E00C92
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 05:38:21 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.24,427,1454972400"; 
   d="scan'208";a="3691602"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx2.kistler.com with ESMTP/TLS/AES256-GCM-SHA384;
	01 Apr 2016 14:38:20 +0200
Received: from mx2.kistler.com (unknown [192.168.52.58])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Fri,  1 Apr 2016 14:38:20 +0200 (CEST)
X-IronPort-AV: E=Sophos;i="5.24,427,1454972400"; 
   d="scan'208";a="3691601"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx2.kistler.com with ESMTP/TLS/AES256-SHA; 01 Apr 2016 14:38:19 +0200
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::6c9f:20c0:64d9:3031%11]) with mapi
	id 14.03.0266.001; Fri, 1 Apr 2016 14:38:19 +0200
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: "'Esponde, Joel'" <Joel.Esponde@Honeywell.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to enforce installation of image specific config
	file/package
Thread-Index: AQHRjAwvhHLodGLL206yZO85fBZ/6J91Db9A
Date: Fri, 1 Apr 2016 12:38:18 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E6680194828C1F@kihagwinex01.int.kistler.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E6680194828956@kihagwinex01.int.kistler.com>
	<F6CD090A69E64C4289DC608E1C5D2024253C7ACB@DE08W1305.global.ds.honeywell.com>
In-Reply-To: <F6CD090A69E64C4289DC608E1C5D2024253C7ACB@DE08W1305.global.ds.honeywell.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Subject: Re: How to enforce installation of image specific config	file/package
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
X-List-Received-Date: Fri, 01 Apr 2016 12:38:23 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Jo=EBl,
>=20
> Hi,
>=20
> One idea may be to create one recipe per configuration file.
> So in each image recipe, you would add one of those recipes to
> IMAGE_INSTALL_append.

That's exactly what I'm doing now. But as my base package "A" is in a=20
layer that is used by other developers, I would like to enforce somehow
that every image containing this package also provides a config package
for it.

BR

Isak
>=20
> Interested in other ideas for this use case!
>=20
> Jo=EBl Esponde
> Honeywell | Sensing and Productivity Solutions
>=20
> > -----Message d'origine-----
> > De=A0: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] De la part de Isak Lichtenstein Envoy=E9=A0:
> > vendredi 1 avril 2016 11:35 =C0=A0: yocto@yoctoproject.org Objet=A0: [y=
octo]
> > How to enforce installation of image specific config file/package
> >
> > Hi,
> >
> > I've got a package "A" that has a runtime dependency to a configuration=
 file.
> > This configuration file is image specific. For each image I've got a
> > specific configuration package "config-image-X" that installs this
> > needed configuration file and I build multiple image in the same build =
directory.
> > How can I enforce that each image containing package "A" also installs
> > an image specific configuration package?
> > I've tried with virtual providers, but then at the second image it
> > always tried to install the virtual provider from the first image as
> > well, which leads to the following failure during the rootfs task:
> >
> > check_data_file_clashes: Package config-image-1 wants to install file
> > /home/root/build/build_dev/tmp/work/poky-linux-gnueabi/core-image-
> > test/1.0-r0/rootfs/usr/bin/config
> > 	But that file is already provided by package  * config-image-2
> >
> >
> > I'm using yocto jethro.
> >
> > Best regards
> >
> > Isak
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

