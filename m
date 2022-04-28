Return-Path: <sbabic@denx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0546EC433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 12:13:47 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web09.9168.1651148020268847746
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 05:13:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de
 header.s=phobos-20191101 header.b=GzHVDqft;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: sbabic@denx.de)
Received: from [IPV6:2001:a61:616e:1401:d56b:c1ea:4aef:821e] (unknown
 [IPv6:2001:a61:616e:1401:d56b:c1ea:4aef:821e])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: sbabic@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 3CDB580166;
	Thu, 28 Apr 2022 14:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1651148017;
	bh=3xD7LEJhPXims3FjBYeSB84MaPk+Mpk/COGNsBEBZno=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=GzHVDqftjANfOS+ep50eLBw9RO3KTtWdIJrT1zqqnaVqfSX84xqf+GKmz/7Q6ph13
	 qQF5H9ssYXJ8n5harqq3Tzrgb9BAOid41zN/z86EH7DwEMee39PO3KPL4AaYMvcAT2
	 yvf0tnL8a/a5JviPVNQ0Knwz1s1i/CxBofK8GIU2OM56LlsCg36GkeKLloPEPJSL7v
	 9QBLemr2OzIngZbY0XJrA6CaGcGvu+Dk7ViSax/WD67URinY+pVs722KjBrErlPoiO
	 yv72p3/hq8rKYq32xaXADwXOEqeRa81rJWXifkYlavWj0IBdcT/qXmQ4AdaY28Krol
	 FuQXKfU+RUhlg==
Message-ID: <8b35abe3-be16-3c42-a1b7-529705180036@denx.de>
Date: Thu, 28 Apr 2022 14:13:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] Building recipes in multiple flavors for differing images
Content-Language: de-DE
To: Martin Weber <martin.weber@br-automation.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: 
 <VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com>
From: Stefano Babic <sbabic@denx.de>
In-Reply-To: 
 <VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 12:13:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56938

Hi Martin,

On 28.04.22 11:09, Martin Weber wrote:
> Hi everybody!
>=20
> We use yocto to build the system for some of our devices. Given we have=
=20
> multiple use-cases for differing partitions on the device (rescue=20
> system; main system in =E2=80=9Crelease=E2=80=9D flavor; main system in=
 =E2=80=9Cdevelopment &=20
> debug=E2=80=9D flavor), we use different custom distros for our build.
>=20
> With this mail we would like to ask the community what the best practic=
e=20
> for our use case are, describe our current approach, and ask whether we=
=20
> can do things in a better way.
>=20
> The software we use (machine/bsp layer level; software level) in=20
> principal is the same (same upstream, internal or 3^rd party), but we=20
> need to build them in different ways (e.g., one uses system V init, one=
=20
> uses systemd init; one uses optimized-non-logging versions of the=20
> software, another ships debug symbols and enables logging during=20
> buildtime; one installs and enables various systemd units, another=20
> doesn=E2=80=99t, etc.).
>=20
> Our solution to this problem is that we have (three) different distros,=
=20
> and use distro overrides to enable/disable/patch/append/delete various=20
> bits and pieces throughout the otherwise shared recipes. The =E2=80=9Cp=
roblem=E2=80=9D=20
> with this is that we need to use different build environments to build=20
> our three distros, i.e., we cannot re-use otherwise identical packages.=
=20


I do not know if what I did on a couple of projects is cleaner, bu tit=20
is maybe useful to mention. I have often the same topic, and I build a=20
"rescue" and a "production" image, and some of the packages should be=20
different according to the image where they are installed, and I did not=20
want to add dirty trick via post process commands. dropbear, base, etc.=20
are good examples.

What I did is to add variants of the packages, like a base-files-rescue=20
near the standard package, and each image file will select the variant=20
of the package it wants.

To do this, I added a populate_packages:prepend() to a .bbappend of the=20
package, so that I can inject per package the changes I want to have. At=20
the end, it can have a dropbear-rescue and a dropbear packages, and it=20
is not required to have different DISTRO.

I do not know how this can be considered a clean approach, but because=20
it was not yet mentioned, it is nice to have some opinions.

Regards,
Stefano


--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

