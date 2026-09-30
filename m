Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D1E7CA5FC5
	for <webhook@archiver.kernel.org>; Wed, 30 Sep 2026 15:02:45 +0000 (UTC)
Received: from fhigh-a2-smtp.messagingengine.com (fhigh-a2-smtp.messagingengine.com [103.168.172.153])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15615.1790780555771763206
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2026 08:02:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=bVsWSVri;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=Mt1cd/ic;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.153, mailfrom: paul@pbarker.dev)
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailfhigh.phl.internal (Postfix) with ESMTP id BEE261400126;
	Wed, 30 Sep 2026 11:02:34 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-11.internal (MEProxy); Wed, 30 Sep 2026 11:02:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1790780554;
	 x=1790866954; bh=JvkhLQaZ6aD/KcmIOI8U+Fep/R2NddnT2bQJbUG00kk=; b=
	bVsWSVrizPFIV5vPOmjRkD8SyVYBrDHk+3k2RQ8zhB+pyjqnA1AyFYmIPWp8DZeM
	Ob/bsbdgLxXnh+k2I78ciZWp9fnvDB7xFLyTsuuzmrLEu0bakFEWV8wiJPo+YWwQ
	fQUZOu8D5rXSOWLgXQiVnHvENPpzMa2ySnt3o6Hl+7qPOvdufFb3Hj84XeGv6bbh
	Un0NyJ4yiQlEfia+HM0VVgs73h6CC5+53OKkaK6bWvi5zwJ05rXyrSjqCDNjVTJE
	TimjEkcUHyxjqrJghpXRNqrkewdZd7PczJlUa0IDSzLmxFrStYyh7sc5aCtGz4vs
	M7pa5WaPJcZmxHpO9SOzKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1790780554; x=
	1790866954; bh=JvkhLQaZ6aD/KcmIOI8U+Fep/R2NddnT2bQJbUG00kk=; b=M
	t1cd/icu6sQuprldfM6SU8KLRO76H2M6K/kOlcacasp+pa/1gYYEVubEE57/sGyi
	lrbIJp/VGlitNpKKNFdOKP9uOBGOCh55Js1PxYAzZBZoIhRbbAKWwwzUX2a8JNwC
	WhH4onnDA40yKJFoOhdEH8tKsHDi02mo4yS07+qnqi+NdWtnsiRO0nHWZLIBVOiD
	7k8A2HID78m3lVweqh/HyqjzAAb6Uuduka/80MecflCdr6kyffiLLmvVzPfebbGs
	ezTPK4WeyIguMPAZNN5kasaAY3VUOWKYO0FaSNxBoQpRptAHuEtXh+Jv7piMTrY+
	qm09Dd//AFz6b/UzJvefg==
X-ME-Sender: <xms:iiS9akykEUHEVUrhteKwY9Bb5jwAOPqlg-nRJNACHgR5MOkFDSwMjA>
    <xme:iiS9agDA-dSH3l9v4UBTwyXjOfohlxBtj4KFxU01ye_5XLUR1M859hyTJa6cgzLh2
    fmONrzdwG_ZIFKRerihMeUWSgbkPM2d4GEXZ6ZtSJBaN10G_wjEuw8>
X-ME-Received: <xmr:iiS9apY7OHtFeXQz7uNmqyKOlqb082l9mnA50ShE1fTO2oAAKqcl0aK3CMCQ4vSdOGnKAFBlHXHiz-Th39NNY2G0UFtulfEH9ERM9DX-Y07d>
X-ME-Proxy-Cause: dmFkZTFA8Mu//vO2V6VEvvvx1k3bEecwbO6+TH2S9K8q0o8M+mbi6IVMJYzaWiWhyp6l5y
    dxMdYoLFBSHONwi4wHQ9MfiWhal23HtZmUijAbxiGlQyw/BWfZNRUXMcGmxalZeOYNvQLN
    ePhDNOmtOK0imf+ufSd9JSu4XKDDtvuMV7/xH6raaCG5TMIOHqpeWP4G2zA1sTDH6CrHEw
    DbFL2acZj3yMS+vNJPrNGgPavPxBku+jVQ1PtCpouVWbEDPHYbMlO+ouKu3N8vhvjulykr
    ci/ZCzwYLEB3R/H7tAFrWLLtIVhqQmNqU+124BcKuI29CcfXJv/44xb/PqtLPIIj9csHW+
    UxXX/Zojqvt4XB0IICvUnR7LVn+e5H/8OOVyuNi3v8O9lIrpC9KGIfDuBpocUqzXwEAfyx
    dpzYguMw71OgvoIAJaPrxChubCS6MRHOl0S2NaCCGD+0sBglutV2oA95fNNV84WZ23LE9f
    Z2XsXZMXi5P0lR1rWnU0iMNsGwk4Nw8/apXvFLvaE2qG84CceHILciYjPknzbswLb5nq3m
    BTTQdyMjgNsjfeVggATKsq5SJonlxeykOk9EC1TGPzuz4FoHMwN9N2qz8Oiu1Ar8nu4G1V
    M2N4XsuiFAcRqS6euE/i3WVZt1K0bL64LCKImb5dyOaWSPE8ZWqyRFY3mytQ
