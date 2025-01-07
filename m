Return-Path: <kumar.manu@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C9A9E77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 17:48:30 +0000 (UTC)
Received: from SEYPR02CU001.outbound.protection.outlook.com (SEYPR02CU001.outbound.protection.outlook.com [40.107.44.51])
 by mx.groups.io with SMTP id smtpd.web11.27060.1736272106016857130
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 09:48:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=QW2vxx12;
 spf=pass (domain: siemens.com, ip: 40.107.44.51, mailfrom: kumar.manu@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=auaHZbQkMzXikgFrgzxg3g4bMV0FbndGxjsn9foJ6VQVd5MV6G2pF9bbjH7pr+T14k/7SApMuUMyI/8nRJJaicOAOfUuY1e7DE6wYzb6GB3IvXzotjUYxcrKXBbHLl7ZP7z+MXSH7TauYShQgZ2vvSUSD0CnURz/cW2kvBvsj1WaIxEc8AIU4F6Cw+EZCsfhmeLWdCC68jJ0ZYv2uhj5vwWAkRjwxL7JaiDwBrKmjLyZfBwCWhDfFYQ9ZyvIkZEqGF5E5CZercGS7gimV8khaXqXpuKEQklJYzhWaoPULBpZSGGQVsv4Z2NPjFPbicKnMZ51RC8n/3jwI3XNPpN3jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FEcq6rYhd6JJJ1ZvBpnNAVn2Swklggzr+piEiQfsOUg=;
 b=PZBIXo2bK4op/PNYkfDYj3YtvG3dgUGUkqx5aOkGF+YcYjPia86JWCjwRTlbVdDZd6vGaV+JBG7zgBGcf8GL2uKyOTISW7odE19ogLRz6TaqZ5tISBZx05fRcAbN6eSyxAL88fK86SBJPJAH60mWjFlGpe7QFbnc+K5jp7xGRuT0n04JgcMaoJ/QSrdoDm3w/EvZTkIAtCozat57eXbOjhrTvpZwc7iuxuguzcWUQgtwXS9tMWmxxR5KCacpuRwOQXbSUNwB8zrdt96GBcwhz8aGkG1/VS9nyCWf/0V+Yx5q+xAG29nljMVEmLYb7EzQ5ii6ryc9DLCH+CAmsXrG/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FEcq6rYhd6JJJ1ZvBpnNAVn2Swklggzr+piEiQfsOUg=;
 b=QW2vxx12z/QUGkTGuGSHoettLa1AuduaSo0zn0DSVocxAhJPqJEv4ulFXFhiS4wVLUjc5P00JOqo3CtlgouqtR4Ku5eBq0T+KxjDzJdOvKfjJBYaVsffnT/qTVs5M6/LU8DmnXXXtpbZ/TpQ96wOA4wyz1xykq6RXlDLvVsfX/cLJ3QLOKF83EcaEmtDw3r6IFVnW1ByPLKA9fyYAoSp/sPvQUozNvrL+IjsSAg/vLTP1jF2ZqEC5Ek/MkZj6EiP52vB0RxENAFMVnCfOBiRD6UgmMgY/5QuBRz3ndgZX5mzeaOyqdRXLbylt3XvqDiidbfoOMeZnCiZkHvTop9LAw==
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com (2603:1096:400:1f7::12)
 by JH0PR06MB7197.apcprd06.prod.outlook.com (2603:1096:990:9f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.9; Tue, 7 Jan
 2025 17:48:19 +0000
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318]) by TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318%6]) with mapi id 15.20.8335.007; Tue, 7 Jan 2025
 17:48:19 +0000
From: "Kumar, Manu" <kumar.manu@siemens.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, Alexander Kanavin
	<alex.kanavin@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Topic: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Index: 
 Adtf6VoFMsgJcOJER+q6cre+/gzlBwAPQLMAAATTiOYABKyjAAAYT/rAAAgPmoAABVvkoAABVCOAAAFqN4AADN/1QAABnFmAAAA8zIAAAEaZMAAAZJ4AAAAKhLA=
