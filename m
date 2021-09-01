Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.81])
 by mx.groups.io with SMTP id smtpd.web08.6082.1630492422180324849
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Sep 2021 03:33:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=eD/zkn2m;
 spf=pass (domain: optimeas.de, ip: 40.107.21.81, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JYENwJRz2Wo9nDz42u/D9leeMJWU03fZBF/SkcgTjaX+SZfdL++wjabCxC7elsscp5GyT7VsBut3QTKE+d1F5joV+7XiHtshZaSCTyhHv91AaaWDZv7k6SXQYlV4TbvEBNUZHZKjgffrpub9Hd4hqF3WeXqyi/AO6dMvaqABQfmmVVCKlnrtMq9BeAtzFAmCFibzS8jkcfXza5ZM7CiatFDdTsuzosMpI++VW41hEn2/KW9ehUF5+q88yPYC82PKJ+iEcDtMla15Q+sfBixJamXbNgtWQxfk7o1kvD+XF+p7FdpQkTvTPEJW7yo7j6an4gFHYQhM1gAqubQrR/uyqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=yakIDDx5r7rh9udRGxGBIVCCFXbutUB3GEvzLqy86nQ=;
 b=cF8wMExDfF4FF/N7uiWtuODjb6mWkvmEPADx+BM7pwVkNgkOPU8sjDXEAAPOypeXsxqYn9laBWdEPNG8YmtNP3gQSJhzO3NLk1s6ME55mLnMKfyJ8VifxZJ303Or/IOxH+IPcEppV/Z/znpuYTrm9vuVQ/ZuySUcWy+kVqT91qZcYGWYH+T8ImWySkqtzbJ9NzNAsjj8o4Iu/fqGKyqfSLf50gsLweLWuSMfghYVdUc+AKfSzTVf2MR+XJkt5CjDdWZMVCAnfG+H0KArC9fsaPkriwCBN1wpY3ERmIteqLklsZcbD72aQsBh49DHBYpJsZlYHM7gIFoT6QjFMS4VTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yakIDDx5r7rh9udRGxGBIVCCFXbutUB3GEvzLqy86nQ=;
 b=eD/zkn2mGZv9zDrtS/K8ItGudLKOB695GmfTKlYH/NnlLLnNt6B7djYFTm0HyYc7Wd6zQYnF85g644A9G1EwaIXHEtE8F3HpgKNt//3hex+BboE3kwbMUIK+ATem5/bJUztzybn04GOERafuZvegwJnQ4I2sFZ6VlCXocg6FUy8=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM9PR10MB4436.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:271::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Wed, 1 Sep
 2021 10:33:38 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54%6]) with mapi id 15.20.4478.019; Wed, 1 Sep 2021
 10:33:38 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: gpsd [version 3.23; master branch]: Is it possible to include / enable ubxtool?
Thread-Topic: gpsd [version 3.23; master branch]: Is it possible to include /
 enable ubxtool?
Thread-Index: AdefHM6eXOO8G8BCSvGxUhhAKYo25g==
Date: Wed, 1 Sep 2021 10:33:38 +0000
Message-ID: 
 <AM0PR10MB310701696E98C78D98D5F3AE99CD9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40484140-cace-47b2-6e47-08d96d33f602
