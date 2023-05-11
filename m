Return-Path: <sbabic@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C42BC77B7C
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 16:59:27 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web10.1854.1683824360508030490
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 09:59:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=Yn/pcFAk;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: sbabic@denx.de)
Received: from [IPV6:2001:a61:6143:6401:46f:afa3:2ce7:d662] (unknown [IPv6:2001:a61:6143:6401:46f:afa3:2ce7:d662])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: sbabic@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id D7D6D861A3;
	Thu, 11 May 2023 18:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1683824357;
	bh=ub1XuW4iwG4mtx7qTnXcAiTJlN1XSa0/7zOFCFsOCZk=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Yn/pcFAku2xn703nEvIbJUaxSzM+ioIS5ACYtM2Dm35/73fWYi8yELQ9rB/StJ7Oj
	 8XYJ2gc7IEfLWqFl0Fi29Y/7+IRQ4XDdIAAsMVN+NQnDDO85kjV6884w1Rf92040gk
	 68mOzb4a6Z/BlG60FqE7IIpT9x4ypHF137MLZvnZp2Pa66IyGcsd1eS+jJ73RfI5sx
	 GnMuC8uYORs3vZNK7xvtTTl2gvK+pZ8Dspq1JMOhJkO1NyJ7yoK6d+qx3llrOvdf1m
	 6qi375R1DwwP0+9vRpLWcOhmKu2m8TF2tJ6dvEkipbWU26pCGYngL2ud7yIyjivp+M
	 CSGcWMjaeaHHQ==
Message-ID: <f3d04550-0646-dabd-6294-3bccd0b71506@denx.de>
Date: Thu, 11 May 2023 18:59:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] OTA Updates
Content-Language: de-DE
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
References: <CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
In-Reply-To: <CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 16:59:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59994

Hi,

On 11.05.23 16:33, MOHAMMED HASSAN wrote:
> Hi all,
> So I am referring this page for OTA updates
> https://wiki.yoctoproject.org/wiki/System_Update=20
> <https://wiki.yoctoproject.org/wiki/System_Update>
>=20
> However are these all paid or free services. Any more info about these=20
> services is welcomed.
> Also are there any tutorials, YouTube videos on ota updates for yocto? =
I=20
> couldn=E2=80=99t find any though.
>=20

I and DENX offer services around SWUpdate as OTA service -=20
https://swupdate.org/services. Layers and documentation can be retrieved=20
at https://sbabic.github.io/swupdate/.

Regards,
Stefano Babic

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