Date: Tue, 7 Jan 2025 17:48:19 +0000
Message-ID: 
 <TYZPR06MB51784C9EF663C31A08186FB686112@TYZPR06MB5178.apcprd06.prod.outlook.com>
References: 
 <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
 <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
 <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <6bd68955-44a5-4a5b-b1f8-990643cb698a@gmail.com>
 <TYZPR06MB5178AB7FF8792D7ABBC1A47286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <ffe32e3d-021f-4224-96d5-e3e496dcd950@gmail.com>
 <CANNYZj9EKn69UjqdAEp9U5DbVLQrf0rNdRZd8JbnmSWji6Wixw@mail.gmail.com>
 <TYZPR06MB5178A50C77D06F140BB5C92586112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <4224c491-c0a3-40e6-9b0a-805f23aa20fe@gmail.com>
In-Reply-To: <4224c491-c0a3-40e6-9b0a-805f23aa20fe@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=94ed73a7-5460-4806-84ed-91ce32be78d1;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-01-07T17:45:54Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR06MB5178:EE_|JH0PR06MB7197:EE_
x-ms-office365-filtering-correlation-id: 51d9f95f-9bc6-48da-eb1f-08dd2f4378b1
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|4022899009|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?rTvrk/DhSOlgOAds+Ytnki2KKtQqbPAyG+A5U1PoUjJB4bDJBa4cWzjAukPH?=
 =?us-ascii?Q?kbdTn39YGmhaXG//39Ut/f34vX8Z84KefXC9e4sWResBUeS4rxgD/nRJ+C44?=
 =?us-ascii?Q?AKNTHtFnC0uvWD+019ytcOggC7MT652kK+clRWTBj5lX/UAPPeZcd57m+dTK?=
 =?us-ascii?Q?ZENiKlYnpiDlwqKT1iQywhr3EH5BK3NaPgI3XxVlCY5jkrqf/keEYBCOBtvA?=
 =?us-ascii?Q?7Rz+KPD4+pDCE6eYLt6vjLOn0tidbzJnZfhecJsGwyoPUXkMkJ/vUTNnbksg?=
 =?us-ascii?Q?pNfFXZx5tol3Omkoka2PAgnhaadfIjAllA18ypDntR1ZPAyld6eq5ENv5LKR?=
 =?us-ascii?Q?ROltBL9D8QhEnWCw05c0IVld9coLT7XWmjaMQvRGdE1F57BHZMnrnrmS1/n7?=
 =?us-ascii?Q?Vk15E5bm5t9fg8q6UAsS2S8+liQHpQwhzE35qy315a/AgY0W/IPRRVTU50w5?=
 =?us-ascii?Q?h1orkQb0S0d3hPyfA3h4kvPj+FIwARDXG+upuOq6xITbJq0iHt5uVx/dBKb1?=
 =?us-ascii?Q?+MVuGTCoz/s40CQ0+I1bTMjbc2LGReCYTcdbtcVFSUxKCInEhP9d+7Fbanks?=
 =?us-ascii?Q?n4IjlfZLEFhoq2B9cs3q9/cQ0sGCGws8gDWl2/LC6cL6FQv8N4M2+58sUd85?=
 =?us-ascii?Q?Bs7VuRT4Hu4KB5C7uvnkCul1UEbi8kC6awdWpsqziZeGV/MVbVVBNBbqtcQN?=
 =?us-ascii?Q?Fwmdct8CMEcX8Q3TmMZ25XZDeyoTb8N9U2x1on1qfuacDo2Pji2wRNEFfRbr?=
 =?us-ascii?Q?eI6MjJpcCKUt14n5ZuHzSas5rt9HOP7HOQO/xOplGTf7kV+D27hWerZQe0DV?=
 =?us-ascii?Q?EuImNkF6dewvLEpwEYjvRG0t6TneV/ihLk08PAHJRto9mLcDN/Kzls9evQDF?=
 =?us-ascii?Q?v+MjSPefEZ0MvmVCBUjPxgT8Iz/Z/lbRgipwHUYX6gyqlL7kSxXhSOuZBKtc?=
 =?us-ascii?Q?a/3uBOpPxjGojrEihu3644QbxA90SHyQd4ozfNZ0kq53MRH+rCU+999608ME?=
 =?us-ascii?Q?7xgDGmUvWQPcXkiLOKY4DeMzjaPINHyHDlqClovlsOupgsS3MQuN0CJXtfPr?=
 =?us-ascii?Q?nuYxwrHVgzgCRnSB0zHoKU8b13Y/hQTIffmQPxwEmTAqxIDeOHnI7lhNEXCf?=
 =?us-ascii?Q?34G53qkzxOXKCjNXVeve6FLE5ISi06K+WAn4/do+GYhD8OFv+XqsgsxUsgFm?=
 =?us-ascii?Q?A7eM90ZxqwrwWm6hdm7i2xCaO6yVdloYPiZo1Dx4ioX2jg0x+8DQhzElycQM?=
 =?us-ascii?Q?k3cPuS71N8lFJwkINmdydeOe0GBUNMWUN+ifm6mymqgKuJJOoYkZx5PChac1?=
 =?us-ascii?Q?rDbZ8TnvPG9bAw+63Jzdh0SP0WHuAkZvufpbDIbu2bRpWg6jEMC9RT6CU28U?=
 =?us-ascii?Q?8sTMdLVw1im6UkHvoB59vyG5tvkLyHskLCGSl22egt5iGv8GGAJgDxqsjSQe?=
 =?us-ascii?Q?umGitRcmvyqojZKoJ9nSG8jCh/U7Nj1Z?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB5178.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(4022899009)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?JsdNTG4wVCcKc4L56n7NEyLUC5Yol4Xba1xYODtvjIcoLqR3KNO0e3Ik7Lhc?=
 =?us-ascii?Q?vNk3z0VaKQcwA0y48K8fUYBQ+3BdR6c8F3bI4rYkp3miVcBPUbjoJ2nt6s9A?=
 =?us-ascii?Q?c4fwGi0xkAblA7+vxyuUHlCvSAF+YUr/xXUyrgu/hEYe8/0gKq+8Detgc1Tj?=
 =?us-ascii?Q?A0j/Uey+hyLq23bM4HbLciRbKybWeFh+qV5+CmINGv7iu1rbF3GsUWKFI6TB?=
 =?us-ascii?Q?wr5aTuKaiI0Lr0XVeX+dNAxk2Rax3Ra3/HmxwnSSAhXxv1LKpA2rlDs+4hzy?=
 =?us-ascii?Q?T4khpcJQX6AEfG8IGUMsg40SeSKQqbBGKS5P7wOGK0Y0VUSRQDBEyNpqyZXo?=
 =?us-ascii?Q?7MFVKjSpUixItvcGRe4j8MoOgsoBuzth0MZuk7JaFaTNUS2W1nklXPYw7quN?=
 =?us-ascii?Q?JtreYlFe9rl+aMSm56VCZFTl6ZCLjEK4T9eiNHRFkim5cxql/BaUAcN1+UYv?=
 =?us-ascii?Q?TRWkw5b3dQeb//QFaf5a5u/JDrCbcPhxw60kz2RAujefZZIbKzDBG+AuccEj?=
 =?us-ascii?Q?ztGw8xYRgsFSumjj4QR0No4fdpgR5fSqLfw30X3xiXaF9mb5R31Zf1C8nkSq?=
 =?us-ascii?Q?PLPbGjphaRq1vnjbWxPr6LPcWCK8Dold35SKVu/TQlQTydPhYB/IeB6tJuuL?=
 =?us-ascii?Q?7hAjyQXNsYE3dZW20ozWuno1GzXcP0G4A3aTwATo9UNwqaHy1ALEzRgAbBtK?=
 =?us-ascii?Q?neLqH9vdSyjOdABUrBuQgVF00STGGiDNrn83G/mSFSIHTmOXExsmUbkVN4Q3?=
 =?us-ascii?Q?uwbYGTccA7xdlvpnX9NpTRrC8h2RDfeP8pMjq1O9Uhpn0dpEmSSllviYYDnu?=
 =?us-ascii?Q?vnYAEAMr5k/dPBE6DVqgR8f8EB28GeV83/qXfZtXPAdAKYtlAL63n12qnzof?=
 =?us-ascii?Q?UmVKJarlypYFm0mCt1h9fryx2Nw01JkNMgBLP0tuqPjEBVM0TGrxjCXpuO9U?=
 =?us-ascii?Q?2E0bZ7W3ZpkvNbdEO/CWYL+NywHKCh5B4H3DJuHDk7vhbqAmVYz2vwXJpg+h?=
 =?us-ascii?Q?6gsZJf6muCT7pNOGLTWQlTldzbSsXp8D9qN77L85nXhuQDtycdPFWrWXN8C+?=
 =?us-ascii?Q?wG8DWiQVSvLD962bWtDlqrrynPrIj5UNeR+diBmcCacR3qJ/bmP5Kmuk7o22?=
 =?us-ascii?Q?sCtPgHhBgsgJmCAIYix0KDBS2LjwW7+OkC1Cdrs6g5+jE6KjN6FJH2S2UpF4?=
 =?us-ascii?Q?OxPhwHFLKiISYIhh+iYizgpjnX8tq17V7fiLoF6U1X5V9GGQKlaUKlVkcv77?=
 =?us-ascii?Q?IFhOhzcD+DBEYjkkOcfQ4nVQ33g1QYOmCFl8sPofdW991SXHTJwQ4lckhIXA?=
 =?us-ascii?Q?N8LGo4rRhxVaETFrN5l+KVUcJl1KrT7OW8I8mUb72uD1DnXX8PTPvbBDjC/Z?=
 =?us-ascii?Q?gqWWfIoO+woISgO5/Zl0q93kdZjPimsaR77ifw/eNPizsGdvFXGIjfYpfwEu?=
 =?us-ascii?Q?xdXchtXyVHoCH++KN/esYbN+qZy1pwK4e1DC6S5p0b4ONso4lh870h5YWGbl?=
 =?us-ascii?Q?LcMbskLzb0w5/8K8xbrUMnCi5DMxDAUdfDbv6Bnoixy6rWRKbpbrC+t1dGD6?=
 =?us-ascii?Q?hJ2hu6yvRdgObja2XdczjHq1u4tPw8AteXukxVcQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB5178.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d9f95f-9bc6-48da-eb1f-08dd2f4378b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 17:48:19.0376
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ebnzwBGIAZgi07WJGDm37lzB20qva8rktRJMRdbXIrgV0QRHLMmxvOn/DfLG9hbP1DdZvcsVH1xsSEJiTj1MTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB7197
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 17:48:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64516

