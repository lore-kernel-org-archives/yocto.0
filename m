Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.92.89.34])
 by mx.groups.io with SMTP id smtpd.web08.8486.1605372519779397996
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 08:48:40 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=ZLE7yu3R;
 spf=pass (domain: outlook.com, ip: 40.92.89.34, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=la4gNbAgueQPTTR8r5XgGlJOeBnLvxvGsIWjR6xgAshAZU2Mj+GIPlLVxk1a6NrYRMuQokani5tawiGPG9zJPApr8KYku/EC8+HtW/LVvt/KqKlLRe1rL9jrLSKyiKLaQUkwp6RwF0XXotdgC9WXIx6rgTQIxe5h36qvbCxVa79p+LMLRYMZXqndd/i0Jk2Y/nz6q1EtzCRlnb5Q4Un7sbDlzMvSfd2Lmtsgt/URJG7aqgFzzUYSuhNke79iw6/Xt/mm3I78QUENSgp3IW1MX8x9ibBJUHrD6RQzgIqwIM3Ov3IS3/inEuWngPyial8ud47TqRunIhqfF9OM+J4qjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtTxzkM4AtUYD5kLkz/+ys1K66FUGTZ2bt9CzhiUHS0=;
 b=LE0YMgx59b/zeWrcNxdTsUh4WIQdW4IAynIzV2+aDZjUaGiq5rj69G5xK1a4VXHTHOaQhypz3ePX+l/pK1oPPdh9SVF6MHDF6si6nOcmuIvuq1yCgj05bALzmozYZzOx1tCVVNiqfRRAa2vwO2wN51vTF/uDPS6jGSMwzwx3pDUyPQBScO6YI++3MO7zwHF2On3L+0PNRWc3P8IWMXO323MK1IGbKJq764bW9r9gc/0vQssWDpjdm/GnvMrZYIHhqM6X1kS/qqRUHJauOOyGZtkKtxLBNmdtAvIJPBpzce3diEGELErNMxXTAb9R/plAuGP144dB6fPaTARvEktkGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtTxzkM4AtUYD5kLkz/+ys1K66FUGTZ2bt9CzhiUHS0=;
 b=ZLE7yu3RbqtXozs0oPzomFsCsLkpg8H6X8m780dt/Ecty58AzqlPQiu4G8gLrA0YbDgsIqvD95kZLpQV9/c2U7JZAEXBzWnqH9AX0Z2F0KbrckxoOnAa8LIc16rSTWkp7h6S0Q3c4uWQupVOuqO/o7WNdZ0K5uPqpNZMO8ER/yx0qIMtB9KRfG/5NpBqIg2H3Oa28JHM+uYKK97BJF9sG9ZbdpWDNo007UnazasyAHdXRzWCg+lnqOzRzAJV4Mxjn7CKF4aaeQ/uK7R48EFuDs+bawtffHr54929S+4ba/AUfU8J6urDSTu0kvwisAA0ltoZ9c6E1E0iQAesyU63PA==
Received: from VI1EUR05FT049.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc12::4f) by
 VI1EUR05HT016.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc12::449)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.22; Sat, 14 Nov
 2020 16:48:37 +0000
Received: from VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 (2a01:111:e400:fc12::50) by VI1EUR05FT049.mail.protection.outlook.com
 (2a01:111:e400:fc12::225) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.22 via Frontend
 Transport; Sat, 14 Nov 2020 16:48:37 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:F69C817F66A371DB24435DE394799947A7875AD85445B08A07225AE1A1AAB712;UpperCasedChecksum:E9AD1F377A5822B309FEDF1402B8BB908ED39E88AE8D1CFB7732610F4EBD9DE1;SizeAsReceived:8738;Count:47
Received: from VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 ([fe80::10f9:f756:6d75:96c3]) by VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 ([fe80::10f9:f756:6d75:96c3%6]) with mapi id 15.20.3564.025; Sat, 14 Nov 2020
 16:48:37 +0000
