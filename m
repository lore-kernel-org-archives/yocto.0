Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe006.messaging.microsoft.com [216.32.180.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECE9AE013EB
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 12:05:15 -0700 (PDT)
Received: from mail63-va3-R.bigfish.com (10.7.14.245) by
	VA3EHSOBE008.bigfish.com (10.7.40.28) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 19:05:15 +0000
Received: from mail63-va3 (localhost [127.0.0.1])	by mail63-va3-R.bigfish.com
	(Postfix) with ESMTP id 219F84A0421	for <yocto@yoctoproject.org>;
	Tue, 30 Oct 2012 19:05:15 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i1155h)
Received: from mail63-va3 (localhost.localdomain [127.0.0.1]) by mail63-va3
	(MessageSwitch) id 1351623901831948_26994;
	Tue, 30 Oct 2012 19:05:01 +0000 (UTC)
Received: from VA3EHSMHS019.bigfish.com (unknown [10.7.14.246])	by
	mail63-va3.bigfish.com (Postfix) with ESMTP id 4B758300138	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 19:05:01 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS019.bigfish.com
	(10.7.99.29) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 30 Oct 2012 19:04:58 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.121]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0318.003; Tue, 30 Oct 2012 19:04:58 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Guo Chunrong-B40290 <B40290@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc master] netbase_5.0.bbappend:
	SRC_URI_append_fsl instead of SRC_URI_fsl
Thread-Index: AQHNttF0+1frfFUYYkq4EPC5tNJkyA==
Date: Tue, 30 Oct 2012 19:04:57 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A737389@039-SN1MPN1-002.039d.mgd.msft.net>
References: <1351577824-1988-1-git-send-email-b40290@freescale.com>
In-Reply-To: <1351577824-1988-1-git-send-email-b40290@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc master] netbase_5.0.bbappend: SRC_URI_append_fsl instead of SRC_URI_fsl
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
X-List-Received-Date: Tue, 30 Oct 2012 19:05:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <C09928BFABA4AF45B5CC8895932B1D7A@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 30, 2012 at 1:17 AM,  <b40290@freescale.com> wrote:
> From: Chunrong Guo <b40290@freescale.com>
>
>       fix error: Function failed: netbase: LIC_FILES_CHKSUM
>        points to an invalid file

Cleaned up this commit message some and applied to meta-fsl-ppc master.

Note: meta-fsl-ppc is going to be split into two layers soon... one
with distro and one with machine support soon.

-M

>
> Signed-off-by: Chunrong Guo <b40290@freescale.com>
> ---
>  recipes-append/netbase/netbase_5.0.bbappend |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-append/netbase/netbase_5.0.bbappend b/recipes-append=
/netbase/netbase_5.0.bbappend
> index 6660058..dc0fd0a 100644
> --- a/recipes-append/netbase/netbase_5.0.bbappend
> +++ b/recipes-append/netbase/netbase_5.0.bbappend
> @@ -1,6 +1,6 @@
>  FILESEXTRAPATHS_prepend_fsl :=3D "${THISDIR}/files:"
>
> -SRC_URI_fsl +=3D "file://71-fsl-dpaa-persistent-networking.rules"
> +SRC_URI_append_fsl +=3D "file://71-fsl-dpaa-persistent-networking.rules"
>
>  do_install_append_fsl () {
>         install -d ${D}${sysconfdir}/udev/rules.d/
> --
> 1.7.9.7
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


