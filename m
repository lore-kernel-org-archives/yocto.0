Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1450BC433F5
	for <webhook@archiver.kernel.org>; Thu,  3 Feb 2022 17:14:03 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.72])
 by mx.groups.io with SMTP id smtpd.web08.641.1643908440036315029
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 09:14:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=FhKVIILu;
 spf=pass (domain: optimeas.de, ip: 40.107.21.72,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bh5VAorTpbD3JiOmuBQUazAg20h8/yXJVd7Nn+L+/mZELIP7ogKFeLbi/cfEPjGVAHcIY8ZprxCt3cCkx66g6o8jJHwv9Ba7hPDYAeDIEIsTmft3hpCKfUW82HCA3tG80qu19RRUJ4yQIMO4d5d1U2bklW9jqentfdzFOLrDvZHRAibZg5z2QnSR9MmsvjlUui2KzZBvueqqk1jZq7qjz2N7izaNwp9rpWxXXs5HP8THN4XkS1t+GA1cwP4eXKqGKHqeF55WTF7V0Fgpsw8YUvK964uKAT2pNDVpFCvy1KnviRjS4BCqFe0Hc+Pfc3ja6Yx9817EJKoTXSV5syYRHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rZ3ru/JafmODjB/AQkNPxZjukSWncCUxb++MDbv9mkg=;
 b=FFgG29uk9l8k6CfxtEvNICDpF5zQ6kE22quEtX2V3Od5We+GJ4cYHWADW5kY4vNMZAxxORatS8/P/h2yi4kcm+TNuHSbQDGCBXeA/8/XyCTkXIiWZ+QC/mkcVA7lsMToFhEjFgd/sk3ib1hShGya3hIJC3i5baG3AV5VHa828mqtsTiOt6+H3NJPvz3Jzu+w2WyiSF2QxWJhIfQkEZgXb22kjDXLU9J5thBy21+BxUVicV99e/mccEeOHRNLGIHeBiizwIDj+5aKS4789v0DdSPRpDyBbV6Vl42NU2y85EdQXJtvveObgp3m+uy83jVutac6lPwOZmY86L9G88PkKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rZ3ru/JafmODjB/AQkNPxZjukSWncCUxb++MDbv9mkg=;
 b=FhKVIILupsc2SC6S4Iye4APdPC8XHZvhAz66Jk3t4Cl6qcd6GxXH2B0ac4sw4NLwMGi31Y5BUCXKnStBwN+4+VD3Uz+gevYrfky/vDF2L7B5qlY/+4S0LBTo18KPLMMmEyqyByVopF7zBCT9vteTXO6AOS4m8eKZk8qlFNZhuqw=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM0PR10MB3649.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:15d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Thu, 3 Feb
 2022 17:13:56 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085%4]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 17:13:56 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: wget - The certificate has not yet been activated (does also
 happen in qemuarm "virt" machine)
Thread-Topic: wget - The certificate has not yet been activated (does also
 happen in qemuarm "virt" machine)
Thread-Index: AdgY3zrA9A54wWBoS1Kqbp790o9XYwAQZ+wA
Date: Thu, 3 Feb 2022 17:13:56 +0000
Message-ID: 
 <AM0PR10MB3107D33BAF6FC963800A700E99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: <16D03C33527B22CF.12815@lists.yoctoproject.org>
