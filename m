Received: from esa3.bmw.c3s2.iphmx.com (esa3.bmw.c3s2.iphmx.com [68.232.133.150])
 by mx.groups.io with SMTP id smtpd.web11.10836.1579858902911827525
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 01:41:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=h/05RYDK;
 spf=pass (domain: bmw.de, ip: 68.232.133.150, mailfrom: prvs=285a5178a=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1579858903; x=1611394903;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=Tgj4vYklPwc1DpGyDG3QrSrKMWQmlTSFiwXIaB+EAKs=;
  b=h/05RYDKKJM/nmEx8xErC8/AjAlb5sGzJtvDRdnXIVS6Ttm+W8TeGmR3
   qfL/V6wMhZHvnpY/ZnJN2pldSKb/2HeOoankcd6CkCbS8k+CfWRszcEG7
   UnrFNsmNv0Kz1eGkX9OOqjbYYDZW79K8KFKQBe0QK/kODEvbS0Kfro4Co
   Q=;
IronPort-SDR: HuMZG+BSy20MlueFiV6chckFbvEYaIeD1lEruwiqwxK2cU2IOa+ZoiKA1i3Qie3uCDkfGQNGDD
 gYEuZO0LC0U8NDl3UNQQXynsVyIcmWAPhic19/h3kAVDTQLRvsMXpUQo/QfqO4frQD1JFDaoDu
 kWXJhkOQ/0lTIBUk6DOnkpZOb6aBlsTInhp68huY9hXOvkMJWUW3Orp5emzer4k7jkAumS07wj
 tmMbfBo1Q4JcAmAyslpLmw3YT8z8FkfKPdQ+9J4ovdsrQ9n5KQaOvwOteUUNgW1fXvouHE9gvF
 BCU=
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa3.bmw.c3s2.iphmx.com with ESMTP/TLS; 24 Jan 2020 10:41:29 +0100
Received: from esabb3.muc ([160.50.100.30])  by esagw4.muc with ESMTP/TLS;
 24 Jan 2020 10:41:28 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb3.muc with ESMTP/TLS; 24 Jan 2020 10:41:28 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Fri, 24 Jan 2020 10:41:27 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Fri,
 24 Jan 2020 10:41:27 +0100
IronPort-SDR: bEmKD1OwfNpanp09T31d7C5578k4Q3baib9X+As5hx0byMcS6Ct58wr/J7wB0BO+iKRODoNi1V
 0issY3/bgFQPSQmPztmTRVndWDgYw+Xko=
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <Anders.Montonen@iki.fi>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] cve-checker name collisions
Thread-Topic: [yocto] cve-checker name collisions
Thread-Index: AQHV0pUEnuBGhBMwSUOiczUy/7OYN6f5fviA
Date: Fri, 24 Jan 2020 09:41:27 +0000
Message-ID: <20200124094127.GS104502@korppu>
References: <alpine.DEB.2.21.2001241057320.4667@lakka.kapsi.fi>
In-Reply-To: <alpine.DEB.2.21.2001241057320.4667@lakka.kapsi.fi>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C5F9E839F4470545990B0AD391C8E158@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jan 24, 2020 at 11:02:02AM +0200, Anders Montonen wrote:
> Hi,
>=20
> What's the best way for handling name collisions when using the cve-chec=
ker
> tool? For example, there's a ton of Adobe Flex vulnerabilities that are
> reported against the Flex lexical analyzer generator tool. Whitelisting =
the
> individual CVEs would be one option, but the list is pretty long.

Set CVE_PRODUCT to match real NVD product name with possibly vendor too.

There are a few examples in poky master.

Cheers,

-Mikko

> Regards,
> Anders Montonen

>=20