Yes Sarvari,

I am able to see the required modules in /usr/lib/lighttpd directories.. th=
anks for that.. in continuation with that I am not able to run lighttpd whi=
ch was Alexander was referring..=20

Regards
Manu

-----Original Message-----
From: Gyorgy Sarvari <skandigraun@gmail.com>=20
Sent: Tuesday, January 7, 2025 11:15 PM
To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>; Alexande=
r Kanavin <alex.kanavin@gmail.com>; yocto@lists.yoctoproject.org
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not c=
opying

Have you changed RDEPENDS_${PN} to RDEPENDS:${PN} from the earlier email? I=
 would have expected it to solve this very error, as it was supposed to ins=
tall the required files exactly in the folder where this error is showing..=
.

On 07.01.25 18:38, Kumar, Manu wrote:
> As I was getting error when we run lighttpd as below so modules in /usr/l=
ib will be fine..
>
> root@manu:~# systemctl status lighttpd.service x lighttpd.service -=20
> Lighttpd Daemon
>       Loaded: loaded (/lib/systemd/system/lighttpd.service; enabled; vend=
or preset: enabled)
>       Active: failed (Result: exit-code) since Fri 2024-12-27 05:21:39 ES=
T; 15s ago
>      Process: 782 ExecStartPre=3D/usr/sbin/lighttpd -tt -f=20
> /etc/lighttpd/lighttpd.conf (code=3Dexited, status=3D255/EXCEPTION)
>
> Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Scheduled restart job,=
 restart counter is at 5.
