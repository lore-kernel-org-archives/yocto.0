Return-Path: <B19537@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe003.messaging.microsoft.com [216.32.180.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA63DE0049D
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 19:26:39 -0700 (PDT)
Received: from mail201-co1-R.bigfish.com (10.243.78.234) by
	CO1EHSOBE002.bigfish.com (10.243.66.65) with Microsoft SMTP Server id
	14.1.225.23; Thu, 13 Sep 2012 02:26:37 +0000
Received: from mail201-co1 (localhost [127.0.0.1])	by
	mail201-co1-R.bigfish.com (Postfix) with ESMTP id 0C175A80163	for
	<yocto@yoctoproject.org>; Thu, 13 Sep 2012 02:26:37 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -6
X-BigFish: VS-6(zz98dI9371I542M1432Id6f1izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h944hd25hf0ah107ah1220h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail201-co1 (localhost.localdomain [127.0.0.1]) by mail201-co1
	(MessageSwitch) id 1347503194424696_12023;
	Thu, 13 Sep 2012 02:26:34 +0000 (UTC)
Received: from CO1EHSMHS017.bigfish.com (unknown [10.243.78.227])	by
	mail201-co1.bigfish.com (Postfix) with ESMTP id 663A1440048	for
	<yocto@yoctoproject.org>; Thu, 13 Sep 2012 02:26:34 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS017.bigfish.com
	(10.243.66.27) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 13 Sep 2012 02:26:34 +0000
Received: from 039-SN2MPN1-022.039d.mgd.msft.net ([169.254.2.149]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0309.003; Wed, 12 Sep 2012 21:26:34 -0500
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc 02/16] fsl-image-minimal: IMAGE_FSTYPES
	add jffs2
Thread-Index: AQHNkTDwsAQoFJ9I10eBUvtlHzz3UZeHixsA
Date: Thu, 13 Sep 2012 02:26:33 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A012B7FF2@039-SN2MPN1-022.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-2-git-send-email-b19537@freescale.com>
	<70CC66F5C30A414DADDA6973E4CA391A6754D8@039-SN1MPN1-001.039d.mgd.msft.net>
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A6754D8@039-SN1MPN1-001.039d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.114]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 02/16] fsl-image-minimal: IMAGE_FSTYPES add jffs2
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
X-List-Received-Date: Thu, 13 Sep 2012 02:26:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The targets with NAND flash need jffs2 rootfs, e.g. mpc8536ds, mpc8572ds, p=
1020utm, pp1020rdb, p1021rdb, p1022ds, p1024rdb p1025rdb


Best Regards,

Zhenhua


> -----Original Message-----
> From: McClintock Matthew-B29882
> Sent: Thursday, September 13, 2012 5:53 AM
> To: Luo Zhenhua-B19537
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-fsl-ppc 02/16] fsl-image-minimal:
> IMAGE_FSTYPES add jffs2
>=20
> On Wed, Sep 12, 2012 at 2:06 AM,  <b19537@freescale.com> wrote:
> > From: Ting Liu <b28495@freescale.com>
> >
> > Signed-off-by: Ting Liu <b28495@freescale.com>
> > ---
> >  images/fsl-image-minimal.bb |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/images/fsl-image-minimal.bb b/images/fsl-image-minimal.bb
> > index b8d3c77..f3d1ad4 100644
> > --- a/images/fsl-image-minimal.bb
> > +++ b/images/fsl-image-minimal.bb
> > @@ -13,4 +13,4 @@ IMAGE_ROOTFS_SIZE =3D "8192"
> >  # remove not needed ipkg informations  ROOTFS_POSTPROCESS_COMMAND +=3D
> > "remove_packaging_data_files ; "
> >
> > -IMAGE_FSTYPES =3D "tar.gz ext2.gz.u-boot"
> > +IMAGE_FSTYPES =3D "tar.gz ext2.gz.u-boot jffs2"
>=20
> Just to confirm, all boards will use the jffs2 image?
>=20
> -M
>=20
> > --
> > 1.7.9.5
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto


