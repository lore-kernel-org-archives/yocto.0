Return-Path: <holger.sebert.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6F0CE79A8
	for <webhook@archiver.kernel.org>; Tue, 19 Sep 2023 16:57:19 +0000 (UTC)
Received: from mx07-0040c702.pphosted.com (mx07-0040c702.pphosted.com [205.220.184.135])
 by mx.groups.io with SMTP id smtpd.web11.15334.1695142633878096438
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Sep 2023 09:57:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@karlstorz.com header.s=S-DKIM-20210427 header.b=HdE1WlfH;
 spf=pass (domain: karlstorz.com, ip: 205.220.184.135, mailfrom: holger.sebert.ext@karlstorz.com)
Received: from pps.filterd (m0267679.ppops.net [127.0.0.1])
	by mx07-0040c702.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38JDWY8L011005;
	Tue, 19 Sep 2023 16:57:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=karlstorz.com;
	 h=from:to:cc:subject:date:message-id:references:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	S-DKIM-20210427; bh=n8aS+Fv0Ok+FX3sM3Do8BoBhZU7Wn5pVFHk2Gkgj6v8=; b=
	HdE1WlfHSeNDiBmkirr5qNx1zYikWh7145rFZkGAxa1OZVN1WcnZ60OpNFApbtV9
	i2pCwOKYrUlswuAEgEqp6BQKoTsYYKbJXyUVHrxSzb+L9CIaxnW56ojzvqguVC0D
	D6UMpVFH6qLEpx79SLAbZLeNej838pdoFYbbMmK5W4Vyle9Ff4T2TzYmtKU3RNnn
	IbhnWhzryVPhJOvbdVcB3NbQZqm0wbo8WOygymIj6V6AinPaqoHnSLFQEm3RbP4q
	scCvAMouRwnL37awrANXIFXD+sPxL2n0oNVr/++tQzKaiaN7UWs22/qFp058UrKF
	lzMa0azMsydP0+o6PEwfrg==
Received: from eur05-db8-obe.outbound.protection.outlook.com (mail-db8eur05lp2109.outbound.protection.outlook.com [104.47.17.109])
	by mx07-0040c702.pphosted.com (PPS) with ESMTPS id 3t6ax5yj3p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 16:57:10 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LKDDAuZuKEUGBthYJ8DqhHReOa5FEhMUhj3uqEDOzQGVWuEpXBSlXASBBcXpuR2Bp0etbJ99iAM/wXu17sJgg8TmCEw/BRMBwz5UIxvxvowFcgsM5O+tOYLI1xWRVepwmr/ameBYUVFjtLAKuFTqdf6ZKwnCRNjuUDAwCTY3QuJ6tpX/Aryro3hjj3E6G2bMwG2+qm8iDNhEruNQO4fYK3qF6XYO7sm2lB6z0xph1E0q54o8dD6ZXCWVdp3Bts98YR/7+UvV5SInN6IYFTXaHOpvrTPdWdm6MgNyzDNehW0AU61xNsqNAQk93aG8yhlNSxAW3uVkDcgetFPgYXi/vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n8aS+Fv0Ok+FX3sM3Do8BoBhZU7Wn5pVFHk2Gkgj6v8=;
 b=lV3qKGRPhI0lH1AlbImcFxcbcI6tFBlJ1KgeIprjtGUTQaMgawtcpyG7XL2VJZLfMrqpNconpnXND87V+o2tkf/jXIroSJk2ppfHBCfJaqY2gkDhC/NZxphaiSl3qRtsw9wK0Uus0AgVxDv6LgNZup85UKnJ0Fhjnjhw6L1ktuRKVX43LrRiAEYO7hntJ1FTzBY0sZ+5oq3GYjzhwEwfQwQFJsXbnLlfHGU5+HKq/YB7eU8q2BRNtmVxteQiEldHy804g4ZZXBPYpvD7/HjPmOVwW+tt0eh3tAO/LdVdz48Idt1CD7ayarEr/irZRUfSL/opUMBpxGlqrArlDTnO7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=karlstorz.com; dmarc=pass action=none
 header.from=karlstorz.com; dkim=pass header.d=karlstorz.com; arc=none
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 (2603:10a6:6:4b::33) by PA4PR01MB9356.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:27e::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.16; Tue, 19 Sep
 2023 16:57:07 +0000
