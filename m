Received: from NAM04-MW2-obe.outbound.protection.outlook.com (NAM04-MW2-obe.outbound.protection.outlook.com [40.107.101.73])
 by mx.groups.io with SMTP id smtpd.web10.5590.1612613723669528176
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Feb 2021 04:15:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@missionsecure.com header.s=selector2 header.b=QjEzyO1n;
 spf=pass (domain: missionsecure.com, ip: 40.107.101.73, mailfrom: gary@missionsecure.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FVd2qPS4tS81J52aIs9WGok5DSHKPEPlpQkn7PuLNRrFQ+AaG3UntYj0ZEzVW/3z+1UgVpoeJZ2fxEt/xXbN+8vGoLaySIXSVkry2g1nBjs+1n1ufLf9oJYxPNLq4APNTRLoetHBa29guXzpWR2dgO06CKvHSUZo3F59pOw+l94HetAfrQFfXC+GgC7p0vz7dTHehOvxKNlz07QdQEMEmPDq2ErElr2e0e/iDe3mqhKbaphCklRefl19Hx4sCPCFmtnPxkLKNXma5U0E+CcCYvVAgT8qS62UaUY2f7SysEZiXwQYwGyz4cjTr7ym7GEDrIbbMYfTQ29RdL3kidm4Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=APUwzmHsgDLOZVxbnvxv8Vtvty9nYvEw7k3c9W72TRQ=;
 b=j9b3G3o8lSSN9MDzbm98EJNMWp0YREx4gQMZh/T33q3fiqsW6VzFJBebT6IgJynJvGqA4eYMQzE/9ufa2Apec/tJ+kVpu/a6k3APG6xRe/S/h0oz29z53HIBnKCLE7AqqNrNrD38HqYrDd9dLm6a6jmZFTpA4g8LiTZ9y2UcAfawE+5b0Ok5aGaNoY4FUnzXyklIP3Z05LKmOMAAtZx927kKP3wIlYx03cDyfB77klAblGzYoU53hpwuU6Y983vVvMH4jCCoGFEdB/Q+nmysEMfotBqjkybTc9w3QazBHiFvRRjEcocD7qnDFRdNY6F/Ck8MJRYivInBAID2gJqVew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=missionsecure.com; dmarc=pass action=none
 header.from=missionsecure.com; dkim=pass header.d=missionsecure.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=MissionSecure.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=APUwzmHsgDLOZVxbnvxv8Vtvty9nYvEw7k3c9W72TRQ=;
 b=QjEzyO1nToj3GlI5KipuGBYqWS+ZwQV/I7U/CBry/Xd62O61n+IO/K4P3BOufl1M/RJxHX3/AdSJqoZC3T7R62OJK+LUv7MgTg+wl5LoZj+ME1FqY9AFz0fyCfKLBPRY/GBg1PWvfOXlUiwnGnVb+5LG1YQuOH2PXBvX1jrW4U4=
Received: from BL0PR1701MB2531.namprd17.prod.outlook.com
 (2603:10b6:208:7b::13) by MN2PR17MB3520.namprd17.prod.outlook.com
 (2603:10b6:208:179::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.23; Sat, 6 Feb
 2021 12:15:20 +0000
Received: from BL0PR1701MB2531.namprd17.prod.outlook.com
 ([fe80::b581:3b05:ac25:9b69]) by BL0PR1701MB2531.namprd17.prod.outlook.com
 ([fe80::b581:3b05:ac25:9b69%6]) with mapi id 15.20.3805.028; Sat, 6 Feb 2021
 12:15:20 +0000
From: gary@missionsecure.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"gartnerd@gmail.com" <gartnerd@gmail.com>
Subject: Re: [yocto] devtool question/issue
Thread-Topic: [yocto] devtool question/issue
Thread-Index: AQHW/CRbpJtUhWvNYUmFtBvVkpTR66pLCnjU
Date: Sat, 6 Feb 2021 12:15:19 +0000
Message-ID: 
 <BL0PR1701MB253187BD8B139EE1B4EDCA7EC3B19@BL0PR1701MB2531.namprd17.prod.outlook.com>
References: 
 <CAMVSYA7KXo9ZwkZdTiUyVmcx+m-2cVCqbH8Oy48Qi+ry_ORv6w@mail.gmail.com>
In-Reply-To: 
 <CAMVSYA7KXo9ZwkZdTiUyVmcx+m-2cVCqbH8Oy48Qi+ry_ORv6w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=MissionSecure.com;
x-originating-ip: [2601:5c2:280:37c4:358a:67e8:c124:21c0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14ec9798-b449-4725-f25e-08d8ca98df2d
x-ms-traffictypediagnostic: MN2PR17MB3520:
x-microsoft-antispam-prvs: 
 <MN2PR17MB3520FA68372FE281C55BBBEEC3B19@MN2PR17MB3520.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NzQYNAC3ZA3/TFj0S1DQgso/+rGn9HP2Rsr+DX0SSIYqFWPOxdgjUy039dYuEj/qp+H9hhSEXLGr5RYgLw4/Fc1Dmy0kZ34oLxwuRFmuiRnOx5Zp4Blgrr+sK+jTSv2SrQ6+/2X7iu2blsr31b1aEG7UyTZ0m0OqYtL8gNV6CJRQbOFo3Z6mntp4cw0gmiv1CRnh2WMP/ADtTkkI2ZC/5IEgACMTZk+1ZHXVDFXhKMuAakswkBzQeP31COlqpr7hoKwmd6QqRcuNx/lhg6PvNW+hUU6inAPpHdOT+HkVYg9gvIlgWDg+pYTjcwNenDnAdJW89Puwi9J2e00pu7IDtH2A7pP7rKOia2b6rnJxOc4kyNSLZY10AAIf1OBSe+x2argQ3cAL608FrHjXOYa3MOw6niZ52mr3IP5jh0qEdpdVgzWpIQlVdpXp2niOoi+4wpTB9ke7KrB7i9O00OZIkVExGbm0ySWCuT3HHUl8FQufnAezJp9IBCvbjQqY919OZTNn3jhq7L0AyT6ckiJTaWKj55Gj+LJekIig6d9weRUO0bcHFyvJ150BnLzX3vLZoOdWzDHAK2wFHcfSP46q2arJjJ7hPw8uwnq69xFkBd9vR6XbvjEGWmkfw9mSQTTWs5KoW8y5aNfJxMOz7PmsBA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR1701MB2531.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(366004)(376002)(136003)(39830400003)(186003)(45080400002)(8936002)(86362001)(19627405001)(478600001)(9686003)(83380400001)(55016002)(6506007)(166002)(76116006)(7696005)(8676002)(2906002)(66476007)(71200400001)(316002)(52536014)(64756008)(66946007)(110136005)(66446008)(66556008)(966005)(5660300002)(33656002)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?+fRdmEyPsagpvA9dryEp3Y2sVw9D7aExSc2J3s9pf7haVT/ryc2eBv9B/z?=
 =?iso-8859-1?Q?xHz/MeriHSK5fJjZBr+gWVygGmufk7y4pYwjKjkqgrBbENu4SDAOa97fmJ?=
 =?iso-8859-1?Q?Up1yy1ykZlVk6TL+tPMnDtiPhg8cgA+mhGrntJAJ5fQRAAoRTL4rgaDoo/?=
 =?iso-8859-1?Q?HOblBaAQjS3l91B2amzcjfKVRE9w0ti5ynfSUbboQsHO8ScSZN4fjlAn5P?=
 =?iso-8859-1?Q?2XjhDR2hw6pteNSGD/eW+JouUURDBi+QZapgaH0++MwtPjmohBGLTqvLRX?=
 =?iso-8859-1?Q?YbFmCWK3zz8B8kH83B8lNT/LJo7AJYZfT9DtMYugics1SdEDKNI+zRc3Mc?=
 =?iso-8859-1?Q?WJh7mG+GKLFHJmbyV8umu89wGqLpfMfkVukPpZB2PXfcqADEiCSmNCmRn+?=
 =?iso-8859-1?Q?LuXNCPA5tOsk7TiUUwwFqrdE/zSyU8Uzu5ar/rtm2x0/Ky03DqXP0Hu9WG?=
 =?iso-8859-1?Q?0LTl6bIgmcp60zuAFg1hcZQ415Q9lYuIZHOgyvpbPYYkjIbTZQ11qitZGj?=
 =?iso-8859-1?Q?Wy+A04qU/FoMJ3af4lHLA/A+xah28H/Qn6etIxK3V74PkBKDDlgkoA5+Ov?=
 =?iso-8859-1?Q?6VG8ybJNIxwVUeEdhrBMh2oPTl57nkVC6ybJcQA/ta1YTlxGDruemYDBw7?=
 =?iso-8859-1?Q?l0S8EhvQFRwdXzzozJoqmxSdd7DyJ9a79KpG3zmIc4SP757Tqib4zRkIDe?=
 =?iso-8859-1?Q?nYahpG8WUMXfxR1W8qTI1iKHoiit9FWnhwNOObaLYENCgngh0DG100ePLq?=
 =?iso-8859-1?Q?Riass2JqiwlABNryb6lvnMi3YDHrfIYd2ksc8Fyo32dwQxYUFYjPh2QXGR?=
 =?iso-8859-1?Q?ORIHFhEoNf4H3n8YHqmRGJg0CoU3Zz6diYBtrd+awOPOGfvbNtBBzWHwmw?=
 =?iso-8859-1?Q?+opjeXZsImlMJGPVLBoNXV29eWK/MxgE8Omj4iUj3/ga4Lsl/UQ/bTJqXf?=
 =?iso-8859-1?Q?Nhtd1EPjGEFRt89DxHnAlVtHliVNhZCu9tZIODUXqO1A7ZaxMcTlATgPKU?=
 =?iso-8859-1?Q?ni9MMfLU0YkEQ2EcKUmj989NAS4g16HqiaCAlEObn/cr+vIKTUjb30sV/1?=
 =?iso-8859-1?Q?SFPIiFvl7ia7dv+0jp4GVsUoUftjTJfsRvRllh8ZwrwTqpbmgPJAmxVsm5?=
 =?iso-8859-1?Q?02spN0aE8h8WQ5rx/oOFTJZq/+jYllcHlaRUKxdwj+TJDVH6K5xwZUs5wz?=
 =?iso-8859-1?Q?wh0gz4du743XVMpbe9UGTHTKhmIPjaIpQ7vybye4YwH+g5YVTShKkAHyEv?=
 =?iso-8859-1?Q?XMVSZNXaOwGl6gBqFm9rlw/o1A/SKhFqEBjPKsBrlV1Jbs/jk6gva/AQIH?=
 =?iso-8859-1?Q?b+X1RDxS3M3HfhLNvBNb31/IzO3kUWYmcEsTHixSfdeF2aeVX6MON7y5EL?=
 =?iso-8859-1?Q?Gj/7esO51rp99fPZ1Nft01z4mAvaYuqk+r1EOFHQ5vryW6T6Lmbe8=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: MissionSecure.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR1701MB2531.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14ec9798-b449-4725-f25e-08d8ca98df2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2021 12:15:19.9806
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f0ca9611-f13f-4dc9-8e1b-119172b8ec5d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JdHWMy14T1x9wmGC//O8I81cl/og2LDKwFZXMzWgZQ0weBs7r4KOjgyH1bRMzxkBgPy1hwZHqw33ovmerEsK4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR17MB3520
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR1701MB253187BD8B139EE1B4EDCA7EC3B19BL0PR1701MB2531_"

--_000_BL0PR1701MB253187BD8B139EE1B4EDCA7EC3B19BL0PR1701MB2531_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I always start with

devtool modify <package>

This sets-up the workspace,  puts the package source code in workspace/sour=
ces, inits git, etc.

Gary

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of David Gartner via lists.yoctoproject.org <gartnerd=3Dgmail.com@lists.yo=
ctoproject.org>
Sent: Friday, February 5, 2021 8:06 PM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [yocto] devtool question/issue

Hi,

I've been following along on this youtube video created by a Yocto develope=
r:

https://youtu.be/nqHylLP2NmA?t=3D1592<https://nam04.safelinks.protection.ou=
tlook.com/?url=3Dhttps%3A%2F%2Fyoutu.be%2FnqHylLP2NmA%3Ft%3D1592&data=3D04%=
7C01%7Cgary%40missionsecure.com%7C329a2b43d61447cffd8008d8ca3b7be6%7Cf0ca96=
11f13f4dc98e1b119172b8ec5d%7C0%7C0%7C637481704140380417%7CUnknown%7CTWFpbGZ=
sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2=
000&sdata=3D0RQV%2B6iZPxU1yiO0UZelJRYUobYziChOGr1OI41O%2BEI%3D&reserved=3D0=
>

I can reproduce everything presented until it comes to using devtool (as sh=
own at the time index in the link given above). When attempting to run:

devtool add git://blah-blah-gitrepo

I get the error:


ERROR: workspace layer not set up

My understanding from the documentation is that the "workspace" layer gets =
created (if it doesn't exist) when running devtool with a command such as a=
dd.

Since I'm new at using Yocto, it's likely that I"m missing something fundam=
ental here.

Any help/suggestions would be appreciated

Gary Huband
Sr. Software and Systems Engineer

Office: 434.284.8071 x720
Direct: 434.260.4995
Gary@MissionSecure.com

Follow Us!
LinkedIn<https://www.linkedin.com/company/mission-secure-inc->  |  Blog<htt=
ps://www.missionsecure.com/blog?utm_source=3Demail-signature&utm_medium=3De=
mail&utm_campaign=3Dblog-email-sig>  |  Website<https://www.missionsecure.c=
om/?utm_source=3Demail-signature&utm_medium=3Demail&utm_campaign=3Dweb-emai=
l-sig>

: : : : : : : : : : : : : : : : : : : : : : : : : : :

[MSi]

This email and any files transmitted with it are confidential and proprieta=
ry and intended solely for the use of the individual or entity to whom they=
 are addressed. Any dissemination, distribution or copying of this communic=
ation is strictly prohibited without our prior permission. If you received =
this in error, please contact the sender and delete the material from any c=
omputer.


--_000_BL0PR1701MB253187BD8B139EE1B4EDCA7EC3B19BL0PR1701MB2531_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I always start with</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
devtool modify &lt;package&gt;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
This sets-up the workspace,&nbsp; puts the package source code in workspace=
/sources, inits git, etc.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Gary<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size: 11pt;" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of David Gartner v=
ia lists.yoctoproject.org &lt;gartnerd=3Dgmail.com@lists.yoctoproject.org&g=
t;<br>
<b>Sent:</b> Friday, February 5, 2021 8:06 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> [yocto] devtool question/issue</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi,
<div><br>
</div>
<div>I've been following along on this youtube video created by a Yocto dev=
eloper:</div>
<div><br>
</div>
<div><a href=3D"https://nam04.safelinks.protection.outlook.com/?url=3Dhttps=
%3A%2F%2Fyoutu.be%2FnqHylLP2NmA%3Ft%3D1592&amp;data=3D04%7C01%7Cgary%40miss=
ionsecure.com%7C329a2b43d61447cffd8008d8ca3b7be6%7Cf0ca9611f13f4dc98e1b1191=
72b8ec5d%7C0%7C0%7C637481704140380417%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wL=
jAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&amp;sdata=3D0R=
QV%2B6iZPxU1yiO0UZelJRYUobYziChOGr1OI41O%2BEI%3D&amp;reserved=3D0" original=
src=3D"https://youtu.be/nqHylLP2NmA?t=3D1592" shash=3D"dvAM5mwsY6SEqAQkNKkL=
FQLLAvWWtORli2XyKjTNmDETyph3oeG8a4GZ441BOPm3Z5p4f+YYn4Hp2kRyUiFL3NB2CVASwnF=
/ma+yD8Ins4Q946IYidGRKrL3K0KL1VhqlWY8V1SMzbT/ANTIU8sT+ns/QOfwqYAUA30cJ7QgRe=
U=3D" target=3D"_blank">https://youtu.be/nqHylLP2NmA?t=3D1592</a><br>
</div>
<div><br>
</div>
<div>I can reproduce everything presented until it comes to using devtool (=
as shown at the time index in the link given above). When attempting to run=
:</div>
<div><br>
</div>
<div>devtool add git://blah-blah-gitrepo</div>
<div><br>
</div>
<div>I get the error:</div>
<div><br>
</div>
<div>
<p style=3D"margin: 0px; font-variant-numeric: normal; font-variant-east-as=
ian: normal; font-stretch: normal; font-size: 14px; line-height: normal; fo=
nt-family: Menlo; color: rgb(0, 0, 0);">
<span style=3D"font-variant-ligatures:no-common-ligatures">ERROR: workspace=
 layer not set up</span></p>
</div>
<div><br>
</div>
<div>My understanding from the documentation is that the &quot;workspace&qu=
ot; layer gets created (if it doesn't exist) when running devtool with a co=
mmand such as add.</div>
<div><br>
</div>
<div>Since I'm new at using Yocto, it's likely that I&quot;m missing someth=
ing fundamental here.&nbsp;</div>
<div><br>
</div>
<div>Any help/suggestions would be appreciated</div>
</div>
</div>
</div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal; text=
-transform: uppercase;">
<font color=3D"#595458"><b>Gary Huband</b></font></div>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458"><i>Sr. Software and Systems Engineer</i><br>
<br>
Office: 434.284.8071 x720 <br>
Direct: 434.260.4995 <br>
Gary@MissionSecure.com<br>
</font></div>
<br>
<div style=3D"font-family: Arial; font-size: 12px; font-style: normal;"><fo=
nt color=3D"#595458"><b>Follow Us!</b>
<br>
<a href=3D"https://www.linkedin.com/company/mission-secure-inc-">LinkedIn</=
a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionsecure.com/blog?ut=
m_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campaign=3Dblog-e=
mail-sig">Blog</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=3D"https://www.missionse=
cure.com/?utm_source=3Demail-signature&amp;utm_medium=3Demail&amp;utm_campa=
ign=3Dweb-email-sig">Website</a>
</font></div>
<br>
<div style=3D"color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px;=
 font-style: normal; font-variant: normal; font-weight: normal; letter-spac=
ing: normal; line-height: normal; orphans: auto; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; widows: auto; word-sp=
acing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">
: : : : : : : : : : : : : : : : : : : : : : : : : : : <br>
</div>
<br>
<div><img height=3D"44" width=3D"115" alt=3D"MSi" src=3D"http://www.mission=
secure.com/images/MSi_Logo_email.png"></div>
<br>
<div style=3D"font-family: Arial; font-size: 11px; font-style: normal;"><fo=
nt color=3D"#595458">This email and any files transmitted with it are confi=
dential and proprietary and intended solely for the use of the individual o=
r entity to whom they are addressed.
 Any dissemination, distribution or copying of this communication is strict=
ly prohibited without our prior permission. If you received this in error, =
please contact the sender and delete the material from any computer.</font>=
</div>
<br>
</body>
</html>

--_000_BL0PR1701MB253187BD8B139EE1B4EDCA7EC3B19BL0PR1701MB2531_--
