Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe005.messaging.microsoft.com [65.55.88.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B71CE00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 14:53:49 -0700 (PDT)
Received: from mail227-tx2-R.bigfish.com (10.9.14.249) by
	TX2EHSOBE013.bigfish.com (10.9.40.33) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 21:53:48 +0000
Received: from mail227-tx2 (localhost [127.0.0.1])	by
	mail227-tx2-R.bigfish.com (Postfix) with ESMTP id BE273AC0239	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 21:53:48 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail227-tx2 (localhost.localdomain [127.0.0.1]) by mail227-tx2
	(MessageSwitch) id 1347486826316813_5974;
	Wed, 12 Sep 2012 21:53:46 +0000 (UTC)
Received: from TX2EHSMHS038.bigfish.com (unknown [10.9.14.249])	by
	mail227-tx2.bigfish.com (Postfix) with ESMTP id 3E852320049	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 21:53:46 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS038.bigfish.com
	(10.9.99.138) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 21:53:46 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0309.003; Wed, 12 Sep 2012 16:52:43 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc 02/16] fsl-image-minimal: IMAGE_FSTYPES
	add jffs2
Thread-Index: AQHNkTDwwvhiXXP2WUOmIzf2/rXFwA==
Date: Wed, 12 Sep 2012 21:52:43 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A6754D8@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-2-git-send-email-b19537@freescale.com>
In-Reply-To: <1347433590-8481-2-git-send-email-b19537@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 02/16] fsl-image-minimal: IMAGE_FSTYPES add jffs2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 21:53:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <26FBAC2176905A438678B3B44F0C6061@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2012 at 2:06 AM,  <b19537@freescale.com> wrote:
> From: Ting Liu <b28495@freescale.com>
>
> Signed-off-by: Ting Liu <b28495@freescale.com>
> ---
>  images/fsl-image-minimal.bb |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/images/fsl-image-minimal.bb b/images/fsl-image-minimal.bb
> index b8d3c77..f3d1ad4 100644
> --- a/images/fsl-image-minimal.bb
> +++ b/images/fsl-image-minimal.bb
> @@ -13,4 +13,4 @@ IMAGE_ROOTFS_SIZE =3D "8192"
>  # remove not needed ipkg informations
>  ROOTFS_POSTPROCESS_COMMAND +=3D "remove_packaging_data_files ; "
>
> -IMAGE_FSTYPES =3D "tar.gz ext2.gz.u-boot"
> +IMAGE_FSTYPES =3D "tar.gz ext2.gz.u-boot jffs2"

Just to confirm, all boards will use the jffs2 image?

-M

> --
> 1.7.9.5
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


