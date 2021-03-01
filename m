Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web12.11169.1614599222123456763
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 03:47:03 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=oOFy712o;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1614599222;
  x=1646135222;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=X05sISbaDwyvyaFM8t/RoaDoutBB4chsBrrrwfGsJ8E=;
  b=oOFy712oZXHmAwdx8fS/V6YsW7TW2NN1DjNjZ8CM7KvPqrTvsBk22V1n
   Wps0x4V24/b6s7GBUOkocDp4qxvu1Fkf7pK2FuusL4RJro148s6gvx9q2
   ojRwfrnodZapmqSDAG/rHGnofHp30e0ELFRa8uVIfjcqB4nd8bvN179BW
   tilfznMF+QdL85Qr77Vp3D2LfDezEVudPcdQ7WpbNheAo0Ekc6CeykrNG
   hL5hAsdIsTwZ1QsPDL3GJ2iHmiq1inog8OMPxgugqBySwgHUsDQQR8e3v
   XRdmNPdXyNAbu8P8qvMnyk5jMCK9m1dPO1QwKQOkpUJ5dYMy3S43oPqDF
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>,
	Steve Sakoman <steve@sakoman.com>
Subject: Poky Dunfell 3.1.6 broken due to pseudo changes
Thread-Topic: Poky Dunfell 3.1.6 broken due to pseudo changes
Thread-Index: AdcOj3zteXkjnjRQQ/qUMNTKAZxcBw==
Date: Mon, 1 Mar 2021 11:46:58 +0000
Message-ID: <44dae9d7f1574ef9a0ace0b7da68c7f7@XBOX03.axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Return-Path: peter.kjellerstedt@axis.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

If you upgrade an existing build tree to use the Poky Dunfell 3.1.6 release=
,=20
you are likely to see a lot of pseudo aborts. This is because commit e3cab6=
8b=20
in poky (commit 8c1084f3 in meta-yocto) was not backported to meta-poky. Du=
e=20
to this, OELAYOUT_ABI remains at 12, and thus the sanity test in sanity.bbc=
lass=20
that should prevent an existing tmp directory from being used does not trig=
ger.=20

Can you backport this change to get poky back to a working state?

//Peter

