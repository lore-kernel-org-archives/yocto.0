Return-Path: <Amol.Lad@4rf.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29BA0E00566; Thu, 16 Aug 2018 00:09:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.116.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from AUS01-ME1-obe.outbound.protection.outlook.com
	(mail-me1aus01on0130.outbound.protection.outlook.com
	[104.47.116.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9F82E003D7
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 00:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=4rf.onmicrosoft.com;
	s=selector1-4rf-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Z+qHi4wYn3OvYFL3oInPu7UCtoGnW4h6pxVMEX4E5ZQ=;
	b=qJUwYZvzL0zzTMg5IdUd/Z32lxPNvHTrPFtnbL49rGZmhhIY0lhOzpR0FvQvTbZWf2VQ8bikQPfDVCJW9wV+3Hg8YYXYPWuR9brpmnnvNRPtreLnm5dpNKfzfHwVXWwz2MUffdhOoxL4CDdtOcMih0U5jcc6ifBJmLx0j4UH8lU=
Received: from MEXPR01CA0137.ausprd01.prod.outlook.com (2603:10c6:200:2e::22)
	by SYBPR01MB3851.ausprd01.prod.outlook.com (2603:10c6:10:2a::16) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1038.25;
	Thu, 16 Aug 2018 06:54:31 +0000
Received: from SG2APC01FT045.eop-APC01.prod.protection.outlook.com
	(2a01:111:f400:7ebe::207) by MEXPR01CA0137.outlook.office365.com
	(2603:10c6:200:2e::22) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1059.20 via
	Frontend Transport; Thu, 16 Aug 2018 06:54:31 +0000
Authentication-Results: spf=pass (sender IP is 114.110.34.227)
	smtp.mailfrom=4rf.com; gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=bestguesspass action=none header.from=4rf.com; 
Received-SPF: Pass (protection.outlook.com: domain of 4rf.com designates
	114.110.34.227 as permitted sender) receiver=protection.outlook.com;
	client-ip=114.110.34.227; helo=mail.4rf.com;
Received: from mail.4rf.com (114.110.34.227) by
	SG2APC01FT045.mail.protection.outlook.com (10.152.251.135) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.1059.14 via
	Frontend Transport; Thu, 16 Aug 2018 06:54:29 +0000
Received: from 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) by 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) with Microsoft SMTP Server (TLS)
	id 15.0.1365.1; Thu, 16 Aug 2018 18:54:27 +1200
Received: from 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f]) by
	4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f%14]) with
	mapi id 15.00.1365.000; Thu, 16 Aug 2018 18:54:26 +1200
From: Amol Lad <Amol.Lad@4rf.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] Creating multiple filesystem images
Thread-Index: AdQzGRVu8W/YW0b4Qm+LnMSYrineaAAfuG0AAGV6sPA=
Date: Thu, 16 Aug 2018 06:54:26 +0000
Message-ID: <49cd82495d75451a97ef377d4c9b9073@4rf-nz-exchange.local.4rf.com>
References: <df04ced4f6dc42808b725892b0a59aff@4rf-nz-exchange.local.4rf.com>
	<CAJ86T=XRZXCOZ2ghvjK1Fz+gCzX8AL4PFi5c3G1y3zM=kSdrWA@mail.gmail.com>
