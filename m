Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.49678.1612259508076721411
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 01:51:48 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=Wcokjhs8;
 spf=neutral (domain: bmw.de, ip: 198.145.29.25, mailfrom: prvs=6607d1ab7=mikko.rapeli@bmw.de)
Received: from esa9.hc324-48.eu.iphmx.com (esa9.hc324-48.eu.iphmx.com [207.54.69.27])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8D64B38C0898
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2021 09:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1612259506; x=1643795506;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=8//Wy11/IXKGb2XKOv5JT69QS7UUX34s3lJpZrbM5e4=;
  b=Wcokjhs8DtjzoGk9/Pke8LI518Ys4VaSKuuEcON/Zg7nDVPivYgF5fbl
   cVn1cXVTozGlw0lz727jjAuHhgyIxeEk0DlsPwz28v5HpXs92kmXWx280
   2TtLSGyFnVoPJwYxoY0anCgA4YDNRMBKZQte2iOkG1oBDzIiWsJtyIyPV
   s=;
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa9.hc324-48.eu.iphmx.com with ESMTP/TLS; 02 Feb 2021 10:51:43 +0100
Received: from esabb6.muc ([160.50.100.50])  by esagw6.muc with ESMTP/TLS;
 02 Feb 2021 10:51:43 +0100
Received: from smucm33k.bmwgroup.net (HELO smucm33k.europe.bmw.corp) ([160.46.167.67])
 by esabb6.muc with ESMTP/TLS; 02 Feb 2021 10:51:38 +0100
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by smucm33k.europe.bmw.corp
 (160.46.167.67) with Microsoft SMTP Server (TLS;
 Tue, 2 Feb 2021 10:51:38 +0100
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.010; Tue,
 2 Feb 2021 10:51:38 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <rpjday@crashcourse.ca>
CC: <yocto@yoctoproject.org>
Subject: Re: [yocto] using SYSTEMD_SERVICE to disable a systemd service?
Thread-Topic: [yocto] using SYSTEMD_SERVICE to disable a systemd service?
Thread-Index: AQHW+T7dEKKu3A0VC0KoziJmiTQg/KpEjr2A
Date: Tue, 2 Feb 2021 09:51:38 +0000
Message-ID: <YBkgqZW1R6rVUY00@korppu>
References: <60ccec70-495e-7de3-6ee3-7a8319a87ec8@crashcourse.ca>
In-Reply-To: <60ccec70-495e-7de3-6ee3-7a8319a87ec8@crashcourse.ca>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <30F3D20DD068784D8DB6DAAACB0CECA7@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Feb 02, 2021 at 03:38:34AM -0500, Robert P. J. Day wrote:
>=20
>   while the "standard" way to disable a systemd service from
> auto-booting is SYSTEMD_AUTO_ENABLE, i just ran across a number of
> examples in an existing project that do this:
>=20
>   SYSTEMD_SERVICE_${PN} =3D ""
>=20
> ouch. that's a new one on me and, while i'm prepared to believe it
> works, it seems like grotesque overkill and mis-application of that
> variable.
>=20
>   am i within my rights to suggest that that's not really the way to
> do it? or is that considered an acceptable (albeit weird) alternative?

We do SYSTEMD_SERVICE_${PN} =3D "" a lot but reasons are a lot more complex=
.

To properly tune target system boot, one really needs to fork most systemd =
service
files. This is needed to set cgroups, permissons, to change service and/or
target dependencies e.g. additional or intermediate boot targets.

Thus one ends up forking most of the service files. For some subset, it's e=
nough
to patch them, but for most it's easier to just fork even the ones that com=
e from systemd.
Additionally a lot of testing and logging infra needs to be added to make s=
ure boot is
clean and happens the way developers designed and meets the KPIs like boot =
time.

These are tricky to maintain and so company/industry/product/version specif=
ic that
it's tricky to upstream the changes.

Cheers,

-Mikko=
