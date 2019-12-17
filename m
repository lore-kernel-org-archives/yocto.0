Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.92.91.55])
 by mx.groups.io with SMTP id smtpd.web11.108.1576560649739821258
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 21:30:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=ou0n042t;
 spf=pass (domain: outlook.com, ip: 40.92.91.55, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WAzQybcxwpRDg5L8wMsx9tkIS/S+XRRg24pM1je5iqlxMIgj7MKd/cMmDeJbgV2PerPIa4SEcfnmyYLysmFefH8Pxi6tQM5jkNXaGKrr5XZMdunphrU9U88OrShOtgbOM40F6SDO3+NY/x0ZXbIQ84GgGPXVy3Uhjh6dfrC2ZD9vcszctDAuOx7Gwwf8WUQwf2/anK/dVojW5plzHf+pGQo1QLlbp9glZdYGaaqPPsTsYspptLs72jZfoh2YOhz5IOGwaCAyzsTWAGtGI0d/zgQHdyXMle1IYZNbzzNJHABUM0CCgT2X4q1fQ3e8zHVJQGDDQ2CQ8ESCioSb0gDHCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s9b69zB1z5554LoLGvZTOtYUv/t9wWY4gc919FvdYCA=;
 b=ckhd7KdvHAPRGJ69r9a8QvXYf5bCUxRKSpS5UbFLXi7zL49bXYAJBofDVxGx+X5p962dFAsS11GQXGcxQIBbfuwo4X0/C259liTYOIP47VjJ9spOuWl3UqrMIJsJpnEXS2pacy1TMx7jHyLdyrVOSntJsSrauG/kovUdVpYBlB0QMy/syS34pkZ20Bpyl6TmAAEtahfCJC9Fh8fp/tXSTXMixcGHG6EdRmO1EtFedwqRLPY14cGLDzogz9MxLbNvFTT9mFR2IYAx4EYLWdi4xH/f73VCaMMcWfIIRY4lpdBqmfiOfhN5UJV22m93q1mQY/03qJQ/sntV2f+8eWEp3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s9b69zB1z5554LoLGvZTOtYUv/t9wWY4gc919FvdYCA=;
 b=ou0n042talPCDhEnTPOPQXyXp91/WHM0Ow9KTaNwoUslZ5/18f6/RkM4x7SrsrUO6Sk66m4ILBxYYSOJSku8TzeQnTf3tbNbIQyRgI3fZyqqUUgxEkGkG1WN9MnX7EIleua+v+fYMkHRDlaz+0bc5u1diNXYGZutenLNVn2+fhCykWI+eyrWnSdjbKerIasimarz1xEgMB74rR/b0PDs7LO54mlxT6v24Z6DbU8HyrYhdiumcmPQeP9pfQR+wxN7yzzhIJlHDcSHKpFmRPAKCRiXFQ609hQW6NWrQSRiRSM+kWL5lkng14RdZNNVBzuTcs5bqlCKlXJmmLnO4gU8fw==
Received: from VI1EUR05FT041.eop-eur05.prod.protection.outlook.com
 (10.233.242.53) by VI1EUR05HT137.eop-eur05.prod.protection.outlook.com
 (10.233.243.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.14; Tue, 17 Dec
 2019 05:30:48 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com (10.233.242.54) by
 VI1EUR05FT041.mail.protection.outlook.com (10.233.243.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.14 via Frontend Transport; Tue, 17 Dec 2019 05:30:48 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::e923:8aad:dca0:fc9d]) by AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::e923:8aad:dca0:fc9d%7]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 05:30:47 +0000
From: kweihmann@outlook.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [thud] packaging error in python3
Thread-Topic: [thud] packaging error in python3
Thread-Index: AdW0mbGvLN3Hx2YnSi6hcFRw4OwwmA==
Date: Tue, 17 Dec 2019 05:30:47 +0000
Message-ID: 
 <AM4PR05MB3380E017CCA0EBCA390FD1F8A8500@AM4PR05MB3380.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:B8562B4610849961513316E6D61BE2056B367B6AC5E7C8C9B0E82277E814BAE9;UpperCasedChecksum:E19D76DA9A5FA59506B1CE82928A907847CEFCE6577FE671700EC55A0B68C1F0;SizeAsReceived:6700;Count:42
x-tmn: [JWThpqzyEmB9An8U3P3WuLH0mJgnan4b]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 6d4be48e-0aab-4169-6362-08d782b2459a
x-ms-traffictypediagnostic: VI1EUR05HT137:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 BrK9oDbmMRZIvkLtsvpWyjYxYE2bdHbIi+N5o9sIa6xPBftq0EXIJz0tfsGbLU1dNAEnvzGHaVmjF3+prZhRMbvrBe8aFqvy1O7ocug7zwdq4txG1uqPHybV+b4YUOMd8ok79VBO5DHZtWy9NOxdODcyWfgLaWyUnYjScIdwuVTM9pBZPKGYDejcQwLhluyc
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d4be48e-0aab-4169-6362-08d782b2459a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 05:30:47.8750
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR05HT137
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I know thud is already out of support, but I'm experiencing some weird pack=
aging error with thud in my CI pipelines, which I don't see with warrior or=
 later releases.
(when building from scratch this occurs 3 out of 5 runs)

> 2019-12-16T20:59:49.8840822Z ERROR: python3-3.5.6-r1.0 do_package: Error =
executing a python function in exec_python_func() autogenerated:
> 2019-12-16T20:59:49.8845177Z=20
> 2019-12-16T20:59:49.8845406Z The stack trace of python calls that resulte=
d in this exception/failure was:
> 2019-12-16T20:59:49.8847595Z File: 'exec_python_func() autogenerated', li=
neno: 2, function: <module>
> 2019-12-16T20:59:49.8847758Z      0001:
> 2019-12-16T20:59:49.8847839Z  *** 0002:emit_pkgdata(d)
> 2019-12-16T20:59:49.8847938Z      0003:
> 2019-12-16T20:59:49.8848324Z File: '/home/runner/work/poky/meta/classes/p=
ackage.bbclass', lineno: 1436, function: emit_pkgdata
> 2019-12-16T20:59:49.8848450Z      1432:        total_size =3D 0
> 2019-12-16T20:59:49.8848550Z      1433:        seen =3D set()
> 2019-12-16T20:59:49.8848663Z      1434:        for f in pkgfiles[pkg]:
> 2019-12-16T20:59:49.8848767Z      1435:            relpth =3D os.path.rel=
path(f, pkgdestpkg)
> 2019-12-16T20:59:49.8848872Z  *** 1436:            fstat =3D os.lstat(f)
> 2019-12-16T20:59:49.8848974Z      1437:            files[os.sep + relpth]=
 =3D fstat.st_size
> 2019-12-16T20:59:49.8849071Z      1438:            if fstat.st_ino not in=
 seen:
> 2019-12-16T20:59:49.8849172Z      1439:                seen.add(fstat.st_=
ino)
> 2019-12-16T20:59:49.8849275Z      1440:                total_size +=3D fs=
tat.st_size
> 2019-12-16T20:59:49.8849809Z Exception: FileNotFoundError: [Errno 2] No s=
uch file or directory: '/home/runner/work/poky/build/tmp/work/i586-test-lin=
ux/python3/3.5.6-r1.0/packages-split/python3-tests/usr/lib/python3.5/test/t=
est_warnings/data/__pycache__/stacklevel.cpython-35.pyc'

Does anyone remember if that has been fixed somewhere on the way?
A quick look at the git history didn't reveal anything that fits here.

What I see most of the time is, that packaging doesn't find some pyc-files =
from internal python tests.

Thanks
Konrad
