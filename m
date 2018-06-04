Return-Path: <patrick.vacek@here.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA995E00C80; Mon,  4 Jun 2018 03:36:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.0.90 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3651 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Jun 2018 03:36:22 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01on0090.outbound.protection.outlook.com [104.47.0.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 387DEE006B4
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2018 03:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmcs.onmicrosoft.com; 
	s=selector1-here-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=0tR+q29YWqO1D4l4pAOjuVf2jvrMm3rfof8wfephvrc=;
	b=LWv5u2BFQ0qRFhFjN1Bs2xE/HDbU4cTto1AOw3JQkXR3FlhNQUc2SNbsYHNmkvsHVu/bHTaFxyrvlJ0yg0uVt3BlTLgVpCLcNCXbeoux1kMTpRQLNRcckD12OLvcZvHn47GsiqEKGm7Y+D7BQ6uNBsuwOJmMHS0rXWp0I9o4/L4=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=patrick.vacek@here.com; 
Received: from [192.168.1.113] (87.191.159.149) by
	DB7PR04MB4108.eurprd04.prod.outlook.com (2603:10a6:5:26::13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.820.15; Mon, 4 Jun 2018 09:01:15 +0000
To: yocto@yoctoproject.org
From: Patrick Vacek <patrick.vacek@here.com>
Openpgp: preference=signencrypt
Autocrypt: addr=patrick.vacek@here.com; prefer-encrypt=mutual; keydata=
	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
	j64UOX5oCSfUpA==
Message-ID: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
Date: Mon, 4 Jun 2018 11:01:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
X-Originating-IP: [87.191.159.149]
X-ClientProxiedBy: CWLP265CA0094.GBRP265.PROD.OUTLOOK.COM
	(2603:10a6:401:50::34) To DB7PR04MB4108.eurprd04.prod.outlook.com
	(2603:10a6:5:26::13)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:DB7PR04MB4108; 
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4108;
	3:FNY1+WFB2qZy/8PNOLDBsJjm+O+2raHIvP4fxTD87EHS0EXaPLh37U6o3IODu+51W7Ug2C1JFteqE25ktmfce1nTGqMp5D1DRlmuqAERWC61cKAL8hXO98krIFMpjK6ugUnjEFsytw6DK4zAjYd3lGHG9VExj9S9E4w/YvjLgExCVzPPIW0iW8I9P6vJR73unwZ4xFG1sZpgxm5KZ7W6tgpRQXyfKPUCQNp4TnSbQsh3udUdyoqq3ZJcKU0f3B2U;
	25:T7aVf6XxwoZ8P5jz+6r9QTb3+EtxyzXrbLOeqpPJrDDT4vvglYSI4YTp4o+OLh7Mh4CANEh+0mNTjxAur3LpcYQM1RGcECGP4NpaIzEMvUbg4i0YO007Nn3p0zTISbke7jMSyioWVkVA1j8j0KZRtUJUkcwMRpGkkHyxkrSTbpw0EjJW7Cs2osVPas2OJSMTLQFYx7Hwv12kXPrwz01Z8gltEITPExIoF/3QLg/0Y9UMJCnudv5x55lxeHRRPZB+RPxY2IcHlUDPo551+WyQbW9YsdnqWhItBcKidXWsi6/8VxjCkiGVsgoEDfDOT/kYIsS2jrvSKpRXtCuRoqsQ+A==;
	31:PQEBnhZz4cyXYxRIoT/hNxXws62LnM/PPn/qs/J/8A6gmbk1Pfh2k7YDK5E4PEfUBxkHfTDfxV8XcVaJPkSjwgij5MPyKSok9AeF1wx2I8hqk2mAo5qgpM7nyNYY1ylCplpkc/BNL9F0xTDuHNOqdR+Iv6SQCg8yZqJ/TJnD73Q4UcjiiGxulSiFDcBo1TG4nnOoXj4q5eR1YLG+kUuqNrITKVHDO7e41nTep/loCTc=
X-MS-TrafficTypeDiagnostic: DB7PR04MB4108:
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4108;
	20:lZjDtrD+VirO80tIzgpoJsywtikGxmpzLoOb46DE2X5rYjJAxnqk0jq5uHGZ76+xYbTt2yn0cJnhj5fJoLLzo4Dh2Sa8yijFZA3rS9giBAbtdLg+Ei5yFs5MyzYvpoXBgMafnSQE8qttOy8yQ+iciQ18XAOvFu2FzEQs9vyRykZ0WwiWKqQGNCiiyaBkpw0ssZJPM965MaQ+mJyeN315045nv/KEDWY0qdtmUvKTEEUQQBtv3+3d0W4PXuHKeOIjnbqO1atUYzbCfZ1itLKz/d1yDREhmx6MHVXTMjBBFjyu//MEONhf4tellzGq8nZrNAfZETCd/Es7QmGYFv+O/KdlM+g/G4jOYQuPam5TX5B03Gywjol40kK59LPf40QcXpWu9KkrGLFajUGAF6RyQA/OZss5YuMnuMvYl8K054PTIec6loo6kG8lz9xoywDuDwiHTraS1ah90PxYeHySoPS5ZpEJ7Tc4AXu3Wk2KvmFHlz/Llpx8hjj2AYPYhkvt;
	4:wotWZzq4H8Ez89DGe81mtZpn2wK7Plpa6k1eM0ALqktee953lg3vsfRQ/+/a0D1REd1BEOZomixk7Tafgtgdm+N87ON2F+iLsCbJ6YnFymYxu3jpjS0DaO4oC6mV9zYJIHAjLSx2wRFOsXPoUw3jqLerzKGdymwEHNisYuAPls/NhIxmhLdSFKTeuCSNK5hDFDhe/d74KlXFHoVDoR5UPTOXoiiOC2V63/28kHB6q3QIEwOPj4W5QHUimDlmssr6juvxCTvQ8ZRYYKyGPYQ98w==
X-Microsoft-Antispam-PRVS: <DB7PR04MB41085ECD1ACA2A72DCDEA9A88D670@DB7PR04MB4108.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3002001)(3231254)(944501410)(52105095)(6055026)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(6072148)(201708071742011)(7699016);
	SRVR:DB7PR04MB4108; BCL:0; PCL:0; RULEID:; SRVR:DB7PR04MB4108; 
X-Forefront-PRVS: 069373DFB6
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(39860400002)(39380400002)(366004)(376002)(346002)(396003)(53754006)(199004)(189003)(77096007)(52146003)(2486003)(65806001)(8676002)(81166006)(23676004)(81156014)(486006)(117156002)(305945005)(6486002)(50466002)(52116002)(105586002)(65956001)(106356001)(7736002)(31686004)(6916009)(97736004)(6666003)(66066001)(64126003)(2906002)(956004)(16576012)(316002)(478600001)(2361001)(53936002)(58126008)(47776003)(5660300001)(2616005)(68736007)(25786009)(476003)(6116002)(3846002)(36756003)(2351001)(65826007)(8746002)(16526019)(8936002)(386003)(186003)(3480700004)(26005)(86362001)(31696002)(44832011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB7PR04MB4108; H:[192.168.1.113];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: here.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtEQjdQUjA0TUI0MTA4OzIzOmVLVk9wTUFSWUs4NzRLWkYyNC9HMFcrWnA5?=
	=?utf-8?B?a2ZPcDM1SWJGcndtdG5HWTFHQzNiR3hSZ29raE1zMXlMeWllaEJuVExoV0JP?=
	=?utf-8?B?cVVlcXpCVk82Qmw3WGpjdVB0QUV0dzdoY2xLc3dSbzJMTVZ3SFRKMldqZVJD?=
	=?utf-8?B?WkxIN1JLZ1RkeHk3N2U1Q2c3SSsyV2VISC9ZZWUvVURJZlI4Uzl4V0w4ODZB?=
	=?utf-8?B?a0pESXJBNWxPUUZ1VDhwRXZFRTljS3djM0NOaWdLRU9KMjM3cUJ6UERJOU5r?=
	=?utf-8?B?cWJhMTl6NUplNlNKYk1wQnFCL2VsYWZIZFFxMGZkOE5SbTZpNzFrTlBKSnNB?=
	=?utf-8?B?M2ZCSEhHY1ZGMjVOZEdZK1p0YW9QVTdVa2NCQldoblQvSHJ6MXhrRWJFZ1VT?=
	=?utf-8?B?Wkp0TTBXVnpscUhCbEtxR2RmVmVscktlVFV5dGtxUGlCTzlMdFJCdVdiUXJB?=
	=?utf-8?B?SmlxRjBzM3ZLWmJjaEdmVEJxU25JKytTOHQxQ2hFZXFNUE1YSlVBY2J5RWk5?=
	=?utf-8?B?aDNkNmttYnE1ZXNwZFpLWllMbmY4MS9hOE9vZXVHZjFBRkF3TWVWTUJmUnF2?=
	=?utf-8?B?Q1RDQmp5MjQ0R09jV2RQYjR0OWtyMVp1Z1l2YmFOTDlweURlMkJWZ2dLVU01?=
	=?utf-8?B?TzZZL0dnMTNoUGJpU1I0SFZURVVlU0VCRW02cWhKOUlYVlhiVFlkRjNUNWZp?=
	=?utf-8?B?SDhFOG91KzBlT3lTZUtsMGh5SGh6dzI1NmIybkZJd1dJUGN5Z1BIeVBrdGpa?=
	=?utf-8?B?R1pZN0pMYkpGV1F3OWxnZG9rMXUvZGFuQTI1bkE1cW95VkhON3J2UWJxb3A5?=
	=?utf-8?B?MUNOMzdEdmtrSDFMUHF2U3Z1NmdSeHdIa0psY1p6NXBPY3loR2toYjV5dDB6?=
	=?utf-8?B?azRrTEVRbGpoMGRtK1R6ZGNPN1ZRWXJFNUxYbHNMUmZFenBOUzA0ZTc1VHRk?=
	=?utf-8?B?blBRZHhBZ0FXQlZsS3NZUkNqajdYVjNla1djUzhFcmpySkNGZWVqT2FwdnZC?=
	=?utf-8?B?OUZlV010RU1OMlA2U3Q5RHlIU1dhZ0R5SndQZXhxeEtjTWYxcDJaa24xYitu?=
	=?utf-8?B?dFJwNWY3MmlqRWVuMXRTU2NVa3JDZ2RZU1dGV3lPTFRURmVYM2FGMW94cksy?=
	=?utf-8?B?Q2o3Q1JPaldVNGp0TE9sVnRCRHR3M1A2ZnJHdGhFNG5VVVM1MGpUK1FkaSsw?=
	=?utf-8?B?L0pUTXRycGJydlkvYzBoSEM4VVZwYllEVGZLUmFTOU9NMVhCZHBJUDhPVHY3?=
	=?utf-8?B?L1poRVptY0xBMG5oMG9WRTN5Y3dJZDkvQ1pTYUNKeU5FRmxDRCs3R0lwVkJr?=
	=?utf-8?B?Q3VKcG02NjZ0V0FSZExidThTWTJudjNTa3lVMEJEKy9ZK3JlM2Y0SmJFVnli?=
	=?utf-8?B?am5sbHlGQlNIZ01ha0hXY0FwYXdhTlphWWpqazU3VkpkMGE4UkRyOEw5Z3JN?=
	=?utf-8?B?UDBIcVlXZCtFSGtvdllRREthdUR6SXpvZG5PWDN6QW1jbWc1YUFOWEtoVXlz?=
	=?utf-8?B?bDdDVUJ4b2tuYmpBWWs2NHVnb1NmUmRDdUNwcXdCZ2xrajJHN2lnNDU3SVI0?=
	=?utf-8?B?RVZrQlZuallIQWMwT1R3b1VIMHZxdzZVZlQ1dGt3c1VqZFNaWCtBNGRhc3A4?=
	=?utf-8?B?Lzl4bnRLQzc1RkhuM0syaDhBcG1ZaUl4UGJPcERlQnBVanBSRVd5cENiMGhy?=
	=?utf-8?B?SzlYZndvUFZaQXhSbzE1VllITzhIUEhUVytrUjJGR1V3ZXNmYWxjMFM4bXR3?=
	=?utf-8?B?SGlJcXg1bXl6WmtmSEYvTXA2UU1KYVYxUDJJd1FCeElsYkhqTGRqVkdWR1hu?=
	=?utf-8?B?bmZPeHJnREtWU2Y0c055enB6UEhia0Q5WmRNNzlyTkdqMG4rcFZ3b1g1ZzA3?=
	=?utf-8?Q?ukRvB6nEh/L4rBjc2XXqZUUNJ/DF+1ai?=
X-Microsoft-Antispam-Message-Info: wihSpwbrCFD3XuCtunSpyXJFmCmBAyTtU9yn3jhxTA2DqC6WhZS/zyc66w5vIUbVxJnWJViYcahVxqUfFTfSuasIpXIb+elWDePu/t+ps3uIouL2P71Unmh5D+d9ydz+9b1r+bJ+tlVotL6J0nD3uult7zF1SdwBvt3CImyAWVl7gUttg+be4jdeVbHOmuZK
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4108;
	6:NkxxAzjKwfRc41ShK26s3Xt80bBGv4GcpbhiyasCnX4hCjId95oaGy75LI+bcGzPVyoeyzO3gVn/srs6q8B2buWrb7mmEkxZvln7eV9GyKmw+VcxTlsLip94V2SaTp07wYK9y5tTubadYg14uhMWKqg5dRyklnJqBjGdwLJZm5JNcfzOx7a85pnitG4vC5JwNM56bHnfPzMPY04o68l+crdwd1aLwMHSWDzlkcWnngSH1ND2GJPkGCFTIFw4gySG3dqo/tT94+l91X0dAJhyFjGnMYUj97taQ30fW3q9pWQi2qFA1SmVzcsdas1krd5nWjaJ7ltKVXcGORWEKlbwqtXPDt2xA+yyW+TlQC5Mn2G1E/8hBjP8jecAAEBNmV45U6vaFPXTI93vVlkT66Qpdj51bBUk8hQSS/CxV8gE/szjoCHW6bAy6Up3sUwkfuXbT/i4vr1A2W2AyKeUHmWm1g==;
	5:PQ0m//BY+vAu8ELP62RKpnndw+0a9Ge1LzSBODuCXe9q82XGQ/BhzVGQXeZIkEHYmqMAcKcREnr0iYhaUJPzeXW5KHTzZa7UKbh7H36DQLJrFyf99G+6Ydp12ArZyLIz8dymJ82BJAzyIfcUaJFsubMAtpvY3F4tg8JbN8sVDu4=;
	24:kWexkHDvQLFoC9YrRE4gn/neTSSuE1NCA8heTh/D1TgpQ/+YIrYGAFgiG8Dbc7CtKcAxCru0FeEKHAic2lWtseAALdsAnrZP5I3+rOx/S18=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4108;
	7:W/RmlyZz1zdr/36OZw09qsWJ8HLUA/6EZ5Mu1imLQowXh/RGnS/rMGxCGfrDTCsrl13aqgKE9BrvVcy1GdXJxA0kNITCdkhl++by0UVwSouAhgs9Jph3QPruSvPy5G6reOpGJMJmu69nHOmBigBe6aXnUJD7BA1aplEke2I1I/AEFx6tLKIbhfQ7DCnC8AVxgF7OkcP+aDphHnXrgzktp98rjXbp+PjL04JtLsLE8JYyj+eCVLUUwUTdRCqZuc1b
X-MS-Office365-Filtering-Correlation-Id: 37d9fc0c-fd93-4d6a-863b-08d5c9f9bab7
X-OriginatorOrg: here.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2018 09:01:15.7547 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 37d9fc0c-fd93-4d6a-863b-08d5c9f9bab7
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d4034cd-7225-4f72-b853-91feaea64919
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4108
X-Mailman-Approved-At: Thu, 07 Jun 2018 08:19:20 -0700
Subject: sysroot not being populated
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
X-List-Received-Date: Mon, 04 Jun 2018 10:36:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello all,

I have a recipe (aktualizr-hsm-prov) that depends on another (aktualizr)
to provide an executable and a config file. The former recipe includes
`DEPENDS =3D "aktualizr-native"`, and my do_install() for
aktualizr-hsm-prov has a line something like this:

aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf

The binary executable (aktualizr) runs, which tells me that the recipe
can find that. (Although to be honest, I'm not sure which version it is
running.) However, it doesn't find the config file, and sure enough,
${STAGING_DIR_NATIVE}${libdir} does not have the config file I expect. I
can see that aktualizr-native is populating its sysroot-destdir, but it
isn't getting copied to the sysroot for aktualizr-hsm-prov.

I see this problem in sumo and master, although previously this logic
has worked just fine in morty/pyro/rocko.

Switching to depending on aktualizr (instead of aktualizr-native) and
using STAGING_DIR_HOST or STAGING_DIR_TARGET does not help, and in fact
makes it worse, as it can't even find the aktualizr executable in that ca=
se.

What am I doing wrong? What changed between rocko and sumo?

Thanks,

Patrick Vacek
HERE Technologies