> Dec 27 05:21:39 manu systemd[1]: Stopped Lighttpd Daemon.
> Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Start request repeated=
 too quickly.
> Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Failed with result 'ex=
it-code'.
> Dec 27 05:21:39 manu systemd[1]: Failed to start Lighttpd Daemon.
> root@manu:~# journalctl -xeu lighttpd.service Dec 27 02:42:19 manu=20
> systemd[1]: Starting Lighttpd Daemon...
> -- Subject: A start job for unit lighttpd.service has begun execution
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966686990%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DrwIQIcoNN3%2Fp40tgNC
> FlYU%2Fy05EwYHbBLI1IM0feEag%3D&reserved=3D0
> --
> -- A start job for unit lighttpd.service has begun execution.
> --
> -- The job identifier is 109.
> Dec 27 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21:=20
> (../lighttpd-1.4.67/src/plugin.c.202) dlopen() failed for:=20
> /usr/lib/lighttpd/mod_redirect.so /usr/lib/lighttpd/mod_redirect.so:=20
> cannot open shared object file: No such file or directory Dec 27=20
> 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21:=20
> (../lighttpd-1.4.67/src/server.c.1285) loading plugins finally failed=20
> Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Control process=20
> exited, code=3Dexited, status=3D255/EXCEPTION
> -- Subject: Unit process exited
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966705279%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DW5hBwV6afW0b2Wce%2BW
> KswVAdaH%2FYmq56jyBWFKBC2Vc%3D&reserved=3D0
> --
> -- An ExecStartPre=3D process belonging to unit lighttpd.service has exit=
ed.
> --
> -- The process' exit code is 'exited' and its exit status is 255.
> Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Failed with result 'ex=
it-code'.
> -- Subject: Unit failed
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966716615%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3Dj34OA3LC6twVll0znbWD
> URop5TV%2FXto8S5dvikvxj3w%3D&reserved=3D0
> --
> -- The unit lighttpd.service has entered the 'failed' state with result '=
exit-code'.
> Dec 27 02:42:27 manu systemd[1]: Failed to start Lighttpd Daemon.
> -- Subject: A start job for unit lighttpd.service has failed
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966727614%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DA9z8Xr41UgjfngTmebLz
> onI5iYEgkyGGrYjyDm5s5bI%3D&reserved=3D0
> --
> -- A start job for unit lighttpd.service has finished with a failure.
> --
> -- The job identifier is 109 and the job result is failed.
> Dec 27 02:42:31 manu systemd[1]: lighttpd.service: Scheduled restart job,=
 restart counter is at 1.
