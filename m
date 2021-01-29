Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10257.1611931674516987613
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 06:47:54 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=ozH/3AIR;
 spf=neutral (domain: bmw.de, ip: 198.145.29.25, mailfrom: prvs=656141f01=mikko.rapeli@bmw.de)
Received: from esa1.hc324-48.eu.iphmx.com (esa1.hc324-48.eu.iphmx.com [207.54.68.119])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5FF3538C0409
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2021 14:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1611931673; x=1643467673;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=IY+C1rx8Pm/2gADSa6w92A97FtoaBIyp+PFGdUt5J78=;
  b=ozH/3AIRTNz+JzNp5eIDwuq/Niudmvl8etJ5VtlkHDz+kOnAT1do0ZHz
   hOhKqzSXDmiV646QAZWNFZ8pLhox+BwROuJQmYUitaBzhni4Q+6UFNpjG
   1Mg2MHHlAP/x2nmyjC1wXuAY/R7/vXEanF4hwneq51xgHY+jvFqZWJCXk
   s=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
 esa1.hc324-48.eu.iphmx.com with ESMTP/TLS; 29 Jan 2021 15:47:51 +0100
Received: from esabb5.muc ([160.50.100.47])  by esagw4.muc with ESMTP/TLS;
 29 Jan 2021 15:47:51 +0100
Received: from smucm33j.bmwgroup.net (HELO smucm33j.europe.bmw.corp) ([160.46.167.66])
 by esabb5.muc with ESMTP/TLS; 29 Jan 2021 15:47:51 +0100
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by smucm33j.europe.bmw.corp
 (160.46.167.66) with Microsoft SMTP Server (TLS;
 Fri, 29 Jan 2021 15:47:50 +0100
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.010; Fri,
 29 Jan 2021 15:47:50 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <openembedded-core@lists.openembedded.org>, <yocto@yoctoproject.org>
CC: <marek.belisko@gmail.com>, <richard.purdie@linuxfoundation.org>,
	<maurofrqueiros@gmail.com>, <Matt.Hoosier@garmin.com>
Subject: Re: [OE-core] [dunfell][PATCH 1/2] bitbake: git.py: Use the correct branch to check if the repository has LFS objects.
Thread-Topic: [OE-core] [dunfell][PATCH 1/2] bitbake: git.py: Use the correct
 branch to check if the repository has LFS objects.
Thread-Index: AQHW9k2398ahWBG35EyXWhPs7WWcRg==
Date: Fri, 29 Jan 2021 14:47:50 +0000
Message-ID: <YBQgFdaLan6GXXPH@korppu>
In-Reply-To: <165EBA9582347C18.12832@lists.openembedded.org>
 <165EBA91F8FDFBB3.12832@lists.openembedded.org>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6BD7F1A3729A474583F270D7C1A49709@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Sorry, third patch needs to be backported from master for git lfs to work
nicely on dunfell. Will send a v2.

-Mikko=
