Return-Path: <kumar.manu@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C7ABE77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 10:05:27 +0000 (UTC)
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (APC01-TYZ-obe.outbound.protection.outlook.com [40.107.117.69])
 by mx.groups.io with SMTP id smtpd.web10.17138.1736244319196593654
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 02:05:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=G8xHrzWb;
 spf=pass (domain: siemens.com, ip: 40.107.117.69, mailfrom: kumar.manu@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GSlPkeCSotSfD4gUYpWc/Bjt1inZ8cLzSnuegyy647PTYsel7oH+xEcA9NY2tnvjJnKrv9EcJfGzLPqHEv1Lc6G6Lx6z41eQrt9pmkgGWfEWZZn6Pu7W0i7Nb39wLaUYKdYuGz+9SjWFX6dkVaE4FB5ZKGuZIq86+kESn0K79UWxKXgHr5M+ZY+3ILtmbLpDgzQ4vs4f3qL0TfEoWtSwvzBJvTpKutgBM0wUr0H/V16i6ZbSS2J6FRQCTw5GzR96KHCmkd9Y8YxEWNzIgQCA+BKBqYL4StooEtnpMIJbZ7OhwMNT/XA16tFnpduQyStkLOvzC8+T66+xB5czKflU+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vv7ods98NeyUg1MbWXlUSYvVI/OHtUgbKBKqh0hXKKY=;
 b=TgyHpgc/TOQBHkkClewwqns0+/HBnepxMdAH/yw/NqyUx9dH9prxxKmyTkYU2Aco4/TKyQH+8WMM6pmguorCJvnMKLSDI0sHRz5joZcwNFzTnybbQHtcBxkkxg3lWZZ7wIMECpWvoJIpXE8d9U+q2hz9PZ85cbl4NPhqwAaKxyNoy+cKD/2D5G5F17jMI7SLqyToqvncmDP7CcUk9I55V0UvlPt0nJgV1DunM8HR6CnxdjaAJDqiWULjQWbzrJQWF3pdsU/x4+TUX7TBvUdGlgz2LoX+I1m9opaAtrriM57AjMUCUqI7FnxtmDNyYWNl3+7TjxJfdMFGH0m5D25uTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vv7ods98NeyUg1MbWXlUSYvVI/OHtUgbKBKqh0hXKKY=;
 b=G8xHrzWbj8xDfDYaYrXD0lLfwO7X34ylEgUdiRZ+rGoG/nYoltbfWgsn5si/CU2tsxtnjtPdSEkKkPWXftS/POTp3VCoHUCYuoPpvY8IgLSKRspmbh3864MuQofYFW2fFdZA16tJL4NEldTXQcpyx8alrsgWub2SdZTAmahhLX3kLh53FiUMujJW8fukxd1DgI4NTGq85tnzjGDQsZx+LJK2MXS5hUROMT6C/AtSFjps8phs2m4dCAtWmYgGQexOwEQlUkBYlXKlQzlXQWeMzH/E6j8GTzVCKcrG/DI16DSXqNeQ0qnvIol7H2/TnI44r4/hMaM+ggqBsIeQY9DtOg==
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com (2603:1096:400:1f7::12)
 by TYZPR06MB7075.apcprd06.prod.outlook.com (2603:1096:405:40::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.9; Tue, 7 Jan
 2025 10:05:13 +0000
Received: from TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318]) by TYZPR06MB5178.apcprd06.prod.outlook.com
 ([fe80::f6de:c016:c33a:318%6]) with mapi id 15.20.8335.007; Tue, 7 Jan 2025
 10:05:13 +0000
From: "Kumar, Manu" <kumar.manu@siemens.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Topic: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
Thread-Index: 
 Adtf6VoFMsgJcOJER+q6cre+/gzlBwAPQLMAAATTiOYABKyjAAAYT/rAAAgPmoAABVvkoAABVCOA
