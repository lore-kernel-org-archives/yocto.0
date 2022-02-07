Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2367FC433F5
	for <webhook@archiver.kernel.org>; Mon,  7 Feb 2022 08:19:19 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.57])
 by mx.groups.io with SMTP id smtpd.web10.19800.1644221956983220250
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Feb 2022 00:19:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=LdIywS8+;
 spf=pass (domain: optimeas.de, ip: 40.107.7.57,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGGEDjUrCeFZ46RWizEAWGRzvVQsfQEZvjtVaAUM24TeE85Ev+NbZXR4wIwefiBYmOA9Vfm4Wh6oa2DjH9L4J3o4BRAZvmvr7cuWgyF55PIPiV/7jTB6OcLRN+Xxhe6xF0AtVp+zcE/Q/Li3StscyjkSRpEC72XOpYV+tvXfvWLwO6+JrkyxU030KxPVCWEkAVrUp5ZjcTLw3m6VAAVAa2Rt64KY0/V/KHwBbey7gMMfaW+f1E7rmFRg/zNIW6+TjIEdHFxkdCystxpEfWLstX5nhA8IA0N+kKXinJDJAxf86Gj3HOqZ99UrXAIQao3UnMHDTCt/lrNW3SDufyfq4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZkQD+f5I3SqRFK513CPX3YeixPXgi1s7Ni8y0O5uC/Y=;
 b=J3+TFIChYs5cXkhapLLiTOVJ6klhlxDgNA7DULSJQoYgFmk+HEacl2yrw9KiWYliI6VHco+m7SlKkYZfgyGONjZmsLE4T02Wt9bsz8Dvplg22yVbUHPCn6LhaAEZrqNOtekVfFat88m+bBZFK5v0j/TRuiNFc85vGMOKES1H1DC90BUDdaaZGLsFQmaOfsMG3CIkAe5E96yBJDX3GzuLQaO+buxhT1q7IFBsBq6W75Iv5sfkJx/8OT7VMqy5B2yet3FBWAnKQy2pjYMFVEksbqKJGRrqqY5f4oVHN76urOWxronuEMSpq4GAXs4yfjSE9l6t1B7trtsAOdvILOrAAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZkQD+f5I3SqRFK513CPX3YeixPXgi1s7Ni8y0O5uC/Y=;
 b=LdIywS8+990rtv2+QliGmhZOZebPB90arheDPV4XnhFrkmfZv4vIie4jhVqwGT3x7U5y4E3SxFFxkNQFZ2MjOML4ea3bhCxJMBXCZI40C+stybYEy9DC+NQvKN5xy68HYU/6mCu3L/G46sgQbOlssT5CPyTL5DQKtTBIDEVj1W0=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by DB6PR1001MB1207.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:4:66::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Mon, 7 Feb
 2022 08:19:13 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085%4]) with mapi id 15.20.4951.018; Mon, 7 Feb 2022
 08:19:13 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: gpsd autostart with systemd?
Thread-Topic: gpsd autostart with systemd?
Thread-Index: Adgb+woY6Je/MtpVSBKK8R1AbewNfA==
Date: Mon, 7 Feb 2022 08:19:13 +0000
Message-ID: 
 <AM0PR10MB3107C0B665A754CEEF1D9C82992C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f54f9595-bdd6-4e07-255e-08d9ea12863d
