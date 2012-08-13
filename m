Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF136E00346
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 15:24:42 -0700 (PDT)
Received: from mail34-ch1-R.bigfish.com (10.43.68.230) by
	CH1EHSOBE011.bigfish.com (10.43.70.61) with Microsoft SMTP Server id
	14.1.225.23; Mon, 13 Aug 2012 22:24:42 +0000
Received: from mail34-ch1 (localhost [127.0.0.1])	by mail34-ch1-R.bigfish.com
	(Postfix) with ESMTP id 2EE223603F2;
	Mon, 13 Aug 2012 22:24:42 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz98dI9371I1432I4015Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail34-ch1 (localhost.localdomain [127.0.0.1]) by mail34-ch1
	(MessageSwitch) id 1344896680931753_26173;
	Mon, 13 Aug 2012 22:24:40 +0000 (UTC)
Received: from CH1EHSMHS016.bigfish.com (snatpool3.int.messaging.microsoft.com
	[10.43.68.227])	by mail34-ch1.bigfish.com (Postfix) with ESMTP id
	E13A52007D; Mon, 13 Aug 2012 22:24:40 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS016.bigfish.com
	(10.43.70.16) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 13 Aug 2012 22:24:40 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.02.0298.005;
	Mon, 13 Aug 2012 17:24:39 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH] u-boot: correct path to config
	files
Thread-Index: AQHNd0pQ2Rbq5VxZqEWhP91hHCa0eZdYqf2A
Date: Mon, 13 Aug 2012 22:24:39 +0000
Message-ID: <CAEsOVNcBRw1YfVd_NB7dWv9n_10pOESwW9OO_a7Msi2Uh-USFQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 13 Aug 2012 22:24:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7EA787561628074F8D4071E1F48E22D4@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 10, 2012 at 5:48 PM, Vladimir Zapolskiy
<vladimir_zapolskiy@mentor.com> wrote:
> The trivial change fixes u-boot compilation task, boot_format utility ins=
talls
> board configuration files into a subdirectory of STAGING_DATADIR_NATIVE.

Applied to meta-fsl-ppc edison, denzil, and master branch.

Thanks,
-M

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


