Return-Path: <kumar.manu@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10EB1E77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 17:39:00 +0000 (UTC)
Received: from SEYPR02CU001.outbound.protection.outlook.com (SEYPR02CU001.outbound.protection.outlook.com [40.107.44.70])
 by mx.groups.io with SMTP id smtpd.web11.26854.1736271530513014615
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 09:38:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=jERsH+ba;
 spf=pass (domain: siemens.com, ip: 40.107.44.70, mailfrom: kumar.manu@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bouzjxHaDYfEKbyspYfrFjV1jUrIdXeGIL7qEcaieJfWRTre5szoutQsVW5E6axgk383/tSo5s/hgsvU8qAhEyJTzJYpSemEtYOYBl3EzURopEin3Eo44VdD2PE9cyj5n7zH+em+BPv2Ij6FDjXU0GnkFVqZiPg16dhpacTZMRjVE20oGC/s4FNgxTVSn74iJeMBMGud8tm27/v3MmeONyEwjCif2LZmoETkB2Cb8mSXsS3fL4Vomf9+gr/VbSXpoXakT4YKKCbW/9A4ty5w5ulIe409JhlZeURrkIAgmtUlf+a3O5Ca3Eco0DytcRxzjtPg4gPrkq6RyMn4htFAoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4QyQbd+kC2gGjKd8mViOJHmGUNfyOJKEo6R9YfOa2UY=;
 b=BjvgZyGCWx0280pkB6oHLUWfPwh9FhTsM3fny0QYvPyzJ/iQZrxGgRhzbtZtIbdv/ThO9a8Cx0493MgnoApyzR7jY+bNEAfex+/j4vMrik04u/ExB3aZJFpAZl9EB38L9POAjsOyQmJ/OXMPtyv6FwM3GabA5OyBrUBSoO9E3r6OofOTCsoKGPXpmQwmlYfrx6PprxdTc8fkMCFLI+s0N/qP+KOcjqd/mJucaWLXNxqvLjzdr8F62ziKVvOSU1yDRCVZqCnNkph8NsPpqYwRMwnBdw2/kH+ES/fqp6OxPi6nraPm4eDt1/OQ22szfHOS/e46vbHuo6uWFvJ2/fuoSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4QyQbd+kC2gGjKd8mViOJHmGUNfyOJKEo6R9YfOa2UY=;
 b=jERsH+ba+dGdSEOqy/vxdI3DWMKh94VcedxxDwVx2TTbAlkZVVYn6/rrM1NQFO16tENmvDax00HHjR8U4YY4zPFbgsUWSddiTxDW/tnGLSj8Rh3zYp6DshFht2ZcFLXKz6Y3CcUe+c9vVi6q/5Rcilu7jQAVqpb+hEW1K2NI80pInOnBJT8zio13OyvUJssEn2lsM6wtWuUKGPZc4T9I2KS571QkOl3zBGzMSaSgM4ZsE+VgBvfk3gCirZI+3ZMB4Hwl+Orl2pHijwzR4VUdqYo7zFxIyWYCT8fKRXsyt7/gUJNyRaQxkXBBPQTNR+EoB0UKBiJpyIifSotGtFgwQQ==
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com (2603:1096:400:1f7::12)
 by KL1PR06MB6071.apcprd06.prod.outlook.com (2603:1096:820:ca::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Tue, 7 Jan
 2025 17:38:42 +0000
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318]) by TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318%6]) with mapi id 15.20.8335.007; Tue, 7 Jan 2025
 17:38:42 +0000
From: "Kumar, Manu" <kumar.manu@siemens.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>, "skandigraun@gmail.com"
	<skandigraun@gmail.com>
Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Topic: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Index: 
 Adtf6VoFMsgJcOJER+q6cre+/gzlBwAPQLMAAATTiOYABKyjAAAYT/rAAAgPmoAABVvkoAABVCOAAAFqN4AADN/1QAABnFmAAAA8zIAAAEaZMA==
Date: Tue, 7 Jan 2025 17:38:42 +0000
Message-ID: 
 <TYZPR06MB5178A50C77D06F140BB5C92586112@TYZPR06MB5178.apcprd06.prod.outlook.com>
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
In-Reply-To: 
 <CANNYZj9EKn69UjqdAEp9U5DbVLQrf0rNdRZd8JbnmSWji6Wixw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=6ca8f947-27e8-4207-8814-b98c66cc5ef0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-01-07T17:33:28Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR06MB5178:EE_|KL1PR06MB6071:EE_
