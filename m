Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E2CC4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 19:06:12 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.975.1708023962699753302
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 11:06:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=amN1/dlt;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2775a99494=joe.slater@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41FAApFW023540;
	Thu, 15 Feb 2024 11:06:01 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=eIaNWEUU/IE5gX8En91NCrPsqj54HmEZ4VOr6cIDBY4=; b=
	amN1/dltQQ9Krd89qPBopiRmVu/Q49AbALRdnz81xt+s50ep+3UMB/mZ8lbxG7nr
	+teqNkurSTRqc6WOkF7k3+ErOYPEHk8KrioIGVTKhgiKDr0KANwdy4ZdB7FRFGvI
	iuSnD7hTGSnDhicRPczj47yWeSJDssMWqefJ5foBfpzaX2AwOVQtKfoLibpD3b3a
	e/DWrH4R4rWIuwRqMfiNIZD3/KcRYM71IIJXJ+OdoUy9W0d5VWDFK3D4zS0ujXKH
	3nTyIClnWj/cZ6WO9ymIlDQvMCxt9mB4HNvFXq0QaBFDDjjgH5GSLEH2gJ/5Ihz0
	vzomhTjmargwXKf1Ej7adw==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w65a4w2bd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Feb 2024 11:06:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ux7vbZcOCLKziHp8WUuED6C0V6MUrY/X8II5JWtpjZD5Uan/Okb1PBKydxTnWwyhjalx231s0WfzlR+AKod1+yEdwm5z/cti6ZqGR8CE22zFpuwuwsW9+VXCQhwaYxFqFFHKcerR94GwePwLSx319NBzYuHZm0nDrns4wxKvQBL2VTbqVciMQK0BI1qUvCxVdX9NrAgGiKVDPZIUFj6Kn5US19D0j43jxP0oFQKktEh2CUubr+Li4wwUw81PuHw2qbpuNcV6GeD37oat1qVq9AGZcW9EtNeSkx42LqTVo+z+4A7x3Nk2fHBm+w8bExYGNfKPVOZHBOSlWKz2ryIr+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eIaNWEUU/IE5gX8En91NCrPsqj54HmEZ4VOr6cIDBY4=;
 b=OhjGpxaqy/EFaIIhKM2VYdQrQTZa3DBNlsmr2kIn58cMHaAbT1MVsCjqCr4XzZL5snBiYsLISqSIyzHbikUzN2UK6aJajzLRfJeZ0sumwerllZzEZwUzHtWYszq3dR72pOqbL+cV/LeYxXdzAG9lZF9lHtpDDkizVBL1YiW+GxIXy4LQutzjGssO2IC0a6hIy9nPPe2gmGpsWHdTFCux9HJUpTJq5K65USNFPkpqXuTet/A/682lpu2CEVqX8sFGLgfNCH/cUXz1YZh5S2Y5bbuAwFVze9gSsSka4NEeHWQfHSYULny1htKehSiymYWkBEZbfiyAvDzYGtc2UhCQsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3992.namprd11.prod.outlook.com (2603:10b6:a03:188::10)
 by SN7PR11MB6946.namprd11.prod.outlook.com (2603:10b6:806:2a9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Thu, 15 Feb
 2024 19:05:57 +0000
Received: from BY5PR11MB3992.namprd11.prod.outlook.com
 ([fe80::9d88:f871:9dff:e539]) by BY5PR11MB3992.namprd11.prod.outlook.com
 ([fe80::9d88:f871:9dff:e539%5]) with mapi id 15.20.7270.036; Thu, 15 Feb 2024
 19:05:57 +0000
From: "Slater, Joseph" <joe.slater@windriver.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "MacLeod, Randy" <Randy.MacLeod@windriver.com>
Subject: RE: [yocto] [meta-security][PATCH 1/1] sanity-meta-security.bbclass:
 allow warning customization
Thread-Topic: [yocto] [meta-security][PATCH 1/1] sanity-meta-security.bbclass:
 allow warning customization
Thread-Index: AQHaYDKI8Uu5XYwPLk6UTh+W77n4o7ELsHkAgAAQccA=
Date: Thu, 15 Feb 2024 19:05:56 +0000
Message-ID: 
 <BY5PR11MB39927EF05CFDB9E14F089D5E884D2@BY5PR11MB3992.namprd11.prod.outlook.com>
References: <20240215171506.2989385-1-joe.slater@windriver.com>
 <CADkTA4PoT95O=VSj2w501vPct6f8A0PTL1njiP3MuXegmPA3Rw@mail.gmail.com>
In-Reply-To: 
 <CADkTA4PoT95O=VSj2w501vPct6f8A0PTL1njiP3MuXegmPA3Rw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR11MB3992:EE_|SN7PR11MB6946:EE_
x-ms-office365-filtering-correlation-id: 11238fc9-fb0b-41c5-eec7-08dc2e5923fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Dd5qnBdk8s8yesOnquoXJ9uGpCR5XKO0d1x1/q9uT4HlbcyJAHpkLuWFZRlDgNQv3LXitQITS+RRHzL3FfFFSegOssT4SLlUYT15nXzPvGmMg4MNiqwy4vzOFMVhllIj4mG8LAxWVoHY0RgrxIqDU/WV9wilU83TRXMslIYS2Qj184pLZdbIymX0jFXMAkFpUTc0V64bjvsD2TG0PyTHZ6GBQyigVzbj0xifj/29K9MakCwrWtpQNG+78zI+SZjA2BYqj8Mpg/5pic97qRXAlrTNg2TaoQyTYGre0xSubzB6lmwFY9yZtp8KCvD5cPxdo20gYTbGjK30TWpFOUFjKT8KC1L0y9ZY5Zrkx6CwATG4dLi3EznTG60NvIDxlkRVrPpBh6sjcGsjgpfNDZ5886uEvFg9yNFFeWvZRkkpzvg1/S09BaGcae+fvDelEBPEiWLEg/LXpylOiVY3ODzfnM5QJv8c+//tGe8rG9MrOtvUG6YhK+RmVSzLVQh/FFTvFKSB0OxmQoM7x01ZlVkciE+lY+ua2L379AnNE9G+A5j3gEPt3owxkAIsEx5my1BPQ259mRl9he/3049Pb2D8a1uL5QrK/ZRke7kE6BKmouw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3992.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(136003)(366004)(396003)(346002)(376002)(230273577357003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(966005)(71200400001)(9686003)(478600001)(41300700001)(55016003)(66899024)(5660300002)(15650500001)(8936002)(52536014)(8676002)(4326008)(2906002)(66556008)(76116006)(53546011)(38070700009)(64756008)(6506007)(7696005)(66476007)(66446008)(316002)(66946007)(122000001)(107886003)(110136005)(83380400001)(33656002)(86362001)(38100700002)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?a0ZWZFFoTDhzbzZOYmxPNUdWSlFOd3BIQmx5ODQ0TDVHZ2FaUG9NR3dGeUFY?=
 =?utf-8?B?RENEQ2dYUlBPeG9qSzBsb2FQcXU3SHdyMTdObG5UUzZ2Q3NLQStpeWFsdno3?=
 =?utf-8?B?ckFqTXZKWHFMM0QyNmZZWVQ0Wko3SVlSdGhjaVUzczYzQk1TOHREYy9ZeDQ5?=
 =?utf-8?B?RWtrRzNwSkFic054a3JDN29jWWhSSUYxN0ZiS2duYVJtS3BqZmhpM2t6U0lh?=
 =?utf-8?B?aExiN0Z2eWl3TTRLeUtsa2s3MjNyaG93TnpOT20vTUxMZGJlNkZXbG9CNXVN?=
 =?utf-8?B?Y3UrdUlXcm55RE96YVpkcVpKMlQxYVNRYzRJOEVRRWFyUmNQME9Idko5U1Jy?=
 =?utf-8?B?RUxCM3FnbjdUaVFBckg4a2hBUy9WajVnWWtVbzNrTmxOemVyNVA2bkFabWlu?=
 =?utf-8?B?M1dZMFVTNlpieUMvZTdxSHgwWjhwV2MvUk02NlYvMko1NmNwYUZFb3g3Tm02?=
 =?utf-8?B?VUE3QytpbCs0WWx0UmZVNXlmV2Nzd1dxRFMrYU5nUUErWmVCZjVtWVlCK1Bs?=
 =?utf-8?B?VXRrV2IzSzZaNTVvd3U4WHpHYTVCYm9RdGFkVGVYQXNhZlY2YjZ6cW1EL1FP?=
 =?utf-8?B?ZzExcFRPaGJScW9OaUR4ZGExOWdmcHdYMWZhdmpWem1HblBxNk9sRTkvKzR3?=
 =?utf-8?B?ci9Ic0dQaXJDWEVVTTBlZGxEZDRHUHJ6OWdOMzlLL2svaENrYVBuejZtWTlx?=
 =?utf-8?B?UER1d0E4UkdmdEJrQnpJLzVZeTU0Mm00cVR1MTc1NkRGMjFMVFBycUZqTWI2?=
 =?utf-8?B?d1pmbzdKWk5MTlNYYjBMTjkrMTFwRlU3T1BRUHZtb1lod0lnQ1ZLTzZSNVI4?=
 =?utf-8?B?Vk1lejZqYlhtcnFlaXNxRDBsZ1krRUFvNmZ6V0lXQ2RmTWpZeUlDWjJpLzJl?=
 =?utf-8?B?OXFzWnpXZE9BZFFoU0Ewd0dsUzV1czI2M20yN3F4TmpEYzl3QnVvRE44NEdz?=
 =?utf-8?B?MVVjYmkvdXVzcXN3NktIQ0xvWHdKWW5uWlNMTDE0eS9Lc2JNTTBKT09Wa2Nm?=
 =?utf-8?B?ZTZuVTRTbnZjQm9tVWVSMWZESVJuell1RUJhQmZMa2xjVjdCeGwzL0hGeitm?=
 =?utf-8?B?bXY0bkZhL3QxbHdLWFByRTAwZDRNU0Y4RVU5OVM3ZzYrSlFzRnM1dmZHUUNi?=
 =?utf-8?B?eWkyZDdCV1JMRThuWUozZDB6ZDFZUjhwZUdtQVB1Q2lTQ1JsRktQbmw3RmN5?=
 =?utf-8?B?dXdTV0JMRXFVTkpNK01tREhKWm83SFZCdUhmd056K25TeDZOa0F1dHJsSGUx?=
 =?utf-8?B?TTJhZ1E3NHowSHhPc21yQlI5bHNjRCt6RlFWeXZNMzlJYXNLakxPeW1LRHBX?=
 =?utf-8?B?bjhGV012cVJkOGVER0w3dWorampFWVR6c01TcGo0QkR3eE1IYlFmdFp2eHZz?=
 =?utf-8?B?VVB2dG96MXo0eTFvcjByNnI4OWU3RkpIajhtNWZDbXlUSWg1OTEvQW5CU2Zv?=
 =?utf-8?B?OUhUaVRWZ3VycVFGTXV4NHk3NXNldWFwdWI5Y1RYbDkzZUhGcTdMSXJlWndM?=
 =?utf-8?B?MzVHd0VZMkxWVkxrSTVlV1Z4WGg2bTkxbXRKZzZ2anUzcmpHTHI0cFFaTExv?=
 =?utf-8?B?WEhWMlZzVmRyUWxQNDBJOVJoK01ldjkyLzBVbC95WFZhMHBNQ3lkeFNhc1RQ?=
 =?utf-8?B?Y1JCWGY5cjZRWkFTOFRnVXlBdlppc3phL0Jid1RRM0Z5MndoK3dadHhjOXQ2?=
 =?utf-8?B?d2owSVpMR3E1blJGRXJkU2J2eDltQ1B6bkM1VFhwRjY2T3gwQ01YMkNxaWV0?=
 =?utf-8?B?VEsvQW9Cak5OS1hCOUlQRVZVbHE5NGxEQTFLaHZGZ3M3MnJzRUlaMlJiaUMz?=
 =?utf-8?B?N29ZRHorZm1CWUd4Q3R0ZHEvYVRFM0pvWDI1eXhBbzJTakJONkZRYzZGWSta?=
 =?utf-8?B?ZHZ5MWdaeHpOMkgrWmZHbG96czhpd0tpTzE2akNEQ3VnOWV6UjlDRzkvUkp3?=
 =?utf-8?B?WUE5ZDRzUWU1cUFJelpQaGJMMmhXVHpVejU4S3p6TWRGbkkwU21PYXk5TlBP?=
 =?utf-8?B?T1pkMWpLQjZrU0E5RmpSbi92eTlNZUJuZTJ5NGsveGJHMmNmc2d1NU50REla?=
 =?utf-8?B?dnNQRS9jb3hGcXhTVUR3WktFdXBFcFJpMDVNV0xWZkVTQXBFYWJuRVk1aU54?=
 =?utf-8?Q?bQCTgL0v/aIQyR9IHj4lQOHOQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3992.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11238fc9-fb0b-41c5-eec7-08dc2e5923fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2024 19:05:57.0231
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kEYoB26UwT5rnjUU7UF7IJvuLitedumwBa580Bxa0eL35YFXnA6X+uVQ0Ce1dTOxWDQLywh76oiOgYh9HOWCd1DqCT+HWgPSPWU2Mruq1t4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6946
X-Proofpoint-ORIG-GUID: ZKbdG3ab_eyPbBbNCCbZK07eJM9KcImZ
X-Proofpoint-GUID: ZKbdG3ab_eyPbBbNCCbZK07eJM9KcImZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-15_18,2024-02-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=995 bulkscore=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 mlxscore=0 priorityscore=1501 phishscore=0 clxscore=1011
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402150153
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 19:06:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62501

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnJ1Y2UgQXNoZmllbGQg
PGJydWNlLmFzaGZpZWxkQGdtYWlsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDE1
LCAyMDI0IDk6NTcgQU0NCj4gVG86IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IFNsYXRl
ciwgSm9zZXBoIDxqb2Uuc2xhdGVyQHdpbmRyaXZlci5jb20+DQo+IENjOiBNYWNMZW9kLCBSYW5k
eSA8UmFuZHkuTWFjTGVvZEB3aW5kcml2ZXIuY29tPg0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBb
bWV0YS1zZWN1cml0eV1bUEFUQ0ggMS8xXSBzYW5pdHktbWV0YS1zZWN1cml0eS5iYmNsYXNzOg0K
PiBhbGxvdyB3YXJuaW5nIGN1c3RvbWl6YXRpb24NCj4gDQo+IE9uIFRodSwgRmViIDE1LCAyMDI0
IGF0IDEyOjE14oCvUE0gSm9lIFNsYXRlciB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA8
am9lLnNsYXRlcj13aW5kcml2ZXIuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0K
PiA+DQo+ID4gRnJvbTogSm9lIFNsYXRlciA8am9lLnNsYXRlckB3aW5kcml2ZXIuY29tPg0KPiA+
DQo+ID4gSW50cm9kdWNlIE1FVEFfU0VDVVJJVFlfU0FOSVRZX0NIRUNLX1dBUk5JTkcgdmFyaWFi
bGUgd2hpY2ggY2FuIGJlDQo+ID4gb3ZlcnJpZGRlbiwgaWYgZGVzaXJlZC4NCj4gDQo+IFRoZSBl
eGlzdGVuY2Ugb2YgdGhlIHBhdGNoIGltcGxpZXMgdGhhdCB0aGVyZSdzIGEgcmVhc29uIHdoeSB0
aGUgd2FybmluZw0KPiBtZXNzYWdlIGlzbid0IGFwcHJvcHJpYXRlIGZvciB5b3VyIHVzZSBjYXNl
Lg0KPiANCj4gVGhhdCdzIHNvbWV0aGluZyB0aGF0IHNob3VsZCBiZSBleHBsYWluZWQgaW4gdGhl
IHBhdGNoLg0KPiANCj4gQSBrbm9iIHRvIGRpc2FibGUgdGhlIHdhcm5pbmcgaWYgeW91IGtub3cg
d2hhdCB5b3UgYXJlIGRvaW5nIGhhcyBhbHJlYWR5IGJlZW4NCj4gcHJvdmlkZWQuIFNvIGFnYWlu
LCB0aGlzIHBhdGNoIGltcGxpZXMgdGhhdCB5b3Ugd2FudCB0aGUgd2FybmluZywgYnV0IHdhbnQg
dG8NCj4gY2hhbmdlIHRoZSBtZXNzYWdlIC4uIGl0IHdvdWxkIGJlIGdvb2QgdG8gdW5kZXJzdGFu
ZCB3aHkuDQo+IA0KPiBCcnVjZQ0KDQpTb21lIHBlb3BsZSB3YW50IHRvIGtub3cgaG93IHRvIGRp
c2FibGUgdGhlIHdhcm5pbmcgd2l0aG91dCByZWFkaW5nIHRoZSBSRUFETUUuICBJIGRvbid0IHRo
aW5rIHRoYXQncyBhIGdyZWF0IGlkZWEsIGJ1dCBhbGxvd2luZyBjdXN0b21pemF0aW9uIHdvdWxk
IGxldCB0aGF0IGJlIGRvbmUgb24gYSBkaXN0cm8gb3Igc2ltaWxhciBiYXNpcy4gIEkgZGlkbid0
IHdhbnQgdG8gbWVudGlvbiB0aGF0IHN0dWZmIGluIGEgY29tbWl0IG1lc3NhZ2UsIGJ1dCBtYXli
ZSBpdCBzaG91bGQgYmUgdGhlcmUuDQoNCkpvZQ0KDQo+IA0KPiA+DQo+ID4gU2lnbmVkLW9mZi1i
eTogSm9lIFNsYXRlciA8am9lLnNsYXRlckB3aW5kcml2ZXIuY29tPg0KPiA+IC0tLQ0KPiA+ICBj
bGFzc2VzL3Nhbml0eS1tZXRhLXNlY3VyaXR5LmJiY2xhc3MgfCAxMyArKysrKysrKystLS0tDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4N
Cj4gPiBkaWZmIC0tZ2l0IGEvY2xhc3Nlcy9zYW5pdHktbWV0YS1zZWN1cml0eS5iYmNsYXNzDQo+
ID4gYi9jbGFzc2VzL3Nhbml0eS1tZXRhLXNlY3VyaXR5LmJiY2xhc3MNCj4gPiBpbmRleCBmOWUy
Njk4Li45NTE4MGFhIDEwMDY0NA0KPiA+IC0tLSBhL2NsYXNzZXMvc2FuaXR5LW1ldGEtc2VjdXJp
dHkuYmJjbGFzcw0KPiA+ICsrKyBiL2NsYXNzZXMvc2FuaXR5LW1ldGEtc2VjdXJpdHkuYmJjbGFz
cw0KPiA+IEBAIC0xLDEwICsxLDE1IEBADQo+ID4gIGFkZGhhbmRsZXIgc2VjdXJpdHlfYmJhcHBl
bmRfZGlzdHJvY2hlY2sNCj4gPiBzZWN1cml0eV9iYmFwcGVuZF9kaXN0cm9jaGVja1tldmVudG1h
c2tdID0gImJiLmV2ZW50LlNhbml0eUNoZWNrIg0KPiA+ICsNCj4gPiAgcHl0aG9uIHNlY3VyaXR5
X2JiYXBwZW5kX2Rpc3Ryb2NoZWNrKCkgew0KPiA+ICAgICAgc2tpcF9jaGVjayA9IGUuZGF0YS5n
ZXRWYXIoJ1NLSVBfTUVUQV9TRUNVUklUWV9TQU5JVFlfQ0hFQ0snKSA9PSAiMSINCj4gPiAgICAg
IGlmICdzZWN1cml0eScgbm90IGluIGUuZGF0YS5nZXRWYXIoJ0RJU1RST19GRUFUVVJFUycpLnNw
bGl0KCkgYW5kIG5vdA0KPiBza2lwX2NoZWNrOg0KPiA+IC0gICAgICAgIGJiLndhcm4oIllvdSBo
YXZlIGluY2x1ZGVkIHRoZSBtZXRhLXNlY3VyaXR5IGxheWVyLCBidXQgXA0KPiA+IC0nc2VjdXJp
dHknIGhhcyBub3QgYmVlbiBlbmFibGVkIGluIHlvdXIgRElTVFJPX0ZFQVRVUkVTLiBTb21lDQo+
ID4gYmJhcHBlbmQgZmlsZXMgXCAtYW5kIHByZWZlcnJlZCB2ZXJzaW9uIHNldHRpbmcgbWF5IG5v
dCB0YWtlIGVmZmVjdC4NCj4gPiBTZWUgdGhlIG1ldGEtc2VjdXJpdHkgUkVBRE1FIFwgLWZvciBk
ZXRhaWxzIG9uIGVuYWJsaW5nIHNlY3VyaXR5DQo+ID4gc3VwcG9ydC4iKQ0KPiA+ICsgICAgICAg
IGJiLndhcm4oZS5kYXRhLmdldFZhcignTUVUQV9TRUNVUklUWV9TQU5JVFlfQ0hFQ0tfV0FSTklO
RycpKQ0KPiA+ICB9DQo+ID4gKw0KPiA+ICtNRVRBX1NFQ1VSSVRZX1NBTklUWV9DSEVDS19XQVJO
SU5HID8/PSAiXCBZb3UgaGF2ZSBpbmNsdWRlZCB0aGUNCj4gPiArbWV0YS1zZWN1cml0eSBsYXll
ciwgYnV0ICdzZWN1cml0eScgaGFzIG5vdCBiZWVuIFwgZW5hYmxlZCBpbiB5b3VyDQo+ID4gK0RJ
U1RST19GRUFUVVJFUy4gU29tZSBiYmFwcGVuZCBmaWxlcyBhbmQgcHJlZmVycmVkIHZlcnNpb24g
XCBzZXR0aW5ncw0KPiA+ICttYXkgbm90IHRha2UgZWZmZWN0LiBTZWUgdGhlIG1ldGEtc2VjdXJp
dHkgUkVBRE1FIGZvciBkZXRhaWxzIG9uIFwNCj4gPiArZW5hYmxpbmcgc2VjdXJpdHkgc3VwcG9y
dC4iDQo+ID4gKw0KPiA+IC0tDQo+ID4gMi4yNS4xDQo+ID4NCj4gPg0KPiA+IC09LT0tPS09LT0t
PS09LT0tPS09LT0tDQo+ID4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRv
IHRoaXMgZ3JvdXAuDQo+ID4gVmlldy9SZXBseSBPbmxpbmUgKCM2MjQ5Nyk6DQo+ID4gaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS82MjQ5Nw0KPiA+IE11dGUg
VGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzEwNDM3NzAzNy8x
MDUwODEwDQo+ID4gR3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcNCj4gPiBVbnN1YnNjcmliZTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9j
dG8vdW5zdWINCj4gPiBbYnJ1Y2UuYXNoZmllbGRAZ21haWwuY29tXQ0KPiA+IC09LT0tPS09LT0t
PS09LT0tPS09LT0tDQo+ID4NCj4gDQo+IA0KPiAtLQ0KPiAtIFRob3Ugc2hhbHQgbm90IGZvbGxv
dyB0aGUgTlVMTCBwb2ludGVyLCBmb3IgY2hhb3MgYW5kIG1hZG5lc3MgYXdhaXQgdGhlZSBhdCBp
dHMNCj4gZW5kDQo+IC0gIlVzZSB0aGUgZm9yY2UgSGFycnkiIC0gR2FuZGFsZiwgU3RhciBUcmVr
IElJDQo=

