Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CABA7C001E0
	for <webhook@archiver.kernel.org>; Wed, 16 Aug 2023 11:55:58 +0000 (UTC)
Subject: Re: How to switch between package version ?
To: yocto@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Aug 2023 04:55:53 -0700
References: <ZNyvYwadnDXBDsQm@nuoska>
In-Reply-To: <ZNyvYwadnDXBDsQm@nuoska>
Message-ID: <19617.1692186953072162853@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="W6VqDsit0MiSJagqbTvt"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Aug 2023 11:55:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60807

--W6VqDsit0MiSJagqbTvt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Mikko, thank you for you're answer which was very insightful.

>=20
> If that is not available, check if you can change the branch of an existi=
ng
> meta layer to provide what you need. Note that mixing
> layer branch names is frequently possible with minor changes, e.g. using
> meta-security master branch with kirkstone LTS poky.

Could I ask you to elaborate on this subject or share some resources about =
mixing layer branches ?

-Nicolas

--W6VqDsit0MiSJagqbTvt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Mikko, thank you for you're answer which was very insightful.<br /><br /=
>
<blockquote><span style=3D"white-space-collapse: preserve;">If that is not =
available, check if </span><span style=3D"white-space-collapse: preserve;">=
you can change the branch of an existing meta layer to provide what you nee=
d. Note that mixing</span><br style=3D"white-space-collapse: preserve;" /><=
span style=3D"white-space-collapse: preserve;">layer branch names is freque=
ntly possible with minor changes, e.g. using meta-security master branch </=
span><span style=3D"white-space-collapse: preserve;">with kirkstone LTS pok=
y. </span></blockquote>
Could I ask you to elaborate on this subject or share some resources about =
mixing layer branches ?<br /><br />-Nicolas

--W6VqDsit0MiSJagqbTvt--