x-ms-office365-filtering-correlation-id: b61d0080-b66a-40a1-1d17-08dd2f4220f0
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|4022899009|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?1tvqClXbw12HQEwcthiGheB+LVYLACpuK8wrw9IMuB21HtH7Z6Thq09AZ6xz?=
 =?us-ascii?Q?wyccT40VR+2b5aDf9likL5BQtl+IFSF77CmQejqLj9vhoQXte849XjZM87zx?=
 =?us-ascii?Q?HJtL4iiPtExYfOTewaOZk+y40FAlXx1b2NsrmqNfZCdBfXptCe756zTWGF/4?=
 =?us-ascii?Q?qNoq1RqagLySGV8H7z/qBRZG+1Xv/TEbCzui36/VTzAbKtJtzP7n0WAOQKrB?=
 =?us-ascii?Q?UW9DxC8Q0bOX8VRnRdrTvFokdy9lFUzoE/AvYKTRregxEh+PrTCW5jSBHPtE?=
 =?us-ascii?Q?7F9lhan+HTW4p+poj/+RTyuW9vw0CBTULQ8ebPoPi66E4DNZMPkVe0Vsq8F+?=
 =?us-ascii?Q?w2ISUvzJBIGpwMMvC+27tjagDL1L0Gr3elGUz5Ni4Z+dWZRJAdAqU+VWZkS/?=
 =?us-ascii?Q?8ElNy9MzeiQ2l9BfM+wTRr5wa54B2YTC6osE9d6nttSJ6QwSrGpZEfz6ZXOW?=
 =?us-ascii?Q?IXd9/FVoJ7HyQQmW8JOmbkSyGxgZONC9FRtp+PnRx6cajG+BqyA4+jCk+x/l?=
 =?us-ascii?Q?L6Md9ZZkIjKO6S3EONVMkJ132fAABRbBT+wspdrLWTjaoIPN9DBVN0s5QqYV?=
 =?us-ascii?Q?yeLnu54QBKnPxmtIszP15X6czqnf+xmSochDLssul9Bsdp6ENBB1PlgYfMls?=
 =?us-ascii?Q?7FJL/bZrZPQl5tW5sfa9e5luvadlY0PjRLDLdBJYMefHwt+uqiYdQHOPnXjM?=
 =?us-ascii?Q?mwWnlxaYXweDgdhHTFqpqM+T509UoKfYRNZu+31zr7NTCdvi1mzzISucgSpH?=
 =?us-ascii?Q?fy/L7SbV/E9O7bcQTVqLSE8Tg8WyAwzmfnBXOdtsx314knK0MyBaqLheFzbF?=
 =?us-ascii?Q?DK54RODINQAHJWpBdjGGATzQehYgOZLjFdtEO6Cw+7C4M/qRYa8PhO28raqK?=
 =?us-ascii?Q?45I0lye4hCwGd8muU7LgDfAL2LEAf5zXUhJwwMSxaObOnV32u+5hg8jrOIEz?=
 =?us-ascii?Q?0ubboKSC/8/Hjdz5f2ruVZakk4WrBZAbRuM2F00P9jZUfZvTwT5oLpalhYLI?=
 =?us-ascii?Q?1mEkjV3cKsMFhaxdV8cd1GgIaA8f9YUuaNwKDITT3XOt+4RwH8ZBbuGFRkkk?=
 =?us-ascii?Q?/zym13fQJY7UwbA6+RXhEQJzVd6ORDcvLB3lrkgKZx16O9TKp2htwasojIUz?=
 =?us-ascii?Q?71V9t0JCUoHBOR89hpizAl6SCs5IclIIOzMjMLX0kS2PyICQYLR5BeJpfrL/?=
 =?us-ascii?Q?lDWHFPRAXRsvcdDdJVQbkmlMNgEWaa+L05MfAHENMQZHBConBlFxWCbRKHLR?=
 =?us-ascii?Q?vyEnCw6tllzC4XgyU7wu0T8QXfiCr4u4e5rRcoqKvjE29NjGBVi65zPysOxj?=
 =?us-ascii?Q?aLg+8t4PCe2+Sj7PveqJOc7btQVlNmhLTCOyrsA7cp2oYcZ1BE0jhVB1iaOh?=
 =?us-ascii?Q?nzJr/N7G7TkolI/WzovSb6w1OY/n?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB5178.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(4022899009)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?BFaV2ozvbgRXyZS35RwALQvG+MSxZbKi+12AOS8lFN2Ops35KLl7YMHuMOmq?=
 =?us-ascii?Q?WRsk92Y67HuDxQ4B7p23PbdcvOQONKZs3bvJGEbbPwevsc8HnpPJxRj/BHWi?=
 =?us-ascii?Q?zlHMh+UJvWiViGgCAB1SFm/nTkf2YurfeAjpKwrvx0uR9rXP7nnIyaevN2Ad?=
 =?us-ascii?Q?B+cCuqIrnvb3o4NP/nT07buhvPQ9JDC6afwwR9ZnWJ/h9ujROOvU1deM1Yan?=
 =?us-ascii?Q?uIuvaVOhdVDs1MTjcK766wtHEy69GkOjVK0k+L5LPCqDdzRc6OHNXD2rQeUv?=
 =?us-ascii?Q?c0ygJsjKSs7DiVbeOYjfIP5ZUND7qjUfCSb7kBPmvwnegVgvFAJh7Adicv5D?=
 =?us-ascii?Q?uHqhyF7SDQz7F9ZhCqk3hpkkfaUtyMtAUkftmH2Oqenk53oVYEePEIEwIMgF?=
 =?us-ascii?Q?8JKn3lMIFW2F7gxyAvEARYtLbGD7IuMTzmn925wIgXbsyvAVJPzirV5cp27q?=
 =?us-ascii?Q?lJN2qLo2wRkbk1P9oS4cOybahqbOZDKQTZB75nNl2vy5zlUEi3FJiUtph9Dc?=
 =?us-ascii?Q?Ij9+UaIo2EYQYCIHiVRpWMjjGYUxeUzUubK1FRq1l22vnxscSVILa+0tmco+?=
 =?us-ascii?Q?AlkK1ruN0mLWvOHzLgfYRna3icVk7KkV055pmw3AXZNlnP4jYZS7JNPYJ2ol?=
 =?us-ascii?Q?dtQIVKoUZ+RVRE4lSQIYk3k5Z3XUiRdK49rVl9O3cOAnCD9t0GWqZm+V1Oq4?=
 =?us-ascii?Q?6U4Hac0nehp3yROmg9P28ZWfYhR4/tpIvkfsewXjhYZhijV3SzHN7Gj8eV72?=
 =?us-ascii?Q?aHLtFo6h/cb7oH+byH2KrNh23Evlxach1Kx/msj2Oe5lDKV0KeqpXv0Dt4OO?=
 =?us-ascii?Q?kS1bi+x7zhpVh1Ku3yBuriqbhuxJewaGxIFZZymSGK5R6XVbtY+r1NSgH7/T?=
 =?us-ascii?Q?1LlBVxm89mJz/sMxB/ffpAY+yqTNU4DofnTm3t8WPmSyE+jgYERf6eGTb7Tw?=
 =?us-ascii?Q?ON7FM4vM7wGlvHLqClsNWA9m6bCauoq0N0g9BcQ5M+pL5RhIU3CV3k20kU7P?=
 =?us-ascii?Q?KSPW//vzoeohknsBN0qvvHEFX7SGs8DWy6z4fXwK6x3Z9t7XyhA5ha3Z7Gdi?=
 =?us-ascii?Q?M5X2IO+hQKJfHgAnScTSv/eJX7vBwQmUaBLGZaQCbh7QsUXaD0J/uw22OIMq?=
 =?us-ascii?Q?4PefxF85qltfL1Mi4Mw8apMhmymCW0S/SynJ/qs3ICJvgbddvqup4FBgKYri?=
 =?us-ascii?Q?YYMtrprHwV+3ph7JXet7d/E/8f54SWkFvsSrvKQvxnALe62ZI7ytba6Eaik5?=
 =?us-ascii?Q?Z08NKtb718gQSelzGGsPINu5LomBOSfKUgxvGD3cgy6j2z/kADf84AcLLiwo?=
 =?us-ascii?Q?3ZtnebSWUM7GSDQU9r8z6m9/VzxKFyrb5KxQr6g9rcKN1kqlb7XUWPdWf51J?=
 =?us-ascii?Q?bKhNrqevZquVR8lYY3cItHtvLHzM/YqWSUNYfAD1RWPdKoGvTGONAuDQR1b7?=
 =?us-ascii?Q?JnaPLNZvyakDz2pkq/pAA5uP0GvLmFvm35eRTztA5y3zF6kprB4TyJ81T/4x?=
 =?us-ascii?Q?IqGWtoRtUd9A/7b89abVs6f49Tcw6BDzIvd2PwAph1u/7R25nQ+7Pwv+gUpj?=
 =?us-ascii?Q?tra0hzINwGEdStiCBaf+n5N0En2CPcHFbM92QV3V?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB5178.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b61d0080-b66a-40a1-1d17-08dd2f4220f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 17:38:42.2926
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hw1yqJ1/1Tgu0QaUj5GhLcVX6ScX5vwT0rova+ptHjDspDC/xfMAv5NgvMG9Z/udcV4gw3J9RMAry90sx248eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6071
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 17:39:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64514

