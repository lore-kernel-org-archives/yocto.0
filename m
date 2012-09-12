Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe010.messaging.microsoft.com [216.32.180.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1BBCE00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 12:49:08 -0700 (PDT)
Received: from mail151-va3-R.bigfish.com (10.7.14.250) by
	VA3EHSOBE013.bigfish.com (10.7.40.63) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 19:49:07 +0000
Received: from mail151-va3 (localhost [127.0.0.1])	by
	mail151-va3-R.bigfish.com (Postfix) with ESMTP id D253160094	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 19:49:07 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -12
X-BigFish: VS-12(zb00Rz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail151-va3 (localhost.localdomain [127.0.0.1]) by mail151-va3
	(MessageSwitch) id 1347479345101971_17859;
	Wed, 12 Sep 2012 19:49:05 +0000 (UTC)
Received: from VA3EHSMHS031.bigfish.com (unknown [10.7.14.251])	by
	mail151-va3.bigfish.com (Postfix) with ESMTP id 149F020019	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 19:49:05 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS031.bigfish.com
	(10.7.99.41) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 19:49:03 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0309.003;
	Wed, 12 Sep 2012 14:49:03 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>, Liu Ting-B28495
	<B28495@freescale.com>, Guo Chunrong-B40290 <B40290@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc 01/16] add "CentOS release 5.5 (Final)"
	into SANITY_TESTED_DISTROS
Thread-Index: AQHNkR+o7krHKPZw9UusGogzs0xp/g==
Date: Wed, 12 Sep 2012 19:49:02 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A674FD8@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 01/16] add "CentOS release 5.5 (Final)" into SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 12 Sep 2012 19:49:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <2F27F93B51DBA94BACEA3B9BEEA7F119@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

Guys,

When submitting patches to this list please CC me. Also fix your git
email addresses so it shows your name no your CoreID

-M

On Wed, Sep 12, 2012 at 2:06 AM,  <b19537@freescale.com> wrote:
> From: Zhenhua Luo <b19537@freescale.com>
>
> Signed-off-by: Zhenhua Luo <b19537@freescale.com>
> ---
>  conf/distro/fsl.conf |    1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/distro/fsl.conf b/conf/distro/fsl.conf
> index 0169c6c..b35f5e2 100644
> --- a/conf/distro/fsl.conf
> +++ b/conf/distro/fsl.conf
> @@ -60,6 +60,7 @@ SANITY_TESTED_DISTROS ?=3D " \
>              Fedora release 15 (Lovelock) \n \
>              Fedora release 16 (Verne) \n \
>              Fedora release 17 (Beefy Miracle) \n \
> +            CentOS release 5.5 (Final) \n \
>              CentOS release 5.6 (Final) \n \
>              CentOS release 5.7 (Final) \n \
>              CentOS release 5.8 (Final) \n \
> --
> 1.7.9.5
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