Subject: Re: [yocto] avahi-daemon.service - how to create custom .service file with different startup parameters
To: yocto@lists.yoctoproject.org, howard.egan@avid.com
References: <JQ7o.1605371337020273256.b06J@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <VI1PR01MB64624F8A19232D0B89A0EAF5A8E50@VI1PR01MB6462.eurprd01.prod.exchangelabs.com>
Date: Sat, 14 Nov 2020 17:48:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <JQ7o.1605371337020273256.b06J@lists.yoctoproject.org>
X-TMN: [5S5q9++pcZ1jpiC0zorK0P5INNetdqOK]
X-ClientProxiedBy: AM5PR0402CA0012.eurprd04.prod.outlook.com
 (2603:10a6:203:90::22) To VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:154::12)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <eafee27f-a8eb-6c93-6d02-f26045564ca0@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.82.164) by AM5PR0402CA0012.eurprd04.prod.outlook.com (2603:10a6:203:90::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25 via Frontend Transport; Sat, 14 Nov 2020 16:48:36 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 3b36c7f7-32e1-4d2e-32f5-08d888bd21b4
X-MS-TrafficTypeDiagnostic: VI1EUR05HT016:
X-MS-Exchange-MinimumUrlDomainAge: yoctoproject.org#3719
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0LR/TMFXNZeLDVZKubtEIvf8PNrNLq1cWj2UjZfL7E0sBQ2as7T6PX3oyQ0hXh//AVA+kjsdS17V+1yx6d1SppzTqsuoVdiOo9JUiUqcBOUHW5xSDJB6kv3BR9try8NsEoPOPorBy7Qv1E4sOTiDydRWHYt6u4otJU3+WWfCyDktSk6f3KdFYFfEbBFEsvg0YqF80nwQFTHwZ6BZNfxOqD+LoZusp9BK01TtHhoyY9wY+4K1z5lgVkPso6AOHkz1
X-MS-Exchange-AntiSpam-MessageData: 
	LwycURQptvNYf+8L9newGtMiFSY5Fb5/inqkVPpUyrfSFyhPAD01iWI4L2mMMZ73ZnBQ87jTWZotuBljeHHYXhJ2KFmWP+kKlmC6uwIJujRfwhKEFLTshWFCnXXDRbc+uEntbsX2rA7RpY/MPie8lQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b36c7f7-32e1-4d2e-32f5-08d888bd21b4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2020 16:48:37.1128
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR05FT049.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR05HT016
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I would recommend that you go for a systemd drop-in file [1].
That would be something like a small snippet placed to=20
/etc/systemd/system/avahi-daemon.service.d/override.conf

In that file place something like
[Service]
ExecStart=3D
ExecStart=3D<new command line with your custom options>

this way you don't need to alter the upstream recipe with weird sed=20
hacks or similar.

This drop-in file could be packaged by any recipe or bbappend.

[1] https://coreos.com/os/docs/latest/using-systemd-drop-in-units.html

On 14.11.20 17:28, Howard wrote:
> Hi:
>=20
> I've been digging through meta/recipes-connectivity trying to figure out=
=
=20
> how I can override the avahi-daemon startup parameters.=C2=A0=C2=A0 Howe=
ver I am=20
> not finding where the avahi-daemon.service file gets created, or if=20
> there is a way to pass in different parameters so that it gets created=
=20
> with my startup parameters.
>=20
> I need to start the daemon with the --no-chroot option in order for it=
=20
> to see a symlink to a file=C2=A0 /etc/avahi/services/MyAvahiService.serv=
ice=20
> in a writeable partition.
>=20
> Is there a clean way to do this or do I have to do the brute-force=20
> method of either killing it at runtime and restarting w/ --no-chroot, or=
=
=20
> doing a postinst step and paving over the original avahi-daemon.service=
=20
> file with my own?
>=20
> Thanks
>=20
> Howard
>=20
>=20
>=20
>=20
>=20