As I was getting error when we run lighttpd as below so modules in /usr/lib=
 will be fine..=20

root@manu:~# systemctl status lighttpd.service
x lighttpd.service - Lighttpd Daemon
     Loaded: loaded (/lib/systemd/system/lighttpd.service; enabled; vendor =
preset: enabled)
     Active: failed (Result: exit-code) since Fri 2024-12-27 05:21:39 EST; =
15s ago
    Process: 782 ExecStartPre=3D/usr/sbin/lighttpd -tt -f /etc/lighttpd/lig=
httpd.conf (code=3Dexited, status=3D255/EXCEPTION)

Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Scheduled restart job, r=
estart counter is at 5.
Dec 27 05:21:39 manu systemd[1]: Stopped Lighttpd Daemon.
Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Start request repeated t=
oo quickly.
Dec 27 05:21:39 manu systemd[1]: lighttpd.service: Failed with result 'exit=
-code'.
Dec 27 05:21:39 manu systemd[1]: Failed to start Lighttpd Daemon.
root@manu:~# journalctl -xeu lighttpd.service
Dec 27 02:42:19 manu systemd[1]: Starting Lighttpd Daemon...
-- Subject: A start job for unit lighttpd.service has begun execution
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- A start job for unit lighttpd.service has begun execution.
--
-- The job identifier is 109.
Dec 27 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21: (../lighttpd-1.4.6=
7/src/plugin.c.202) dlopen() failed for: /usr/lib/lighttpd/mod_redirect.so =
/usr/lib/lighttpd/mod_redirect.so: cannot open shared object file: No such =
file or directory
Dec 27 02:42:25 manu lighttpd[152]: 2024-12-27 02:42:21: (../lighttpd-1.4.6=
7/src/server.c.1285) loading plugins finally failed
Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Control process exited, =
code=3Dexited, status=3D255/EXCEPTION
-- Subject: Unit process exited
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- An ExecStartPre=3D process belonging to unit lighttpd.service has exited=
.
--
-- The process' exit code is 'exited' and its exit status is 255.
Dec 27 02:42:26 manu systemd[1]: lighttpd.service: Failed with result 'exit=
-code'.
-- Subject: Unit failed
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- The unit lighttpd.service has entered the 'failed' state with result 'ex=
it-code'.
Dec 27 02:42:27 manu systemd[1]: Failed to start Lighttpd Daemon.
-- Subject: A start job for unit lighttpd.service has failed
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- A start job for unit lighttpd.service has finished with a failure.
--
-- The job identifier is 109 and the job result is failed.
Dec 27 02:42:31 manu systemd[1]: lighttpd.service: Scheduled restart job, r=
estart counter is at 1.
-- Subject: Automatic restarting of a unit has been scheduled
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- Automatic restarting of the unit lighttpd.service has been scheduled, as=
 the result for
