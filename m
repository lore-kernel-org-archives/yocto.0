Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2097BC433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 08:51:07 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.89])
 by mx.groups.io with SMTP id smtpd.web11.7514.1647939057273163158
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 01:50:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=gzJaLiv6;
 spf=pass (domain: optimeas.de, ip: 40.107.21.89,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kYBBiGfbG/dbIkNK0yvKTIDIM6FV2w68MmzfgscDI+HHNlvZTNgf4v8p4yXaoi3WevDiYEqBqa1tmo+1aavuAO+SgAftzOj2GnfvCBZ8Dz36GfN6G0KrRqYBpwf4eaLvNr6fQ2TrffpAUpPRo0XNKh9i9tWVb/OxUeoe466Gao/dyE/0+UdSiirMfOEh5XYE/5MbzwHDwBqayR5u0xGHR+X7KXMzJTusTuSiEQm0pvcnFj+JT67KBJn+1iLrS7i7C1qGStRcecPVyhOptnFqsNoWsZISdG7KFN8vv46826ePYwIykA0/QPeZfrtwBC0WYlaN+tHfhYboY+Aca+kktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dnZhQojAnNEU1cm7GfjfR0aPJwtWMFCIBbdQlpXOLDA=;
 b=Ghel/gF8jYcqKxChsxXir4nyDiZD1QOe94oAES1j7/P7Fmi/M0+tz8iTk3ZJF7142tMqliqKKvSryAI5sK8pRyE395d4nWNN86zTZStoJJ8pPhPvHXWN0vaPA/MNMkoZS+ZygNi5iPLGdwWtV3Nmwzvyz08EQeHTKrIDvnrZyvQGGrItnq43cE+H3JpBMP+tjVwbCjofYtNJLVEO+luB9S88xKfO+N5L0L2reYkWuIhO4aC7ALFSbh6XW69RYVvCsZzYWETB8FXBUTLqagvRBydukQQjlEcBT1L4p4pFzgHqk616poL8+rSu3qkgK4V1oGz8c40QUaS832MtIr529g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dnZhQojAnNEU1cm7GfjfR0aPJwtWMFCIBbdQlpXOLDA=;
 b=gzJaLiv6YIhJyGmLSEwA2L15XGoz8dsB/UBAqSXT1ATtHfw7Z9Oa8gO8kEurN2GxdcnnYkX9ElUOZagSzEUoWMt7RALBlaKXjhPvQkuP2TQFqrb6QVxp8pJQDlRyWa6Bsk2sV2Qudtal7M3nDCqm9Lmjfa4LKLVSqcXwGG0WJK0=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by VI1PR10MB3742.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:803:13c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.16; Tue, 22 Mar
 2022 08:50:52 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e5f9:550e:18dd:7fa%7]) with mapi id 15.20.5081.022; Tue, 22 Mar 2022
 08:50:52 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Strange sporadic build issues (incremental builds in docker
 container)
Thread-Topic: Strange sporadic build issues (incremental builds in docker
 container)
Thread-Index: Adg9x6vuzuvb5BtVQ6uxBKtYEAh4Hg==
Date: Tue, 22 Mar 2022 08:50:52 +0000
Message-ID: 
 <AM0PR10MB3107136C7FF2137D2614E56A99179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6708f34-a4d2-485f-6fed-08da0be11225