Received: from DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc]) by DB6PR01MB3736.eurprd01.prod.exchangelabs.com
 ([fe80::91fe:d06c:d05e:e7fc%4]) with mapi id 15.20.6813.014; Tue, 19 Sep 2023
 16:57:05 +0000
From: "Sebert, Holger.ext" <Holger.Sebert.ext@karlstorz.com>
To: Yoann CONGAL <yoann.congal@smile.fr>
CC: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
        Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Poky/Mickledore bitbake menuconfig does not work
Thread-Topic: [yocto] Poky/Mickledore bitbake menuconfig does not work
Thread-Index: AQHZ6xpRYSPVnmbhI0ipJlrD3R4vYQ==
Date: Tue, 19 Sep 2023 16:57:05 +0000
Message-ID: 
 <DB6PR01MB3736AC458D68ED5170B880B3A4FAA@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
References: 
 <DB6PR01MB3736481355587A417D929794A41EA@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
 <CAGAf8LwKRDmacsgnsKLqofneB85CetU_h3H7s12b8gY8_y6ZwA@mail.gmail.com>
 <DB6PR01MB373690DA20F88E3A64ECAEBBA4F7A@DB6PR01MB3736.eurprd01.prod.exchangelabs.com>
 <CAMSfU+4tNg0kSJr6PZWLoqbvZDhQTr0Eb-VKbCGMhCNXvO0x_w@mail.gmail.com>
In-Reply-To: 
 <CAMSfU+4tNg0kSJr6PZWLoqbvZDhQTr0Eb-VKbCGMhCNXvO0x_w@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR01MB3736:EE_|PA4PR01MB9356:EE_