In-Reply-To: <CAJ86T=XRZXCOZ2ghvjK1Fz+gCzX8AL4PFi5c3G1y3zM=kSdrWA@mail.gmail.com>
Accept-Language: en-US, en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [106.51.30.102]
x-c2processedorg: b87d8f4e-38aa-47ad-a534-2cc14c7a88c7
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:114.110.34.227; IPV:CAL; CTRY:NZ; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39840400004)(136003)(396003)(346002)(376002)(2990300002)(438002)(13464003)(199004)(189003)(478600001)(76176011)(316002)(11346002)(486006)(436003)(426003)(1411001)(5024004)(2900100001)(106002)(47776003)(97736004)(72206003)(106466001)(14444005)(126002)(476003)(446003)(7696005)(356003)(53936002)(336012)(66066001)(23676004)(2486003)(86362001)(26826003)(39060400002)(7736002)(55016002)(26005)(186003)(3846002)(229853002)(81156014)(8676002)(68736007)(5250100002)(305945005)(14454004)(4326008)(24736004)(102836004)(108616005)(2906002)(81166006)(9456002)(53546011)(6246003)(50466002)(8936002)(6916009)(98436002)(5660300001)(6116002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SYBPR01MB3851; H:mail.4rf.com;
	FPR:; SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; SG2APC01FT045;
	1:8nG+PvrZNXVQQfZwdSRc24s/1idYO8TzS0joMKjJWKkLhI19DxYi9qqDaR3fvsXvs3Fk9xs3VhnBW7VO21+gaupleffuKzI2JkQI17ib5kYTWUF6JhcH0RaW48yaPiAB
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4176fb3f-9e06-4210-0de4-08d603451d97
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(4608076)(2017052603328)(7153060)(7193020);
	SRVR:SYBPR01MB3851; 
X-Microsoft-Exchange-Diagnostics: 1; SYBPR01MB3851;
	3:cVpPKGJ8gnLVnKUNwjR5XqCemc+ojHKHfQ9x9hm0rXUdjnCTrvzb59iE2coWm9Q3d4t1oBc5/XjKQ75buOTZ6HJ079a5yxaDX1fg6iCE79Nz9i1uhVnJVMGy/0ZkYUsmZwPvE6yQmsrq0fXUXLY8pNibC+u9WFTZleINGMxeRFEwpWPolVWOolDdPvcQhS2cUHr3VsOiacH/NImZ2KI02ckOak+yW0mtT0xytyb4vx5wDwGo8DYDVHtJVe76yYr7bFR1Qdn+PRLFHAo4G7ceBJk32n+q+xc9TDDMY3t3bLroO8j7VpDhktZlhEblnIX9fV0LWQhJOvuk48yEtUOO/cFdIJLedXRXLeNmA6Mlvk0=;
	25:EbZkJDHmIneKVs6sv0bfSWMZ/+l7cPNm5B6AAcxsp/TiyWBeKPYii6UBPkIKOk93AL9YbZvgNKH27SRZUnPM8n9GsPhzUpMxTPokwRHzlJhaLJx9XPaimY6RbUvB7xaLhSzpCDcLxwK6DgyDl8oJJpAK2Xg4G1yvyiTfi3W5Rg0yPbeP/QXvoZk5w1CqEShRQSgIxArNnpuUcjpkLVobVvVicWC/FBQkPYEhzv/KrWbsjJk7SYljeWJIZVABA5WEZJ75UNv8ynFkVZRaQCong4gG1dGKfZVOLxHb1N1Tmqi2zCZiuSZvhyKUs98lUadHJYbGD1jyC2DrtUhKKewqug==
X-MS-TrafficTypeDiagnostic: SYBPR01MB3851:
X-Microsoft-Exchange-Diagnostics: 1; SYBPR01MB3851;
	31:P9m0sDiwyD86oKSVeH6tW1/vKN/YRUlDXDSoMKJzORppt5IxBLxQPkKOujzwPWjWp/ylG913osCOE4EbReIMogqk4FBkw1Nb10h3vQZCxaGYq9Krg/5EUh2dX2UL4trPxXCmFq7je71tv8xfD3q3owu0nfJMpWFyvNE/YqHtQQxResps/kKUixFDEhIH//XGBsx1hGBMAzMohad9ubPMmCVwZt4B0xsDFajtR7Q90mg=;
	4:0fZzjUu4wgOjmwJg9EI3DPOcOu1Ci9zcWH+PCrJWwMJouAjK9GmTWr8znrNuBv0FOZGhWOqqycu+M6wjqxOP8msVPEeaVk/sLmRJC3YdsPp9guip9z83NPqJGlftE3vu7zktybbYKlH/dP+Ph1ss9A9gPiCwa8akcD3lKrUcMxEFpGuP4h+oqfFhP21w51rZyLln7sfVgCbDhu/W5F4U+a6sllrutwgP7t9XFfcVWWtqmhIJI0k7Y7nIsENzTHVAP4IKfWleV74TNfsqQnMR5cCGYMiwGdHKA6ZYksdiwHMiTGAOv10qz+/A0U/Eax6loC4/4+d62wttbqU6B06ANNrc7FpmWjcSetHLrsnAtfk=
X-Microsoft-Antispam-PRVS: <SYBPR01MB3851B5A44A72412109286D08DD3E0@SYBPR01MB3851.ausprd01.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(223705240517415)(85827821059158);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231311)(944501410)(52105095)(10201501046)(3002001)(93006095)(93004095)(149027)(150027)(6041310)(20161123564045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(201708071742011)(7699016);
	SRVR:SYBPR01MB3851; BCL:0; PCL:0; RULEID:; SRVR:SYBPR01MB3851; 
X-Forefront-PRVS: 07665BE9D1
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtTWUJQUjAxTUIzODUxOzIzOmRPVStxbHRmT1htQnpnenBNTWg1NGhMTTJG?=
	=?utf-8?B?SEd3QitndlZORUMzWE9WMmR5d3haUGNldFFKRlN1dFlRamFtdmc4dkJvUzNo?=
	=?utf-8?B?bXN6eWlrRFNsMGtWbDZFWEhRcUVHREJLU0pYQWJkYjJ4SXJ4ZDE5VldYQm9F?=
	=?utf-8?B?S21jK1loZXJoRFJFME15VzYwZTMwQkR6OTA3cnFEalF0ZUN5VzVhVFdXV3hR?=
	=?utf-8?B?b1ErMThYMVEycHpKWVhGLzdHQ0ZyV3dMeFhtMk54RTJ1SDAva0xiRklmT3Vy?=
	=?utf-8?B?MkNKT0xVRHRyN0RKMUJWVHZsOG5kZG1maXFVMTFiRDQrWUJWZ1VQdGl3Mmho?=
	=?utf-8?B?RjVPdGxIbzQwWFo2U3FoT29pYW5MYlVxbEdvdFU1Y0N5UEt1ZVI1MCtEcnZi?=
	=?utf-8?B?d1c1V01LamZiV1UvUHVBVlZJTlpZVnB6KzVVWnpmR0hpa1hSaUw2bTBpTTBN?=
	=?utf-8?B?dEhrNnhEVkV6VExEU1hreS9wbEtVS3RjNitWMDJnNjdhT005RTl2OEpuczB0?=
	=?utf-8?B?OVRPakZPdkRoUVFUYVlzSWpwYWJ1MUtFc0NJdHU1TWIzbjBXazhZNzJ1SVlC?=
	=?utf-8?B?ZDFSSy9ocW9sMWhMMVZ6VGxJWkQ0M3p4MytHQU1hNWVHR3Z6cDZFbE15eVpo?=
	=?utf-8?B?anJ6NHZIZmliU1dUUGN5TktOaGVJMlFtZXp5Y0ZEbm1FdmFIcGFtRUpoQVlS?=
	=?utf-8?B?eXJnbUFrNWhJbXpTczhUcEFSV0JCbzkvTC9RTVp4Uml0ZnlRQXJaV2pFdFNJ?=
	=?utf-8?B?WU9pcHRHWllFclRZYWUwdWJlL2ExWGkxV1pGb1QrVDJQYmQ4S0VDNDhTVW9I?=
	=?utf-8?B?TFBlRHU3YVdFVVdOT0xicjIwZXBjMlN2eW04TTkxOWRHSW9HZWc4bUhNbnh0?=
	=?utf-8?B?akhQQjNvZXhSTFZ4RUdneitGZWNGUXd0ZTdaN2x3dmFURi80WVM0aFFGWFNV?=
	=?utf-8?B?U2lqV21RVmwxT0VCL0tMS2pNd2ZWUjhHaDgyS1RPZXlaMWJmekNCK2xsTDF0?=
	=?utf-8?B?M1M5KzhLRHA3cGd3RzJYTWZVUTRyR3lmM3U0TUxJN2h2aXo2aGQ0NDV4VllH?=
	=?utf-8?B?WWRYZmZlOW1oaWlJZUJRZ01INnN6MTUrZThhOFNJaTVZd0NMM2NOQWp3Qk5E?=
	=?utf-8?B?RHpkT3hYZzkyVGJMV1NnMENQZDZ5V1FSN3ZrN0tvN3YzMkdyaVZFRE5GaVZk?=
	=?utf-8?B?Ti84SzM2ZkFsWHJQMU5BeG1DZmVnaGVySVpqZXpGYlJUUFpPd2RCd1E4dWJ6?=
	=?utf-8?B?NHh0K2M0bkVGWkVJOElLUTJURi9xdWd6eVZFSnV1dTMveklQWDBPMVI5djlQ?=
	=?utf-8?B?V0JINnBSZklZRkhrM2JVZTlJQVFWdWVGdlNFRzh0QmJGazVWcHd6M2dLNzFH?=
	=?utf-8?B?clp4ektoUWVNQ25INlRWNGc2aG5pRE5jcDU0czhpK0JMZ3ZVUTJBM0dtNGRh?=
	=?utf-8?B?SFNZdG13S2kxTzFCTmkxTnNBTTdGcTFPb2crOWdFUnltWkZaazFiTS9iT2Q4?=
	=?utf-8?B?L2pBMjR0OFRLc2xvSmZndEQ0TVRiQUQvZHIxVTdRQVNPRTZNdjZVbXVqL2sr?=
	=?utf-8?B?OFlYblZMeDJmR2VMcFVzMDdwbjIxSTZwSm53ejJxVkRPZVFUc0pFMkRmTlFI?=
	=?utf-8?B?Z3BhQU0zSk53VjV1aDlGNFJYZUFXR1p5Vjl2LzkzYzhKLytXblF1OXZyTEVJ?=
	=?utf-8?B?eEZWVkRJMnN1Tm1XNmNZMVM3eER6YURsSVVNK0RoK3k0cnE2ZmhBa3hmVkc1?=
	=?utf-8?B?UThvL3RmQzQ2U0dKdWhnU0pnU1dxWFlNTENlR2tYcWV0eDFWbkxRTzhEZkEx?=
	=?utf-8?B?WFIxNFl3dTFaRy9WZmwwUFFtdmVDNVc5ODR1Tm1nanR4dWVxOEU5a0thQzdH?=
	=?utf-8?B?ODg3S1NsU1hPQTQvakxmT296UmQ4YVM4VGh0dDYrclI5MS8rZmlSOVJzWlpa?=
	=?utf-8?Q?fAyBq/GkMnJTPNUTcl/vm1wOo2ttbI=3D?=
X-Microsoft-Antispam-Message-Info: UzC6GM9ntmr6jD5RrmL0Q1pIKtXNwvhyZSrjewvAUVyD05zmkhRZaahz0kuu+2PeY07c34MStXIyoilk1xJEAuZzz721GRTzpsj737JAbijsnwjpCqQo6wi1eOLeiw5rCMG/pACH8QE5S7BXsmYPU4YyCC+/06nAIjHDITRos9JF2CItNvMv89n+QWISEQPWl/kmVmSz95akYSUxLh6H88TUvveQOCPpmTHs3mOQRS5ZVwmRf49M2uNQgnxYL3cQ8L2ua4y8W+NhZ97hDBdLeXL5SJGWhHrgXniS8joEnkDp/y2r7FBmULNNQig7fK3xXt6kWj4MoB3WmsDU2gEbh+YP2ZZsM2XrCn6YkfQ0tDU=
X-Microsoft-Exchange-Diagnostics: 1; SYBPR01MB3851;
	6:sQJ0neYdXvkwQfeG7GJcw6nzzsQ2vWBivLIMY9L1QOPZJEzXb73NUfZgOJ+/CBRLsLbCB5C2fm3v3Fbr85Zr6WO6Z5vkr3CGEg+RytetaJoCOZRxnPVX1tBIlHoR+zBf6IweSYUUxmMru4oFCQXSflCh6xRZLPsNuYunnhESN6UbwKmE1NKlhJwxZgMtZ6beJEH7mQiRwfZoa9IBiv4k8OulD31ilkuiLx0+8QS9bwYB75lo1eYKtnl2WA6NxFIZc9GgN9GEXiNKoS7UadyqT/PhC/wzyG6lwkcjD3MRSlXWEZQ0yQUkbDvQ0Ox2Go7pP0fT0oGsaXthTw70TIRuasZaVpvVsAS8Ic5dRxhbU7hLiGlPEfmBelLa7/FeDhizeU6vbceKXo0U/pz5HQ6dbdeOLYj3EAC/+Y3FfMvooR5S0RmyzyNCP/7Dwu8oUwU92GEiUvUGZX8W08flHFkM2w==;
	5:3rB1RBfuJsA/c0LvfvvLBTlcyNv7KfN6Ko8Ir9L8vxhEIn5XVVqVDee7jwCBEQj59FrNpEBn3R9yUkVYqSU7rUdWio+u7LfpMvuoLJsLMyhRJDIYgvzRT1MlNoV0ANQ58/13LQUIcFUxUIa3UdCsESc0uzsoTTX4awyoS2zGDzY=;
	7:k7yIWFAC730TdJ6Gl8kkb2Iw7N4vRg2H8Da39CP9hwG93ogC0iMRnZpD2ytXkVDfekjJl4fkeTYJ0GtTRDE2QN2cga63q04PKXI1BPRnjEaWw39mC5nFKj7TZwl+V0yrgcJAOEXuGxcEkAG5Q+JPCz4It/tgHGSqtAKFdHjxy4aJYRPwhPukDpFpw+WVCROv14bgiRHjCrMMliqf0HaXu1mZ/CkmDFW1eXpWiQvqJyAAgAUN1f0/QnRhnQrFVoPg
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: 4rf.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2018 06:54:29.5131 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4176fb3f-9e06-4210-0de4-08d603451d97
X-MS-Exchange-CrossTenant-Id: 9ffb526e-7b63-4774-8f76-2167f5ab5208
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9ffb526e-7b63-4774-8f76-2167f5ab5208;
	Ip=[114.110.34.227]; Helo=[mail.4rf.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SYBPR01MB3851
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating multiple filesystem images
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
X-List-Received-Date: Thu, 16 Aug 2018 07:09:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIEFuZHJlIQ0KDQpUaGF0J3MgYSBnZW0gb2YgYW4gaWRlYS4gSXQncyB3b3JraW5nIG5v
dy4NCg0KVGhhbmtzIGFnYWluDQoNCg0KVGhlIGluZm9ybWF0aW9uIGluIHRoaXMgZW1haWwgY29t
bXVuaWNhdGlvbiAoaW5jbHVzaXZlIG9mIGF0dGFjaG1lbnRzKSBpcyBjb25maWRlbnRpYWwgdG8g
NFJGIExpbWl0ZWQgYW5kIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIElmIHlvdSBhcmUgbm90
IHRoZSBpbnRlbmRlZCByZWNpcGllbnQocyksIHBsZWFzZSBub3RlIHRoYXQgYW55IHVzZSwgZGlz
Y2xvc3VyZSwgZGlzdHJpYnV0aW9uIG9yIGNvcHlpbmcgb2YgdGhpcyBpbmZvcm1hdGlvbiBvciBh
bnkgcGFydCB0aGVyZW9mIGlzIHN0cmljdGx5IHByb2hpYml0ZWQgYW5kIHRoYXQgdGhlIGF1dGhv
ciBhY2NlcHRzIG5vIGxpYWJpbGl0eSBmb3IgdGhlIGNvbnNlcXVlbmNlcyBvZiBhbnkgYWN0aW9u
IHRha2VuIG9uIHRoZSBiYXNpcyBvZiB0aGUgaW5mb3JtYXRpb24gcHJvdmlkZWQuIElmIHlvdSBo
YXZlIHJlY2VpdmVkIHRoaXMgZW1haWwgaW4gZXJyb3IsIHBsZWFzZSBub3RpZnkgdGhlIHNlbmRl
ciBpbW1lZGlhdGVseSBieSByZXR1cm4gZW1haWwgYW5kIHRoZW4gZGVsZXRlIGFsbCBpbnN0YW5j
ZXMgb2YgdGhpcyBlbWFpbCBmcm9tIHlvdXIgc3lzdGVtLiA0UkYgTGltaXRlZCB3aWxsIG5vdCBh
Y2NlcHQgcmVzcG9uc2liaWxpdHkgZm9yIGFueSBjb25zZXF1ZW5jZXMgYXNzb2NpYXRlZCB3aXRo
IHRoZSB1c2Ugb2YgdGhpcyBlbWFpbCAoaW5jbHVkaW5nLCBidXQgbm90IGxpbWl0ZWQgdG8sIGRh
bWFnZXMgc3VzdGFpbmVkIGFzIGEgcmVzdWx0IG9mIGFueSB2aXJ1c2VzIGFuZC9vciBhbnkgYWN0
aW9uIG9yIGxhY2sgb2YgYWN0aW9uIHRha2VuIGluIHJlbGlhbmNlIG9uIGl0KS4tLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQW5kcmUgTWNDdXJkeSA8YXJtY2N1cmR5QGdtYWlsLmNv
bT4NClNlbnQ6IFR1ZXNkYXksIDE0IEF1Z3VzdCAyMDE4IDExOjU4IFBNDQpUbzogQW1vbCBMYWQg
PEFtb2wuTGFkQDRyZi5jb20+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDog
UmU6IFt5b2N0b10gQ3JlYXRpbmcgbXVsdGlwbGUgZmlsZXN5c3RlbSBpbWFnZXMNCg0KT24gTW9u
LCBBdWcgMTMsIDIwMTggYXQgODoyMyBBTSwgQW1vbCBMYWQgPEFtb2wuTGFkQDRyZi5jb20+IHdy
b3RlOg0KPiBIaSwNCj4NCj4gQ3VycmVudGx5IHdoZW4gd2UgYnVpbGQgc2F5IGNvcmUtaW1hZ2Ut
bWluaW1hbCwgd2UgZ2V0IGEgcm9vdCBmaWxlDQo+IHN5c3RlbSBpbWFnZSAoc2F5IGV4dDQpIGFm
dGVyIHRoZSBidWlsZC4gSG93ZXZlciwgSSBhbHNvIG5lZWQgdG8NCj4gY3JlYXRlIGFuIGV4dDQg
aW1hZ2UgZm9yIC9ib290IHBhcnRpdGlvbiAod2hpY2ggY29udGFpbnMgekltYWdlIGFuZA0KPiBk
dGIpLiBJIGRvIG5vdCB3YW50IHdpYyBpbWFnZS4gSG93IEkgY2FuIGRvIHRoaXM/IGkuZS4gSSB3
YW50IHR3byBleHQ0DQo+IGltYWdlcyBhZnRlciBidWlsZDogb25lIHJvb3QgZmlsZSBzeXN0ZW0g
YW5kIGFub3RoZXIgd2l0aCBjb250ZW50IG9mDQo+IC9ib290IGZvbGRlci4gUGxlYXNlIGFkdmlz
ZQ0KDQpUaGlzIGlzbid0IHN1cHBvcnRlZCBkaXJlY3RseS4gSG93ZXZlciwgaWYgeW91IGxvb2sg
aW4gbWV0YS9jbGFzc2VzL2ltYWdlX3R5cGVzLmJiY2xhc3MgLT4gb2VfbWtleHQyMzRmcygpIHlv
dSB3aWxsIGZpbmQgdGhlIGNvbW1hbmRzIHdoaWNoIGFyZSBydW4gZm9yIHRoZSBleHQ0IGltYWdl
IHR5cGUuDQoNCkJ5IGNvcHlpbmcgYW5kIGV4dGVuZGluZyB0aGF0IGNvZGUsIHlvdSBjYW4gZGVm
aW5lIHlvdXIgb3duIGN1c3RvbSBpbWFnZSB0eXBlIChlLmcuICJleHQ0LXNwbGl0Iikgd2hpY2gg
Y3JlYXRlcyB0d28gZXh0NCBpbWFnZXMgZnJvbSB0aGUgcm9vdGZzIGluc3RlYWQgb2Ygb25lLg0K

