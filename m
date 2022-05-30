Return-Path: <joseantonio.cardenas@niko.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43AFDC433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 12:31:40 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.70])
 by mx.groups.io with SMTP id smtpd.web12.36454.1653913895498953195
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 05:31:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=LdbZRkTf;
 spf=pass (domain: niko.eu, ip: 40.107.2.70,
 mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2xbwpTrIvJuOL7T5f75PCmHtzmWispr8NtuVqx/fM0kfbaLPqwI2d6lhghZPJkYZG4y271J4WMwdPksLQTH458ImH28gRAo6osRj8P9xuqw44HF5aWe0YoUs3fkiV/N0wFaKNmnNPHtrik0Cwl02VmYp5c66hCQNyWT7b5u8D3SAyS2iUgxIf/dwyMjhTI3KB/PZWScf9QaXRmW2zlv/MW+X7kJ4qC6WAXULm/f4wUr9N6MwNll7mobslN4wizxFuXUbZVfzuXooFegnGkETFKPpUQq4k+L0JIbC3jZQexPGixwqJZwhLxJiSuxAyH0tbJpugZUYes6TXjLvamEpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9bWKMU76/okGtx6cysIiYDHN3UBVgx7yCKDM+sanhAw=;
 b=XcmnR0oE9A4Fa+tRUzDNhh99o36r746uBEc6SDKo4SFPXxVO1hQBbZq5FVEPfPtKRE5lkp8N/R0lAzXxjqXvy0sqSTnqPsbzQurNu7WokTsORVKpohE3QocYMeMonWi6rR22br2pSqZHNDxo3U+CRX++lzHxfJZrYn/M41koc0+3zWjwECUCs5sOF0NjhE2bJrxpLd/NTI/Fg44eKPGaGj2Uo8+gl8X30hIBsimtvYSFv7IMH4YqghpqmWNYfAs3N6Lt4cSaNaoPIMGN6RkKnr4MPqrS2btHi9ReZHGsMLb/UKUk0jUfC341m4CQ7PFj5Z6qixAD8rNa36spG2Hslg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9bWKMU76/okGtx6cysIiYDHN3UBVgx7yCKDM+sanhAw=;
 b=LdbZRkTfNfN8tUJMw4PyqtoDxrpx9oyMavmWMnBWLgV6xU6/2IJW3Oqco4J/9oByOweUwo+cYR5p8ZpwJfTI6+iAE4L2TipkSJNBPY9yu6JJ0fjiFei0zv86hvh8GoXuKMfBI6NuA/8KJR+BZFGyVebSaKrMZMEQ3oF+XLZIcZo=
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com (2603:10a6:7:2d::18) by
 PAXPR08MB7466.eurprd08.prod.outlook.com (2603:10a6:102:2b8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.18; Mon, 30 May
 2022 12:31:30 +0000
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec]) by HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec%4]) with mapi id 15.20.5293.019; Mon, 30 May 2022
 12:31:30 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <JoseAntonio.Cardenas@niko.eu>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] How to modify an existing file from an optional recipe?
Thread-Topic: [yocto] How to modify an existing file from an optional recipe?
Thread-Index: Adh0FpcNFMhYq0RjS4y2H4LIFObtZAAAeBsAAABfxDAAAK2AgAAA+4IA
Date: Mon, 30 May 2022 12:31:30 +0000
Message-ID: 
 <HE1PR08MB28596B6A4B9DCBBEB237EFF58BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
References: 
 <HE1PR08MB28598F5B3B98E9CAC9E83D248BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
 <CANNYZj9Lr+1edD9Ha4wMYGuEYgZX6y9D=wn26YOH0J0SMH0H=g@mail.gmail.com>
 <HE1PR08MB28592FED495F7FF57186CBE98BDD9@HE1PR08MB2859.eurprd08.prod.outlook.com>
 <CANNYZj_MnNcJ327WuFsX9zXAxv6bMptu8U8O9qRYUuM2-21PgA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_MnNcJ327WuFsX9zXAxv6bMptu8U8O9qRYUuM2-21PgA@mail.gmail.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=niko.eu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34333500-115a-448d-9bed-08da4238530d
