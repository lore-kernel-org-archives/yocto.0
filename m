Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45C8DE00877; Tue, 28 Oct 2014 00:04:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.49.77.148 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Oct 2014 00:04:49 PDT
Received: from mx1.kistler.com (mx1.kistler.com [195.49.77.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B39BFE00848
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 00:04:49 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,801,1406584800"; d="scan'208";a="12800368"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/ADH-AES256-SHA;
	28 Oct 2014 08:03:42 +0100
Received: from mx1.kistler.com (unknown [192.168.52.57])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Tue, 28 Oct 2014 08:03:40 +0100 (CET)
X-IronPort-AV: E=Sophos;i="5.04,801,1406584800"; d="scan'208";a="12800366"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx1.kistler.com with ESMTP/TLS/AES128-SHA; 28 Oct 2014 08:03:40 +0100
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%16]) with mapi
	id 14.03.0181.006; Tue, 28 Oct 2014 08:03:11 +0100
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: How to get fw_env.config installed
Thread-Index: Ac/yfJIlnU2RnJZNQYi9q8/VNvxjcg==
Date: Tue, 28 Oct 2014 07:03:39 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E668C086DB39@kihagwinex01.int.kistler.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Subject: Re: How to get fw_env.config installed
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
X-List-Received-Date: Tue, 28 Oct 2014 07:04:52 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

 Hi Matt,

> I'm working on including the u-boot fw utility tools in my image, specifi=
cally
> fw_printenv and fw_setenv.
> For these to work the file fw_env.config needs to be placed at /etc/fw_en=
v.config.
>=20
> I can see in oe-core/meta/recipes-bsp/u-boot/u-boot.inc there is a test t=
hat if
> fw_env.config is in the working dir it will be installed in ${sysconfdir}=
 and I can see
> in the meta-ti/recipes-bsp/u-boot/u-boot-beagleboard_2011.09.bb they simp=
ly
> include file://fw_env.conf in the SRC_URI list to get the file in the wor=
king dir.
>=20
> So I created a bbappend file for the ti u-boot recipe (u-boot-ti-staging_=
2013.10.bb)
> that I'm using and build and I don't get the file in my image root filesy=
stem.
>=20
> If I run bitbake -c install virtual/bootloader I can see that the file do=
es get copied
> into u-boot's working dir image/etc directory but it never makes it into =
the final root
> filesystem.
>=20
> What am I missing?

The u-boot.inc file is looking for  a ".config" file, not ".conf".

BR

Isak

>=20
> Thanks,
> Matt S.
>=20
> PS I should note that I'm working Dylan branch with the TI Arago layer.
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

