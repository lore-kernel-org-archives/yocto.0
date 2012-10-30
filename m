Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe002.messaging.microsoft.com [216.32.180.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 409B0E013EB
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 12:06:20 -0700 (PDT)
Received: from mail243-va3-R.bigfish.com (10.7.14.248) by
	VA3EHSOBE001.bigfish.com (10.7.40.21) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 19:06:19 +0000
Received: from mail243-va3 (localhost [127.0.0.1])	by
	mail243-va3-R.bigfish.com (Postfix) with ESMTP id 7F01B4800E1	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 19:06:19 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i1155h)
Received: from mail243-va3 (localhost.localdomain [127.0.0.1]) by mail243-va3
	(MessageSwitch) id 1351623976599367_23587;
	Tue, 30 Oct 2012 19:06:16 +0000 (UTC)
Received: from VA3EHSMHS019.bigfish.com (unknown [10.7.14.246])	by
	mail243-va3.bigfish.com (Postfix) with ESMTP id 8C6EE46013D	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 19:06:16 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS019.bigfish.com
	(10.7.99.29) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 30 Oct 2012 19:06:08 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.121]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0318.003; Tue, 30 Oct 2012 19:06:07 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Guo Chunrong-B40290 <B40290@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc master] busybox_1.20.2.bbappend:updated
	FILESEXTRAPATHS_prepend_fsl
Thread-Index: AQHNttGdIXpbH0elNkyP3v9fSfGfEw==
Date: Tue, 30 Oct 2012 19:06:07 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A7373A6@039-SN1MPN1-002.039d.mgd.msft.net>
References: <1351571809-11042-1-git-send-email-b40290@freescale.com>
In-Reply-To: <1351571809-11042-1-git-send-email-b40290@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc master] busybox_1.20.2.bbappend:updated FILESEXTRAPATHS_prepend_fsl
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
X-List-Received-Date: Tue, 30 Oct 2012 19:06:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <929AD65B077E3E4D9C701E83ABFB761E@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 29, 2012 at 11:36 PM,  <b40290@freescale.com> wrote:
> From: Chunrong Guo <b40290@freescale.com>
>
>      Fix Fetcher failure for URL: 'file://defconfig-fsl'
>
> Signed-off-by: Chunrong Guo <b40290@freescale.com>

Applied to meta-fsl-ppc master.

-M

> ---
>  recipes-append/busybox/busybox_1.20.2.bbappend |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-append/busybox/busybox_1.20.2.bbappend b/recipes-app=
end/busybox/busybox_1.20.2.bbappend
> index 60d8b25..9c52eeb 100644
> --- a/recipes-append/busybox/busybox_1.20.2.bbappend
> +++ b/recipes-append/busybox/busybox_1.20.2.bbappend
> @@ -1,6 +1,6 @@
>  PR_append_fsl =3D "+${DISTRO}.0"
>
> -FILESEXTRAPATHS_prepend_fsl :=3D "${THISDIR}/busybox-1.19.4:"
> +FILESEXTRAPATHS_prepend_fsl :=3D "${THISDIR}/busybox-1.20.2:"
>
>  SRC_URI_append_fsl +=3D "file://defconfig-fsl \
>              file://busybox-1.19.4-ubi-user-h.patch \
> --
> 1.7.9.7
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


