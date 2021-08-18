Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.54])
 by mx.groups.io with SMTP id smtpd.web11.53990.1629293264607027054
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 06:27:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=VxP0UrOw;
 spf=pass (domain: optimeas.de, ip: 40.107.13.54, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jQLegMbqJBlrCssaNTj30NDDurZXRpiR2mdDD8LygqqckC/ywQ6juBnxVl3iThcEmL3Cg47bjzpqFG/xHZ44um36jmo6arjC88cpKoUfXOLk6RIUYZyEpS4H7oIXdFVDQ6GX1Apm8sNejYXVveNy3vVZfj4BMEFIKqFK1pVnLlM/XUn4abctNesxQvExUtHZObrGySLpeUOzAGkUoAxem0AX1Xc3jL2ihPilxze/SUdONa1XH+xLt3pQJA+3D2HA71S9tg6+g/it1GluDkfEhYgOO7Iedojeaa/6FeoPCDPeImVpjcU1uNIricHLmDDfxsrBYcv0eVNpJp2hlS6j1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oyDL5oeXbGATh5WyEAd4ESae2HVmO0zJCBXo27FX3nU=;
 b=ROD+n1pBuo3dHCDJzDy4FLYd+7Z2+HCUH4IW4t86+Fft3LN6lzBPjtoaCITSTI0Xak2Ccni8/b5JflNilQBadeDKZx8t2RtrfFLJJRSm9w9muHE1trgA3sqPiU1iLQEKaL/SDG4koRfRBAzr+VeUCq3woldQe7G6+EveDsn7kicBrH13ejk4Ml7LOwQeIDFsKqBzPEs4X5IqFisbAyiymy8Npr6I+BXeE0WEpDN/by/tRapi9T9v6NOFMy61PddUFJ3D6KJTvDARdL9xdwbbSqH7tHaN46gOEYal81d+kcBS2BCIOFrsvDfynlXq6qyAYPtnDRz9hLsvaFcKUUsM7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oyDL5oeXbGATh5WyEAd4ESae2HVmO0zJCBXo27FX3nU=;
 b=VxP0UrOwD/iv2mEojZAMBFOJOcMnIB4TGLZyprtfewQcNr95f6zqSv3hpPT1AZor5TU5JXCwa0DfAPm7fnkW/iPqxn+FMo5yBiCqc+XldIYh1qktiWuqn8JiRebHUWLd1BKCCUZOm73kGN2IDtXhmgJnt6MLqvAGOR873BI0OEQ=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM4PR1001MB1251.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:200:97::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16; Wed, 18 Aug
 2021 13:27:40 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::80ce:cb95:8c68:457f]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::80ce:cb95:8c68:457f%7]) with mapi id 15.20.4436.019; Wed, 18 Aug 2021
 13:27:40 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: hardknott: systemd / agetty: root user environment (sbin not in PATH) when setting password with EXTRA_USERS_PARAMS (solved)
Thread-Topic: hardknott: systemd / agetty: root user environment (sbin not in
 PATH) when setting password with EXTRA_USERS_PARAMS (solved)
Thread-Index: AdeUNMxHxfRdOhB8RuGrTMRZkOrKPw==
Date: Wed, 18 Aug 2021 13:27:39 +0000
Message-ID: 
 <AM0PR10MB3107AC7D99D095D63C5272E999FF9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b13c03dc-d7ea-4329-420b-08d9624bf3b3
