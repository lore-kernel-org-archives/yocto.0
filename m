Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D3B9E00E17; Fri, 16 Aug 2019 09:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [209.222.82.122 listed in list.dnswl.org]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[209.222.82.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92E30E00E15
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 09:15:58 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx5.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Fri, 16 Aug 2019 16:15:55 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 16 Aug 2019 09:15:54 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 16 Aug 2019 09:15:54 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Gmail <jonaskgandersson@gmail.com>
Thread-Topic: [yocto] How to patch a recipe .inc file
Thread-Index: AdVNcyKzKVFIrxDfSamTwte0yhpxQAAcwa6AAZmgbwA=
Date: Fri, 16 Aug 2019 16:15:54 +0000
Message-ID: <fe7965a47e544409be7d3f7780c59422@sakuraus.com>
References: <2d30857640b244c1a8903078c86e03bf@sakuraus.com>
	<E62D42AF-4605-424F-80F1-E045B3225B5B@gmail.com>
In-Reply-To: <E62D42AF-4605-424F-80F1-E045B3225B5B@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.158]
MIME-Version: 1.0
X-BESS-ID: 1565972155-893009-17386-23145-1
X-BESS-VER: 2019.1_20190815.2218
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.217363 [from 
	cloudscan15-78.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to patch a recipe .inc file
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
X-List-Received-Date: Fri, 16 Aug 2019 16:16:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Jonas,
I have added extra kernel config through a .bbappend and a do_configure_app=
end() function. The issue that I was asking about is that the for the initr=
amfs changes that are suggested in the meta-raspberrypi documentation, sect=
ion 3.14, they need to be inserted in the middle of one of the functions in=
 the linux-raspberrypi.inc file, they can't be added in a prepend() or appe=
nd() function. This either requires that I change the linux-raspberrypi.inc=
 file or find some way to patch it during the build, I would prefer to patc=
h it.

Regards,
Greg Wilson-Lindberg=A0=20
=20
> -----Original Message-----
> From: Gmail [mailto:jonaskgandersson@gmail.com]
> Sent: Wednesday, August 07, 2019 10:38 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: Yocto list discussion <yocto@yoctoproject.org>
> Subject: Re: [yocto] How to patch a recipe .inc file
>=20
> Hi,
>=20
> To add some kernel config I have created an extra .cfg file in:
> my_recipe/recipes-kernel/linux/linux-raspberrypi/
> and add an bb_append file:
>=20
> recipes-kernel/linux/linux-raspberrypi_%25.bbappend
> __________________________________________________________
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> SRC_URI +=3D "file://your_conf.cfg"
> __________________________________________________________
>=20
> BR
> Jonas
>=20
> > 8 aug. 2019 kl. 01:02 skrev Greg Wilson-Lindberg <GWilson@sakuraus.com>=
:
> >
> > I'm working with a Yocto Sumo build provided with Qt's boot2qt system. =
I'm trying
> to enable using initramfs as a step in trying to enable OSTree updates.
> >
> > In the meta-raspberrypi documentation, section 3.14, it says to add som=
e kernel
> config to the linux-raspberrypi.inc file. I would prefer to keep my chang=
es to Yocto
> layer files in my own tree so I'm trying to figure out how to patch the e=
xisting file.
> I've got bitbake finding my patch file, but it can't find the file to pat=
ch.
> >
> > Can somebody help me to specify that the file that I'm patching is part=
 of the
> meta-raspberrypi linux recipe?
> >
> > I'm going to be gone for a week, but I wanted to ask this now so maybe =
I'll have
> some information when I get back.
> >
> > Regards,
> > Greg Wilson-Lindberg
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