x-ms-traffictypediagnostic: VI1PR10MB3742:EE_
x-microsoft-antispam-prvs: 
 <VI1PR10MB37422F1177E268B4CA45C59F99179@VI1PR10MB3742.EURPRD10.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 lVhiSII2aASAPltKo+t6y6zw8Y7hEVH4mIbVyU78IZ2T2FzBhAOfKqNgMTgUw++ucYS+t6qeTel2nqucfzN8rdTstnDVO2clJAjfKRJrBfwlNATuAdWhUEu1OIfhTIUMQJ4Xqgncr8ObDf9G9/nniyYCKFrnGupnR8tRyGzxN5iBUHkNuaFR5Rsh8U23JIm12pVCIakgRF5zMe47OY3+3NqJk3US0bB1tlzsBuh76St2omkI5FnyPFZKcVvZ7QXWroZgD4IE/ZXxHKvhuTIdSt6nP6d+4/Kvy2Y2bZPVUAR+1UFG4uK09aTsy95ruDqzxNBqtr3eaqJ3cLTj5s9sB06g1MEzYYokXn57dUItNjdOZyZRcISjw2m/aDyaIeYqMmcrXC9U0IlGhcXFY8txWfzYBo3vx/v63mH7aEhgGmquqWCzUL3CA+hV0nC/lx6WbyzIsYhAL/iNp6xbQe/RTDLoQT0IUdDrpEAAHYYsuH1RwmhiKp57maLSN7Wm74x77vQ0kaa7iKsEuEU8JUwnmpC9kp1TBwX815BgsoyH0omux8kp2bj0pLsFUBQmswwgpmJJjcZ+/+TtnlEuCua83b1mIqFkdHnfL3bS6GU/VrvcZBOUwCC5G3IWQCU+/DCRpeSOZe706edTqhwumktj7Sw5kX7Wpb9hcDhRCp0PdWbZkV4Vel2m6rlC5yJfYDBVgOGekNvuCETgDHsFtWpBdw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(346002)(396003)(136003)(39830400003)(376002)(55016003)(83380400001)(33656002)(186003)(4744005)(2906002)(44832011)(6506007)(38100700002)(7696005)(66446008)(38070700005)(6916009)(5660300002)(52536014)(8936002)(66946007)(316002)(122000001)(76116006)(8676002)(9686003)(71200400001)(508600001)(64756008)(66556008)(66476007)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?hqYP5O/CAIk+6yUDT+fSr2w9XL5ye1sF+wcJELTPZj45V4Ia3xsv5z41Yd/L?=
 =?us-ascii?Q?hEVp17oEUSYLJzkF25BBgVyQS3hYWl0CTIiPM2Cn6RhpxdYoWeZP3sqvUxwa?=
 =?us-ascii?Q?puBMC+NS61jTE5YK5aROwfEvbDdrycG2VcQ1KuQKu2U1cgvysmIYot8LP8lF?=
 =?us-ascii?Q?ElLg+XORZOjj7PwnumvGU635umPvk0f5pD2m9eRHAamcsuV1RGCpl5UJYv7f?=
 =?us-ascii?Q?GZvunTIXrGwIlxyV0U+2NM8kAz9YcnehCg94a/NLT6Jw11NoLoc8ni+PZW5+?=
 =?us-ascii?Q?jxAgJtV2Ve3WsHJtRZ5h97JWhKKlXmqETrw4xa6XEQWd1QXmwEqYxR3gfcOw?=
 =?us-ascii?Q?m0lr/sfStEN9h/iC1hmlzzGtLP0woH2Eiyo1SZIxcODAWWGRkpL5zEQaAXPr?=
 =?us-ascii?Q?UX3X6NvegjEsR1Y/9RQQcsq98o0JaSHr6649+Y6eK9oaiFY+9Jqs7Z0ajHU1?=
 =?us-ascii?Q?6ziTcrXpyBwLxPg0LADB9Sd3vKPv3cFp+XZFcjT2ipzoQTCcu2aatLSiN6HL?=
 =?us-ascii?Q?xhVYSnggoSleaF0Mt3hSsxd48AIlm8ZTrvY0U3TffExvGsqPsKRgpqtGYNpm?=
 =?us-ascii?Q?DGwwV8/saAixPAF1/dfQ6pv3P8iczrLvws8hmUzedha47pawilbFd79Bzf99?=
 =?us-ascii?Q?wlGnHQS6e9FAvxoRLwCjLajdLejX1XWCAArVj2KiHgDW5NzIdP/kIrvKtX45?=
 =?us-ascii?Q?Fl4OOMa2sjoX7C4PZEVgH0S7A39w1fboVDPhhwJDuNPSSnkCLHN7NzoT5QX6?=
 =?us-ascii?Q?Yn0BgXawd9v0rwKNZDKlhALF7ZgDmRCm2QpvBLmDaLYBIoYaj/Ud7r99ubcX?=
 =?us-ascii?Q?ZXd7cllFzFD8jKPltj5/ckg7PglUaD3KaMu0pqk8igoNbC0io+2+cUzsQpsM?=
 =?us-ascii?Q?ZfTd2boMEU1/Zpcerr2O54xNCXpsMrxeu6Rpe564CLiT/lDOPjiv2obG5OHo?=
 =?us-ascii?Q?9LqCX/HThzKAHJC0Pu9ZNj1f+72XPpVgMGxjvr2MsiTox0FBs70vWt7s4G0M?=
 =?us-ascii?Q?mxZxEoEHw8eKRWug47dl3LXTsTKIzTfhC+2Ey/gE/hReoghmWLhFTZNhMZ82?=
 =?us-ascii?Q?2nSauQvQiJL+lZxe4CDNCrPjt0yj54nt3C7TWISDvyuH3bcJH2xrGeLvYLrt?=
 =?us-ascii?Q?7lNxPTAXXU9/H8RwN9jlORVvGDIjy2qDw7ATw+U9K1Xo/Y0jIdtFb38Wa0mo?=
 =?us-ascii?Q?K4qMeYe5pdyErppwZ/3y2xDLQ+k8nZNy253PN5a04YbwtoRpqfwvMPo6heMC?=
 =?us-ascii?Q?W5YmBrYMjXqoMqNL8LSDnBOz2TjcsJbxJBal/6O6jZwTMTkZFL9XmAaTKZkF?=
 =?us-ascii?Q?UUvTh+7xcMGlXjZ0VbfDubunSiN0XAhdDpJZJ7EUe+Gs7+4vDvmOYr39zE4J?=
 =?us-ascii?Q?NgzOvrl7EnFAFwaPF/yfs4+N3zs9vk3Zq/KFFJ85aEyr2aBp8JLw/Kkpoihq?=
 =?us-ascii?Q?H6oIl9GMdhRG3SYr3OoFpI08ckqAimJnu0g37sLn60o+yiTxpfgy6NpokS1/?=
 =?us-ascii?Q?G88RYIaEZcQXo4LroVnFSvQRHfztZyJ8wpi9nwhfIr30xFX13adXKpvcFg?=
 =?us-ascii?Q?=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c6708f34-a4d2-485f-6fed-08da0be11225
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 08:50:52.5555
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 iucNaFU0B6idH4mjTg0asNcNaHk7hKXbhgfjpdVMFZXsDtsZHv+GLhtzLr2+XSFQ5OPOZ8OZRNcVZcJZ3H4SCD18TNXQLAlO2iyNg0Ekag0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3742
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 08:51:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56522

Hello together,

I am building various kirkstone/master yoctos every night via Jenkins insid=
e a Debian Bullseye Docker container.
These are incremental builds, reusing the build directory and sstate-cache =
of the previous build. The different yoctos are built in order. Each time, =
a new Docker container is launched.
(The same environment builds dunfell yoctos without any problems).

Now it happens sporadically that one of the builds aborts with the followin=
g message:=20

stderr: The series file no longer matches the applied patches. Please run '=
quilt pop -a'.

They are usually alternating packages where the patch step fails with the a=
bove message. Also different yoctos are affected. But it is always the abov=
e message.
If I then restart the failed build it usually builds cleanly.

Does anyone have an idea in which direction the problem goes?

Many greetings,
Matthias