x-ms-traffictypediagnostic: PAXPR08MB7466:EE_
x-microsoft-antispam-prvs: 
 <PAXPR08MB746677625D98DA9B147569A98BDD9@PAXPR08MB7466.eurprd08.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dC4a1QZhkqjPfT+bCqaDV8U7GsEKebOnjApFzP5DUxpOJ7YI0/75cbRvqHcR4VRGeqoAk1NCKagCL5D4N/gJcGD5z/A9PneaCh6l54fQJatpsdRsO8Cemwv5fQrvPH7xXaADiPjt1celZGvaZbCJgpSJXNEl3t2wIyxM7Fs2rYomzV3+5/ejGmXk+GZYLzjMTMxGc2jAuKZFpHjQdpOpLIBfxXoriHMwuaZ+G8z+8gtzQatM8Xz1iOlAVEl/llpnsrnTzBv2SqAiCxCFiDRwXXt9fE38B1ninWyagB1py2wsB6Bpv2fkyh77BEdvUhy81DvelJ1eWEg7O6pEW9JImhPaePV4tuIpelcv+AHPUOOrliUUKx/aptaeT9mJ17UFJTDzf2FKVMIUWTOSCOHaP5CrR7mqnZE5VrlifNyqlSfp4OsLmptKVQq8FWzoUXXf1E0V9U6K9cg0THT93xvw6WCsZk+otxDlNKmGhMUgEjUsh2/Iqq10F0GTcf9A9MAD+3KB3HYiTCLUJG8OrgRn51x9CpFWzCsc578hWlXHwZMse9VkIOc1/QQ37W0+lBkUxaRiBhDj1vUtzkIJ686lJwOCFpYgqVGP/NdyiYQk5w+2VcfRHCOPZUtD93c9TGmfqwlmgiZVF99sp0ERkOCUNoNbtP2B4qM3Zs5m+wr6huD0O6TTQZXJxS6sNqkxvU7TEFcIGe9CBULv3EpnueQCLSCoVvbdZCI0RNbMnczKeUHg8aQv0k1vx0B1MPAiIvvG0eYn+w9iu8ug36LFMKv4AmGaNej2ojd/A3OwyCs+pXk=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR08MB2859.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(966005)(55016003)(71200400001)(508600001)(5660300002)(33656002)(8936002)(122000001)(52536014)(9686003)(83380400001)(186003)(2906002)(26005)(38070700005)(7696005)(86362001)(6506007)(4326008)(38100700002)(8676002)(76116006)(66946007)(66556008)(66476007)(64756008)(6916009)(66446008)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bEhYRHJhWFZualFRZmhaQ3JhYXhRc3pJUGJwV3dZTEdDOXp2ZjI5MFdLZzRm?=
 =?utf-8?B?alQrZmw3UENzc01DU0E4WFZIdDBHY1B3MyszTzllckt5QjJUT1J0cStadWJB?=
 =?utf-8?B?VmFiMUJsbHgzMXpXS3RPKzdCa0d4dktSWUZyZmx3dnIrRW1FSTBpTkNZcmxw?=
 =?utf-8?B?NiswYUlFOVBXRVFXclpZUmNNMFJ0VnRKbnhvOXNLaWhwRCtXODcvTm54SEtN?=
 =?utf-8?B?SVhvK2QyU1R2SHlTNEp1b1FreVVYczcyOWZCb0R6QzdIN2dlR1ZzUFBsbHRs?=
 =?utf-8?B?WVhLb0NtK2YzU2xoTlRRejFsVzhGd2dwQXBhZXlBNkJGNnU1L3V1OG9NZjFE?=
 =?utf-8?B?QlNaM2cwUklJTUpsRUh1c0lLV3cvWXhSaEZZcXF6TW1KdzRNZ3dEWDJWMUhQ?=
 =?utf-8?B?dkxJL1dockpzbHUzMGhyNno3M2FBNkQxbVNjOWRhbFFwMGIwOG1ZTjhQZU43?=
 =?utf-8?B?QjZkYWltQzQyTnVHWXlocTlxcVYvSHJtbHQyUFcrdDgyMkVseVA1ZDdjK0NT?=
 =?utf-8?B?cnUvS0JYYlZvaWhsTHRzSDQyTmRqRDhxQjh4TVYwcnMwWlFwcUpZQ3hXRjZL?=
 =?utf-8?B?cmplaHFIN084RGNSUVpCUlVDUXFMeTV3ZlM0S1dLQUNZd2JPa2w1cEU2MGMr?=
 =?utf-8?B?TTJMWVBzRys0OWZWMEFIQ0toNnRxbUNLcnpVODgwcnV5QVpSMkNqSDRHb0c3?=
 =?utf-8?B?ZTZDMlBHd1hMbW9XOVlrdTJpZGhIRHhoRmgwYmgzZzM2VDdpSEFRSnFWbDJS?=
 =?utf-8?B?WVpYSnZGMFA3d2xycnlTdkRiRGN5U2xmOExaTVNSMk5aSnNsYVM2TVVXTG5O?=
 =?utf-8?B?TzdkQ2RCQXdGYy9JNmFhQkZGNXh5eGUxa1BoY0RJSHV0WWJoeU5KRTA4Rmwx?=
 =?utf-8?B?S2xTbUV3YjBKTDYxREZvVWNSd3FUTUczbklwZmMvelNpZzVZcWJzT0gwMk9z?=
 =?utf-8?B?Z0NPNENNT0I0Z1plZUlKY1dHb2dmejFxRURUSnU2dHNILzFqdG5tWFdvMEk0?=
 =?utf-8?B?aHpKQWxJdkczbVZWUnlUaytiSXAvUUNxSnRwNzE4dm5UN3JsTytqU3FxYmkr?=
 =?utf-8?B?WHZUSkVWMzRpZnVpbjI0TU1mR0d6cVZzSzVFUzZrSEwwTFFDRXczT0QvUTFU?=
 =?utf-8?B?UmJWNHBDVW42K3NyQVZHT0YvTDB3SEhOZ3VObi9mSUdyS3RxUEFlWmxqMlY4?=
 =?utf-8?B?eGhTYWttNVdaaTVxN1cyUFZob0RQa2xWNld2ak1rZW5GN3hlalZMYWpDUnl6?=
 =?utf-8?B?OWZleGNVMXg4TVF5WlRsOW14ZzBEWU9uR3FaOFFzanJLbUlkZkFCZTJXdkVt?=
 =?utf-8?B?WmEydmd5cHlmTXRlVXZPQWxOUGVNK0xKMWJBZ0lyZVNLbStoZVFsSGNxT291?=
 =?utf-8?B?RTUxZEJXWUNaOFQvd3JLYjRxL2NERVg5QzZZYzVnRitBTWxGVTlsNkJITTRU?=
 =?utf-8?B?U2NtTUxYL2twYlRGaFRRZzI2eW1aN1ZCYUxMNkV5aG5JZEVoN1pXNktBUUpw?=
 =?utf-8?B?Zm1zZW1lM2pKdlBseGJBTTBKQkJ4Uzh5RjAzZ2FjZU5zZ2MxcVJyMVRPaElh?=
 =?utf-8?B?c2QvNVJpZ3pCaHpWQTRSNjNqamRCNy9yS3hWNVlyQ1dUWXkrWmxVTGkvRzNa?=
 =?utf-8?B?QW1UdFFwcjJDMDlmOVJqU1k1VTNzdzdSM1NxTmVhMzcrMU5IbGJCZzIvTUtp?=
 =?utf-8?B?ZHZXZm40Z3dnalN1cHppZFNYZ1NsN0hwSkhvZmVIWi96cXQyS1FXVVBlKzJs?=
 =?utf-8?B?a0lTeXBobk9RdXJLdllXNllDNHpmK3l4MzhEa29tQkIwcUFncDFQdm84WXpO?=
 =?utf-8?B?b1VYTXJZcW9KQkVYN256RVY3elZ3TUd3SjA4Yk93MUhXc2Nka3pSWEc3dlQ5?=
 =?utf-8?B?UUpRR3gzWUpyY21OYy9FMmE0OE1NL0c5bkpZQ2dTUE4yWjE3Q1dKZFdSTW9D?=
 =?utf-8?B?M1I4WGI1RkFsRTF6ZXdlYUdhRENXWGRySmFrRnBqdHMxL1ZWTG5Bam82b3cy?=
 =?utf-8?B?Z1lJbnhRM2JuYjhXZHlCanpUdzVzNzhOTE53cEI2NkhzWXhUdzJsOWJRTGJZ?=
 =?utf-8?B?cmxSbno0SDBPbHlKdzJWSE43MDljRU80cWowMlZOWk5IRmt5ZkpYS1M1MkFR?=
 =?utf-8?B?ZktOdUFUbFY1RW1GVE9aQTA4KzVCdmdxb1g4ZWhteWxkdGsrWW5jQU4ralg2?=
 =?utf-8?B?aE4rdWlHZGdMZ2R4azk3ZnRvaHA1TWRkUE5wOEhTM1dTVWxPL2UrRFN0MERn?=
 =?utf-8?B?bFJ3YTNmNlpVbzVRbFJVVjFla1BOVjFBdm1ySlZtRlpVd2VZeUNTSTNKMHRi?=
 =?utf-8?B?azI1TjRRdHkvQXJVYjF1T3V4UjZzSmV1TUlqc2JkNElwNjBXY05XU3B3TUda?=
 =?utf-8?Q?KZqiefMyo0Td+d64=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR08MB2859.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 34333500-115a-448d-9bed-08da4238530d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2022 12:31:30.4880
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ghQvTFewJBKAS0sWeOwnKR/pWmIAZu/9H/ufYataSkJcOKbw8QujEGey0C6JTspT1+O9CeTHxNOgswFe2WoNBVYpPA3SQbo9UjppltfbJUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7466
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 12:31:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57215

