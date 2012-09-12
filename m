Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe004.messaging.microsoft.com [216.32.180.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 906BEE00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 14:59:16 -0700 (PDT)
Received: from mail86-co1-R.bigfish.com (10.243.78.252) by
	CO1EHSOBE015.bigfish.com (10.243.66.78) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 21:59:16 +0000
Received: from mail86-co1 (localhost [127.0.0.1])	by mail86-co1-R.bigfish.com
	(Postfix) with ESMTP id 45BDF3400AB	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 21:59:16 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail86-co1 (localhost.localdomain [127.0.0.1]) by mail86-co1
	(MessageSwitch) id 1347487154482162_25778;
	Wed, 12 Sep 2012 21:59:14 +0000 (UTC)
Received: from CO1EHSMHS005.bigfish.com (unknown [10.243.78.235])	by
	mail86-co1.bigfish.com (Postfix) with ESMTP id 6DFB9740043	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 21:59:14 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS005.bigfish.com
	(10.243.66.15) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 21:59:13 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.02.0309.003;
	Wed, 12 Sep 2012 16:59:13 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc 08/16] fsl.conf: disable auto dhcp for eth0
Thread-Index: AQHNkTHXREN0kBfKo0CEBGChdQuorA==
Date: Wed, 12 Sep 2012 21:59:12 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A67555C@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-8-git-send-email-b19537@freescale.com>
In-Reply-To: <1347433590-8481-8-git-send-email-b19537@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 08/16] fsl.conf: disable auto dhcp for eth0
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
X-List-Received-Date: Wed, 12 Sep 2012 21:59:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <3DFD1B87598B4C4691EA5D4E60AECC43@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2012 at 2:06 AM,  <b19537@freescale.com> wrote:
> From: Ting Liu <b28495@freescale.com>
>
> Signed-off-by: Ting Liu <b28495@freescale.com>
> ---
>  conf/distro/fsl.conf |    4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/conf/distro/fsl.conf b/conf/distro/fsl.conf
> index b35f5e2..b6c8fb4 100644
> --- a/conf/distro/fsl.conf
> +++ b/conf/distro/fsl.conf
> @@ -91,3 +91,7 @@ PREFERRED_VERSION_samba =3D "3.4.0"
>  PREFERRED_PROVIDER_virtual/libx11 =3D "libx11"
>
>  CCACHE =3D ""
> +
> +# disable auto dhcp for eth0
> +ETH0_AUTO_DHCP =3D "0"

As I've said before just turning off dhcp by default is not what we
want. Some internal testing issue is not a reason to disable this by
default as this is used by default by most users.

-M=