-- the configured Restart=3D setting for the unit.
Dec 27 02:43:03 manu systemd[1]: Stopped Lighttpd Daemon.
-- Subject: A stop job for unit lighttpd.service has finished
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- A stop job for unit lighttpd.service has finished.
--
-- The job identifier is 111 and the job result is done.
Dec 27 02:43:03 manu systemd[1]: Starting Lighttpd Daemon...
-- Subject: A start job for unit lighttpd.service has begun execution
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- A start job for unit lighttpd.service has begun execution.
--
-- The job identifier is 111.
Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03: (../lighttpd-1.4.6=
7/src/plugin.c.202) dlopen() failed for: /usr/lib/lighttpd/mod_redirect.so =
/usr/lib/lighttpd/mod_redirect.so: cannot open shared object file: No such =
file or directory
Dec 27 02:43:04 manu lighttpd[203]: 2024-12-27 02:43:03: (../lighttpd-1.4.6=
7/src/server.c.1285) loading plugins finally failed
Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Control process exited, =
code=3Dexited, status=3D255/EXCEPTION
-- Subject: Unit process exited
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- An ExecStartPre=3D process belonging to unit lighttpd.service has exited=
.
--
-- The process' exit code is 'exited' and its exit status is 255.
Dec 27 02:43:04 manu systemd[1]: lighttpd.service: Failed with result 'exit=
-code'.
-- Subject: Unit failed
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- The unit lighttpd.service has entered the 'failed' state with result 'ex=
it-code'.
Dec 27 02:43:04 manu systemd[1]: Failed to start Lighttpd Daemon.
-- Subject: A start job for unit lighttpd.service has failed
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
--
-- A start job for unit lighttpd.service has finished with a failure.
--
-- The job identifier is 111 and the job result is failed.

