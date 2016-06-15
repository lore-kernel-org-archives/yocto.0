Return-Path: <Jeffrey.D.Boyer@jci.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD99CE00CB2; Wed, 15 Jun 2016 06:29:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.98 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0098.outbound.protection.outlook.com [65.55.169.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B16E00CAC
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 06:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jci.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=GCNywlDHJY5tak7yZLZVkJtK4ElEGHOB53MAAiJnjdI=;
	b=PuKbm3ekJ+MUfBLWC3CmblCmnAdaNqvCbR2BaIIw+gOUrOUyYH+ntrjreQeNdc9IQyYisVCxnZC/ScPsrXCQgJ4h3D2/8oAt+foMLodDELwNMBFYkLaHMObo5oaR6cV2UrnwHKy3PGCNDEYDlUy1db3+9xwkg6BpPZGXZJ7+Wfw=
Received: from DM2PR03CA0003.namprd03.prod.outlook.com (10.141.96.13) by
	BLUPR03MB373.namprd03.prod.outlook.com (10.141.75.145) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.506.9; Wed, 15 Jun 2016 13:14:09 +0000
Received: from BN1AFFO11FD014.protection.gbl (2a01:111:f400:7c10::171) by
	DM2PR03CA0003.outlook.office365.com (2a01:111:e400:2428::13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.523.12 via
	Frontend Transport; Wed, 15 Jun 2016 13:14:09 +0000
Authentication-Results: spf=softfail (sender IP is 23.103.243.116)
	smtp.mailfrom=jci.com; topic.nl; dkim=none (message not signed)
	header.d=none;topic.nl; dmarc=fail action=none header.from=jci.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
	jci.com discourages use of 23.103.243.116 as permitted sender)
Received: from 062-smtp-out.jci.com (23.103.243.116) by
	BN1AFFO11FD014.mail.protection.outlook.com (10.58.52.74) with Microsoft
	SMTP Server (TLS) id 15.1.511.7 via Frontend Transport;
	Wed, 15 Jun 2016 13:14:09 +0000
Received: from BN3PR97MB0132.062d.mgd.msft.net (141.251.173.212) by
	BN3PR97MB0132.062d.mgd.msft.net (141.251.173.212) with Microsoft SMTP
	Server (TLS) id 15.1.506.9; Wed, 15 Jun 2016 13:14:08 +0000
Received: from BN3PR97MB0132.062d.mgd.msft.net ([141.251.173.212]) by
	BN3PR97MB0132.062d.mgd.msft.net ([141.251.173.212]) with mapi id
	15.01.0506.017; Wed, 15 Jun 2016 13:14:08 +0000
From: Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com>
To: Mike Looijmans <mike.looijmans@topic.nl>, Christopher Larson
	<clarson@kergoth.com>
Thread-Topic: [yocto] Mounting USB drives on a "read-only-rootfs" based system
Thread-Index: AdHFuMNyfcoYoG6/QWuF1oCmyic8agABlM0AACAItQAAAK8lcAAmvpoAAApwl3A=
Date: Wed, 15 Jun 2016 13:14:08 +0000
Message-ID: <a99347d5dc6f4d219af8fe6cb72f8de6@BN3PR97MB0132.062d.mgd.msft.net>
References: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
	<CABcZANkeE_RumUN=6D8n8zFQW8hEb-nRQgXBbc5ZMPkZniPLjA@mail.gmail.com>
	<5760041E.1010809@topic.nl>
	<ea5b572b51f542459e034c49f2f05d76@BN3PR97MB0132.062d.mgd.msft.net>
	<57610CB8.4050904@topic.nl>
In-Reply-To: <57610CB8.4050904@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.161.5]
X-MS-Office365-Filtering-Correlation-Id: 604b238f-ae31-400e-e8f4-08d3951eefb8
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:23.103.243.116; IPV:NLI; CTRY:; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(2980300002)(24454002)(377424004)(69234005)(71364002)(377454003)(199003)(189002)(252514010)(52314003)(13464003)(54164003)(24736003)(47776003)(86362001)(33646002)(86146001)(66066001)(4326007)(50466002)(6116002)(2906002)(106466001)(105596002)(586003)(356003)(230783001)(11100500001)(102836003)(3846002)(9686002)(10400500002)(8936002)(108616004)(19580405001)(5004730100002)(19580395003)(6806005)(2900100001)(76176999)(54356999)(22756006)(2950100001)(189998001)(87936001)(16796002)(93886004)(92566002)(68736007)(5003600100002)(5008740100001)(15974865002)(81166006)(50986999)(97736004)(23676002)(81156014)(8676002)(5001770100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR03MB373;
	H:062-smtp-out.jci.com; FPR:; SPF:SoftFail;
	PTR:InfoDomainNonexistent; A:0; MX:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD014;
	1:Gp0NnFaw0mQvJLrMg+Pbv7Kzqx/xABsxkRZUsIKLztDuKtH5D9o2L8cNmK1Po9cFQNlvgTNfmjjxiRnejZS9LE544boJBZWFQEGBrKNQcsOZsF8gBY7FlNu4eVJLTf6htU8iAYH41Ku8zogEH0zx8QfhBjxCdQbjZZPDPd+/C7Kt62g/8gopzn7GjdlEtLqS7ilkFV4cAIEaqwEkvJS3HN8gzgTcksH6nCeZPwkXeUX4Ezb3BnjyLqW6u/g/sSOuhKq3fCvgOihvLQpmUXOQMnabg/KUQdifACO/xFee4HjX09ds8tn20WGS1jK3pS8zAMrwYzikOS13CaVeiCKf+LWt7zbHTLZMc7gj6YdiYeBDM0COYKYid8UIO7HlY/bCGKxXoMeT5AmqtBRF2dDwujxH0Wq0AznZnZ7pAGEGJSiM6UNvZuJdMZlGP+Ibk5gl
X-Microsoft-Exchange-Diagnostics: 1; BLUPR03MB373;
	2:v097v99Zvv4qAE+K243rKOsY/r14ciCuMQXrpJGiGHpse+Ym2Rad2B5naHSlPkPGgw+Yve2bU4a+BoIm/ziFsmlMpo6FisbiZu/zqbkAqW7rvAbpxQ8vLb7n/r8Goh6/hGsc1Z6yosuMHJjQD4NKDmUpxcKfV4T4tEGNWququyiWyT/tMSXCodtmC+MVIusu;
	3:nqsjzviqv3EOia/70JjcRzjn9esjunhDKBoosaP8RTkgfd7kbmeHqZuLvFrYhR4eQkeKi6EyiOPswTH7Cuus5bUtrVpYVH+OA4mv9G2ZUsmBkaZrI1xlivOFxJBAdN5HvcD+9OGMbK77pfG0UM4osqKaLK/IIRPqlF5WXhssVZBXda5PIvo2eRH2f7yM9elTLS8J3dHZWjdznQpL9yfBz1wdgVYwXw1yiBVwXIO4d7Q=;
	25:kiMw4UeHK8si+Feo+sGuPl2flxksBpNhzPELdsSLQZOe6U39x8Aar/WHH8mSS0omkhZSNjw/3v1w/nmMe/LrrBM3ZrRN6w/rwFDL5mQQGwwSVTo21zyQ1I0IWwhASYaTdfTTEW3ra2dtytlGjxByFYcA3AEO5+WMkOfJNWDLo0EgGL5lRFQWl3XoJupCx/QTg5GyJhvMr83aOGrgXBJ1QaCjbyOmpnUKm74UU+bW/0O6f4otLh3KX+lgmrO4VeapXoUAPs1MDip4eRznYPEPsLtQoJw3T0jqy0MLcaDUsPpMIXt3wVsgUjRXNCI/VlBcM1vgCmszxg0+MAZY0gzyncZLZckpPewLC/8yFec4MxYUfYOdJfa5DABMcA9JHvYTLSQtRlFxNwBNZ0stOguCWl0Mf6wt2yKhtW0756FeygE=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR03MB373;
X-Microsoft-Exchange-Diagnostics: 1; BLUPR03MB373;
	20:2u0bQ1p5K5/O5B7Vs6EuiG5FVrrkRTwS5jWoCyDMQbN6clgTcV3FzcTA3dbpo4OVMUeF9R8oC5/MeRsvtTl370QLI8JmG2MHT9RCiEDiP3CGET5hAypsbRsGzDSg2SOQJ+w38EzyZRa7Zq92hKZRHusx3rD2x/+gmzUcuMobIhasfqCE9g36MzcQBQGDHZLzZCiCh6oMwunXWiGrvbe9rj2sGY0kl76R08GMHrPzi7XibX5yW4e1W+V3dskywM7rrzwAa3Q9TH+h3UlTb5WXS9eatYNoz/IL+BdQJykNxvLSYeWoIxMA54kPNIuu246OgX9vLc6i7CyqBFpx7cCALsnu1sprQRwMOUB7mxdISUC6Udy0ncx8FVOEgCvu7nHg4NKpR8Hakk1EnV5zMDRS1is4PWBHoJm4LwzZQ6bKEdJUiZEMvoirBlOC23Rg+dwNvurH+2BmRuXAAIDLzt1oyJVYRHcNIHyMwTGB10BEY8M6troreL1bKFDOewl6UCZE
X-Microsoft-Antispam-PRVS: <BLUPR03MB373F32545AA383E18F2583CB3550@BLUPR03MB373.namprd03.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(219970919918780);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(13016025)(13018025)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:BLUPR03MB373; BCL:0; PCL:0; RULEID:; SRVR:BLUPR03MB373; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR03MB373;
	4:JtIQ7QszvF9gBMUIgGu8ctRrnt8sz0FSewx1pS9doMLHQATSvY9Rqc6nTFbG+kjKTIHjVESGcpxQERqW2fSAblqn36c7uVu/r6SszXOOyS5i6V3NNwRzmmNFMYh2Y1mVjq63axD7eYT6kk6izOUTfr29i2LkIE42Y0QRLXEO34Un9O/5nhM3Is0d2LfYuH19CpHLurMmcYGe4ynFI62r/1p28JgrtjEQ7QUbtmbuuXVtvWhOtveuAgkOZfqXwemZ8GC6i5VxhSiWtVlUDLxQOuuO21mEo3Lgexr3a947Q8K2d4UkWsXN/FohVZ6/Fxd8WBMwTGWUOLY87mF6B5e2mA3gBWyNlBzbpgtRZQkUlGbvq8ulyfJ7ChEX9O84FRjLePdrfTs7y8ccLNvMnrTHjf6BJiGWXtkujWN/xBOCghVdr9oTpoItQuoLxvloZDUe2Gzm0/qp+ORL55/RP7ysZYHtM6VvQF6xppHh9Z2KhWI=
X-Forefront-PRVS: 09749A275C
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTFVQUjAzTUIzNzM7MjM6bVAyby9WS2twQThSTGRWS0VYcVVyRXVyMUQ4?=
	=?utf-8?B?SVd3N1hESmpCbW41OTZmYTRBV1pnUDIxWS81Q0pxTUdCMzhyYWxSTGhTVDFq?=
	=?utf-8?B?bjd4bWlJU3M2a29ya1ZzZlRCV1FLVHlUSkt4aExHcENIOUNlZnp0dzRtSWpQ?=
	=?utf-8?B?NWpNUHFCNWxoWlU1bGNid2dScEk4L0puUEZKOEdGYisxd2h0dFIzUXFGOS9q?=
	=?utf-8?B?ZS9ibEQzKzE1NnhlQWJCVmQvM0tkUmg0bE1QbzR3Yml3QllybVA5ZTBiNmFL?=
	=?utf-8?B?eUJ3WlNVZkdqZ3haQmxybFlPQzN6cklHWDFBVVBDYUtrbnRMMVdCamJ2azV6?=
	=?utf-8?B?STJlaTJ1bVhJUHlMbmtoYU5wakRtT2s1U0NabmhNNTRscyttazMzVWw4VU8r?=
	=?utf-8?B?eHhWejZGWEJkV1FMTWQ2MTJrRERJQ3VNRkxsakU1NnZ0NDA2UGZiM2NJMjNT?=
	=?utf-8?B?bmw2ckU2WVJPT0Q1VC9mYWtxRUliL2Y2ZUxCRVFDeUs2NGczRUh5cE5HWlpm?=
	=?utf-8?B?L1pXVVRzbSt4OXVLZnhBdzJhclk1b1dZSGpMWDJGaGY2NjJyRFRqbmMvTmh6?=
	=?utf-8?B?eVFRSXF6Z2VFWlF1VzdUWE9rWEZEZkpsTjI4OUNhZVcrRklmTGVnTk5vOXZD?=
	=?utf-8?B?MjV0Vng1aUQ5UGtsQUx6NjZHc1I2R1lpa1lhZkV2Y0ZzTkRObWNPYUEwNzRS?=
	=?utf-8?B?RzVkWmYwOVZRUis3RTZEMno0bkFhY3I4bmVqOXBwOHB4WlJUNzZaWHJIUGgw?=
	=?utf-8?B?N1hTNUtQWVdSQzlUL1JzdUt2MUFENTFkMTNqVHdQYXd0OUU1YTc2R3EvUk1U?=
	=?utf-8?B?bGtHZ0NNOGJsTkdVYlNIckRxYW8zcTQ1WFgwSUIvRlhTU1l4VUZpbk5helhH?=
	=?utf-8?B?MEczVnJUQzE4TGt0VnJzVStNMXJpNWtkSmJYNTBRMUxyTUNleUFydjVrVVNG?=
	=?utf-8?B?M1FQcW1hWmc3M3BIVGVXbmk2TTBBNHhucnFPbFJuMkRaQzJpcm83Y0wxaklH?=
	=?utf-8?B?Z0hielluQXJvaVZQRHE3cnYrNUZEa1dBd2c3NHM1TENJTnB1dkNRQm1WWEFF?=
	=?utf-8?B?NUZpbnRZTWQ2Z0prbFVqTE5tRldUZWtMenRldlFNZ3UzWjJwVDYxb1laZnZD?=
	=?utf-8?B?QTJyVG01WUc5QkJYQUlMaXY3NlUweDFpb1B3a0FueEFYYytoV3BGaUI2TUht?=
	=?utf-8?B?UEx1ZWdZWnpGUHhESzhZSVBtU3JLaGlqS1VPM1M2bnFtblVaRmxna0cyUC9Z?=
	=?utf-8?B?bENWdXpmQWpMR3RCOXlEbjFnWk55cndzWmxVSG5ieTNtRkVhaU1qb2tSK1F1?=
	=?utf-8?B?ZE5jRE04WWY3enBYY0g5eEJ1YVJuRGxkZnl0VFBXV1JFVWI2SVJZRWRwQkZo?=
	=?utf-8?B?V0dsdVd2SzlCaUdmY1NDcFUwVjMrQ1FHVi9MaUdQRkhXRWZ4SU00bXJoTjFI?=
	=?utf-8?B?TTJTTFBsVTgyak0vQ3JURXV3dkpZajFxbVVCV0NuVWZiZTV1Sm5SekJpUjgv?=
	=?utf-8?B?VWk5Z3g3MDJLeHVjVnI0VVhVL1lSdHd1cEdkUVpIdWpSSW5HZVhwRnYzRHA3?=
	=?utf-8?B?eGFuSDg4aHVnZTRSYUU3WjhwQUlqMVFxR2pqYUJFRm50ZkVYS2d2dFI4SCtF?=
	=?utf-8?B?NEQ0TWtDRjdTNFoyLzZyeDAvOW5peHJXckp5WExWSE5BWjQ2M0k2SHlINDZz?=
	=?utf-8?B?STYyczk0WVQ5SDdoaGxsRVVnOE5wV0VIazNMaktKUUNsSHdYNXlyQ0RMcU1s?=
	=?utf-8?B?bm0vbWRITlF2Z1kraDJBT1FuelgydGdXc0tHVzhaY2htK2dta05ZRzFnT1c2?=
	=?utf-8?B?dmI5UUk4Z3dJZFh1MFBaSyt6SW43aVozejNzYUtDMS9tR3FWdE10anlDUzBE?=
	=?utf-8?B?N05pb3k5S1BzT2p3cDBtcTRJS1diNnh0OTFSQzB5L09scitnejM3L3duK1RE?=
	=?utf-8?B?SmNNZU5UZkhLTy9ieTUzNlhZTUNmQlc4NHA5a3pLZFZ5cXJDRXRmQ3RZQm5T?=
	=?utf-8?B?N005U1BUdEFiU1dzNlZJKzhxdC8vN0hIN0ljb3U2emllSjRnMk1lQ3JDL091?=
	=?utf-8?Q?s/HYfWEhHk+v0p6t3Lk3NCu/?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR03MB373;
	5:La4qZJcwTC55cX37YBVDJ2J+SMnf+eOHDRmUrVseXxDtIX0J1YrltBRDxKt6ldVbSQattLGgkCN7azotp/0nfCUnhB8q1EFTn2STqwYHAkaaTLYCvcGBnz+iRA22JAsquuz9OqlocbABrr6ud63HVA==;
	24:zeGQRvTi5ZibE0KmRM1jYs8bLHuHcFKSxC8FeHq/jem20im9TzClV85wp7c+keVAk8s7qL0wX92/G0ectNpwsSX1mv+mHXaZrKr9ZR0DI/U=;
	7:PyoXAY7p13v1VKQ4K/NzH9Sfv1afPEtBxduIKqtV2FMzPn/6Po4iIhW07xGaOo7oKeecrMaDM1RzZfXI7SXTSurVuPg2dKJJE7bvALctlYmEKxLeKp3k0Rg4wMmAiR9O0y0vK4eBNJfRp83d0MkNYFGGDpyQL50XaT8Z12+V5Kw028ZjhnT38CWjKAQYPF0yscHLhzaSxQ8o+91inXBk8w==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: jci.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2016 13:14:09.2490 (UTC)
X-MS-Exchange-CrossTenant-Id: a1f1e214-7ded-45b6-81a1-9e8ae3459641
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a1f1e214-7ded-45b6-81a1-9e8ae3459641;
	Ip=[23.103.243.116]; Helo=[062-smtp-out.jci.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR03MB373
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Mounting USB drives on a "read-only-rootfs" based system
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Jun 2016 13:29:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TXkgZGlzdHJvIGlzIHJ1bm5pbmcgdWRldi4gIEkgZGlzY292ZXJlZCB0aGUgYXV0b21vdW50ZXIg
c2NyaXB0IGluIC9ldGMvdWRldi9ydWxlcy5kIHdhcyBjYXVzaW5nIHRoZSBtb3VudCBwb2ludCB0
byBiZSAvbWVkaWEuICBGb3IgYWxsIEkga25vdywgdGhpcyBpcyBkZWZhdWx0IGJlaGF2aW9yIGZv
ciB1ZGV2Lg0KDQpBbnl3YXksIEkgdGhpbmsgSSBmb3VuZCBhIHNvbHV0aW9uLiAgQXMgc3VnZ2Vz
dGVkIGJ5IGFub3RoZXIgcGVyc29uIG9uIHRoZSB0aHJlYWQsIEkgd2VudCBhaGVhZCBhbmQgbW91
bnRlZCBhIHRtcGZzIG9uIHRoZSAvbWVkaWEgZGlyZWN0b3J5LiAgVGhpcyBhbGxvd2VkIHRoZSB1
ZGV2IGF1dG9tb3VudCBzY3JpcHQgdG8gZnVuY3Rpb24gYXMgaXQgZGlkIHdoZW4gdGhlIHNxdWFz
aGZzIG9wdGlvbiB3YXMgZGlzYWJsZWQuICANCg0KVGhhbmtzIHRvIGV2ZXJ5b25lIGZvciBhbGwg
dGhlIGhlbHAuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBNaWtlIExvb2lq
bWFucyBbbWFpbHRvOm1pa2UubG9vaWptYW5zQHRvcGljLm5sXSANClNlbnQ6IFdlZG5lc2RheSwg
SnVuZSAxNSwgMjAxNiA0OjA3IEFNDQpUbzogSmVmZnJleSBEIEJveWVyIDxKZWZmcmV5LkQuQm95
ZXJAamNpLmNvbT47IENocmlzdG9waGVyIExhcnNvbiA8Y2xhcnNvbkBrZXJnb3RoLmNvbT4NCkNj
OiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBNb3VudGluZyBV
U0IgZHJpdmVzIG9uIGEgInJlYWQtb25seS1yb290ZnMiIGJhc2VkIHN5c3RlbQ0KDQpPbiAxNC0w
Ni0xNiAxNTo0OCwgSmVmZnJleSBEIEJveWVyIHdyb3RlOg0KPiBTb3JyeSwgL21lZGlhIGlzIG5v
dCBhIHN5bWxpbmsgYW5kIHRoZXJlIGlzIG5vIC9ydW4vbWVkaWEgbGluayBvciBkaXJlY3Rvcnkg
cHJlc2VudCBvbiBteSBydW5uaW5nIHN5c3RlbS4gIFdoZW4gSSBpbnNlcnQgYW4gU0QgY2FyZCwg
Zm9yIGV4YW1wbGUsIEkgZ2V0IGEgYml0IG9mIHRleHQgb24gdGhlIGRlYnVnIHNlcmlhbCBwb3J0
IHRoYXQgYSBjYXJkIGhhcyBiZWVuIGRldGVjdGVkLCBidXQgSSBkb24ndCBzZWUgYSBtb3VudCBw
b2ludCBhbnl3aGVyZSBhZnRlciB0aGF0Lg0KPg0KPiAJcm9vdEBteVN5czovIyBtbWMxOiBuZXcg
aGlnaCBzcGVlZCBTREhDIGNhcmQgYXQgYWRkcmVzcyAxMjM0DQo+IAltbWNibGsxOiBtbWMxOjEy
MzQgU0EwNEcgMy42MyBHaUINCj4gCSBtbWNibGsxOiBwMQ0KPg0KPiBJdCBzaG91bGQgYmUgbm90
ZWQgdGhhdCBpZiBJIGV4Y2x1ZGUgdGhlICIgcmVhZC1vbmx5LXJvb3RmcyIgb3B0aW9uIGluIA0K
PiB0aGUgYmIgc2NyaXB0LCBhIG5vcm1hbCByZWFkL3dyaXRlIGtlcm5lbCBpbWFnZSBpcyBwcm9k
dWNlZCBhbmQgdGhlIA0KPiBhY3Rpb24gb2YgaW5zZXJ0aW5nIGFuIFNEIGNhcmQgdW5kZXIgdGhv
c2UgY29uZGl0aW9ucyB3aWxsIA0KPiBhdXRvbWF0aWNhbGx5IHByb2R1Y2UgYSBtb3VudCBwb2lu
dCBhdCAvbWVkaWEvbW1jYmxrMXAxDQoNCkFwcGFyZW50bHkgeW91ciBkaXN0cm8gb3IgaW1hZ2Ug
b3Igd2hhdGV2ZXIgaXMgbGFja2luZyBzb21lIGRpcmVjdG9yaWVzLiBUaGUgL3J1bi9tZWRpYSBz
aG91bGQgaGF2ZSBiZWVuIGNyZWF0ZWQgYXV0b21hZ2ljYWxseS4NCg0KQXJlIHlvdSB1c2luZyB1
ZGV2IG9yIG1kZXYgZm9yIGhvdHBsdWc/DQoNCkZvciBtZGV2LCBJIGltcGxlbWVudGVkIHRoZSBh
dXRvbW91bnRpbmcgdXNpbmcgL3J1bi9tZWRpYSBhbmQgdGhhdCBzaG91bGQgYWxzbyB3b3JrIG9u
IHJlYWQtb25seS1yb290ZnMgc3lzdGVtcy4gU28gSSBjYW4gcHJvYmFibHkgZmlndXJlIG91dCB3
aGF0J3Mgd3Jvbmcgd2l0aCB5b3VyIGNvbmZpZy4NCg0KRm9yIHVkZXYsIEkgZG9uJ3QgaGF2ZSBh
IGNsdWUsIHNvcnJ5Li4uDQoNCg0KPiBGWUksIEknbSBydW5uaW5nIDMuMTQga2VybmVsLiAgSXMg
dGhpcyBhIGpvYiBmb3IgYXVmcz8gIElmIHNvLCBob3cgd291bGQgSSBnbyBhYm91dCBjb25maWd1
cmluZyBpdD8NCg0KTm8sIGl0J3Mgbm90IHJlbGF0ZWQgdG8gYXV0b2ZzIG9yIGF1ZnMgb3Igd2hh
dGV2ZXIuIEl0J3MgcGxhaW4gc2ltcGxlIHVkZXYgb3IgbWRldi4NCg0KDQoNCktpbmQgcmVnYXJk
cywNCg0KTWlrZSBMb29pam1hbnMNClN5c3RlbSBFeHBlcnQNCg0KVE9QSUMgRW1iZWRkZWQgUHJv
ZHVjdHMNCkVpbmRob3ZlbnNld2VnIDMyLUMsIE5MLTU2ODMgS0ggQmVzdA0KUG9zdGJ1cyA0NDAs
IE5MLTU2ODAgQUsgQmVzdA0KVGVsZWZvb246ICszMSAoMCkgNDk5IDMzIDY5IDc5DQpFLW1haWw6
IG1pa2UubG9vaWptYW5zQHRvcGljcHJvZHVjdHMuY29tDQpXZWJzaXRlOiB3d3cudG9waWNwcm9k
dWN0cy5jb20NCg0KUGxlYXNlIGNvbnNpZGVyIHRoZSBlbnZpcm9ubWVudCBiZWZvcmUgcHJpbnRp
bmcgdGhpcyBlLW1haWwNCg0KDQoNCg0KDQo=