> -- Subject: Automatic restarting of a unit has been scheduled
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966739022%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DDO3Tcs7C3pGalAho5fHT
> H3h%2F0k9HvVK1b8TfwdQ21KE%3D&reserved=3D0
> --
> -- Automatic restarting of the unit lighttpd.service has been=20
> scheduled, as the result for
> -- the configured Restart=3D setting for the unit.
> Dec 27 02:43:03 manu systemd[1]: Stopped Lighttpd Daemon.
> -- Subject: A stop job for unit lighttpd.service has finished
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966750526%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DADrS6wXAkeH%2F7tf%2B
> UCT1BIfNvBHAKlg1IziSdBiJHyE%3D&reserved=3D0
> --
> -- A stop job for unit lighttpd.service has finished.
> --
> -- The job identifier is 111 and the job result is done.
> Dec 27 02:43:03 manu systemd[1]: Starting Lighttpd Daemon...
> -- Subject: A start job for unit lighttpd.service has begun execution
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966764535%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DTnw%2FdyZOiGuypYe3S3
> GHKtPs7DPOynaGibw8gvCELIw%3D&reserved=3D0
> --
> -- A start job for unit lighttpd.service has begun execution.
> --
> -- The job identifier is 111.
> Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03:=20
> (../lighttpd-1.4.67/src/plugin.c.202) dlopen() failed for:=20
> /usr/lib/lighttpd/mod_redirect.so /usr/lib/lighttpd/mod_redirect.so:=20
> cannot open shared object file: No such file or directory Dec 27=20
> 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03:=20
> (../lighttpd-1.4.67/src/server.c.1285) loading plugins finally failed=20
> Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Control process=20
> exited, code=3Dexited, status=3D255/EXCEPTION
> -- Subject: Unit process exited
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966778058%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D0t8eCJS4L6Sjcq4n2uky
> vWhXyc5hdTCCA%2B35JcJKa9U%3D&reserved=3D0
> --
> -- An ExecStartPre=3D process belonging to unit lighttpd.service has exit=
ed.
> --
> -- The process' exit code is 'exited' and its exit status is 255.
> Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Failed with result 'ex=
it-code'.
> -- Subject: Unit failed
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966790155%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3Dm0FmtVy0uTQgYvF1bmrI
> Z5iZa8%2BpxtXItCp3nLHaQf8%3D&reserved=3D0
> --
> -- The unit lighttpd.service has entered the 'failed' state with result '=
exit-code'.
> Dec 27 02:43:04 manu systemd[1]: Failed to start Lighttpd Daemon.
> -- Subject: A start job for unit lighttpd.service has failed
> -- Defined-By: systemd
> -- Support:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.freedesktop.org%2Fmailman%2Flistinfo%2Fsystemd-devel&data=3D05%7C02%7C
> kumar.manu%40siemens.com%7C5624e8a118c04db66eaa08dd2f42fb64%7C38ae3bcd
> 95794fd4addab42e1495d55a%7C1%7C0%7C638718686966800983%7CUnknown%7CTWFp
> bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIk
> FOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DASZ2ECde7a7FDANR%2B7
> FjXewltdHilb0ClibATorBRaE%3D&reserved=3D0
> --
> -- A start job for unit lighttpd.service has finished with a failure.
> --
> -- The job identifier is 111 and the job result is failed.
>
> Also I am not able to see any binary files in /etc/init.d..
>
> If there is any further suggestions please suggest.. for further understa=
nding..
>
> -----Original Message-----
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Tuesday, January 7, 2025 10:56 PM
> To: yocto@lists.yoctoproject.org; skandigraun@gmail.com
> Cc: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>
> Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib=20
> not copying
>
> I'm not sure it's worth the effort to revert the module installation back=
 to how it was. It's better to adapt to the new location where necessary.