X-ME-Proxy: <xmx:iiS9agikUwlhQqZfc2UT2smjBmAOEJaBljHhCiRYJKssKGCWSHfMLg>
    <xmx:iiS9aj4RL7O_yKJEiGhOqwYJe7jxzCMYL1vI9OF12YbyqMbw7-f0fg>
    <xmx:iiS9av7L3qBrPoKot-C9MRLY8hjOP3wg3-FTVwHU-F_pxPjGzEFAcA>
    <xmx:iiS9avccNWrtXSEeNbuIfzA8e_DBvE3lJODQwfDPWbYgyf_-_kmMCw>
    <xmx:iiS9autP7L-QbZk8csr-SKLdowE_Yd0DcZhwHp0KM3HlGuc0Z3iiOIQ8>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 30 Sep 2026 11:02:33 -0400 (EDT)
Message-ID: <7692e4a435eee16dee3357e5598af6edb5bd7a15.camel@pbarker.dev>
Subject: Re: QA notification for completed autobuilder build
 (yocto-6.0.4.rc1)
From: Paul Barker <paul@pbarker.dev>
To: Pokybuild User <pokybuild@yoctoproject.org>, yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Date: Wed, 30 Sep 2026 16:02:32 +0100
In-Reply-To: <010101a0f2bb1dc3-f7d94a5b-ddf5-4408-a5ca-9cfacb88f136-000000@us-west-2.amazonses.com>
References: 
	<010101a0f2bb1dc3-f7d94a5b-ddf5-4408-a5ca-9cfacb88f136-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2026 15:02:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66747

On Wed, 2026-09-30 at 14:32 +0000, Pokybuild User wrote:
>     A build flagged for QA (yocto-6.0.4.rc1) was completed on the autobui=
lder and is available at:
>=20
>=20
>         https://valkyrie.yocto.io/pub/releases/yocto-6.0.4.rc1
>=20
>=20
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/4840
>=20
>     Build hash information:=20
>=20
>     bitbake: 51fd94a67fa17650a9ff623492005972bbc7d26f
> meta-agl: c36f0e0bbed6000f28cfd10417c280c9fdca37cd
> meta-arm: 673e8d7c5dcd14de58092eb73e6ecc5eee5c1735
> meta-aws: 3f110301bef871c552a3424f447de59a55db71c8
> meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81
> meta-intel: 79a9681ce83f6bf36aede3aeb8c1707d29bca329
> meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755
> meta-openembedded: 47d7dbdd10890bbd429bc0cccbe14435c37e5af1
> meta-qcom: 509b772e581442558e7b7efea05c5ae082504f50
> meta-virtualization: a07bf78dab0d46099a7e6ca8b2aadb07535efc13
> meta-yocto: 7c25b11156553145fa6b241a2d4f65d94438f804
> mixin-wrynose-linux-firmware: 71dfb81bd98f59ca2127d39b100ecbb8ce1e0ba3
> oecore: 0f03c732a0a2d0506b41b1abe60b3f368b2300dc
> yocto-docs: a2cc1f5b86f3cdc9ad3257a2545322c5169da3ca
>=20
>=20
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

Hi all,

As there are currently multiple release builds ready for QA we want to
clarify the priority.

Please prioritise QA for YP 6.1 first, then YP 6.0.4.

Best regards,

--=20
Paul Barker