SSBjYW4ndC4gVGhlIGZpbGUgdGhhdCBpJ20gdHJ5aW5nIHRvIG1vZGlmeSBpcyBhIGNvbmZpZ3Vy
YXRpb24gZmlsZSBvZiBhIHNlcnZpY2UgdGhhdCBpcyBidWlsdCB3aXRoIGl0cyByZWNpcGUgYW5k
IGluIG15ICJvcHRpb25hbCIgcmVjaXBlIHdoYXQgaSdtIHRyeWluZyB0byBkbyBpcyBjaGFuZ2Ug
YSBwYXJhbWV0ZXIgb2YgdGhhdCBjb25maWd1cmF0aW9uIGZpbGUuIA0KDQotLS0tLU1lbnNhamUg
b3JpZ2luYWwtLS0tLQ0KRGU6IEFsZXhhbmRlciBLYW5hdmluIDxhbGV4LmthbmF2aW5AZ21haWwu
Y29tPiANCkVudmlhZG8gZWw6IGx1bmVzLCAzMCBkZSBtYXlvIGRlIDIwMjIgMTM6NTkNClBhcmE6
IENhcmRlbmFzIEpvc2UgQW50b25pbyAoSkNBUkRFTkEpIDxKb3NlQW50b25pby5DYXJkZW5hc0Bu
aWtvLmV1Pg0KQ0M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCkFzdW50bzogUmU6IFt5
b2N0b10gSG93IHRvIG1vZGlmeSBhbiBleGlzdGluZyBmaWxlIGZyb20gYW4gb3B0aW9uYWwgcmVj
aXBlPw0KDQpDQVVUSU9OOiBUaGlzIGVtYWlsIG9yaWdpbmF0ZWQgZnJvbSBvdXRzaWRlIHRoZSBv
cmdhbml6YXRpb24uIERvIG5vdCBjbGljayBvbiBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVu
bGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5kZXIgYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMgc2Fm
ZS4NCg0KSSdkIHNheSBpdCdzIGJldHRlciB0byBtb2RpZnkgdGhlIG9yaWdpbmFsIHJlY2lwZSwg
Y2FuIHlvdSBkbyB0aGF0Pw0KDQpBbGV4DQoNCk9uIE1vbiwgMzAgTWF5IDIwMjIgYXQgMTM6Mzks
IENhcmRlbmFzIEpvc2UgQW50b25pbyAoSkNBUkRFTkEpIDxKb3NlQW50b25pby5DYXJkZW5hc0Bu
aWtvLmV1PiB3cm90ZToNCj4NCj4gWWVzLCBpbmRlZWQuIEl0J3MgYSBoYWNrIHRvIGJlIGFibGUg
dG8gcnVuIHNvbWUgdGVzdHMuIERvZXMgdGhlICJpbWFnZSBwb3N0IHByb2Nlc3NpbmcgdGFzayIg
dGhhdCB5b3UgY29tbWVudCByZWxhdGVkIHdpdGggU0RLX1BPU1RQUk9DRVNTX0NPTU1BTkQ/DQo+
DQo+IFJlZ2FyZHMuDQo+DQo+IC0tLS0tTWVuc2FqZSBvcmlnaW5hbC0tLS0tDQo+IERlOiBBbGV4
YW5kZXIgS2FuYXZpbiA8YWxleC5rYW5hdmluQGdtYWlsLmNvbT4gRW52aWFkbyBlbDogbHVuZXMs
IDMwIA0KPiBkZSBtYXlvIGRlIDIwMjIgMTM6MjkNCj4gUGFyYTogQ2FyZGVuYXMgSm9zZSBBbnRv
bmlvIChKQ0FSREVOQSkgPEpvc2VBbnRvbmlvLkNhcmRlbmFzQG5pa28uZXU+DQo+IENDOiB5b2N0
b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IEFzdW50bzogUmU6IFt5b2N0b10gSG93IHRvIG1v
ZGlmeSBhbiBleGlzdGluZyBmaWxlIGZyb20gYW4gb3B0aW9uYWwgcmVjaXBlPw0KPg0KPiBDQVVU
SU9OOiBUaGlzIGVtYWlsIG9yaWdpbmF0ZWQgZnJvbSBvdXRzaWRlIHRoZSBvcmdhbml6YXRpb24u
IERvIG5vdCBjbGljayBvbiBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVj
b2duaXplIHRoZSBzZW5kZXIgYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMgc2FmZS4NCj4NCj4gWW91
IGNhbiBkbyB0aGlzIHdpdGggYSBwb3N0aW5zdCBzY3JpcHRsZXQsIG9yIHdpdGggYW4gaW1hZ2Ug
cG9zdCBwcm9jZXNzaW5nIHRhc2ssIGJ1dCBnZW5lcmFsbHkgdGhpcyBsb29rcyBsaWtlIGEgaGFj
ayByZWdhcmRsZXNzIG9mIGhvdyB5b3UgZG8gaXQuIFdoYXQgaXMgdGhlIGZpbGUgZm9yLCBhbmQg
d2h5IGRvZXMgaXQgbmVlZCB0byBiZSByZXBsYWNlZD8NCj4NCj4gQWxleA0KPg0KPiBPbiBNb24s
IDMwIE1heSAyMDIyIGF0IDEzOjIzLCBDYXJkZW5hcyBKb3NlIEFudG9uaW8gKEpDQVJERU5BKSA8
am9zZWFudG9uaW8uY2FyZGVuYXNAbmlrby5ldT4gd3JvdGU6DQo+ID4NCj4gPiBIaSBhbGwsDQo+
ID4NCj4gPg0KPiA+DQo+ID4gSSBoYXZlIGEgcmVjaXBlIHRoYXQgaXMgYnVpbHQgb25seSB3aXRo
IHRoZSBTREsgdGhhdCBtb2RpZmllcyB0aGUgY29udGVudCBvZiBhbiBleGlzdGluZyBmaWxlIGlu
IHRoZSByb290ZnMgYnkgZG9pbmcg4oCcaW5zdGFsbCAtbSA2NDQgJHtXT1JLRElSfS9teV9maWxl
ICR7RH0ke3N5c2NvbmZkaXJ9L215X2ZpbGXigJ0gYnV0IHRoaXMgY29tbWFuZCBpcyByZXR1cm5p
bmcgbmV4dCBlcnJvcjoNCj4gPg0KPiA+DQo+ID4NCj4gPiBFcnJvcjogVHJhbnNhY3Rpb24gY2hl
Y2sgZXJyb3I6DQo+ID4NCj4gPiAgIGZpbGUgL2V0Yy9teV9maWxlIGJldHdlZW4gYXR0ZW1wdGVk
IGluc3RhbGxzIG9mIA0KPiA+IG15X3JlY2lwZS0xLjAtcjAuNy5hcm12N2FoZl9uZW9uIGFuZCAN
Cj4gPiBpbml0aWFsX3NjcmlwdC0xLjAtcjE1NS4xLmFybXY3YWhmX25lb24NCj4gPg0KPiA+DQo+
ID4NCj4gPiBJIGhhdmUgc2VlbiB0aGF0IHRoZSBiZXN0IHByYWN0aWNlIHRvIG1vZGlmeSBhbiBl
eGlzdGluZyBmaWxlIGlzIHRvIGNyZWF0ZSBhIC5iYmFwcGVuZCBidXQgdGhpcyBtb2RpZmljYXRp
b24gd291bGQgYmUgZG9uZSBmb3IgYWxsIGJ1aWxkcywgbm90IG9ubHkgZm9yIHRoZSBTREsuIFNv
IHdoYXQgd291bGQgYmUgdGhlIGJlc3Qgd2F5IHRvIGRvIHRoaXM/DQo+ID4NCj4gPg0KPiA+DQo+
ID4gUmVnYXJkcy4NCj4gPg0KPiA+IEpvc2UNCj4gPg0KPiA+DQo+ID4gLT0tPS09LT0tPS09LT0t
PS09LT0tPS0NCj4gPiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhp
cyBncm91cC4NCj4gPiBWaWV3L1JlcGx5IE9ubGluZSAoIzU3MjExKToNCj4gPiBodHRwczovL2xp
c3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzU3MjExDQo+ID4gTXV0ZSBUaGlz
IFRvcGljOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvOTE0Mjg1OTEvMTY4NjQ4
OQ0KPiA+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+
ID4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vu
c3ViDQo+ID4gW2FsZXgua2FuYXZpbkBnbWFpbC5jb21dDQo+ID4gLT0tPS09LT0tPS09LT0tPS09
LT0tPS0NCj4gPg0K