>
> Why do you want modules in /usr/lib, what breaks when they are in /usr/li=
b/lighttpd?
>
> Alex
>
> On Tue, 7 Jan 2025 at 18:18, Gyorgy Sarvari via lists.yoctoproject.org <s=
kandigraun=3Dgmail.com@lists.yoctoproject.org> wrote:
>> Beside that change you made, you also need to make sure that lighttpd=20
>> installs the files to the location where you expect them to be. Add=20
>> something like this in a bbappend (this option comes from the=20
>> meson_options.txt file, where the module install location can be specifi=
ed):
>>
>> EXTRA_OEMESON:append =3D " -Dmoduledir=3Dlib "
>>
>>
>> On 07.01.25 17:37, Kumar, Manu wrote:
>>> I have tried to change
>>> "sources/oe-core/meta/recipes-extended/lighttpd/lighttpd_1.4.67" only l=
ast 2 lines as below, python populate_packages:prepend () {
>>>       lighttpd_libdir =3D d.expand('${libdir}')
>>>       do_split_packages(d, lighttpd_libdir, r'^mod_(.*)\.so$',=20
>>> 'lighttpd-module-%s', 'Lighttpd module for %s', extra_depends=3D'') }
>>>
>>> But I am getting error as below,
>>>
>>> NOTE: Executing Tasks
>>> ERROR: lighttpd-1.4.67-r0 do_package: QA Issue: lighttpd: Files/directo=
ries were installed but not shipped in any package:
>>>     /usr/lib/lighttpd/mod_alias.so
>>>     /usr/lib/lighttpd/mod_wstunnel.so
>>>     /usr/lib/lighttpd/mod_redirect.so
>>>     /usr/lib/lighttpd/mod_webdav.so
>>>     /usr/lib/lighttpd/mod_evhost.so
>>>     /usr/lib/lighttpd/mod_authn_file.so
>>>     /usr/lib/lighttpd/mod_secdownload.so
>>>     /usr/lib/lighttpd/mod_staticfile.so
>>>     /usr/lib/lighttpd/mod_usertrack.so
>>>     /usr/lib/lighttpd/mod_setenv.so
>>>     /usr/lib/lighttpd/mod_proxy.so
>>>     /usr/lib/lighttpd/mod_indexfile.so
>>>     /usr/lib/lighttpd/mod_auth.so
>>>     /usr/lib/lighttpd/mod_ajp13.so
>>>     /usr/lib/lighttpd/mod_deflate.so
>>>     /usr/lib/lighttpd/mod_simple_vhost.so
>>>     /usr/lib/lighttpd/mod_scgi.so
>>>     /usr/lib/lighttpd/mod_openssl.so
>>>     /usr/lib/lighttpd/mod_vhostdb.so
>>>     /usr/lib/lighttpd/mod_accesslog.so
>>>     /usr/lib/lighttpd/mod_fastcgi.so
>>>     /usr/lib/lighttpd/mod_ssi.so
>>>     /usr/lib/lighttpd/mod_dirlisting.so
>>>     /usr/lib/lighttpd/mod_status.so
>>>     /usr/lib/lighttpd/mod_access.so
>>>     /usr/lib/lighttpd/mod_expire.so
>>>     /usr/lib/lighttpd/mod_userdir.so
>>>     /usr/lib/lighttpd/mod_sockproxy.so
>>>     /usr/lib/lighttpd/mod_evasive.so
>>>     /usr/lib/lighttpd/mod_cgi.so
>>>     /usr/lib/lighttpd/mod_extforward.so
>>>     /usr/lib/lighttpd/mod_rrdtool.so
>>>     /usr/lib/lighttpd/mod_uploadprogress.so
>>>     /usr/lib/lighttpd/mod_rewrite.so Please set FILES such that=20
>>> these items are packaged. Alternatively if they are unneeded, avoid ins=
talling them or delete them within do_install.
>>> lighttpd: 34 installed and not shipped files. [installed-vs-shipped]
>>> ERROR: lighttpd-1.4.67-r0 do_package: Fatal QA errors were found, faili=
ng task.
>>>
>>>
>>> Can you please help me how to overriding it in a bbappend or similar as=
 you mentioned in older thread.. it helps !!!
