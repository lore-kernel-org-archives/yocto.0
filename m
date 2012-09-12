Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe005.messaging.microsoft.com [216.32.180.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 215C9E00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 14:56:34 -0700 (PDT)
Received: from mail122-co1-R.bigfish.com (10.243.78.229) by
	CO1EHSOBE006.bigfish.com (10.243.66.69) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 21:56:33 +0000
Received: from mail122-co1 (localhost [127.0.0.1])	by
	mail122-co1-R.bigfish.com (Postfix) with ESMTP id B42D45400AB	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 21:56:33 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz17326ah8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail122-co1 (localhost.localdomain [127.0.0.1]) by mail122-co1
	(MessageSwitch) id 1347486991912879_14117;
	Wed, 12 Sep 2012 21:56:31 +0000 (UTC)
Received: from CO1EHSMHS011.bigfish.com (unknown [10.243.78.241])	by
	mail122-co1.bigfish.com (Postfix) with ESMTP id DB7C7BC0042	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 21:56:31 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS011.bigfish.com
	(10.243.66.21) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 21:56:28 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.02.0309.003;
	Wed, 12 Sep 2012 16:56:27 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc 05/16] ethtool: add ethtool-3.0
Thread-Index: AQHNkTF1sTtStR1v8UW/V0m8vUxMlQ==
Date: Wed, 12 Sep 2012 21:56:27 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A67551A@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-5-git-send-email-b19537@freescale.com>
In-Reply-To: <1347433590-8481-5-git-send-email-b19537@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 05/16] ethtool: add ethtool-3.0
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
X-List-Received-Date: Wed, 12 Sep 2012 21:56:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <AF1DE0EE5CB82641AFF482C695C13915@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2012 at 2:06 AM,  <b19537@freescale.com> wrote:
> From: Zhenhua Luo <b19537@freescale.com>
>
>     To match the kernel version of FSL SDK

This commit message does not make sense. Can we say why we need
ethtool 3.0 and the subsequent patch?

Also this patch should be for-denzil branch only as poky master
already has ethtool 3.0 recipe in it.

-M

>
> Signed-off-by: Zhenhua Luo <b19537@freescale.com>
> ---
>  recipes-extended/ethtool/ethtool_3.0.bb |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
>  create mode 100644 recipes-extended/ethtool/ethtool_3.0.bb
>
> diff --git a/recipes-extended/ethtool/ethtool_3.0.bb b/recipes-extended/e=
thtool/ethtool_3.0.bb
> new file mode 100644
> index 0000000..cc4862d
> --- /dev/null
> +++ b/recipes-extended/ethtool/ethtool_3.0.bb
> @@ -0,0 +1,12 @@
> +SUMMARY =3D "Display or change ethernet card settings"
> +DESCRIPTION =3D "A small utility for examining and tuning the settings o=
f your ethernet-based network interfaces."
> +HOMEPAGE =3D "http://www.kernel.org/pub/software/network/ethtool/"
> +SECTION =3D "console/network"
> +LICENSE =3D "GPLv2+"
> +LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae=
19f"
> +
> +SRC_URI =3D "${KERNELORG_MIRROR}/software/network/ethtool/ethtool-${PV}.=
tar.gz"
> +SRC_URI[md5sum] =3D "a339cbdcbe1c1fbe377c36d84231bda6"
> +SRC_URI[sha256sum] =3D "9b9caffc0ee3567b607618ca5bc85505230d66cd9d5caa1c=
333760b3885f0ae4"
> +
> +inherit autotools
> --
> 1.7.9.5
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


