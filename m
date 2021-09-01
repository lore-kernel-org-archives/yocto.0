Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.78])
 by mx.groups.io with SMTP id smtpd.web10.9442.1630509091179357147
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Sep 2021 08:11:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=FaV59rRS;
 spf=pass (domain: optimeas.de, ip: 40.107.7.78, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TnuZ7EXfACQMd8iugWvDxvEj3tEdmvJ7vv9C/Nb/C2Yw4qEq2STiFuP7pogezbiGJKorpw+rSq+oSEr3ijCPtaMsn8oKPtTs1rWs3honyQriKMOOFaU8Jcpw6ssuEUFLInIJvU7ZnTGhrxzYAr31GZ/A8PvgcpamXVgPWi24HKUu8ieoAKAfgenrU0StKqrPHl7hufS/SdkO45N0aiZpkgaykGyhhuEVZG5jA174sDUYZmToq+9kjOeQUT6hMvKy1it+zmZQ+Dpfr6EDzZSVoAyjYEcl0gl2ziiw3Ymy5b5btVWfQcDbai9w9XwBUetzsWu5zKkAtRQwc1WhH/0POQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=Tgeahi92cAqoZFvuoFXBTLqjqGmzNyhRgXHB4z0hEI8=;
 b=XdGE6MX3llvSQ69GEpbXYsY2D3ItotrbTHuyHjMz4gfwpeOyFRs5KxSYmvJ+BQ5S2nfXQ31pMYNp8S+smt4d3PV/JHje1e7CxqCiwO8KSy69QmfQtmPZwBzUMj86Y6phbDfeqspsW0rHdQNkagWRYu/f9LuTivC+chES/5kJS2dq6ipz2X77Qun16PORxu5+jRWFBDwpriZ/RcMl9679P8DRcFmkit5ECjZznuArLxtCusDAdcfN9nAbz9+iWtLVR1Z7Cc++Iz4XqQxGHxlN9TWjmNJsk6hWKs8wDCmOnBIDNU0ZVTZXxCQ9147nxojHs38+3s4aJPRWoMrKfRM0Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tgeahi92cAqoZFvuoFXBTLqjqGmzNyhRgXHB4z0hEI8=;
 b=FaV59rRSRQ3gIa1UAsa2JI5IqUZXr8p8Xi2wVzDs2TVzafj5ezzydr+1GI4G3UjfpKXiYNliVoKGT1N+/52qHQbQd/faa2rE09zBIHGumBkSgNK8mVONnyCl9/VFbOJV5AnPuqwk97iWOhGntYXExfO3A8lTGNFj9oQgVukOgus=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM0PR10MB2163.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:de::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Wed, 1 Sep
 2021 15:11:26 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54%6]) with mapi id 15.20.4478.019; Wed, 1 Sep 2021
 15:11:26 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: Peter Bergin <peter@berginkonsult.se>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] gpsd [version 3.23; master branch]: Is it possible to include / enable ubxtool?
Thread-Topic: [yocto] gpsd [version 3.23; master branch]: Is it possible to
 include / enable ubxtool?
Thread-Index: AdefHM6eXOO8G8BCSvGxUhhAKYo25gAFn2AAAAQNDzA=
Date: Wed, 1 Sep 2021 15:11:26 +0000
Message-ID: 
 <AM0PR10MB3107A5A0480003FB260DD93899CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB310701696E98C78D98D5F3AE99CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <3aefaadf-22fb-0295-8c3e-bfbb164f7e84@berginkonsult.se>
In-Reply-To: <3aefaadf-22fb-0295-8c3e-bfbb164f7e84@berginkonsult.se>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: berginkonsult.se; dkim=none (message not signed)
 header.d=none;berginkonsult.se; dmarc=none action=none
 header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1e8422fa-98ab-4423-c123-08d96d5ac4f0