Also I am not able to see any binary files in /etc/init.d..

If there is any further suggestions please suggest.. for further understand=
ing..=20

-----Original Message-----
From: Alexander Kanavin <alex.kanavin@gmail.com>=20
Sent: Tuesday, January 7, 2025 10:56 PM
To: yocto@lists.yoctoproject.org; skandigraun@gmail.com
Cc: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not c=
opying

I'm not sure it's worth the effort to revert the module installation back t=
o how it was. It's better to adapt to the new location where necessary.

Why do you want modules in /usr/lib, what breaks when they are in /usr/lib/=
lighttpd?

Alex

On Tue, 7 Jan 2025 at 18:18, Gyorgy Sarvari via lists.yoctoproject.org <ska=
ndigraun=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Beside that change you made, you also need to make sure that lighttpd=20
> installs the files to the location where you expect them to be. Add=20
> something like this in a bbappend (this option comes from the=20
> meson_options.txt file, where the module install location can be specifie=
d):
>
> EXTRA_OEMESON:append =3D " -Dmoduledir=3Dlib "
>
>
> On 07.01.25 17:37, Kumar, Manu wrote:
> > I have tried to change=20
> > "sources/oe-core/meta/recipes-extended/lighttpd/lighttpd_1.4.67" only l=
ast 2 lines as below, python populate_packages:prepend () {
> >      lighttpd_libdir =3D d.expand('${libdir}')
> >      do_split_packages(d, lighttpd_libdir, r'^mod_(.*)\.so$',=20
> > 'lighttpd-module-%s', 'Lighttpd module for %s', extra_depends=3D'') }
> >
> > But I am getting error as below,
> >
> > NOTE: Executing Tasks
> > ERROR: lighttpd-1.4.67-r0 do_package: QA Issue: lighttpd: Files/directo=
ries were installed but not shipped in any package:
> >    /usr/lib/lighttpd/mod_alias.so
> >    /usr/lib/lighttpd/mod_wstunnel.so
> >    /usr/lib/lighttpd/mod_redirect.so
> >    /usr/lib/lighttpd/mod_webdav.so
> >    /usr/lib/lighttpd/mod_evhost.so
> >    /usr/lib/lighttpd/mod_authn_file.so
> >    /usr/lib/lighttpd/mod_secdownload.so
> >    /usr/lib/lighttpd/mod_staticfile.so
> >    /usr/lib/lighttpd/mod_usertrack.so
> >    /usr/lib/lighttpd/mod_setenv.so
> >    /usr/lib/lighttpd/mod_proxy.so
> >    /usr/lib/lighttpd/mod_indexfile.so
> >    /usr/lib/lighttpd/mod_auth.so
> >    /usr/lib/lighttpd/mod_ajp13.so
> >    /usr/lib/lighttpd/mod_deflate.so
> >    /usr/lib/lighttpd/mod_simple_vhost.so
> >    /usr/lib/lighttpd/mod_scgi.so
> >    /usr/lib/lighttpd/mod_openssl.so
> >    /usr/lib/lighttpd/mod_vhostdb.so
> >    /usr/lib/lighttpd/mod_accesslog.so
> >    /usr/lib/lighttpd/mod_fastcgi.so
> >    /usr/lib/lighttpd/mod_ssi.so
> >    /usr/lib/lighttpd/mod_dirlisting.so
> >    /usr/lib/lighttpd/mod_status.so
> >    /usr/lib/lighttpd/mod_access.so
> >    /usr/lib/lighttpd/mod_expire.so
> >    /usr/lib/lighttpd/mod_userdir.so
> >    /usr/lib/lighttpd/mod_sockproxy.so
> >    /usr/lib/lighttpd/mod_evasive.so
> >    /usr/lib/lighttpd/mod_cgi.so
> >    /usr/lib/lighttpd/mod_extforward.so
> >    /usr/lib/lighttpd/mod_rrdtool.so
> >    /usr/lib/lighttpd/mod_uploadprogress.so
> >    /usr/lib/lighttpd/mod_rewrite.so
> > Please set FILES such that these items are packaged. Alternatively if t=
hey are unneeded, avoid installing them or delete them within do_install.
> > lighttpd: 34 installed and not shipped files. [installed-vs-shipped]
> > ERROR: lighttpd-1.4.67-r0 do_package: Fatal QA errors were found, faili=
ng task.
> >
> >
> > Can you please help me how to overriding it in a bbappend or similar as=
 you mentioned in older thread.. it helps !!!