>>>
>>> -----Original Message-----
>>> From: Gyorgy Sarvari <skandigraun@gmail.com>
>>> Sent: Tuesday, January 7, 2025 3:54 PM
>>> To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>;=20
>>> yocto@lists.yoctoproject.org
>>> Subject: Re: [yocto] Query: Regarding lighttpd/librarries in=20
>>> /usr/lib not copying
>>>
>>> On 07.01.25 11:05, Kumar, Manu wrote:
>>>> reason behind ask this question is.. in earlier tisdk all the modules =
were there in "/usr/lib" as when we start lightpd service(which was there i=
n (/etc/init.d) it will check modules in "/usr/lib". in the latest tisdk al=
so if I run "systemctl start lighttpd" looks like it is searching "/usr/lib=
"
>>>>
>>> This change comes from this[1] commit (look at the very bottom of it).
>>> If it causing problems, you can try overriding it in a bbappend or simi=
lar. Though maybe it would be more interesting to look into why your ti-sdk=
 is looking for these files at the incorrect place. TI layers are usually r=
easonably maintained, I'd expect them to follow changes in the oe-core laye=
r...
>>>
>>> [1]:
>>> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgi
>>> %2F&data=3D05%7C02%7Ckumar.manu%40siemens.com%7C5624e8a118c04db66eaa08
>>> dd2f42fb64%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C638718686966
>>> 811925%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuM
>>> DAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C
>>> &sdata=3DeA87r0Myq%2B9UX2a1VFtZksCvu7ChWTYsrpQFHpACqaA%3D&reserved=3D0
>>> t.yoctoproject.org%2Fpoky%2Fcommit%2Fmeta%2Frecipes-extended%2Flight
>>> tpd%3Fh%3Dkirkstone%26id%3D3755f6c4eb404b6218784ad21c3a56312c425cc2&
>>> data=3D05%7C02%7Ckumar.manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f
>>> 40530e%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186755354092
>>> 81%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwM
>>> CIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sda
>>> ta=3Dv%2FUyHY8SqNaHixsAlCLK21phFXZeva6ECGnwtrs4i60%3D&reserved=3D0
>>>
>>>
>>>> -----Original Message-----
>>>> From: Kumar, Manu (FT D IN PAMC MI EMB FW)
>>>> Sent: Tuesday, January 7, 2025 2:37 PM
>>>> To: Gyorgy Sarvari <skandigraun@gmail.com>;=20
>>>> yocto@lists.yoctoproject.org
>>>> Subject: RE: [yocto] Query: Regarding lighttpd/librarries in=20
>>>> /usr/lib not copying
>>>>
>>>> Ok , I will try and let you know !!
>>>>
>>>> But how can I make all the modules to be present inside "/usr/lib" ins=
tead of "/usr/lib/lighttpd" ?
>>>>
>>>> Regards
>>>> Manu
>>>>
>>>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#64512):
>> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flis
>> t%2F&data=3D05%7C02%7Ckumar.manu%40siemens.com%7C5624e8a118c04db66eaa08
>> dd2f42fb64%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186869668
>> 22636%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDA
>> wMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sd
>> ata=3DJ6xQJwr%2Brj90RzEP47thN69%2FYmgSj2bwdkIDM0ZE58M%3D&reserved=3D0
>> s.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F64512&data=3D05%7C02%7Ckumar.
>> manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794
>> f
>> d4addab42e1495d55a%7C1%7C0%7C638718675535434387%7CUnknown%7CTWFpbGZsb
>> 3=20
>> d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjo
>> i=20
>> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DKazrtJZyhv9ot5uU8lTEt3d5I
>> j
>> Q9qqomcN8WxkaRFRw%3D&reserved=3D0 Mute This Topic:
>> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flis
>> t%2F&data=3D05%7C02%7Ckumar.manu%40siemens.com%7C5624e8a118c04db66eaa08
>> dd2f42fb64%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186869668
>> 33495%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDA
>> wMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sd
>> ata=3DaQMdzTKich52kvy98WsjlDDL96Bzjt8unJkEYrS6lbA%3D&reserved=3D0
>> s.yoctoproject.org%2Fmt%2F110454032%2F1686489&data=3D05%7C02%7Ckumar.ma
>> n=20
>> u%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794fd4
>> a=20
>> ddab42e1495d55a%7C1%7C0%7C638718675535447010%7CUnknown%7CTWFpbGZsb3d8
>> e=20
>> yJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
>> F
>> pbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DZeeFGhmZ%2ByaCSv0Gm5QZ2Kw94Q
>> 6
>> 4brEb%2F%2BWNKjwKltc%3D&reserved=3D0
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe:
>> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flis
>> t%2F&data=3D05%7C02%7Ckumar.manu%40siemens.com%7C5624e8a118c04db66eaa08
>> dd2f42fb64%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186869668
>> 44410%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDA
>> wMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sd
>> ata=3DYidH9tNDw2K3YwB14oZ8gnFsQkK%2BH8eSVT1GHT5%2Fx2w%3D&reserved=3D0
>> s.yoctoproject.org%2Fg%2Fyocto%2Funsub&data=3D05%7C02%7Ckumar.manu%40si
>> e=20
>> mens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794fd4addab42
>> e
>> 1495d55a%7C1%7C0%7C638718675535460871%7CUnknown%7CTWFpbGZsb3d8eyJFbXB
>> 0=20
>> eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsI
>> l
>> dUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D2w4dbqZ%2BwFgOWdF6ei7IX%2F1M6FaSZp%
>> 2
>> FLWeL19o3NDXo%3D&reserved=3D0 [alex.kanavin@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