x-ms-traffictypediagnostic: AM4PR1001MB1251:
x-microsoft-antispam-prvs: 
 <AM4PR1001MB1251E4CA375145180453943A99FF9@AM4PR1001MB1251.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jM5QOQ1k1Repm/M0KUuQ/P3JGaTxyaXQB8qSuY9Iv1+ffUdhLNXb0k0X5vN/chCKIciy0Z5p5ENzZ8aZcX6EiyczTKroxC8kCh/IOpkz/bXIZrLX/VWeH5pNInDVmXaPnyR1otqDR2T8xRyt3icRywkCqP0qjwHbj6VDyo0fEcK2oewPxi5DtPHp9KFyTl9OItg8DKF/hiS4j2dsngOGvpa3KaUZDk2d5XJNclJliPI8D//5ZEdvdrAT/F3Wb+rWfqN7jPG4lpJ39yLDNKSSmWxII/FFsjznltbdmQDrx1fQCsJwPiudXyBlvNETazUF3uIg3eGP6JsOhYBfEHKACsm/37skJAy/x/UULSGA+9a6p62sqOOL/+WdCc6d4wBXbqwlj0IVoCqTwe0llG+aancaOksOXFqSbAI2+lA7EMsTghhDSLSAkxQl+D9Lo1R0jzzz+UAlIKmzOH2lZmGZ4Mow/o6sTrgrz4GcLP6wHP9kfibXSn3snfXF7yZBiYHvmf86qKrEmOEyBIZ1Jx4GHqmZ4i799CYe/yZfGUONnzpMOfCwBNUcYu4b2Ny4qBwu8UdlXZDzj6zqZUw9SDd99MQfSm7lrWqJb/ew5p5CuGycVI26Lo+e4w/4yMWc5uwl4qNVJU09a9RSYo75qQtuhaFbps2zRhSHNEl5a6lHr2mZfxBR2JEtpJ5VKJfmqkdYrIBcxVqTSPWeA7HWt45Grw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(376002)(39830400003)(366004)(346002)(396003)(478600001)(64756008)(7696005)(66476007)(8676002)(122000001)(33656002)(8936002)(38100700002)(38070700005)(558084003)(44832011)(71200400001)(6506007)(52536014)(76116006)(9686003)(55016002)(6916009)(5660300002)(186003)(66446008)(2906002)(316002)(86362001)(66946007)(66556008)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?7sZ2NFflvW2yfZmQ+36Z5B3MhUkYO+FxPIPnNHELhfV4qgtJ3cxDX08FLawh?=
 =?us-ascii?Q?mynPTy5CuLapHxML2A3REsPyG118mBznG2/5EfGYpvqmNrg1tXv+Qt3DdmQY?=
 =?us-ascii?Q?mhBmqZf0TR5cHw+XFbmwrnxTMVa04YOCeigPEC2Nn+qhNDAyJnJqZa0BSykX?=
 =?us-ascii?Q?Il1GnjgU3t7S4V40XuWabP6MAV+EaokGDz42JmCGYQOwoPx01aiI5JY4bRhw?=
 =?us-ascii?Q?VmkTE49Mvhgk4Chlv7fnHsj2SGleoN5JW2fWHDq41BJkqOwKf4Hz4hgbWVBE?=
 =?us-ascii?Q?ps+0Zc+k66r/gW4aBdUCjUOqOvGo4q1oO1/iP5XzdZ+7nu2nJI3nFVUW6h+5?=
 =?us-ascii?Q?VMo4papasCFnfSVY2ZeJMZmpPIQBtz4Z2WhpabkvTToJ/O2rIi0551blhFtd?=
 =?us-ascii?Q?F1NgqtgFzuAb+axIG51rKFRzdC7KkuWbKXYi/yqocp+rd4SoXiogrflGl98h?=
 =?us-ascii?Q?l7zxBmMzE/RJ/d5YfHfJeQGeDaP2gBQQgUdksj05VrILa2LmD4fceJTaB+yR?=
 =?us-ascii?Q?CconRM7HgOEjdxWqTp1fEX9ALTPnxBrp20pmEzmV6Jv+ZghgfW6SeumSO1qX?=
 =?us-ascii?Q?e1vzGaZSv6SSglhQsu6hDecUWuSSeB7PjE+pKhLBKIsP/Qzik1UYKdtLnQ7Q?=
 =?us-ascii?Q?RhZL5JNazAeLVFgk1ZDbmAo/fMFfMosqRgrYzsKNgjtDw2/+dbaCN6Zv14ZZ?=
 =?us-ascii?Q?R7C8RCWjCP1eFF0KaTbmr1SJasbx6LXaY29U1s+Km9dxeZYd6ERcaVoftJVQ?=
 =?us-ascii?Q?9FecH0wgETR+ROIx7MgqCNhXIzcmgcqmePRuFQuFXNzk2jGIO3ugXLosbtVV?=
 =?us-ascii?Q?kU9USvXw1YNeKhOfyXvqNXmX0oI7EZmUwIbjOZD9j8/l2aJRVYzsLiBTSSjV?=
 =?us-ascii?Q?T5M5qGKbAndSjEnog+WAmHIP4dXLummpFLDWa4i0M1t8Z/7+BQVO6G9KNF5p?=
 =?us-ascii?Q?kv/thv1ut+csHto7h+/OmwHrEsP9xcDSF/n3VWzIRiQAbjmlKDAgDadn5IUm?=
 =?us-ascii?Q?jiHDIKHD38k+Z3qx3r58dTDzVaUQZIApnBbsCnKcc0UwA7UR4zlI+nsTg6SC?=
 =?us-ascii?Q?5mUPPtwHNApwmLeag5OJAdZcE9v8XNSVWExvY3EnluYf+phO5TtKGk1NjYG8?=
 =?us-ascii?Q?+O4kGx5WdSMqdXfMmiYD4byXaKLl/yDVZvzo3/arv5d0v2h5CQTN6SIxnG7W?=
 =?us-ascii?Q?CHcgVh3vDZtEJvRpG7cOgtGB3a+IPeEWsVHeG7/g52Xu84wdOxrhYrHo2AcK?=
 =?us-ascii?Q?RXgSo2KNbP7tXPtQ4R1jnz5VE/rPSicNZIUYMgSucR1Xu/5gZQ/RiFCKZFnz?=
 =?us-ascii?Q?fwuHR2ACJ0/ZKkCxSMiinrAIFpegvTQ3PAh7TaZxb7NmUdDoWhrT5E1aHW0e?=
 =?us-ascii?Q?egGluSL4Shu992p5kXefEOhbpApd?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b13c03dc-d7ea-4329-420b-08d9624bf3b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 13:27:39.8707
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dbx9+hZJ4McpXYrFvvyD8xc/IhoJVtpUv3RWiNtP9a2USV6GGZFJLjQbQoG1Kht1mjhhMt1jPXLA+hHXUbOp63pEy05gDbCVX/mxp2QXdGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR1001MB1251
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I found it out myself: in the /etc/profile file, the PATH for root is only =
adjusted if the home directory is /home/root.
That was the cause.
It had nothing to do with setting the password ...

Best regards,
Matthias