> >
> > -----Original Message-----
> > From: Gyorgy Sarvari <skandigraun@gmail.com>
> > Sent: Tuesday, January 7, 2025 3:54 PM
> > To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>;=20
> > yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] Query: Regarding lighttpd/librarries in=20
> > /usr/lib not copying
> >
> > On 07.01.25 11:05, Kumar, Manu wrote:
> >> reason behind ask this question is.. in earlier tisdk all the modules =
were there in "/usr/lib" as when we start lightpd service(which was there i=
n (/etc/init.d) it will check modules in "/usr/lib". in the latest tisdk al=
so if I run "systemctl start lighttpd" looks like it is searching "/usr/lib=
"
> >>
> > This change comes from this[1] commit (look at the very bottom of it).
> > If it causing problems, you can try overriding it in a bbappend or simi=
lar. Though maybe it would be more interesting to look into why your ti-sdk=
 is looking for these files at the incorrect place. TI layers are usually r=
easonably maintained, I'd expect them to follow changes in the oe-core laye=
r...
> >
> > [1]:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgi
> > t.yoctoproject.org%2Fpoky%2Fcommit%2Fmeta%2Frecipes-extended%2Flight
> > tpd%3Fh%3Dkirkstone%26id%3D3755f6c4eb404b6218784ad21c3a56312c425cc2&
> > data=3D05%7C02%7Ckumar.manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f
> > 40530e%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6387186755354092
> > 81%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwM
> > CIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sda
> > ta=3Dv%2FUyHY8SqNaHixsAlCLK21phFXZeva6ECGnwtrs4i60%3D&reserved=3D0
> >
> >
> >> -----Original Message-----
> >> From: Kumar, Manu (FT D IN PAMC MI EMB FW)
> >> Sent: Tuesday, January 7, 2025 2:37 PM
> >> To: Gyorgy Sarvari <skandigraun@gmail.com>;=20
> >> yocto@lists.yoctoproject.org
> >> Subject: RE: [yocto] Query: Regarding lighttpd/librarries in=20
> >> /usr/lib not copying
> >>
> >> Ok , I will try and let you know !!
> >>
> >> But how can I make all the modules to be present inside "/usr/lib" ins=
tead of "/usr/lib/lighttpd" ?
> >>
> >> Regards
> >> Manu
> >>
> >>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64512):=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F64512&data=3D05%7C02%7Ckumar.
> manu%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794f
> d4addab42e1495d55a%7C1%7C0%7C638718675535434387%7CUnknown%7CTWFpbGZsb3
> d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoi
> TWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DKazrtJZyhv9ot5uU8lTEt3d5Ij
> Q9qqomcN8WxkaRFRw%3D&reserved=3D0 Mute This Topic:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.yoctoproject.org%2Fmt%2F110454032%2F1686489&data=3D05%7C02%7Ckumar.man
> u%40siemens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794fd4a
> ddab42e1495d55a%7C1%7C0%7C638718675535447010%7CUnknown%7CTWFpbGZsb3d8e
> yJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWF
> pbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DZeeFGhmZ%2ByaCSv0Gm5QZ2Kw94Q6
> 4brEb%2F%2BWNKjwKltc%3D&reserved=3D0
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:=20
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
> s.yoctoproject.org%2Fg%2Fyocto%2Funsub&data=3D05%7C02%7Ckumar.manu%40sie
> mens.com%7Cb38bd7c92a8d4eaf984e08dd2f40530e%7C38ae3bcd95794fd4addab42e
> 1495d55a%7C1%7C0%7C638718675535460871%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0
> eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIl
> dUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D2w4dbqZ%2BwFgOWdF6ei7IX%2F1M6FaSZp%2
> FLWeL19o3NDXo%3D&reserved=3D0 [alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

