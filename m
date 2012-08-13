Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe005.messaging.microsoft.com [216.32.180.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6690CE003C8
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 13:52:48 -0700 (PDT)
Received: from mail99-va3-R.bigfish.com (10.7.14.247) by
	VA3EHSOBE006.bigfish.com (10.7.40.26) with Microsoft SMTP Server id
	14.1.225.23; Mon, 13 Aug 2012 20:52:47 +0000
Received: from mail99-va3 (localhost [127.0.0.1])	by mail99-va3-R.bigfish.com
	(Postfix) with ESMTP id 71EB73801F2;
	Mon, 13 Aug 2012 20:52:47 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail99-va3 (localhost.localdomain [127.0.0.1]) by mail99-va3
	(MessageSwitch) id 1344891166244403_15093;
	Mon, 13 Aug 2012 20:52:46 +0000 (UTC)
Received: from VA3EHSMHS041.bigfish.com (unknown [10.7.14.249])	by
	mail99-va3.bigfish.com (Postfix) with ESMTP id 2B2DD2E0050;
	Mon, 13 Aug 2012 20:52:46 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS041.bigfish.com
	(10.7.99.51) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 13 Aug 2012 20:52:41 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Mon, 13 Aug 2012 15:52:40 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH] u-boot: correct path to config
	files
Thread-Index: AQHNd0pQ2Rbq5VxZqEWhP91hHCa0eZdYkEmA
Date: Mon, 13 Aug 2012 20:52:39 +0000
Message-ID: <CAEsOVNeTyGhiZXr63p0wixgFM=WXwyMbq-Vk7MXQcba7Qe6wwQ@mail.gmail.com>
References: <1344638917-31571-1-git-send-email-vladimir_zapolskiy@mentor.com>
In-Reply-To: <1344638917-31571-1-git-send-email-vladimir_zapolskiy@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc][PATCH] u-boot: correct path to config files
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
X-List-Received-Date: Mon, 13 Aug 2012 20:52:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <C6AF1174F9F08140A48E8883DB7BB683@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 10, 2012 at 5:48 PM, Vladimir Zapolskiy
<vladimir_zapolskiy@mentor.com> wrote:
> The trivial change fixes u-boot compilation task, boot_format utility ins=
talls
> board configuration files into a subdirectory of STAGING_DATADIR_NATIVE.
>
> Signed-off-by: Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>
> Cc: Matthew McClintock <msm@freescale.com>
> ---
>  recipes-kernel/u-boot/u-boot_git.bb |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/u-boot/u-boot_git.bb b/recipes-kernel/u-boot/=
u-boot_git.bb
> index 8ced122..4dfb723 100644
> --- a/recipes-kernel/u-boot/u-boot_git.bb
> +++ b/recipes-kernel/u-boot/u-boot_git.bb
> @@ -59,7 +59,7 @@ do_compile () {
>                                 cp ${S}/${board}/u-boot.bin  ${S}/${board=
}/${UBOOT_TARGET}.bin
>                         else
>                                 ${STAGING_BINDIR_NATIVE}/boot_format \
> -                                       ${STAGING_DATADIR_NATIVE}/${BOOTF=
ORMAT_CONFIG} \
> +                                       ${STAGING_DATADIR_NATIVE}/boot_fo=
rmat/${BOOTFORMAT_CONFIG} \

What is this applying against? The current versions of boot-format in
meta-fsl-ppc master install to /usr/share/... and this patch seems to
break things.

-M

>                                         ${S}/${board}/u-boot.bin -spi ${S=
}/${board}/${UBOOT_TARGET}.bin
>                         fi
>                 fi
> --
> 1.7.10.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