x-ms-traffictypediagnostic: DB6PR1001MB1207:EE_
x-microsoft-antispam-prvs: 
 <DB6PR1001MB1207341A14D43AC4827DE031992C9@DB6PR1001MB1207.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 HbOB3UvcgJuPuXT0PwdEN801Vmu3SryT042IAEccgSI2dNYwefPyj6wo9wFSJZT2iHZqf3+NT+kCIvSQOcl5SfV3FQj0hoXdaiaimDn2T8l0aPtxQqfVJYYyYC3dt2yZfS2Cf5hU+Wwr2gx1QaWGC5t4gsjD14NhzHe7UrQscDOG7eOr1AURL6hZtM9zjzxkIbRerwazRpgE8hikgR1sJDwz2fXBRlWxjdPGzNqzESFTxmyW+WwCu7w0uR4aRl1s63qio3THKnqmrn8PP2xdiS6lz71rNAPXEhN6JKzwXhpGBLkXREAAzJjrhnJQ8jQ0qLLChzwd9kUZY8lGsYq2d524Mh9+6kW10aHcEJdZ3lYcdifdVx6r0S3PWz4T1lAdC+V58tdjU/sL3+sl4mmP2+W/HrvWyHtnzXi6h2kxajNEMD6T8SSOZQP4ZSFfE6JXLSMkd4vfHiZz7LakoSxTIl8qE0o8hI2WBxdk8NMV1fJSyCbMGgBBBTFbT6g0S+zyvuWpAfWswofD0no0WIDxTu6zZl3i5z5HUlYaEfq4EwvtOFPm5zhf7RyC8gvaQ0lxFBntEil0YyMHEtlu5XiP4GLxE97ALKQjRwCI9TfnvxmlIZrc9irmYfOiiJZSm6IX/7AoBNhWaRQeDUL4CYeMbZQ/yXFospmRnlq8aIWQhqaPBpuP4NcqFnqhTQ4jIHbpPw/0hwzKpUk9lCLhCQ1bGNc8IfpJRC4Togj0oZWrvDSmNPtV1gFReWyWkDLP0sFYr7hXwix+gcTZzLIfgt3xJDpCAGhwt9bUK8/I0kWnJtFqJQupnXa1Xw5tp863Xraa
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(346002)(366004)(396003)(376002)(136003)(39830400003)(122000001)(9686003)(5660300002)(44832011)(38100700002)(6506007)(86362001)(38070700005)(6916009)(186003)(71200400001)(2906002)(316002)(7696005)(76116006)(66946007)(83380400001)(66476007)(66446008)(64756008)(55016003)(52536014)(8936002)(66556008)(3480700007)(558084003)(966005)(8676002)(33656002)(508600001)(15302535012);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?NZINb+ScIAJELg+8NXWg7BFBxx6m169GT51J0QiNjgGeqzp4I+4n7fSjoTS9?=
 =?us-ascii?Q?9WHVtv9yc/YUM/b57RkJhCllw5rlrWTUOKNpeo6NtQ8rlgLTkr75d+b+7I/p?=
 =?us-ascii?Q?UkMy/iU4LCl/RW/8bu8+c/1NQ3d5E5XHb4GIOl4va0DxiNunTV/hR3xdGhPK?=
 =?us-ascii?Q?eq++FGS3qt8WTj9bjoix+u2x63ylAzQSGjUYb7+/ngwhWFLZmY8klLQm1whT?=
 =?us-ascii?Q?b1WdOasuQusrAhccNMgWm+pCS7aGQ3zZKTRQOpyKDsgml7u7nCgtjGQWuiH3?=
 =?us-ascii?Q?ZiMpbtXp1tp9STYsWxkRM8qHLzvdhMQD/LfR8CF0DobqK1CpK/n4hw+XUH1o?=
 =?us-ascii?Q?YEsuKEAtVHTmDRojPFbZxwnkwSseB4wniRLlt71N+WjcWn5zwtCKFhTK9EX3?=
 =?us-ascii?Q?QI9ThiJJ3Ef437VTllxIBduTYGvJMM8ff1E7Q6q06wzb28ptpk9rjnYaBJpU?=
 =?us-ascii?Q?UZDgmhqrSwxl1aSPfOK95tb2Pa31/el+TzgaOHjsWERmmHmPTSGzjX6pdhBh?=
 =?us-ascii?Q?698PKC9ZIa30Z7FBIWe9BDWwa+dSywj2PIrdB4fs/HeDBRaTuc7yGkMKTDzF?=
 =?us-ascii?Q?u6Lu/On/keeqqSPRqWnbJ2grPAmDt/BuViJ35tiQSBilU+NTFr1bRKuByZbQ?=
 =?us-ascii?Q?Lsg+yuUhjz2Df4M+Zl5N20/IRrgeDIW0EG3X08v1Ca/mIKnWtJq2CBmGW5h7?=
 =?us-ascii?Q?9qBQIECryRv97t9SSEJcdELrOfSI3Gn/v4K0VKlMowODSEEpelUc/sQO1ZW5?=
 =?us-ascii?Q?65gOF3D2Ba04pC9wK8KMKpNUXclHYT4ZwvezIro4zVQ78ngBBaJ708Uw3fdz?=
 =?us-ascii?Q?Y8DiLYjZuYISA2X9aTiiofIOOMzGCPuYVGHcZmP75XVSj7eSPLAYRZo9Lt2/?=
 =?us-ascii?Q?Rybjtzl9blPHu0ACnEvd/ble5WEF1+SnnvJP5C7YL3oSXFUxQMpgkOYPDxi6?=
 =?us-ascii?Q?mafRoFTNvVh83or/703jI8NYzitxz3RrXKLS2O98J8LweAcAyfNN8CQEedNp?=
 =?us-ascii?Q?w7Mn9uNmf6rxKHyxfN+csRLuIbbDw71qdjlyEI3vm7zQNcFYXfwvgpGUQauU?=
 =?us-ascii?Q?XtJ5fF/ljXV4xEo7rErsaPuqwTC4+33N0eZPDBUB9vQTsUGQ86zWGyL/KqMT?=
 =?us-ascii?Q?4O/En/c3Jlcc05hx8DAVgq9PWHTG8kAvyNpKvjt/FsopMIYlONobJX29wnoI?=
 =?us-ascii?Q?ZliVxyHtIZrgKDfm5njtISuX+T1Fkaaz+G7bNcrbWjjkv81JhKbFQZeoHF+n?=
 =?us-ascii?Q?Rj/rWFXR6b4THlHjBxzWHobqgiXlq+dGKyTnt06ZnIm3Lt5/4+8Jyn3zeVBL?=
 =?us-ascii?Q?gAcUyUIQ98tv/D2SwKG4tCX888C9SioFVOXgp0omRa5CUn+S2WE5g4KfmEBm?=
 =?us-ascii?Q?+UHr8BDYyVGqH/wAMYcMPV0fktNNCBTe7W0shzdPxslIYaXdkjzxkP8zOK9m?=
 =?us-ascii?Q?NRZOuU78uu65lRq92NrCy1310DHEBGYytN5mPUXR0yOJwhf6noooHhyfGoQy?=
 =?us-ascii?Q?+igpg+bkQev/6XV0Dq12GMfFCjooDgi6UczUtJo5hRHd709sxt4TzUsVr/Lk?=
 =?us-ascii?Q?x9hkPl5jNiKSN2dkvnCbQuVNPUBy52R7SzFAk021QYqgzpDViL/kyYyWnsIm?=
 =?us-ascii?Q?arR8hTM0Q4R9eVFxbp5kDMGFJnoAq/RCmq0G0ebO8dLG7hah0sioeA9tNtJQ?=
 =?us-ascii?Q?95fmD8dngx6fplaWwYMxTJQe7NylPoO9Q7LQsSKY3tCPWDd72WBiWd5AHMYG?=
 =?us-ascii?Q?boBXZWCkUw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f54f9595-bdd6-4e07-255e-08d9ea12863d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 08:19:13.0538
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 8kEeD0D9D+t+nHUaKly3RDPnIQuC5x99eIwks6bvych/DTT4q2FufFGQWlRN4N3m+Z+XX7vWBs3kKq7nQ2BxIU04yvhvmwt9Srl5jPiYCv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR1001MB1207
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Feb 2022 08:19:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56092

Hello,

what needs to be in a bbapped so that gpsd is started automatically at boot=
 time, and not only when the first accesses the gpsd socket?

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-navigat=
ion/gpsd/gpsd_3.23.1.bb

Best regards,
Matthias


