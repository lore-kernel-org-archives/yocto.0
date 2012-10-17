Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe002.messaging.microsoft.com [216.32.180.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E4F6E011C0
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:29:26 -0700 (PDT)
Received: from mail205-co1-R.bigfish.com (10.243.78.227) by
	CO1EHSOBE002.bigfish.com (10.243.66.65) with Microsoft SMTP Server id
	14.1.225.23; Wed, 17 Oct 2012 15:29:25 +0000
Received: from mail205-co1 (localhost [127.0.0.1])	by
	mail205-co1-R.bigfish.com (Postfix) with ESMTP id C4472140070	for
	<yocto@yoctoproject.org>; Wed, 17 Oct 2012 15:29:25 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441hbe9i1155h)
Received: from mail205-co1 (localhost.localdomain [127.0.0.1]) by mail205-co1
	(MessageSwitch) id 1350487763800152_12706;
	Wed, 17 Oct 2012 15:29:23 +0000 (UTC)
Received: from CO1EHSMHS018.bigfish.com (unknown [10.243.78.242])	by
	mail205-co1.bigfish.com (Postfix) with ESMTP id C17DAC80047	for
	<yocto@yoctoproject.org>; Wed, 17 Oct 2012 15:29:23 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS018.bigfish.com
	(10.243.66.28) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 17 Oct 2012 15:29:19 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.88]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0309.003; Wed, 17 Oct 2012 15:29:18 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc] hypervisor: add missing space character
	for PACKAGES_prepend
Thread-Index: AQHNrE2IEcj2NqkysE2NA1kBmF7b9pe9n6IA
Date: Wed, 17 Oct 2012 15:29:18 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A70319B@039-SN1MPN1-002.039d.mgd.msft.net>
References: <1350468911-10931-1-git-send-email-b19537@freescale.com>
In-Reply-To: <1350468911-10931-1-git-send-email-b19537@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc] hypervisor: add missing space character for PACKAGES_prepend
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
X-List-Received-Date: Wed, 17 Oct 2012 15:29:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <FE502A88A14581458750C428A2CCBECB@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

Applied to meta-fsl-ppc denzil, danny, and master.

-M

On Wed, Oct 17, 2012 at 5:15 AM, Zhenhua Luo <b19537@freescale.com> wrote:
> Signed-off-by: Zhenhua Luo <b19537@freescale.com>
> ---
>  recipes-tools/embedded-hv/hypervisor_git.bb |    4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-tools/embedded-hv/hypervisor_git.bb b/recipes-tools/=
embedded-hv/hypervisor_git.bb
> index 50697fc..3a3f605 100644
> --- a/recipes-tools/embedded-hv/hypervisor_git.bb
> +++ b/recipes-tools/embedded-hv/hypervisor_git.bb
> @@ -3,6 +3,8 @@ SECTION =3D "embedded-hv"
>  LICENSE =3D "BSD"
>  LIC_FILES_CHKSUM =3D "file://README;endline=3D22;md5=3D0655bbc3b7d7166c3=
0c87208b4e23cf0"
>
> +PR =3D "r1"
> +
>  DEPENDS =3D "u-boot-mkimage-native"
>
>  inherit deploy
> @@ -74,6 +76,6 @@ do_deploy_append() {
>  }
>
>  ALLOW_EMPTY_${PN} =3D "1"
> -PACKAGES_prepend =3D "${PN}-image ${PN}-partman"
> +PACKAGES_prepend =3D "${PN}-image ${PN}-partman "
>  FILES_${PN}-image =3D "/boot/"
>  FILES_${PN}-partman =3D "${bindir}/partman"
> --
> 1.7.9.5
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


