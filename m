Received: from esa4.bmw.c3s2.iphmx.com (esa4.bmw.c3s2.iphmx.com [68.232.139.62])
 by mx.groups.io with SMTP id smtpd.web10.1612.1575279217243324565
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 01:33:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=nPBkRrEI;
 spf=pass (domain: bmw.de, ip: 68.232.139.62, mailfrom: prvs=2322e7b47=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1575279217; x=1606815217;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=UoJXqca5HPPAjX+3jzgaZAu3tcFsII/gjN71GSsJLVY=;
  b=nPBkRrEI2fMUTGtIwKhjOyiv/T25tE8ijC73f8ZaTR9Ao4pJ1C9N/yi9
   KzNIC3TmlStwmwg/wyjXxm/xWtUz1pc57d0hvJULocdKF+qnH9C6kT4NV
   Z5FIG11hIzGOCcUFcV84kMgTKLn1//RbCNz74D7yH8jTDr0nD4ESgOHIh
   Q=;
IronPort-SDR: QDV93HxCxfgwSgRkCuN++8V64UpKyv73JE8mq+8veLaCPLxYxgv7O2TrSJdCe4EkVw39mq3EVf
 52HR06hDmprPrE7fN/MebVXwuzNaXmFJ3q4rBYStjjNKt1G7d/rGyIh3Wp1RkG141sgc16C36w
 7ojpSH4ZbCRv77ys5y6gALVbo/BB1lCL6ycSSCM3bcsES6BxrB9t6TJaG2d1tSRKn7x0oNiFN1
 YPI32HMxq2Uktj/+7ngAPRFCpXDMt7bKRP3yNgtrNy4WL/NOS4PI9xlPc7gDd6v03myMjNapPi
 fCU=
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa4.bmw.c3s2.iphmx.com with ESMTP/TLS; 02 Dec 2019 10:33:35 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw3.muc with ESMTP/TLS;
 02 Dec 2019 10:33:33 +0100
Received: from smucm10k.bmwgroup.net (HELO smucm10k.europe.bmw.corp) ([160.48.96.47])
 by esabb4.muc with ESMTP/TLS; 02 Dec 2019 10:33:33 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10k.europe.bmw.corp
 (160.48.96.47) with Microsoft SMTP Server (TLS;
 Mon, 2 Dec 2019 10:33:33 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Mon, 2
 Dec 2019 10:33:33 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <mike.looijmans@topic.nl>
CC: <peter@berginkonsult.se>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Topic: [yocto] linux-libc-headers - how to handle for older kernels?
Thread-Index: AQHVqJJSvJlOU9RAhEeZfZeyLe0uqqemf7KAgAABpwCAAAJWgIAAAYmA
Date: Mon, 2 Dec 2019 09:33:33 +0000
Message-ID: <20191202093333.GI3527@hiutale>
References: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
 <dcb9a8b4-88c5-5b1e-00ba-4b89f809e3d3@topic.nl>
 <20191202091942.GF3527@hiutale>
 <aa713358-4ec7-5215-25f6-ef13f513c97f@topic.nl>
In-Reply-To: <aa713358-4ec7-5215-25f6-ef13f513c97f@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7A5D20F6153D6F4FB95DD0D3A0A8C181@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 02, 2019 at 09:28:03AM +0000, Mike Looijmans wrote:
> One solution I can think of is to put the header into it's own=20
> recipe/repository and then refer to it like any other library would. Refe=
r to=20
> that recipe from the module (or kernel) recipe that needs it. This way yo=
u=20
> have your header in a single maintainable location and dependencies prope=
rly=20
> taken care of.
>=20
> If that's not something you could live with, share your recipes, since va=
gue=20
> problem descriptions will only get you vague solutions...

This is the problem I see with multiple BSPs. In the end for every one of t=
hem
the best solution is to fork linux-libc-headers.

Adding custom recipes to export headers for every BSP kernel is not scaling=
 so well.

Sharing the BSPs and hacks around them would be nice but they are not publi=
c sadly=A0:(

Cheers,

-Mikko=