x-ms-office365-filtering-correlation-id: ad2d4bb7-c6d7-4abc-25ae-08dbb9317403
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 rKP2YscJp2icAD3edAl+ExATQFVJdRHGl6SYRyZlvm+0/lOOLsu4U/ZTjbjaVZV1T962XUakizi0aVa61XFY8NxJtR+hVJjDnYI76TAewrzpIKwQyi8qdKKeR7L+Lr1h2CqQB4XByF0SIB4u+QDqle5qji2K6iNFmLAPNn1WrbZCbLMGjZFuIJWSwCms0t9SDW8CqRjBlUVoFg5eNE/iBP/ghcCwajXDrdwhfF5sctoH1XsMAHwxnyhl8LKBR/IlfsOWwqto4i9kG5/cH48UDS5zgyji/RWnhFgTiI7wuWP+7kg/FTNDo0JfhxxkfdSHp4uVdiVorHwibRwArgYnGZ5wNeAsu2EAqXPS1MfxmIdDGhazyuyO01fzGxKAllffEl7xiwhBsYDFjbhImKeEmxFwC2yQQo/g/gGz3JN2baavDBJk0UC2opEyb/oKRQNkd0ovE43T2Q2AN4FGjxUWegHfDBUodHhUrhriwME85Z0Duk/dY9OrPXxdJjkoYy7JDTQoyEshQd9wzxW7Wp6zrraRBglBP7I64czhzr0xXlYVUkzYnDvOiO7Khf2IjCo0lTSMxERQctCpZNyAawN3qSQ3WMvJ48H3jqtJTlSR/K4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR01MB3736.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(376002)(396003)(346002)(366004)(1800799009)(451199024)(186009)(64756008)(54906003)(316002)(6916009)(66946007)(66476007)(91956017)(66556008)(66446008)(76116006)(26005)(83380400001)(122000001)(7696005)(6506007)(53546011)(9686003)(71200400001)(86362001)(38100700002)(38070700005)(33656002)(66574015)(55016003)(966005)(478600001)(2906002)(8676002)(4326008)(8936002)(41300700001)(52536014)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?S2Q1aGdBY3pvemZnUERDZEJ1S2RiWEgzRzlsZFdGRVMvaHZKbU5BelNKZG5w?=
 =?utf-8?B?RklIR0lzMDhiSlYrRFc1dUIxaFpoSmcwbTR5amN2VXhITlVyV2NIamlua0xu?=
 =?utf-8?B?T0xYd2o4VUV3SjBDTHdsRi9jb0lSQVNYSXNZM3pPdDlRNzBXMWFPS1ZyVUFL?=
 =?utf-8?B?eVhTaCtVWUhETnQxUmlxTlNRQTM4ZTFIWUo5UDBxdUFLS1RqQ05OYXJmWHow?=
 =?utf-8?B?VEVVQW5BUDlpcnp0RHVRc0NyNlVOcERRc0lTZnlCTmVRNjFxclE5eGRrbUtR?=
 =?utf-8?B?Z0VoeEFrVENQNXZTc3pXaHJjOXd0WDY1MCtYVzdtR3kvWlNIU3hUQUFPYjh6?=
 =?utf-8?B?R2ZRUUtMcFZRMlFUT1dvN21OV3RKY3dZTlphUzNOTk10MVRpY0M4Z3VaSmhS?=
 =?utf-8?B?RjRMQlFMOHQ1V0U0QjhyR09xMU9ZZDhmdjBFVExqTmdCSzlGYkFnZllJWVZo?=
 =?utf-8?B?ck5DSUtLU21NQnRnc2tFNG93cUduYXF2TGVNSE9nU3FZUXdYYUxRR3RJMkZ1?=
 =?utf-8?B?blBGTE1iRzQvNVpodExhS1h1NXRSVUVyNEt2Y0RsN2tYTnJ6NXVkby8yaFFm?=
 =?utf-8?B?U0E3SDVCZ0l6dWJzTFI4cnk4Y0ZKVEtUOFJxVVRoWFNldGRuSUtBamduZWVq?=
 =?utf-8?B?RzFJR2RXa2FFbmg0bmo5bG5oeW9ya0xnOEtJM0NRMDdnWWMrUGJzTGpybVU4?=
 =?utf-8?B?TU1sbUt3WnFMOWRYL080d0NVZEdBall0TUx6MWVJaEdSVEdiQ2pXNGtUVzAz?=
 =?utf-8?B?RDBVdnRHYzd3S0k3VnlKWHM2YndVbjBoclpQNjRENXc2UEdNV2Y2ZUhJbThn?=
 =?utf-8?B?dk8zRHNldmNwRDVXVzJOZjBvRHNkN1V3S3VaOXdQYTU0RWR1WlpmNWh2S2hZ?=
 =?utf-8?B?WWJCQ04wLzhnMU1BWDM2Vi9Ua2hmUlRoY01JdDNaTXZuVUh5V0ZUaWprYWtJ?=
 =?utf-8?B?ODFvSldIRTRyeFVYZXkzam9pWmsyM2xuc3k2SWloYlNNM3czZiswOHU5NEFv?=
 =?utf-8?B?SFcwQ0w1M2hOdjBEL0haamFMNkN2RkRNMmlaSXllaUM1dVRKTUxhVmwzTXFL?=
 =?utf-8?B?RDFOQ2VhWU1nVWFGUGEybG9jY0NBcDRJLzlvdTFoSXhONFVXL3dsdm5aRXZl?=
 =?utf-8?B?TStFcnhTM3lFclEvRXg5R3FPLzNMdW53RHRjRmZLNlRHdjNydklSYk5leUtk?=
 =?utf-8?B?Z25ReUI5REU4MC85ZzJiaEVYWE1xYWdLcUtyc2ZvUFVQdTJJb0ZyUGl1UHJ1?=
 =?utf-8?B?ekxHREN0bU5mWCtyRkl4cmtSbXUzbFdmTEZCZGdScnN3RWs0MGNHVCtoc2xn?=
 =?utf-8?B?bWRGZjJ1c1F6K29JdzVBemYvNkx3TG1NSEZUd2Q0ZzQvS1Z1TEd4bzZmUGN0?=
 =?utf-8?B?dEVVclhQMWhyRklWVWhiaVgyenlrTlFtYUJySXM3M2J6ckE4aEhaUlFFM2ZT?=
 =?utf-8?B?UDhudjNBTjdOdGdDTm05bk9yKzdVZm1HS29ZVVVPYkZZbGxDVDVTaXg5UmJQ?=
 =?utf-8?B?RWFodW84UlFBamt5NmUrcEcrOHg4anZTTTZ2Sno5TDZVbWQyZUVOMFE3Z0xY?=
 =?utf-8?B?Nlc3OGJhZlFqVTErYnpYMXB1b2xPM2hHcW5uMTgrd2FrU3YzM1pZV2lYTkFu?=
 =?utf-8?B?eS9FSWhWTVhzV0VkSTRRdDZCTUsrQ0hhMDliTFlzTUlGa212bXYrTWZuNXRO?=
 =?utf-8?B?YmJHS2llSnRhUFNrOGdmVVV1M3RvZzllcmFjSUxmSUZrcS92QU1JcEhVSmtv?=
 =?utf-8?B?dkhBN3VMdFQ4ZGRVMHorVFVtcXRCTEhpaTM3ekVtNEE0ZGZ3R0dBRUhNZ1JY?=
 =?utf-8?B?ZFV5ZWJOTTFlbjAyKzg1SENoSWxhSUgvV1NvaitmdWlFcElCRTNtQVhNalRv?=
 =?utf-8?B?Mkc0RGF4cGY3bjZzbTZYOFFMaU1KRmxhUG5IeHZFays3WWYxSFd5V2V3Snkw?=
 =?utf-8?B?aGFGNmF4ZVdadkV3KzVxV09hT2FWeFM2TFR3eFZRNnh1MVgrWWJGbkdVNUw4?=
 =?utf-8?B?SkZ0WE0xT3J0R1gyWkg3N0JyU0Q0VjdDUXMvckNmeWJpTFE2VUJGd2gxbExo?=
 =?utf-8?B?TU5HSHMza2dkaTNWTERiek42OVVnbTh2VjlkMTFIZENMZlBPNzFvOGtmeDRm?=
 =?utf-8?B?M0ozci9tZXZCdG4vRFQyM1JxQWRxTkVLMStOaDNFZHBsUE1OalFlK0ZqcWp0?=
 =?utf-8?B?VUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: karlstorz.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR01MB3736.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad2d4bb7-c6d7-4abc-25ae-08dbb9317403
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2023 16:57:05.3821
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4a0b6f21-e6e1-4ed6-9dcf-e60e7190f648
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gp5VyWSdjpArqJg6yxBeYNagp3QKHoZSvMxhYNpEYuFzEr5NfnG7+oJY1gSSi98QINuaAJBoUdkSLJjuWs9nRYUK5XZx+/wDDhHbgQ7Mdjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR01MB9356
X-Proofpoint-ORIG-GUID: 8HgpK-2jlN6S34RKSGd3TCRVS0_md9C4
X-Proofpoint-GUID: 8HgpK-2jlN6S34RKSGd3TCRVS0_md9C4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-19_09,2023-09-19_01,2023-05-22_02
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 16:57:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61044

