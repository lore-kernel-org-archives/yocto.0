Received: from esa2.bmw.c3s2.iphmx.com (esa2.bmw.c3s2.iphmx.com [68.232.133.169])
 by mx.groups.io with SMTP id smtpd.web10.87.1582148933982967563
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:48:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=bc8CX1O7;
 spf=pass (domain: bmw.de, ip: 68.232.133.169, mailfrom: prvs=311c70376=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582148935; x=1613684935;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=L5+3XIlwBT2p4odMM8ducojY+OcJrXyocp4v1xvz0Gg=;
  b=bc8CX1O7w5cG77z+9qFnQukru7GZplWf0xuK3UvBgOuBvjEF87687tqO
   g59+9fQRpCt+wAsrQ9SMZsJ49gNCSbHhdTkeSyNBipqnEG7SN0CpZfMEO
   tgl6b3tLilNqKhGf9Q7qDM1jY4m/Q5C3FZdXfSjwqa+1l2csvve5Fmhz+
   I=;
IronPort-SDR: 8OxpLaSzYHNJ6iQU81fnhZjt3rUUq1UJ9OhFK18i5UCVFwM1jJ2QyQcj6Qa3a84gYcqw2po1re
 HF3e540yb3jAVtU01QdYFhPMatkkJTur9EysApZYu9InlU5gU1ZrsoH5WIoZh/z/IXJopHzOnm
 /4DF0cxXXapkCccRiAslS7q64p7Z+Y6nrm4VFWD/82/oYvixMIEEVIHHFnKt0LBH8fpmIz3ObY
 4zcxdmib9TBG7dNq2KUXwGy0eX8i9GHCGw73qiflNxlYmG+2WFsrl5SA9r8zESx8/VHlRVrAwc
 sIQ=
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa2.bmw.c3s2.iphmx.com with ESMTP/TLS; 19 Feb 2020 10:44:45 +0100
Received: from esabb2.muc ([160.50.100.34])  by esagw5.muc with ESMTP/TLS;
 19 Feb 2020 10:44:22 +0100
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp) ([160.48.96.49])
 by esabb2.muc with ESMTP/TLS; 19 Feb 2020 10:44:23 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10m.europe.bmw.corp
 (160.48.96.49) with Microsoft SMTP Server (TLS;
 Wed, 19 Feb 2020 10:44:22 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Wed,
 19 Feb 2020 10:44:22 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <j.armandohernandez.j@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] how to reuse generated library in a nativesdk recipe #sdk #systemd
Thread-Topic: [yocto] how to reuse generated library in a nativesdk recipe
 #sdk #systemd
Thread-Index: AQHV5wg0rpjF7EdG7kGTb2Q0RzuE0KgiM38A
Date: Wed, 19 Feb 2020 09:44:22 +0000
Message-ID: <20200219094422.GV104502@korppu>
References: <m6OI.1582105039365385215.XDJN@lists.yoctoproject.org>
In-Reply-To: <m6OI.1582105039365385215.XDJN@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7157626C99F5BF44995A2BDA864E4A99@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Feb 19, 2020 at 01:37:19AM -0800, Armando Hernandez wrote:
> Hello,
>=20
> I have a recipe that builds a library. The recipe specifies an additional=
 package "${PN}-systemd" along with other systemd related variables and fin=
ally it instructs that the package should be built with "-DWITH_SYSTEMD=3DO=
N" being passed to cmake. So far so good. But, I extended this recipe to na=
tivesdk because I need this library on it. When trying=A0to build the corre=
sponding=A0nativesdk package, the build fails at the configuration step (i.=
e. "do_configure") claiming it cannot find the package systemd.
>=20
> Is there a way I can install the -already-generated libraries into my SDK=
 (potentially via the corresponding nativesdk recipe) without having to reb=
uild the package? Or do I need to somehow include such systemd package in m=
y sdk (which I don't think I need at all)?
>=20
> Any hints and pointers as to were to look at are very well appreciated.
> Thanks.

Make the systemd dependency for target only, e.g. DEPENDS_class-target +=3D=
 "systemd"
etc.

There may be relevant use cases to build some of systemd components or tool=
s
to native or nativesdk targets too. In that case add BBCLASSEXTEND +=3D "na=
tivesdk" etc
in a bbappend to systemd.

Hope this helps,

-Mikko=
