Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe006.messaging.microsoft.com [213.199.154.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9EA1E00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 15:00:45 -0700 (PDT)
Received: from mail114-am1-R.bigfish.com (10.3.201.225) by
	AM1EHSOBE010.bigfish.com (10.3.204.30) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 22:00:42 +0000
Received: from mail114-am1 (localhost [127.0.0.1])	by
	mail114-am1-R.bigfish.com (Postfix) with ESMTP id 9DCAB48019C	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 22:00:42 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail114-am1 (localhost.localdomain [127.0.0.1]) by mail114-am1
	(MessageSwitch) id 1347487241156965_7833;
	Wed, 12 Sep 2012 22:00:41 +0000 (UTC)
Received: from AM1EHSMHS017.bigfish.com (unknown [10.3.201.241])	by
	mail114-am1.bigfish.com (Postfix) with ESMTP id 2321D44004A	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 22:00:41 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS017.bigfish.com
	(10.3.207.155) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 22:00:37 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0309.003; Wed, 12 Sep 2012 17:00:35 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc 10/16] rcw: update LIC_FILES_CHKSUM file
Thread-Index: AQHNkTIIs/R9Z2n8OU+ovoAxUskEhg==
Date: Wed, 12 Sep 2012 22:00:34 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A67557F@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-10-git-send-email-b19537@freescale.com>
In-Reply-To: <1347433590-8481-10-git-send-email-b19537@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 10/16] rcw: update LIC_FILES_CHKSUM file
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
X-List-Received-Date: Wed, 12 Sep 2012 22:00:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <159616B8773F8443BA3D8959C201A1F7@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2012 at 2:06 AM,  <b19537@freescale.com> wrote:
> From: Ting Liu <b28495@freescale.com>
>
> Signed-off-by: Ting Liu <b28495@freescale.com>
> ---
>  recipes-tools/rcw/rcw_git.bb |    7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/recipes-tools/rcw/rcw_git.bb b/recipes-tools/rcw/rcw_git.bb
> index 0aaf794..dd1e4fe 100644
> --- a/recipes-tools/rcw/rcw_git.bb
> +++ b/recipes-tools/rcw/rcw_git.bb
> @@ -1,13 +1,10 @@
>  DESCRIPTION =3D "Reset Control Words (RCW)"
>  SECTION =3D "rcw"
>  LICENSE =3D "BSD"
> -PR =3D "r5"
> +PR =3D "r6"
>
>  LIC_FILES_CHKSUM =3D " \
> -       file://p2041rdb/LICENSE;md5=3D96dd72f26e9bb861de5c76c60e35e1bc \
> -       file://p3041ds/LICENSE;md5=3D96dd72f26e9bb861de5c76c60e35e1bc \
> -       file://p4080ds/LICENSE;md5=3D96dd72f26e9bb861de5c76c60e35e1bc \
> -       file://p5020ds/LICENSE;md5=3D96dd72f26e9bb861de5c76c60e35e1bc \
> +       file://rcw.py;beginline=3D8;endline=3D28;md5=3D9ba0b28922dd187b06=
b6c8ebcfdd208e \
>  "

This license changed but the SRC_URI/SRCREV did not? I don't think
this is valid. You are assuming other bbappends recipes are in place.

-M

>
>  # this package is specific to the machine itself
> --
> 1.7.9.5
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