x-ms-traffictypediagnostic: AM0PR10MB2163:
x-microsoft-antispam-prvs: 
 <AM0PR10MB21638D2E44AA7CF2C79DA5E099CD9@AM0PR10MB2163.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jmruf2c/lg8niQak42qC7E928oL9YxysIpinuzIMimMbqF0xuL8ExV2bYcLQXj+9Xwv/1mnO0wIZ9lhh9iP2iJp5S3UBoyKt4RWRJdREr1bJdrLj7FqBRdc8x+8LW8M2ZGcjGFcS7dcwyPz8H1my2dxFfKFSEDtNyMiHqg3MYkyFyZeUNgpPj7qZP4tIjh8KSVZQ/vSNk/tZbgfJRXdGQPtiyxtJF/6qKarkBBDkWZhVp95sj6oXGfEon0gh4ANsmomwAz/YH1MD/dQMG2o+j1EVJoFRBt+PeOwpgPP4MP6Yhndmv1Vs2Zdv+nqr8ZXeHmBLJzb/mztZVGP/d6BapdghCBJ2ZNu07Kfuwcpeb3GtK5vNfHccjd/H8A4I9rBnBYQRIkoLeXH1eq0XmRiNaT3jEpp71Iq5rzrC/oGguB+LmWjXxFR1DUKfrXapAg+Bl3lyT41uUL7KxXUNejZ4a8R4oR9+kuM5wrvgMaSiIQfGmvFESr7F0Ws4SYQ1al4XFbMaMIzCGR0k2GMtL+A5PdZNyhsE/SEoJMIN4joS+/REZXGNOU8hdOiCFjeQMgkzEOFxjIsZy2PEBz8KzTc4HLxrCVkbxBIEUxZ64NT4taV6hGWfh88jLSh4PMtDhY+6JxZpEVBZtLlRDYy5dmcfp/y03nFmSD+HGJcGDrWRC4I9vrdIgdeTnhg1joURW7ROqpCZl0Te8UwjSRmfH0a+Qw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(366004)(396003)(39830400003)(136003)(376002)(346002)(186003)(53546011)(38070700005)(44832011)(71200400001)(55016002)(6506007)(86362001)(7696005)(33656002)(9686003)(66574015)(8676002)(83380400001)(122000001)(508600001)(38100700002)(8936002)(66556008)(66946007)(66446008)(64756008)(66476007)(2906002)(76116006)(52536014)(316002)(5660300002)(110136005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?hsWTNMekH63/7KIBEUUQpdC4ILUmnoL4LPnDo7TK6u/6afPuzpKy2Xfcut?=
 =?iso-8859-1?Q?lfPfNv4dt1s2NXg8rdJSncO8+4spZZ3mLEXcAOd7O+KgwHjba2xYCyTkNk?=
 =?iso-8859-1?Q?gL5z7XfTeTmsCnNeJPhgSGb+PTBkkKCr8SeHJOPduAWKebYyXGNe++Rgem?=
 =?iso-8859-1?Q?LrCFIu+8gl46wIoqLG805JBAfD0b7Bu97P6ef138hljbzUfmDjoJYiQNuk?=
 =?iso-8859-1?Q?RcBL90DCqhH9IkQ285chOZRSlUHA3IQPJpvtbDegObmna1oJ+xbdgErl3l?=
 =?iso-8859-1?Q?CAGHKxKhpN2xD5cO7vl5Ywsh5QCF33FctTtE+U5/k5tVTvYKAcJeypr6yj?=
 =?iso-8859-1?Q?vLSIb5wB0Z3uBi/qsIbooyLfpmx8Na4BbZ9EwoBiCx3nsqThyBHrl9haYz?=
 =?iso-8859-1?Q?gBorCsjcmKa0KImRSeDqbp9rwsEVnf53d4l/Tp2hdsgDn8p7PMd3RXXqtF?=
 =?iso-8859-1?Q?ceoVGiG684E/V/XFGoSSaNamgJnpf+qLcrpASQAU3ij2kFkr9l42N48PNO?=
 =?iso-8859-1?Q?R+asJ1A+hbOC6ZQn/TKx2fhS8gnYHoKLX4/SYv0iHrBY+OJ67XiDzZSf++?=
 =?iso-8859-1?Q?WQIDkytPAFZNkcHEruC4WxDjEzKvcH7dX36SJg2d25IxSU/+jq3Lh55BH2?=
 =?iso-8859-1?Q?EbHdG7Jlw9/5ukAICtELSh1YvmwODNCjWNEhewW2sUw9U1fcbkzxaLnLor?=
 =?iso-8859-1?Q?MbipPEH4sV/qgE0h4Uc94m03J2dADvLulQHxtQQUI4jEtLdL7CnWakPcl0?=
 =?iso-8859-1?Q?evAdeuHv/btKa68+LW8shCXT8SHPpcw4LkjujFpGbYIYe1aZmPzv47RfD9?=
 =?iso-8859-1?Q?wxoN4tBJymlOjdRTVezldBrFnQ6FmUvBS2g+0BoQPUCp3Z5X/7UT1KKMPF?=
 =?iso-8859-1?Q?mb02CyVh3r8DfCWVITNJBVL8mef06l7IUyi9SWJoY1uQzogOJYegU+1PvK?=
 =?iso-8859-1?Q?rNxLhVeFmub6OGhRGGelPNWazr4Qog5punt2hExeX2JeNQ9o8wJ6JFl5c0?=
 =?iso-8859-1?Q?oKxpotHyU5jy4CSEzW5wC/Rqq3ZlDp2XOFEL9+wcePFwKQ4N8jBrc0kGZ6?=
 =?iso-8859-1?Q?dOVNp8edxKiDlqAKIhn0jQ+u+t8rRbykRHLXfkj5qIlPGup0ekYZSQxgY3?=
 =?iso-8859-1?Q?mMoYPvJiQtSWbdIQjRJLqBf7w3fIvZkq9dgJhbk9wAjeIJ1ki7zW0cm+Jo?=
 =?iso-8859-1?Q?/h4xFYAChZ4uuN9yblkkb9eAgfKdWjuogAPxGizSjT+YuXQQGmMqA7Yl1+?=
 =?iso-8859-1?Q?ZHbL+Wdci+qHc2f1NOw2pccTDHmrJLlFUlcslZYH2PHRBIjhNnq9HFYoK7?=
 =?iso-8859-1?Q?5/Qnts8z0oHKQCxHfnIYf0pHxAqQa0msvbXBC4wyGkKm2+OscpoC97aifB?=
 =?iso-8859-1?Q?qW4YhxddZbfCq7THzg8Wa/Uj80ceZ+VWyYQqAtFPkzHc4XFLyYB/eYZ1yx?=
 =?iso-8859-1?Q?5B5+1fm2NpN6MGoc?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e8422fa-98ab-4423-c123-08d96d5ac4f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2021 15:11:26.7622
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l/tjEHzJJjBHVWnaUJitKntYBSzISzrBN2j7fvHyyciHCR7d5tn1+K+acbOq+EEAgUXeZZfGMYFhTKWzEOpus71j4DSO5VEk0XqfT/2Ci/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB2163
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Peter,

I'm not sure it's that simple.

To me it looks like the recipe has bugs in python area, or my environment /=
 build is causing problems.
In the log.do_compile file I see messages which make me wonder:

Checking whether python program exists...no
Target Python doesn't exist - disabling Python.
python =3D False (default True): build Python support and modules.
GPS regression tests suppressed because socket_export or python is off.

It looks to me that everything Python specific is disabled.
Therefore I am missing on the target e.g. also the following file which sho=
uld be generated:

/usr/lib/python3.9/site-packages/gps/__init__.py
/usr/lib/python3.9/site-packages/gps/gps.py

Can anyone confirm this?

Best regards,
Matthias

-----Urspr=FCngliche Nachricht-----
Von: Peter Bergin <peter@berginkonsult.se>=20
Gesendet: Mittwoch, 1. September 2021 15:15
An: Matthias Klein <matthias.klein@optimeas.de>; yocto@lists.yoctoproject.o=
rg
Betreff: Re: [yocto] gpsd [version 3.23; master branch]: Is it possible to =
include / enable ubxtool?

Hi Matthias,

On 2021-09-01 12:33, Matthias Klein wrote:
> Hello,
>
> is it somehow possible to add the ubxtool in the gpsd-utils package?
>
> (I use the current master branch)
>
gpsd recipe is located in meta-oe. As the ubxtool file is present in the bu=
ild it is possible to add it. Just make sure it is installed in the do_inst=
all step and then that the file is added to FILES_gps-utils variable.

Best regards,
/Peter