SGkgWW9hbm4sIGhpIFpvcmFuLAoKVGhlIGJ1ZyBpcyBub3QgcHJlc2VudCBvbiB0aGUgUG9reSBt
YXN0ZXIgYnJhbmNoLgoKVW50aWwgdGhlIHByb2plY3QgaXMgcmViYXNlZCBvbnRvIHRoZSBuZXh0
IHJlbGVhc2UsIEkgd2lsbCBzaW1wbHkgZGlzYWJsZSBDQ2FjaGUgd2hlbmV2ZXIgSSBuZWVkIHRv
IGRvIGEga2VybmVsIG1lbnVjb25maWcuCgpUaGFua3MhCgotSG9sZ2VyCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClZvbjogWW9hbm4gQ09OR0FMIDx5b2Fubi5jb25n
YWxAc21pbGUuZnI+Ckdlc2VuZGV0OiBEb25uZXJzdGFnLCAxNC4gU2VwdGVtYmVyIDIwMjMgMjM6
NTIKQW46IFNlYmVydCwgSG9sZ2VyLmV4dApDYzogWm9yYW4gU3RvanNhdmxqZXZpYzsgWW9jdG8t
bWFpbGluZy1saXN0CkJldHJlZmY6IFtFeHRdIFJlOiBbeW9jdG9dIFBva3kvTWlja2xlZG9yZSBi
aXRiYWtlIG1lbnVjb25maWcgZG9lcyBub3Qgd29yawoKSGksCgpMZSBqZXUuIDE0IHNlcHQuIDIw
MjMgw6AgMTQ6MTAsIFNlYmVydCwgSG9sZ2VyLmV4dCA8aG9sZ2VyLnNlYmVydC5leHRAa2FybHN0
b3J6LmNvbTxtYWlsdG86aG9sZ2VyLnNlYmVydC5leHRAa2FybHN0b3J6LmNvbT4+IGEgw6ljcml0
IDoKSGkgWm9yYW4sCgpJIHdhcyBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgYmVoYXZpb3IgZGVzY3Jp
YmVkIGluIG15IG9yaWdpbmFsIHBvc3QgYnkgZW5hYmxpbmcgQ0NhY2hlLiBIZXJlIGFyZSB0aGUg
cHJlY2lzZSBzdGVwcyB0byByZXByb2R1Y2U6CgoxLiBDaGVja291dCBQb2t5L01pY2tsZWRvcmUK
Mi4gQWRkIHRoZSBmb2xsb3dpbmcgdG8gYGJ1aWxkL2NvbmYvbG9jYWwuY29uZmA6CiAgICBJTkhF
UklUICs9ICJjY2FjaGUiCjMuIFJ1biBgYml0YmFrZSAtYyBtZW51Y29uZmlnIHZpcnR1YWwva2Vy
bmVsYAoKVGhlIHJlYXNvbiBmb3IgdGhlIGZhaWx1cmUgaXMgdGhhdCBkdWUgdG8gQ0NhY2hlIHRo
ZSBjb21waWxlciBpcyBubyBsb25nZXIgYGdjY2AgYnV0IGBjY2FjaGUgZ2NjYCwgaS5lLiB3ZSBo
YXZlIHRoZSBmb2xsb3dpbmcgdmFyaWFibGVzIGluIHRoZSBlbnZpcm9ubWVudDoKCiAgICBDQz0i
Y2NhY2hlIHg4Nl82NC1wb2t5LWxpbnV4LWdjYyIKICAgIEhPU1RDQz0iY2NhY2hlIGdjYyIKICAg
IC4uLgogICAgZXRjLgoKVGhpcyBpcyB3aGVuIHRoZSB3cm9uZyBxdW90aW5nIGluIHRoZSBpbnZv
Y2F0aW9uIG9mIGBtZW51Y29uZmlnYCBsZWFkcyB0byBlcnJvcnMuCgpDb3VsZCB5b3UgcGxlYXNl
IHZlcmlmeS9jaGVjaz8KCgpJIGhhdmUgcmVwcm9kdWNlZCB0aGlzLiBJdCByZWFsbHkgbG9va3Mg
bGlrZSBhIGJ1ZyEKClsuLi5dCk9uIE1vbiwgQXVnIDIxLCAyMDIzIGF0IDM6NDjigK9QTSBTZWJl
cnQsIEhvbGdlci5leHQKPGhvbGdlci5zZWJlcnQuZXh0QGthcmxzdG9yei5jb208bWFpbHRvOmhv
bGdlci5zZWJlcnQuZXh0QGthcmxzdG9yei5jb20+PiB3cm90ZToKPgo+IEhpLAo+Cj4gSSBhbSB1
c2luZyBhIFlvY3RvLVBva3ktTWlja2xlZG9yZSAodmVyc2lvbiA0LjIuMSkgYmFzZWQgc3lzdGVt
Lgo+Cj4gRm9yIGNvbmZpZ3VyaW5nIHRoZSBrZXJuZWwsIEkgd291bGQgbGlrZSB0byB1c2UgdGhl
IGNvbW1hbmQKPgo+ICAgICBiaXRiYWtlIC1jIG1lbnVjb25maWcgdmlydHVhbC9rZXJuZWwKPgo+
IElmIEkgZG8gdGhhdCwgQml0YmFrZSBvcGVucyBhbiB4dGVybSB3aW5kb3cgYW5kIHJ1bnMgdGhl
IGJ1aWxkIHN0ZXBzCj4gZm9yIEtjb25maWcuIEhvd2V2ZXIsIGFmdGVyIHRoZSBjb21waWxlciBo
YXMgZmluaXNlZCwgdGhlIHh0ZXJtIHdpbmRvdwo+IGltbWVkaWF0ZWx5IGNsb3NlcyBhbmQgQml0
YmFrZSBleGlzdHMgYXMgaWYgbm90aGluZyBoYXBwZW5lZCwgaS5lLiBpdAo+IGRvZXMgbm90IHNo
b3cgYW55IGVycm9yIG1lc3NhZ2Ugb3Igc2ltaWxhci4KPgo+IEkgaW52ZXN0aWdhdGVkIHRoZSBw
cm9ibGVtIGFuZCBmb3VuZCBvdXQgdGhhdCwgaW50ZXJuYWxseSwgQml0YmFrZQo+IGNhbGxzIHRo
ZSBmb2xsb3dpbmcgY29tbWFuZCBmb3Igc3RhcnRpbmcgS2NvbmZpZzoKPgo+ICAgICBtYWtlIG1l
bnVjb25maWcgQ0M9ImNjYWNoZSB4ODZfNjQtc3lzdGVtLWxpbnV4LWdjYyAuLi4iIFwKPiAgICAg
ICAgIENGTEFHUz0iLi4uIiBIT1NUQ0M9ImNjYWNoZSBnY2MiIEhPU1RDQ0ZMQUdTPSIuLi4iCj4K
PiBUaGUgcXVvdGVzLCBob3dldmVyLCBzZWVtIHRvIGdldCBsb3N0IHdoZW4gc3RhcnRpbmcgdGhl
IGFjdHVhbCBjb21tYW5kCj4gaW4gdGhlIHRlcm1pbmFsLiBUaGlzIGxlYWRzIHRvIGEgY29tbWFu
ZCBsaW5lIGxpa2UgZm9sbG93czoKPgo+ICAgICBtYWtlIG1lbnVjb25maWcgQ0M9Y2NhY2hlIHg4
Nl82NC1zeXN0ZW0tbGludXgtZ2NjIC4uLiBcCj4gICAgICAgICBDRkxBR1M9Li4uIEhPU1RDQz0i
Y2NhY2hlIGdjYyIgSE9TVENDRkxBR1M9Ii4uLgo+Cj4gd2hpY2ggaXMgY2xlYXJseSB3cm9uZy4K
Pgo+IFRoZSBmb2xsb3dpbmcgcGF0Y2ggZml4ZXMgdGhlIHByb2JsZW0gaW4gbWV0YS9jbGFzc2Vz
LXJlY2lwZS9jbWwxLmJiY2xhc3M6Cj4KPiBkaWZmIC0tZ2l0IGEvbWV0YS9jbGFzc2VzLXJlY2lw
ZS9jbWwxLmJiY2xhc3MgYi9tZXRhL2NsYXNzZXMtcmVjaXBlL2NtbDEuYmJjbGFzcwo+IGluZGV4
IGEwOWEwNDJjM2YuLmQ2MDAxZDZmZDAgMTAwNjQ0Cj4gLS0tIGEvbWV0YS9jbGFzc2VzLXJlY2lw
ZS9jbWwxLmJiY2xhc3MKPiArKysgYi9tZXRhL2NsYXNzZXMtcmVjaXBlL2NtbDEuYmJjbGFzcwo+
IEBAIC01Myw3ICs1Myw4IEBAIHB5dGhvbiBkb19tZW51Y29uZmlnKCkgewo+ICAgICAgIyBlbnN1
cmUgdGhhdCBlbnZpcm9ubWVudCB2YXJpYWJsZXMgYXJlIG92ZXJ3cml0dGVuIHdpdGggdGhpcyB0
YXNrcyAnZCcgdmFsdWVzCj4gICAgICBkLmFwcGVuZFZhcigiT0VfVEVSTUlOQUxfRVhQT1JUUyIs
ICIgUEtHX0NPTkZJR19ESVIgUEtHX0NPTkZJR19QQVRIIFBLR19DT05GSUdfTElCRElSIFBLR19D
T05GSUdfU1lTUk9PVF9ESVIiKQo+Cj4gLSAgICBvZV90ZXJtaW5hbCgic2ggLWMgXCJtYWtlICVz
OyBpZiBbIFxcJD8gLW5lIDAgXTsgdGhlbiBlY2hvICdDb21tYW5kIGZhaWxlZC4nOyBwcmludGYg
J1ByZXNzIGFueSBrZXkgdG8gY29udGludWUuLi4gJzsgcmVhZCByOyBmaVwiIiAlIGQuZ2V0VmFy
KCdLQ09ORklHX0NPTkZJR19DT01NQU5EJyksCj4gKyAgICBtYWtlX2NtZCA9ICJtYWtlICVzIiAl
IGQuZ2V0VmFyKCdLQ09ORklHX0NPTkZJR19DT01NQU5EJykucmVwbGFjZSgnIicsICdcXCInKQo+
ICsgICAgb2VfdGVybWluYWwoInNoIC1jIFwiJXM7IGlmIFsgXFwkPyAtbmUgMCBdOyB0aGVuIGVj
aG8gJ0NvbW1hbmQgZmFpbGVkLic7IHByaW50ZiAnUHJlc3MgYW55IGtleSB0byBjb250aW51ZS4u
LiAnOyByZWFkIHI7IGZpXCIiICUgbWFrZV9jbWQsCj4gICAgICAgICAgICAgICAgICBkLmdldFZh
cignUE4nKSArICcgQ29uZmlndXJhdGlvbicsIGQpCgpUaGlzIHBhdGNoIGxvb2tzIGludGVyZXN0
aW5nIQpJIHdvdWxkIHVzZSBzaGxleC5qb2luKCkgdG8gc2FmZWx5IGNvbnN0cnVjdCB0aGUgY29t
bWFuZCA6Cmh0dHBzOi8vZG9jcy5weXRob24ub3JnLzMvbGlicmFyeS9zaGxleC5odG1sI3NobGV4
LmpvaW48aHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vZG9jcy5weXRob24ub3Jn
LzMvbGlicmFyeS9zaGxleC5odG1sKnNobGV4LmpvaW5fXztJdyEhTHcxdUdxdkh2dEpfcHNHRzJF
dC0xdm9Td2JvIWZRZHR3R1NjTXJpVlBRdzJSTzB1bkNGUHhLTTlOR1gxOWJJSDZtTmRWZmI3N2Ra
eGlZWkVrZE5GaUQ1UFp6Vm94YU9jY2lsclQ0TDJJNTZQX3BTdzZGSnVsakt4ZU5UVyQ+Cgo+IFdo
YXQgZG8geW91IHRoaW5rPyBJcyBteSBvYnNlcnZlZCBiZWhhdmlvciBhIGNvbmZpZ3VyYXRpb24g
ZXJyb3Igb2YgbXkKPiBzZXR1cCBvciBkb2VzIHRoZSBwYXRjaCBhYm92ZSBpbmRlZWQgbWFrZSBz
ZW5zZT8KClRoZSBwYXRjaCBtYWtlcyBzZW5zZSB0byBtZS4KCkkgZ3Vlc3MgeW91ciBuZXh0IHN0
ZXBzIGFyZSA6CiogSWYgeW91IHdhbnQgdG8gY29udHJpYnV0ZSB5b3VyIHBhdGNoIDogcmVwcm9k
dWNlIHRoZSBidWcgYW5kIHJlYmFzZSB5b3VyIHBhdGNoIG9uIG1hc3RlciBhbmQgc2VuZCBpdCB0
byB0aGUgbWFpbGluZyBsaXN0CiogT3IsIGNyZWF0ZSBhIGJ1ZyBpbiBodHRwczovL2J1Z3ppbGxh
LnlvY3RvcHJvamVjdC5vcmcvPGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2J1
Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvX187ISFMdzF1R3F2SHZ0Sl9wc0dHMkV0LTF2b1N3Ym8h
ZlFkdHdHU2NNcmlWUFF3MlJPMHVuQ0ZQeEtNOU5HWDE5YklINm1OZFZmYjc3ZFp4aVlaRWtkTkZp
RDVQWnpWb3hhT2NjaWxyVDRMMkk1NlBfcFN3NkZKdWxxdzItUEZWJD4KCkJlc3QgUmVnYXJkcywK
Ci0tCllvYW5uIENvbmdhbApTbWlsZSBFQ1MgLSBUZWNoIGV4cGVydAo=

