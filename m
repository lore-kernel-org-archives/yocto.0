Return-Path: <john.klug@multitech.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92CFC4332F
	for <webhook@archiver.kernel.org>; Fri,  4 Nov 2022 22:17:58 +0000 (UTC)
Received: from mail2.multitech.com (mail2.multitech.com [65.126.90.11])
 by mx.groups.io with SMTP id smtpd.web10.567.1667600274100282233
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Nov 2022 15:17:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@multitechsystems.onmicrosoft.com header.s=selector1-multitechsystems-onmicrosoft-com header.b=Z33QI+wP;
 spf=pass (domain: multitech.com, ip: 65.126.90.11, mailfrom: john.klug@multitech.com)
Received: from mail2.multitech.com (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 779CF586FED_3658F91B
	for <yocto@lists.yoctoproject.org>; Fri,  4 Nov 2022 22:17:53 +0000 (GMT)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by mail2.multitech.com (Sophos Email Appliance) with ESMTPS id 026F358663F_3658F91F
	for <yocto@lists.yoctoproject.org>; Fri,  4 Nov 2022 22:17:53 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eR46rmTxqYgKMFn+oY3rnjiXvyT3vR/3JGZjPVKOVqkn986Gyld5ivBZifEXrflp0tvwR6mp2V9WQreCnk4zNwxfbJVrL/1cLvAsgBhsplu2++UuUwBLIl/PxC6tl229qTq8kDbCIBZuZ1V6GRyThoQwj5Fl+AxDkRXBkOQlka5tlSg2gOSqBoAO3swAc5Kri4u1R2ggyGOI9Fvx7B83R4Ea1s6WehfLHX/ikGuCq6U2vFeRqPAhaVj02AXDAB86Qf5qmxZ7N7EwS+No4gD6n7iIBfFad7pZI/NewIvbcud4pAs4d7D3eVfI1GP6gGzLpodIxZF5xmOxho9VzhlxCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ofPH+s6qLWWcq3jfTI8fOpOBAWN7tFZFAncswkarRA4=;
 b=glChUl8kzxPhmjrkIoaBRuvziMFwoYxLHnSHsiNKurPGxC9DmBmbgXzU058KI9R1Y6K4xzy0bCYXZTvzo6u5PEU6FoU6jrcA7oz2U/TgPass+VW/eHZGrFfCeGWxJJQ67mOsZe+ut+CHmzYOfr/27Dc46hJBZ/sQ8Bhp4OSl4MOyJRkSY1k1LN+q20LuBVULY+5Jz2pnTtidvmzIQtR89sLGSPIo7JqI4UIzdmpltPVsGXMOuHyeB9G5rbI+q22DD3qI5jOt2Rqi+UG32WML8NC4dCdUtvscuzKTPghGGLKGv5kMegUv4/ycUO6gX2FQEB570zxPYhOTqsf2YIPEcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=multitech.com; dmarc=pass action=none
 header.from=multitech.com; dkim=pass header.d=multitech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=multitechsystems.onmicrosoft.com;
 s=selector1-multitechsystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ofPH+s6qLWWcq3jfTI8fOpOBAWN7tFZFAncswkarRA4=;
 b=Z33QI+wPXi3/GWmLDfnHkdGF2WM4PuGxZ08WGnM3huPDvcNCUV9JiMb2uClp3E7LqD5UMkkzbY59vTTqL8YpOWIUANtFCWndN1e/aAzmtvSWDpixDd5BG0GBVBs7lKvLpE7XFRouKUkaoJVvg+Z131MN1JJoaZfI3z6Dn46RjxY=
Received: from DM8PR13MB5111.namprd13.prod.outlook.com (2603:10b6:8:10::21) by
 DM6PR13MB3723.namprd13.prod.outlook.com (2603:10b6:5:246::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.22; Fri, 4 Nov 2022 22:17:49 +0000
Received: from DM8PR13MB5111.namprd13.prod.outlook.com
 ([fe80::159b:bb02:ef3f:ff0e]) by DM8PR13MB5111.namprd13.prod.outlook.com
 ([fe80::159b:bb02:ef3f:ff0e%5]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 22:17:49 +0000
From: John Klug <John.Klug@multitech.com>
To: "\"yocto@lists.yoctoproject.org\"" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Python3 project without
 http://mail2.multitech.com:32224/?dmVyPTEuMDAxJiZjNWFjMTlhNjM2YTE2MGEzNj02MzY0RjFGRF83NDYyMl8yNjk5XzEmJmQ3MjcwZjg5YzhhYTU5Mz0yMzMzJiZ1cmw9c2V0dXAlMkVweQ==
Thread-Topic: [yocto] Python3 project without
 http://mail2.multitech.com:32224/?dmVyPTEuMDAxJiZjNWFjMTlhNjM2YTE2MGEzNj02MzY0RjFGRF83NDYyMl8yNjk5XzEmJmQ3MjcwZjg5YzhhYTU5Mz0yMzMzJiZ1cmw9c2V0dXAlMkVweQ==
Thread-Index: AQHY8D1eePkpNQ7XeUmdvq+3NMWN7q4vVFRs
Date: Fri, 4 Nov 2022 22:17:49 +0000
Message-ID: 
 <DM8PR13MB51116F3A2E0C875A3EE443CAFE3B9@DM8PR13MB5111.namprd13.prod.outlook.com>
References: 
 <DM8PR13MB5111D68232CC40829F86E9E6FE389@DM8PR13MB5111.namprd13.prod.outlook.com>
 <C76A0F05-A40C-435B-86B6-A10CB6FC5EF0@arm.com>
In-Reply-To: <C76A0F05-A40C-435B-86B6-A10CB6FC5EF0@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=multitech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR13MB5111:EE_|DM6PR13MB3723:EE_
x-ms-office365-filtering-correlation-id: 7a8d02a2-7aa0-4a9b-f638-08dabeb26891
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RIn9jZEZ9Sdez+CWQJQTsW/70xYqee1Jd8dFCOiOY1CyFudSfjZQj0i2XUbyej+h3WXS3RQvxVrdh51XSRzk679jLr8roU3CzdN3gQy+biruHiPU3+13spi5aOa+ve8MEsbQh8EXV2hJGM5auRV9es+jpkHDhDsua46k5qpYE+gyGSrdyR+r0xey13IzCtqo44HH5EygFq6pkOgsKxgsug4Tat1bv4o4r9OzGTuLIQz8sEaXINvZdLHKud2aBZjC/rCiDZBawQPMg0VeRX/QB9Hkj6Nm0lHfQ4Xvh6ZHI0PIBVE3Hb3V+LfXLzM3C4KU7Yrglr6RPPidDzKETEYsDDpMKzah9o2Zjw31m7Y41vmyQcUR61lzfTolQsllfZQ47GYa4rXff+0nsndIo3EJWstH+2TiJXcqlr4wcupCOQLAcgmae+3lHu6f9Y1hUy53Bq2rjD5/pzwqqSwamJydn/Mscu0tuKW3P6U0i+oo6WBwfT0u5Dge3hM4sT4TbRNeJnw7o5GLMj31WpnNYEn8Qax9Lm6fTMdli3YBafOUEVcfl34RuZ2AIxHdStwIdDg10oqLBMFgusCQDupm+zYzCCHAYy9h64oJ51nA4YxBhJNRlS1FV8KCo3q7n6TsbbCo77DwdRHqtueIxWYPSU0fU9MBBil6PmW0lC6HQK0QLTUTkktyose+tuv3Z89DDXnkEOzK/wQrXov9Yy3aw6Zy5NbglsXIvwHFAb6yrC3D+S2T8B5dLQY6SAC3hnxbCf4Bk3ANPJyW0Sn5jSSqege7KO2MhT4eyaWS5JamkDMY+l4yB7x3HUXOSGQDzDTGFNHFyre8LttNBbij7Y2VuZCbdUndi6Or5lRVvxiVGe7vbdI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR13MB5111.namprd13.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(6029001)(396003)(136003)(346002)(376002)(366004)(39840400004)(451199015)(55016003)(83380400001)(9686003)(966005)(478600001)(33656002)(186003)(2906002)(7696005)(26005)(6506007)(38070700005)(5660300002)(86362001)(52536014)(316002)(71200400001)(41300700001)(4744005)(6916009)(38100700002)(76116006)(122000001)(66476007)(66946007)(8676002)(8936002)(66446008)(64756008)(66556008)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?IIGrQqNokTTN8IXRvR1o7C0RCOoDtQwHfNmYAxqNLt/By0bIEKFgBz3Ztc?=
 =?iso-8859-1?Q?DaqhVYLQAnw5G9lehPDqKAaWzx28+td5y8k0mdaEg3MlR/eKSsRs7Ul3hY?=
 =?iso-8859-1?Q?9XkVOwTuCovjtN/0uuW0SAk6FRSTVFZhzofmmZCBFBtU7ydnTD7KJu9uyk?=
 =?iso-8859-1?Q?xYm9+KuaZ4YXLWIia7CT9l17ahL1sMU/r+HH6C7t1ZaItpyiy8yYDN/VuY?=
 =?iso-8859-1?Q?Yw89Egs0ybr8ED3y4rWxu8saP4pGq+ruWXjUZmDTGLbBl1qXLZ1BMpjt9G?=
 =?iso-8859-1?Q?revjbLjT7n9cvkqMboTTSDxbj4UjpxqMdAy8IYia36EXGQKf3SGCGo98XB?=
 =?iso-8859-1?Q?wddz6MnUnRQp3b+oKsJLzYijULnylhL2ZFgAOlcjmAF3aWNMEFENlvOGVk?=
 =?iso-8859-1?Q?m2QNNNqioZmwves0Q92BjaUAhL8G0ukjvK4SzJYk+TGyGVg51TXKzzrQAL?=
 =?iso-8859-1?Q?W/qvAWRfBrd8N8mCatdpFQ1crNUo+zAuMnh+FGpzpKlFoPmebdvkZTCXyI?=
 =?iso-8859-1?Q?MgBl0P3a9U4pLtwTpjq//pInm0CskdwYFM4wix8t1fy3CsxEOS5tv/VmP4?=
 =?iso-8859-1?Q?9pGN9sVwWg5vJb8XVerhq7zPycDtfoAzTGetGD+Ztr5y7C4lgZHIeAvh++?=
 =?iso-8859-1?Q?WVz4AHyd+mcV+pgs5WeqHx9dolzjzfqNEC5ph4r0d9qbPoHv8eC8NUpcVE?=
 =?iso-8859-1?Q?Ernnlphi4gaXCfRSVD1w+z7jLqwq+mxEjwai/jYx7qgQs1TBheGuATH7pN?=
 =?iso-8859-1?Q?9+hWvz40MWj9RJVd8mk2v+HlZ+zGoyJsKMvIM+gHU46bQJ+aQc3n/E7cA7?=
 =?iso-8859-1?Q?YYBY+eabRi3/NwDj2y/0ScofAPS981aoDzoaHpOImPZzl8row8uGzQieAp?=
 =?iso-8859-1?Q?DIG9e+AwefEU5tVnPle27Y6h0VsBS4jWTPrEKBnOab56XFP734ays2VXvR?=
 =?iso-8859-1?Q?ROs8p22cW/IBfwOSbI20f+yq4M2x5hfj0AC90tNa9fcRunoJcj/2LSYgKI?=
 =?iso-8859-1?Q?onwzAzL9JBBMHT7W6G2bssmvvmSGu+nDg722qy6diQRy4r5LAGdSiSR3rd?=
 =?iso-8859-1?Q?/yWTraFmzZ0wweZESN74dSA3avX8YfBfjQak87HZvDDaHfhZ0ogspAK12m?=
 =?iso-8859-1?Q?5hT+L0EPAOjnznrQv46rHRM/cpJlvJ8zpqP9wWvdSm1MpsO299f5KLBHzj?=
 =?iso-8859-1?Q?NLSQuoX2QzV2O3CAMJorVSZmjCgRRw8ESGVIkR8RHW+eFlvC5klICfJ9AR?=
 =?iso-8859-1?Q?OdqJ8ctwnfwoSLRCT43wdKistq0bCwho5bKfgZCmKbcq0BynV99wd81wEh?=
 =?iso-8859-1?Q?JbacEiCAQcs4c70Z9uhnwmXlvwIbMdpQG0m7fbYXdwwNn0cwFAKyRw2U2A?=
 =?iso-8859-1?Q?06JAJbzcUO6JQODHhC75tgu1ZqRBjRX8QFw4DaTBKaVaWafFqA36cxZITQ?=
 =?iso-8859-1?Q?DKk3InGBzKNcqA6dfE48w1oTAFgoEgdYwtKvNAtibXRu6rBJrcPwEvCh3H?=
 =?iso-8859-1?Q?5uHWRITvJSjs6rsLsE+p1xjrm02Gzjq3QSdZrbxoWpsRYYkptbZuex/QLa?=
 =?iso-8859-1?Q?O9LEeBIUb/HQsky8XUWUxdyePFMyO0DI09DnJwW+Bc7tWfTMoI6Iu4JA3T?=
 =?iso-8859-1?Q?nbVl05NyKetIk=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: multitech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR13MB5111.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a8d02a2-7aa0-4a9b-f638-08dabeb26891
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2022 22:17:49.3730
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f802e804-804f-4d1e-b625-870b4d57fd00
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RihlFJPpw2C9ztkOXHQ3R8MrxVupNSxLJY8oX7E5+CCVP5rsbQKIGBEyduyNumt8ngFtIp90tJNNS5Bvy4dYGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB3723
X-SASI-RCODE: 200
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 22:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58491

What I did to solve this was to grab the setup.py from where it was removed=
:=0A=
=0A=
    https://github.com/pyhys/minimalmodbus/blob/b40e2946cd33684281dbf34ae1a=
8a4290cded649/setup.py=0A=
=0A=
Then I updated it with the changes to setup.cfg (which disallowed old level=
s of Python).=0A=
=0A=
By using this setup.py instead of my trivial setup.py my recipe worked just=
 fine, and no longer attempted to do "import serial" which makes no sense o=
n the build machine.=0A=
=0A=
John Klug=0A=

