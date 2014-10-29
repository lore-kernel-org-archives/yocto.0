Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A4C9E00849; Wed, 29 Oct 2014 00:10:35 -0700 (PDT)
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
Received: from mx1.kistler.com (mx1.kistler.com [195.49.77.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D9B6E0082F
	for <yocto@yoctoproject.org>; Wed, 29 Oct 2014 00:10:30 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,808,1406584800"; d="scan'208";a="12825346"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/ADH-AES256-SHA;
	29 Oct 2014 08:10:25 +0100
Received: from mx1.kistler.com (unknown [192.168.52.57])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Wed, 29 Oct 2014 08:10:22 +0100 (CET)
X-IronPort-AV: E=Sophos;i="5.04,808,1406584800"; d="scan'208";a="12825342"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx1.kistler.com with ESMTP/TLS/AES128-SHA; 29 Oct 2014 08:10:21 +0100
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%15]) with mapi
	id 14.03.0181.006; Wed, 29 Oct 2014 08:09:50 +0100
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: 'Matt Schuckmann' <Matt.Schuckmann@planar.com>
Thread-Topic: How to get fw_env.config installed
Thread-Index: Ac/yfJIlnU2RnJZNQYi9q8/VNvxjcgANx2sAACTSTjA=
Date: Wed, 29 Oct 2014 07:09:50 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E668C086DE60@kihagwinex01.int.kistler.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E668C086DB39@kihagwinex01.int.kistler.com>
	<0E03FD61-9946-46F3-9B92-A103691A00F4@planar.com>
In-Reply-To: <0E03FD61-9946-46F3-9B92-A103691A00F4@planar.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 29 Oct 2014 07:10:35 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >
> >> I'm working on including the u-boot fw utility tools in my image,
> >> specifically fw_printenv and fw_setenv.
> >> For these to work the file fw_env.config needs to be placed at
> /etc/fw_env.config.
> >>
> >> I can see in oe-core/meta/recipes-bsp/u-boot/u-boot.inc there is a
> >> test that if fw_env.config is in the working dir it will be installed
> >> in ${sysconfdir} and I can see in the
> >> meta-ti/recipes-bsp/u-boot/u-boot-beagleboard_2011.09.bb they simply i=
nclude
> file://fw_env.conf in the SRC_URI list to get the file in the working dir=
.
> >>
> >> So I created a bbappend file for the ti u-boot recipe
> >> (u-boot-ti-staging_2013.10.bb) that I'm using and build and I don't ge=
t the file in
> my image root filesystem.
> >>
> >> If I run bitbake -c install virtual/bootloader I can see that the
> >> file does get copied into u-boot's working dir image/etc directory
> >> but it never makes it into the final root filesystem.
> >>
> >> What am I missing?
> >
> > The u-boot.inc file is looking for  a ".config" file, not ".conf".
> >
> Thanks Isak, I'm aware of that I just miss typed it in that one sentence =
in my e-mail.
> I got it right everywhere else including my code. Can I ask have you used=
 this
> mechanism and does it work for you?
>=20
Sorry to disappoint you.=20
As I've got a whole bunch of files to install in /etc, I'm using a custom r=
ecipe.

Regards

Isak=20


