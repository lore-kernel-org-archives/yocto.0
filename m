Return-Path: <sbabic@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4F3C25B74
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 10:19:35 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web11.5022.1717064373102530589
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 May 2024 03:19:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=gfCCiL3h;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: sbabic@denx.de)
Received: from [IPV6:2001:a61:5210:b101:ca5f:34ae:4dcc:8434] (unknown [IPv6:2001:a61:5210:b101:ca5f:34ae:4dcc:8434])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: sbabic@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 20EAA87EDC;
	Thu, 30 May 2024 12:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1717064370;
	bh=Egi2GxdXHxhuwJqH1RXNrO7bTGGbD/vRZV2O8GFlDP8=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=gfCCiL3hZ8rUgOmX5yFdWuwHUD4Iu0v5sBpjrrM3Ym4kXvr2iboRHv12zeBzLWoNL
	 +OsAQ55SEBXk2mOPHy6VpLs9K5E+WqCbQF0DjKc3aKdxBgzcnvjTv8ufjZgNVjzZc9
	 gNWuG67k+QsUVY1dvCpOmbag+bBFRcSsCV0aHtJsdeofOnhO1ei06Dyxsv6VFzP4S6
	 AsionXdEj06pCq/UAoA4pR6g8XmEVjhSAaDMqwXIxKiNCW1FUfq28PB/rNyUROWtAl
	 3+taERS2BInd2gSavE6uJ9zoRgdN+iUaq/w0B9Do2tfcbjurMLhPgUeHmNBfFWW56V
	 LxUgYvjjjFP6Q==
Message-ID: <1572b957-1e36-442b-885f-a4d575afcca2@denx.de>
Date: Thu, 30 May 2024 12:19:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
To: yocto@lists.yoctoproject.org, fabian.hanke@bosch.com
References: <sU3Q.1716973567621792975.HgRu@lists.yoctoproject.org>
Content-Language: en-US
From: Stefano Babic <sbabic@denx.de>
In-Reply-To: <sU3Q.1716973567621792975.HgRu@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 10:19:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63242

Hi Fabian,

On 29.05.24 11:06, Hanke Fabian (DC/PAR) via lists.yoctoproject.org wrote=
:
> Hello,
> we were wondering if anyone has experiences / best practices on how to =
detect if packages link to a library from another GPL licensed package? W=
e know that there are ways to completely filter out some licenses via INC=
OMPATIBLE_LICENSE. But from our (limited) legal knowledge it is okay to i=
nclude them in our image, if we fulfill all the obligations. One obligati=
on implies that code linked to a GPL library will need to have the same l=
icense (derivative work). Hence we would like to avoid that packages cont=
aining our own closed source software link by accident to a GPL based lib=
rary. Has anyone experiences / best practices on how to detect this autom=
atically during the bitbake build?

Is not what fossology is thought to solve ?

Best regards,
Stefano

>=20
> Best regards,
> Fabian Hanke
> --------------------------------
> Bosch Rexroth AG
> Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart=
 HRB 23192 Executive Board: Dr. Steffen Haack (President), Roland Bittena=
uer, Thomas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chairman of =
the Supervisory Board: Dr. Markus Forschner
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63222): https://lists.yoctoproject.org/g/yocto/mess=
age/63222
> Mute This Topic: https://lists.yoctoproject.org/mt/106365537/3618551
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [sbabic@denx.=
de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DENX Software Engineering GmbH,        Managing Director: Erika Unter
HRB 165235 Munich,   Office: Kirchenstr.5, 82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