x-ms-traffictypediagnostic: AM9PR10MB4436:
x-microsoft-antispam-prvs: 
 <AM9PR10MB4436FABF00A9EE1F0147CB8A99CD9@AM9PR10MB4436.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KC7sGDLyRLt8JkY3lOdLSsyxWzNtguzlaZm4CeOuRvUHurBT2glPA33G+Tzkho0EPjOHHsYa9nBhTVsLn34LWmkTdsoXD9tDuR60zKez/gXKchYixs0xSN5hgjvYO/46oQjzVhBdjBtMedbrdQ+GRBmXvo/FLlOKoKRFIP0oxk+0eIz12tlaqsobyr87bfDLd86MRbQC3Cw1DXfV7mXRzvPi2jx7Cd7ZmGdxc/UPtv3uW6piQe5PcK76+BvfE4/fqgPOTtAjkWIRsX4nMA9YRUcdRV9EoP4iBvW3E5Jf8fGrWXQ35C8M5mQcvaz6V/6JVmbU+uD3ZDeDTq1OQo+uIq8qFu4PO2hdcjR3TLbrjKfNY3pbQy+vMvBSqrAz/T9DSfTjYdgDT5Bu5x6ihTUhuqWGSMZ0hIRCHou0GkBQxfXEAlXjgt1gH3KPGpkinXHAK53flDddNTKsbYZexMwaxOVJU0Zm3zMSIMinDc+G0oydxdymDFhjwFPn9ZPtaDacb07x2kG1S6Xxv+4aExBQsqk5si4hLhMDZCwIRHratlwuOklh3KLnL33QysBSDrqTByPid38KACGL2LquQNmT1V9f6M/KuIVzjNb3Kvgmx8MaYUeqmxtpZplzTk95AAumZlbazyzbpkjbILoTm/CJkTkRBfysRnThTxFaOUJ3fSIU63TbP9uTc8cLGOmF1UktH6wmvNeUA63ULqUjAZkO8w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(376002)(346002)(136003)(396003)(39830400003)(366004)(2906002)(508600001)(5660300002)(71200400001)(122000001)(6916009)(38100700002)(8676002)(86362001)(38070700005)(52536014)(9686003)(44832011)(55016002)(66946007)(66446008)(64756008)(33656002)(66556008)(66476007)(8936002)(76116006)(558084003)(316002)(186003)(6506007)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?aZmNDetOx4vYluoxp46Tts3pvVfqQ313KyhmDhZgX3HMYcnHUh4Tigsur1+w?=
 =?us-ascii?Q?Uo5Q4HEY+uJzp1M0KCNNWOJA5Umv0afWc1/gUYvTjna+/zZD+9JX+BoHiuit?=
 =?us-ascii?Q?b5LpHUJlp1iHsmFl1kGvw66jqG3tVhce+2hrFhZ/ILs8IF1j3UwOM5UmwNO5?=
 =?us-ascii?Q?t84PRiHk/9XQgzOq2lDaX/LJzcX8HHOlhYf1qwnHjnXArB5U51s5CIK/zBur?=
 =?us-ascii?Q?spMUFZFrUkAp1YrIoUEFHkLCpVg8nmh6zff6I9Hiki8orgDPDfTSbN+KQha3?=
 =?us-ascii?Q?4NlSUl4hybH03UbSUISNztnYQG/P318V7qp8z4tqq63v9tmdtqVZ2SdKw1o9?=
 =?us-ascii?Q?VooxlFQr4I5RBDbu8IJKIro2NQAu6NS6L8fnlxclw+iY320Fh2dDSE/3Fq7b?=
 =?us-ascii?Q?rEo+PZEibhQlh93EkxcSh5svKn5q3XS+LRMvddFR1I5VM6lOygbee3YsT7DJ?=
 =?us-ascii?Q?2g37lgW16E3a9OgVCod/hreAC+zP3eE0tdWDi+s+iY9AozrZP2taW55z/NlS?=
 =?us-ascii?Q?/niofEG54nvUbmkxzcjQvzZPue38+l1tXx51jteQnCxVemU4vbLo8BoqjTt/?=
 =?us-ascii?Q?KKlvajIEUAwVJuplV74w7xE5z42cELHcP2T6JY/BHdMxyMW5a4Wue4RO7YRF?=
 =?us-ascii?Q?efX7b8HvI6D71YH1BJCdJLh81zhxxbj1qitLgaA8VIlooaS1YO2J33Ma71Dn?=
 =?us-ascii?Q?YO8UMD1dbTO8hGNmdabLCEK8AnB76cIH2zrfZy0/X6VqIRv/FQ+UcuyK9O30?=
 =?us-ascii?Q?ovtQcW9Vgb/X/e3ZpPSomzBFUlgn09Kuc+Er9RGlZ9YgfGNF6JMEznui1Gvi?=
 =?us-ascii?Q?gmjnuLKwnF2E1rxGGnTeT1Yk49Y7a5qSVfQoUip3E2GJzh5Rd8g3IQRbcxpg?=
 =?us-ascii?Q?/DaqUHquroRjBW94fBHjn+Ejq7ij6r/zKOX9Hyt159BI9cmzYAnpvjfdN4yM?=
 =?us-ascii?Q?XQFYLMychSwlBZ7+E9J+lP/aI8CtInDyZzYtvWGgec+E3vGiYldaDKnDb7XW?=
 =?us-ascii?Q?jV1L4QjuNA5JIAztGyWIhJEQnnCL/l+tL+gRHJYDTZr8LlWXjNoKWBLFWqqW?=
 =?us-ascii?Q?6+05ewB+2zqtPfH0ahSlOjc04KTMxWXsUdVKU2g9dx5coYQs+GzYv+ei51Fh?=
 =?us-ascii?Q?PeqMm/g/EizcFbNb7FDRKWu+l/1LbBM8vCCOaRxzBWnCUBC+vkPr/vtRt99K?=
 =?us-ascii?Q?PDD3TK38J1hdqnkomPUZrPu6o/jG45/S956etZEjKRzPNXeKE1bAckeeR505?=
 =?us-ascii?Q?Err7VUeX743vek/H+ACFunx1vlrroH712J0mqcsVM53VPPyrmZjgjo6NW/pT?=
 =?us-ascii?Q?JMUioL7fC153tf9zTgHlTvhwtVXebCoC5/wuL4031Aw7yLMkNDjzhd+aVv/3?=
 =?us-ascii?Q?DjGDRiNHj4oalUdtHIx9HJUti5IV?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 40484140-cace-47b2-6e47-08d96d33f602
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2021 10:33:38.7050
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iaUg75km4sbxAQUHaCmQ4qYahjsvTlPuPg2cZVEeaM6CG+KVAvN1bsI0KCkjjpMnXje+d5KM46ZwMlwrrXvhR1tIOlBxLWrRvv5EsgeSkzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4436
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

is it somehow possible to add the ubxtool in the gpsd-utils package?

(I use the current master branch)

Best regards,
Matthias