In-Reply-To: <16D03C33527B22CF.12815@lists.yoctoproject.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75ffdc43-1002-414b-5d65-08d9e7388f8e
x-ms-traffictypediagnostic: AM0PR10MB3649:EE_
x-microsoft-antispam-prvs: 
 <AM0PR10MB36493ED50E2C5D467792968A99289@AM0PR10MB3649.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Ivu3WlH7RhUUsRl3JBv0aZ0XPnP3EnCHfZWaCBiO0SJpSA2Zf9YUTBvqXzTUGjrMIJWk5hrh+0oUReHKRvRCnGjRekj8V3l1WZ3Ocwayy5SjSvlhGOI+f3MactXYN61CmRQ5nE6HQaZ/iswlurhlWFCq0pmylMSrBTML4iyntNsql7YEsroYt53j0XCD0v14pK9nNA5pcSJ2Wq5ox5l9UKaUfwFEUm5Ar4lTuTzSQkV7SJl4sbEviOuhKsgb1E0Yc3sEDxT+vU3fTahboUZmicGyXETJUanmdjIadIgRFlnFrtLVI3SiMDIMAmy9mQjGh4Mn0zEClwqAPw0Wp2ESC9T/wwvorB0vqzxwYAUjNc4CZIFbDV6dgRCBgaFoMD2SWGxLRsbMIeausJOpVrj5H+yFjTvu5fcetthoMScAimxBNH4Z5itzYccT/9F3uZgznIrdrjEDZsvN4uObLVygTYfm0t70mGh/XhIIE7OgMQNlvKH//jrH2os3CR4Iaevaoh6We1ulhy74rqWdhEKYzEul/yYBknDwQRNRBxguYJUeTG9cZgc1QxGp54swZuvwZdjcVJ5EQeBYH1r/X4e2CumKAvHIXkfzhRgwP0JWwiQgsrQYz36K8lpS5aFP/4hp8FTjejMfQadziHyT1jLk1PKuJBQi6DnRy7+1HNrxPPoZa+ACfQmIhsJvokUDeayr6IzO28BgQd68T2+nR5k59g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(346002)(376002)(39830400003)(366004)(396003)(136003)(6506007)(86362001)(7696005)(55016003)(66946007)(64756008)(8936002)(66446008)(71200400001)(66476007)(76116006)(66556008)(8676002)(558084003)(9686003)(33656002)(6916009)(316002)(508600001)(122000001)(44832011)(38070700005)(2906002)(52536014)(38100700002)(186003)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?365NBqzUo0kQNlH2SMfp+9QF577N57PNIm7/lQVQbQFBCp7aQdBnOeRy13RZ?=
 =?us-ascii?Q?g9UPXmzuxzrRXL8e587kHYlPP5Xp94WaA2xRom+t9Qz6g32CSp+satHQu6nk?=
 =?us-ascii?Q?/Rewj3ewSNeqxKS97fVHYE461jpBmuGStkNQWzJw9XYco74bLyfdVM0tvSzl?=
 =?us-ascii?Q?MXTWP+OHtgcno0edvd5uXeK/VcLf6Wr44e2HJqs1uUi5o23Pb3ZNA+i7VbXU?=
 =?us-ascii?Q?4sEXCRkPlQ6GmL7j8UiqjIVRV44BmWiY5wpNvrrUW/5fDJPmoymMjSIGTcKf?=
 =?us-ascii?Q?hIaIClLfZ7Mu7blZGyxqRIJRnpnAOeuB1uC0ITCDztxbaKPwcX12o2QrJC0S?=
 =?us-ascii?Q?9xHDHOOqJHnCMYfKp5gFreSDJ+X4gwco+g5G3yDRTo2FzFcOHN4M4S5yWQ3w?=
 =?us-ascii?Q?EoPCYWMHcYrTDDEgJzt03POGwyJn9+hw0K4pEs+RCnTHP2M7E7sXLFC2mQPs?=
 =?us-ascii?Q?3Vd33e/z4jmk870RkkI112/aYPzzHiVi2435eVbczzngZtDK/cxpIQNKVgp+?=
 =?us-ascii?Q?zG6Eryc3EuymvzRtlWhMCTRm0dipPNvzQtkxshZDLSvJ+K60RaEhHldsuNph?=
 =?us-ascii?Q?f6YcyPj4eQspGLd75lPBocXeJi1tM3e5o52I+FGOskEQO7EEGbJSynvcGBd2?=
 =?us-ascii?Q?lovaE2rbv+MMWMv7zW3+8xJTJCIHXtj1BVCUtdsb10IxBZ9roFwihc9v0oGJ?=
 =?us-ascii?Q?p7CufAjhpY2vD0s/6mFyELlxPjZpHYWT7cVWWYtxvF+8biFUyDKi03mLS+Ot?=
 =?us-ascii?Q?RG5rjh6wWCwkcUFPgn8f9Rk8+e8QDBMeuhvSniPsP+hQIPMoViz8UQmnMNnk?=
 =?us-ascii?Q?tC5ct4R/PCJC6iDbdNxbnftcHJFDo5cwDGUw/Vs7JPu1UUgN4tHCWKqwBjgF?=
 =?us-ascii?Q?oW5x9SH9aztLjNzpXqh8DaMwRuFtKyVRX0PBp9S/oj+1+GGZQj+GzIVMN+PM?=
 =?us-ascii?Q?PRKZYFVw4h4a6riDXxkz3nFjKor6pg8VVbvcKHhOE6w0o8C4bQxbBw0MOCpB?=
 =?us-ascii?Q?/5RparwEaSulf1Q7h28qv0YtFK0F9nN1YnKdvRDKuE/7Nvv97E0SJpIQQf15?=
 =?us-ascii?Q?4cRe6wmjKkTcwzQBGw/ZsR91S4Kc27Dz+HCH3R/3bCGZhF6yWloHBbXQjp04?=
 =?us-ascii?Q?X3R2fM9z31ikJvc/k4kPAd3TPb2qIBJrWy7XUn1aM3fFIhh6IQr1Tb0l5lK9?=
 =?us-ascii?Q?N5pthdWboTkb2GJ/569eOtJoPg9E+qMToNy7BxvO0yiDRr0WRqqnRjkVB17p?=
 =?us-ascii?Q?cDkuXV7zV0SucuTAudrYObw6+Do5DdZXMicBOVTWVtz0juoGRB4dFNK79BZ7?=
 =?us-ascii?Q?0651L6DYeimp8akdpEsvpFj4Fm+NH/9IWLgJh4g+9hXCb3+rCk7nEaHtSUXr?=
 =?us-ascii?Q?WS/pU2SgbleQP/i0HGnCgBXrIT1WXuhg1CKTFPaXR6d94OFQsJ/tl6RmZ0ok?=
 =?us-ascii?Q?W+XDiIqwMFriyxk54EWoFvBo8cL470u7DQVvLKXaTCDuPRzxsUXR+tm3Kr1A?=
 =?us-ascii?Q?YjTQvW3olWu9lkr8WAWM0UMJXaUTLOgtuMJgptP4vjJYyG9CpC1fF1FUGUKx?=
 =?us-ascii?Q?m3I1Eq7Ae3CRQ7uoxYrJh7LxnDZKxTs+bPrSlZGyOwSgEpncHThr+oMrhwOo?=
 =?us-ascii?Q?oj7PieIGFy21QiCLRqW92CfB6TKSJINdXsxWQfD4pUMDAzghZ837qKDTiuNP?=
 =?us-ascii?Q?VPbqql3nQjk4AflbrPA43Cgz4fcsJ08h5QESAO4PLZiYRz5DVtyFOXIX6Fxb?=
 =?us-ascii?Q?+9BbOKVlnA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 75ffdc43-1002-414b-5d65-08d9e7388f8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 17:13:56.1667
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 gr2yWGRbuGrZkN/b78Y9sVtqAkJD3KWyFnTazaGYgzNZk+crBnm4KhVWoFHZ7N5iBHR4w1g0wrw/4XDymkFlgK5ooM7ZcrSzxsKBMvu6bPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3649
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Feb 2022 17:14:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56061

Hello together,

I can "fix" the bug by switching from gnutls to openssl:

PACKAGECONFIG:remove =3D "gnutls"
PACKAGECONFIG:append =3D " openssl"

Can anyone explain this?
What exactly does the change to openssl mean?

Many greetings,
Matthias