Date: Tue, 7 Jan 2025 10:05:13 +0000
Message-ID: 
 <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
References: 
 <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
 <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
 <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
In-Reply-To: 
 <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=2bafe119-c64f-44c2-b705-0c615e6acc5c;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-01-07T09:05:27Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR06MB5178:EE_|TYZPR06MB7075:EE_
x-ms-office365-filtering-correlation-id: 238fae2b-485e-46da-4e72-08dd2f02c760
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?uUo38KR78E3N2Ny2w0Z+Qu2YxyTqztwcjkG+xzFb2o/eTGKI+ciU/ZDoTqzv?=
 =?us-ascii?Q?J2BTWrjLg4gYKHp5/R0FIlTuacX+9PG7DvFRoP9SShr5P8YMUEmPshfIG5wX?=
 =?us-ascii?Q?m4tofATTVVB03F5frYnOjy9K+aoTEuzF4atmJfEm6pZhB2fMUlzivu7Mxq/h?=
 =?us-ascii?Q?AfB02F91fEiwVD6QEJX2ZJ/r5m5UscG5e04ek7fvJeEUXPOga0F+xxHwj7XN?=
 =?us-ascii?Q?8Nuts2naVIrLiPa13FnZxrvnZKEZZUZ5gfTtu7j8vkiO1j6ahSkEEZEFgR3Q?=
 =?us-ascii?Q?6R8oUxrtg/AnMgn3sDAkMxP5iJMgxNCckVQWmrXFEkzK7GKUizv/2bqYdPMN?=
 =?us-ascii?Q?Enot4T3ZTQ7p/Tdd1Ko/GEughf3AhnfmEIvkE5YBcjYjs6OerCfq6IJTbSbi?=
 =?us-ascii?Q?qseKhPLXYnXIwujYdFz/IloInZkvz+M1RQzL0Sl1JESoMjVpjwCDMSZfejqx?=
 =?us-ascii?Q?7II4czQ+PMgakHgqanXMHiYa5uLSGOezP9HFXdTi/KsLOBs34HAQGn4+342Y?=
 =?us-ascii?Q?+LodcxGJqtGu63WZCdMl+2uqE+hzLPJBC9Z8FlfBhmk8/P7xLnAyIiUCmqRE?=
 =?us-ascii?Q?IdSJOqtQqeumEyQqhkprWkoq+qryA3y8Nv7kuez0qrkf55UfV0Jzwr8sHt6u?=
 =?us-ascii?Q?pXN1WexNgC6Emuzy3VrBKM+E+EZIbPWSoKhzLsE1+aB00wfgMqLXOH6tUXpX?=
 =?us-ascii?Q?tI9Xc99+cUv9J8nKFE5mkt0fW9Js8T0VeXupjlQ+6YcvCLEHbL4w47uK+Df/?=
 =?us-ascii?Q?zf9EVqKuLZCHqpkwNAY0lMRfhPNZzgKUT1+gSh/V9+EC+jj0ceTvKZC6iGit?=
 =?us-ascii?Q?8XPtJQflFeGV8EXRDU5Xzwiu7smAq+/G/GV9zFuXJVFLNAFkT+qKr6emC09k?=
 =?us-ascii?Q?CkAXeSOvOIG/c6s0N9KH8hXOPZohujB5Q+ozgvqdI9bujdgWS1BR6VX3i7AB?=
 =?us-ascii?Q?XWbAIDIUMu1rDuwGuFv9932+sH9jSvqLvwcDKXZUu6OOJ6Q2e826iTQu5JNa?=
 =?us-ascii?Q?gR3FzWB9N1srAg3+c3wakOAp4OGQ8PmuACzZXPJvoYuyzL76GzRqB8wqm1hU?=
 =?us-ascii?Q?i9jGVRIDDh0KzUYMyThuHVyROLbMjHgQWTkPTLCUli+GiQVoL2SGyP6UPjAm?=
 =?us-ascii?Q?TwVFtw5YXtmZbjLG0Plu6JcvULbi7goojt6Dex2ym9ZCW/lM9cbDWawigqvC?=
 =?us-ascii?Q?IdOKm18zF5DEmgyFfmI6o8z7e8+lGkkXhmdtpSwUQyDh76o3mkMX90bM2ZSj?=
 =?us-ascii?Q?hT1vWrChXKiJM4bU8geWEsupnyDfebyLCs2OkU5UaplYjryTJWZ8UTk+EYC9?=
 =?us-ascii?Q?Ur4zXGLbWgfgkID30xg7wMyAZaATWb7nyNMnlEr5p7RlDZecL6+cjeF6Unwe?=
 =?us-ascii?Q?rYPcN9XiurjLgZDXmYTONOANwrHWyrutXsRzKwfU8VYSJyHd3w=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR06MB5178.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?P49VN6sSAEj1NL0cQlBhcZ9YZRznWbQsMryI4UeJekUdeBwO7NTIXDp2bd02?=
 =?us-ascii?Q?Y8tzaCIMXB4jP8qNfIRbWWko/g4nW6T4wDMJsrrvk9U/TC6gdHsNdDlqXpA+?=
 =?us-ascii?Q?93FqiClE+p/9wKg273X6S9VyWX3kVb2SwJ7UFBt/dBsIbPr0uIFwx4s/UUBt?=
 =?us-ascii?Q?RsnDAcmVJT/3OpxQIgTtzWM3Uz4GTwRt+WYyBvpJyVvq0yKUU+nPRgCQ1sPu?=
 =?us-ascii?Q?M88u4HDI/hPILCijqz6ntaCxed9cLrsC18D0KADTokEpJ0iSEQTTdTw+qRSV?=
 =?us-ascii?Q?dCO3nQmEiddVA7cuomHWNzuAHaYw11E+YbJYozGXt02NZSBjtrbA69KaxJ0m?=
 =?us-ascii?Q?Z+iRgNSsKS1ielqlzLfYM48NxJfywnTGBqB802H4n4/cd0LSvCuKMEbyQLPT?=
 =?us-ascii?Q?QthwkmkU/tivS0EIWJebwB30TTndB7frdO1ycGp6AUe6Hix5g0/2ObKmbZ+3?=
 =?us-ascii?Q?sehbZM8l5dCmHP38UoKprA6ee2UP/8lhmRBh63L1vV57NMGZfpe91SsPIY9t?=
 =?us-ascii?Q?yorxHMj2CNoMKhgAUwjhIayzMr7VUjGxlgHohd+9p9P3Fhc7D3jj5TRK6gsx?=
 =?us-ascii?Q?wIO4+p9zcFaUpypOQb6PH9yUHF2e4zcq6D2bW1ThW3CE0+4Vzn0o4wOk9Nyx?=
 =?us-ascii?Q?3FXPAqGyZSHE42jt/7aOqlREdVdD7CD14AYWheoOMYmKItli1Yb68B/WxnYC?=
 =?us-ascii?Q?e19RG4KNdifL9jooiHvcnDWbpx0wUoZyX2oEl5vbUQox0IggKM5q5fJ7OPn5?=
 =?us-ascii?Q?kORdMosGPJkHs3+j6MGa4e8UHFdskYmM8V0cgGJfVAN5pgLk+NwCF4f9+dJT?=
 =?us-ascii?Q?8k/03Q9jDrB4Y0WTuXSZ/N1Xt7fDSq3V8vhxPtqEO5HnctCouEiyn8oj1UdW?=
 =?us-ascii?Q?khgbkqOY+kL2NORCFu+Hf6TbIFESDxujIShyUPBwfA6v7R0JGmblwA2TCD4C?=
 =?us-ascii?Q?jYjnZvS4nxyxnV2mk3c3aGae3+HyJF4ZutA7IvdX8lLU5gSue1/+xH1DFw15?=
 =?us-ascii?Q?QvYCfsea9AS5bNYLNbS85S3G6Tyd6MnhSXMg2Hm+Z4mGhtx9D/9BYMIadw0Z?=
 =?us-ascii?Q?0ShWDqIqhJVFKHsvyZ/lI0KxQ6LlH2dZ7Ce1JGYWgGq+kx2GWP6pptgRkGh+?=
 =?us-ascii?Q?golN+GGvYG4Du7uzXwSL/g4SlXVhFdtmhEqL8zcnJBGtcb8WUqHmRgFJrkW0?=
 =?us-ascii?Q?5Tllcz8Qe5Qcx1ayf+k9f0+0eKzOL5LAGR+WKcuwsL0mJVBJGnEDAwac/trG?=
 =?us-ascii?Q?QE8wGsYrc+87PJMpkI62676S7pBdx1iiux5t5Q7i5ir45G+l8KPgrqN48sDO?=
 =?us-ascii?Q?l56MVfHQxMg6EzMo1uRumrWchnO5Jv0fPZm/Nor51A/lexUwISqcHmECZdyb?=
 =?us-ascii?Q?uCEmUnJ/+zaEzGepEa6mO1Pvae4yNHVQkCHD8i3LNgO+VMYWYS15UAun8tSX?=
 =?us-ascii?Q?Me9Jj4smQksQ20C1wmoLgzrBK2v4hWrHNQYUI05KZxslR+cO+928fWFIZQ6L?=
 =?us-ascii?Q?nkTysLPiHR4YEG5TaNFfkcwsiIOjzA17SkUiHHIWT2yuL3GSz/wY7++X26T/?=
 =?us-ascii?Q?tnB5WBuXQWiOGI0uKePWEfhl4UARAfP8e6UpDrgk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR06MB5178.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 238fae2b-485e-46da-4e72-08dd2f02c760
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 10:05:13.7715
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fkBXBpouASAC1G5B3Hoqtl7G2Y1oBrEyqDHv+2Giug7ogc2+Tav6pebNbxFYVhb3Kxt7seR/RcOFqLdb0iLvTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB7075
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 10:05:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64508

reason behind ask this question is.. in earlier tisdk all the modules were =
there in "/usr/lib" as when we start lightpd service(which was there in (/e=
tc/init.d) it will check modules in "/usr/lib". in the latest tisdk also if=
 I run "systemctl start lighttpd" looks like it is searching "/usr/lib"



-----Original Message-----
From: Kumar, Manu (FT D IN PAMC MI EMB FW)
Sent: Tuesday, January 7, 2025 2:37 PM
To: Gyorgy Sarvari <skandigraun@gmail.com>; yocto@lists.yoctoproject.org
Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not c=
opying

Ok , I will try and let you know !!

But how can I make all the modules to be present inside "/usr/lib" instead =
of "/usr/lib/lighttpd" ?

Regards
Manu

-----Original Message-----
From: Gyorgy Sarvari <skandigraun@gmail.com>
Sent: Tuesday, January 7, 2025 12:02 PM
To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>; yocto@li=
sts.yoctoproject.org
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not c=
opying

On 07.01.25 06:41, Kumar, Manu wrote:
> RDEPENDS_${PN} +=3D " lighttpd-module-cgi \
>                    lighttpd-module-openssl \
>                    lighttpd-module-redirect \
>                    lighttpd-module-setenv \
>                    lighttpd-module-auth \
>                    lighttpd-module-authn-file \
>                    lighttpd-module-secdownload"

Right - the issue lies here (at least one of them). Change the underscore t=
o a colon:

RDEPENDS:${PN} +=3D "..."

This syntax has changed in Honister release, and the old underscore syntax =
isn't valid in Kirkstone anymore.

When doing migration between releases, it is recommended to read through th=
e migration guides of all the skipped releases:
https://docs.yoctoproject.org/dev/migration-guides/


