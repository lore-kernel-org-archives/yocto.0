Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 354D7E00BE0; Mon, 30 May 2016 08:30:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.70 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 856 seconds by postgrey-1.32 at yocto-www;
	Mon, 30 May 2016 08:30:02 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0070.outbound.protection.outlook.com [157.56.110.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FBCAE00B30
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 08:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=CzDRBA0rWLxtcbBevgxLh3rucWnI/lmrvsBHqBHfDPU=;
	b=Zi+r36SUs51dAu0t4ubPvXmjD0N46zo+AwcZqAvAad0BcvgZC/E6MqsqtCJYlj/R/qJIXhyTl3saVRaYQ8Zqlcws8U6L1R+YDxzTSSo2VSa2hHGKAb9o5zAVqWqn59XkcBNDH+v7oMmCaFyqW1DAgdU2/mnEuJTQ8rdKd7hBHpc=
Received: from BN1PR02CA0034.namprd02.prod.outlook.com (10.141.56.34) by
	DM2PR02MB271.namprd02.prod.outlook.com (10.141.55.150) with Microsoft
	SMTP Server (TLS) id 15.1.506.9; Mon, 30 May 2016 15:15:44 +0000
Received: from BN1BFFO11FD035.protection.gbl (2a01:111:f400:7c10::1:156) by
	BN1PR02CA0034.outlook.office365.com (2a01:111:e400:2a::34) with
	Microsoft
	SMTP Server (TLS) id 15.1.506.9 via Frontend Transport; Mon, 30 May 2016
	15:15:43 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=sierrawireless.com; topic.nl;
	dkim=none (message not signed)
	header.d=none;topic.nl; dmarc=bestguesspass action=none
	header.from=sierrawireless.com;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.44) by
	BN1BFFO11FD035.mail.protection.outlook.com (10.58.144.98) with
	Microsoft SMTP Server (TLS) id 15.1.497.8 via Frontend Transport;
	Mon, 30 May 2016 15:15:42 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	CARMD-EXCHHUB01.sierrawireless.local ([::1]) with mapi; Mon, 30 May 2016
	08:15:41 -0700
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: Mike Looijmans <mike.looijmans@topic.nl>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 30 May 2016 08:15:39 -0700
Thread-Topic: [yocto] Is There a Package Limit to use of Smart / RPM?
Thread-Index: AdG6Q2N6ovMKbtqjQCS+cOxpaDiMzwAQJSDg
Message-ID: <8F90F944E50427428C60E12A34A309D24B6F56C82A@carmd-exchmb01.sierrawireless.local>
References: <8F90F944E50427428C60E12A34A309D24B6D12CAA4@carmd-exchmb01.sierrawireless.local>
	<574BE91A.7030901@topic.nl>
In-Reply-To: <574BE91A.7030901@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(2980300002)(438002)(199003)(189002)(24454002)(377454003)(57704003)(13464003)(377424004)(1220700001)(102836003)(106466001)(9686002)(189998001)(2906002)(5003600100002)(31430400001)(15974865002)(8676002)(47776003)(8936002)(23676002)(33656002)(98436002)(50466002)(76176999)(50986999)(2920100001)(2900100001)(2950100001)(77096005)(86362001)(19580405001)(19580395003)(54356999)(5001970100001)(107886002)(104016004)(586003)(55846006)(5001770100001)(6806005)(87936001)(2501003)(92566002)(5008740100001)(7099028);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR02MB271;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:sfv; A:1; MX:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1BFFO11FD035;
	1:Xpe3dWcvPvxSihtAitMYWZz8OiMZZ8SYu5+Cx80lU0STejsmTgsQdffw5vOKO2nIn8EryeXqkMIBuvm21tZkY4HfqMMbZrNCbqna5DOwMORJ8Ub7TJXdBm4JzrA04kMWduZL06TDQjlbaOijx6CdQ7pxpwOZmIUjJm5Hkp+bsRaXfHkCLldMk/BSRvnykEk6la74dpMSjraFJsXf2Z0Ow5KE6+HoLHoiRcXrT98saoUprN0UDt7aiK/xSlMtl68N/0SCtvBWdVkc9oBHQAF79bCEqekAaHlV4htzCZxpagkR10f03vj0gctxigsb2fjM4NdppAnoi0YMApXNJMHPFjjyf3h/0fGYGaAEsGf4lLb6mHEEQL5+TH7kdwqehIlNRy6Qs4mEXBvzkJWcR8vXeC++mb9adh6wVz+aIYLLOkCG3LGPSz44ii6/jJXpYHuWW2e9zAR8Jxix8s/asHaRV3887JZOLe3vNnmteGNMkJT+JZWuj02ZehWGGn5IWB7Y
X-MS-Office365-Filtering-Correlation-Id: a6103142-0086-4bcf-b73f-08d3889d449f
X-Microsoft-Exchange-Diagnostics: 1; DM2PR02MB271;
	2:I3dOmRZD+6lNfQc1+rTP/dLwaUCwBEaMMDyzFfJU/NdSqhSQNmSAgRfvgn3UaxRQnDwLo1y3swUsTk64GAhdJLxz6m1neBdEWUrc2kPlKkmyc69EgHWHmQrogdI1CF9GdV/3nJQ8VDkHyf+PEmBxkuJehSyUXxvhhBYv3OwzwUcf9rk0qhfrhmM5OpsQlfn6;
	3:tOxYdvsrXSZ9W3Q3bKZ3qnYU54OrYZfU1dc8iVQOcNQ4TgAzEfYJ5Kj0X65Uzc4jeLMa43Wio6rqR/p/OZctqVtV2HRrTjq1L08bmu82HUS5/YivY3u3L7TB6Ri4Tem9tRc7GvVJ1eLCKRUFIwfR1ewrIb+rs5PgsfX5LhnRMcZlLkir1tIwkc7Eor8E5YRQVQ0k2NIKIlwYrHbwAAPn8ffzX7w7RrZlYqJU0z5ezHkToBaevZVkv0kUL5n3KcmGB5ZZkN/kC3qPGmbqHd8FvQ==;
	25:fkq8/nOEUdyfYZIVibZKZLzHvrp3ZjbrMSM6QK2R6tDY7vvZQARqCciz91jwa3crycQz3H+Dm/dOyUwoCbaU4kIfDPYJZJuZtI1toV5SwwXoAkHQEDog1cy6LqovYvSuc2D8hnEftmWqtC6oOqdAVt+tHVFHbf1E2OMY3IVhKxc9jcr7+KkEV0KHuMOKqugBSESuWxHjTrt56o2EW0dzge9tbbhYV1zWoIAxk4udA0GBxe7LBnQbukGmZGAlB8vzeUt9N8wXJKvn5SZ3KFDEqseN7Q7TvsEAyPZHfOnP24VLyE9nP1Opag54/Yb29/+dcibe/yyqmEiWL7d2R2wh3amD99/45Y/ne7VTLBrHcjEzGF6b/6Im9SsZJNnA0aRM6/tts7iyQl9C+i/ulIv8cctuzEGizk77FbRF60yTX8M=
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:DM2PR02MB271; 
X-Microsoft-Exchange-Diagnostics: 1; DM2PR02MB271;
	20:XKmjtJlXvBYNQ0Ry3Dc9/CT7QsnVfQH18WJpLs/MUu9sD1qP9Z/+8RhCBvK68or4Gdp9Q/XYhS467Hm3LLC+AEp2Bi2+YGXFxsTpy/iTlYBEaw45nryzw/kvW0NUtMI5/MTH6RS1TZJ0z5697/j/n8LofoUNpeDQNUQ9DZSsSxPVRw5Ftd7Xjn4lBl+TLKqQJEViSaiw11juDovSVpEd4Sx2lplu5ovkYFZT0YrINiLBjAVN+XHptw68Au3hKy0VnFhjuOdu9sDrB58O7c2Oc6a4yTy3ajmmFMsl1U5+SUC5bK4TkBxFumGEUD5BWetDft3IfAQVht4wA3kBjK7ramf/++TBc7tuuw1pdzLfXZ2Rr+YOPFueLk71f9+bLtavgOs//eN8NZT1Ed7QoUNHESUP/OCPWEWONjAcJuII7ydbRitog7RtIhPOERphHVnso+aTVjx/vDBNEF2Oh4BwT8ppH8lC6iXt46GVRm9KEroU6d/Eb2msO2eOdvXocDky
X-Microsoft-Antispam-PRVS: <DM2PR02MB27137960CFA11DB2D213B5AB2450@DM2PR02MB271.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(219636747203745)(24822713563186);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13024025)(13023025)(13018025)(13017025)(13015025)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DM2PR02MB271; BCL:0; PCL:0; RULEID:; SRVR:DM2PR02MB271; 
X-Microsoft-Exchange-Diagnostics: 1; DM2PR02MB271;
	4:ijl7AlCkTJfn9XSORF/b5OOFtRK7MxvGW7VtwlaktYDT42wZejOBXa3W0InOnThQETUish5ctH/aVGmUiw+fQ5cfrnMMWjZ+tFA+uEfb50bYW0gFtlD+yvgfz1et6Z0B2fp7zT72QcD7GrqM4cUGw+nPDy5tC5Txn6EX/8zBR7Soi12j18+AQYZsp0kBZ2CoU/xdkWe1hgX3K4QuSWaoNumDNfblOfWq6Z03HiDm1RLu1mFCIxiKEOExkK5VLXFP1f2Z1SqdhIqjyVqHwHs8T7F8QNyt3HO7ZFU8U0WeaRcduVgOE18SD4enAJqM2QlrwNnE9tMu1rZGnnjFTKijryLoQ6DwgZ0Vq6loD3ZN/j7e00HGx4NK2eI8bVFFmF41LRcT4bImYvkWu1q1Xzae7JtsJ7PhvHW2EK9JkUB0Tf37dalR79dfmvXyVHYArxiLSxLQHUEfoUzYBlKcab2I3T6lwx6M/UxMymO5Pu7UE99aW6JHIsauK2foPoL0kXYO2gzIrgt8owL9JjTK2b2ukOE69mirxNLLe8NcROgBmXWn3jFnly+G79zm096NyWH9
X-Forefront-PRVS: 09583628E0
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtETTJQUjAyTUIyNzE7MjM6c1BJd3BodGZ3Rk5IWng1Q2ZMTHpXTjZFbXNa?=
	=?utf-8?B?bHI2QVNCcFZOaE8xYmJhMDd4bjZFZkwwNmVLMDlGY20vdUZIaGpCUFE2cVI0?=
	=?utf-8?B?MWFIN0RJbHFsLzFlUGczbWFUcTc3enpoMjhZdlVzTkZVb3Rpa1BnRjlXR29X?=
	=?utf-8?B?R0RnWW04Q1Rwd2IzQ1RUQk55SUpIZTBaWWYxS3phWUhUazlvYm56bFBtSSt6?=
	=?utf-8?B?SFkvWVFsejc1WVp2WW04SzlnbllodjlSQk1pUHgvc05pUWdCRlgzVWN4ekRY?=
	=?utf-8?B?TGdSVkhMd0taR0RrZ3JLMXJOditETlhHakFIcE9zcENyTlgzMHY0b3VYYkpP?=
	=?utf-8?B?UHZlNlpmbmE5d25DTVh1enhUcEI0bzFyY3grWHZnOTF0RE9ubW9EcTl5RzVt?=
	=?utf-8?B?dWtQM202d1RUbXp2RzVNVjdZQmNtVlpBNGpxR1lKbjUvdEZ1TmtkUDVhZERr?=
	=?utf-8?B?VkpPQ3BPbkhWZFVPdEdxYjhZbEVRRTh2YmJFTXhSR0N5VWw5dEEyN1RURUxF?=
	=?utf-8?B?R1NzYmUwU1V2M2EvTmc5cFRjY09VNEw4NTIzU290d2o4Y041M0NIdVpOcGww?=
	=?utf-8?B?bnVTWVRlazlnaTlHaXF0ZnVvU3NMUi8xeituS0JJSld4QlNnVjRPRDYvanhp?=
	=?utf-8?B?c0t2aTdLVmhJNmtHVHJUdU1iRGxuVldaclc0Q2J0OURTalc0MW9veHE2d1U3?=
	=?utf-8?B?cTBJdE5wZ3V2aW5BdFQ0Y2xVdHFKQ0hyRW9vczcvSnhyenovTFRmbEt1R3Ri?=
	=?utf-8?B?c1k3RWwzRnVLbHppL1VwcjNOMlltejBUVnRyVnJoVWJRN2ltSk81UmZJZlpN?=
	=?utf-8?B?b3YwM2k3UHVhSXZreExSOXN6QmZOei9BWWxkYU1tTzFmenNjR3QrcXpNcys2?=
	=?utf-8?B?ZzhhRk11L1ZjYzJHMDdOd2hzYWtFdWsrUEZMZ0oyWjBwdjVSTlpWN2dENGtQ?=
	=?utf-8?B?RkZrc2FDMlp2OXdhT3VONEJoTlFFU3ZDTDNCVDJoMEtWWjUxU1NibkJvdm5C?=
	=?utf-8?B?MDBGQytPZG5INzk4bDJlZzdaUWhLM2Vscmc4K05jaGQxVWpiNzF1S1FLckJ6?=
	=?utf-8?B?V2FiZmhIUDd5YXkwVnVYSE1Nam45bnJZRGRZMXpkVE1PRVhvNDZIMlp3M3RP?=
	=?utf-8?B?YlVZTTZHUmkzZ1p1WUZESjNkT0ltS2xFbUUxY1JGSmRTYTNwWlR5Ry9UblEz?=
	=?utf-8?B?UjJUZEdEQU4zcTZDU1Y0S2c1TU5zUWl4ZTFNaGpNckpvYlkwMnpsbzNVQlRM?=
	=?utf-8?B?NVVTRC9GWDc2bWhwVFIyQnZkMlNyMEFyTUp2d2dsY1dVME5vNnZ2U3U3LzhB?=
	=?utf-8?B?N2ZRaXJCdkgvdGF6djNMUjZEQ0ZaT0pvZTFaWldQWW1OSk9sVTh1VjMzSnJR?=
	=?utf-8?B?aGJlNTVhdG1mZVlLdTQ2MmFKYzNuM1gvYkgvOEtNSXNtdm9QSkJxRlpNckc0?=
	=?utf-8?B?ZU9lUFFoU3RJTDI4NlZxNnFGLytkTURDQ2hKeFd4R1UzbTNud0l2cUFKVzYw?=
	=?utf-8?B?SzN0cVJLbEhwVStweEZ2a2J2V1N4Rjc0TDY4MEEwdEp1RHBwYU5YMzNGcmNH?=
	=?utf-8?B?RU1KL05RY3ZwbjhRZ0Y0MVRBOWtwUVh6amgwMUFaK2ErS28zZTV6ZnNhdFBS?=
	=?utf-8?B?WjVqWUJ4ektiZEE1dkRvTmo2Y2ttSUllUTBKNlZGRGRQS2ZOZmpKUnJxWVQ0?=
	=?utf-8?Q?2XCVqQtGjvj7iMIWI=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR02MB271;
	5:rdRHU4Qu0zZx7CfGaz1NwJfuDWUxHLGhg49PSohim0NTsra2B4cfUZ1ZoCsyYMrLpT/LnnSVHzNrW1Ta2FYPzgPznmBhUssazZjiUx0aSxk7N24ANOHFJqr9WN6RmSjXzVFKqKDv24FMd58kuxKlCQ==;
	24:vQBn3T3fPMcuKDNgPS89nikUw+7hJei4Su9OJAFqcbfi9N2ja9TnxVAWQiI/sjINsPaMdTClrHwQngfpmRsbibI8KFG1MIuo5axCM2HdbLA=;
	7:qAcFmqDh0dF8Cdi0/Mo29AqroU0rc4yKGp1jq3jPHfslGlJ2j+wtaRYDMYLVm4xKI3HUTtb0fA1pwt3TnDv5fOw/zZh4H506hlmDwYHj+rH/InNSWBen6avE8fwzUKKPcZL+12NyhEh30fCu0srKkDaOLZ7Qq90s7nz2NDUJfMhaZT72oEVuL9xXhYVfqo3B
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2016 15:15:42.3196 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR02MB271
Subject: Re: Is There a Package Limit to use of Smart / RPM?
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
X-List-Received-Date: Mon, 30 May 2016 15:30:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIQ0KDQpJIHRoaW5rIHdoYXQgd2FzIGhhcHBlbmluZyBpbiBteSBjYXNlIHdhcyBzb21l
IHBvc3QgaW5zdGFsbCBzY3JpcHRsZXRzIHRyaWdnZXJlZCBhY3Rpdml0eSB0aGF0IGluIHR1cm5l
ZCBraWxsZWQgYW4gdXBncmFkZSBzZXJ2aWNlIHRoYXQgd2FzIHJ1bm5pbmcuDQoNCldlIGhhbmRs
ZSB0aGUgdXBncmFkZXMgd2l0aCB0aGUgc3lzdGVtIGluIHNvcnQgb2YgYW4gb2ZmbGluZSBzdGF0
ZSBzbyB3ZSBkb24ndCB3YW50IHRoZSBSUE0gaW5zdGFsbHMgLyB1cGdyYWRlcyBsYXVuY2hpbmcg
dGhpbmdzLiAgU2luY2UgbWFudWFsbHkgaW5zdGFsbGluZyBhbiBSUE0gaXMgbm90IGEgbm9ybWFs
IHVzZSBjYXNlIGluIG91ciBkZXNpZ24sIHdoYXQgSSB3b3VuZCB1cCBoYXZpbmcgdG8gZG8gd2Fz
IHRvIG92ZXJyaWRlIHRoZSB1cGRhdGUtcmMuZC5iYmNsYXNzIHRvIHJlbW92ZSB0aGUgIi1zIiBv
cHRpb24gcGFzc2VkIHdoZW4gaW5zdGFsbGluZyBhbiBSUE0gb24gdGhlIHRhcmdldC4NCg0KVGhl
IHJlc3VsdCBvZiB0aGlzIHdhcyBhbGwgUlBNcyB0byBpbnN0YWxsIE9LIHdpdGhvdXQgaW5hZHZl
cnRlbnRseSBsYXVuY2hpbmcgdGhlIHNlcnZpY2VzLiAgVGhlbiB3ZSBsYXVuY2ggdGhlIHNlcnZp
Y2VzIGFmdGVyd2FyZHMuDQoNCg0KLS0tLS0tLS0tLS0tLS0tLQ0KDQpBbm90aGVyIHF1ZXN0aW9u
OiBJZiBJIHdhbnQgdG8gaW5zdGFsbCBSUE1zIG9udG8gbXkgZmlsZSBzeXN0ZW0gb2ZmbGluZSwg
YnV0IG1vdW50ZWQgb250byBhIHJhbWRpc2sgYm9vdCBzbyB0aGF0IEkgY2FuIHJ1biBzbWFydC9y
cG0gaW4gYSBjaHJvb3Qgc2NoZW1lLCB3aWxsIHRoaXMgd29yaz8gIEkgc2VlIHRoYXQgaW4gdGhl
IGJ1aWxkIHN5c3RlbSwgaXQgcmVsaWVzIG9uICckRCcgYmVpbmcgc2V0IHRvIGluZGljYXRlIGFu
IGFsdGVybmF0ZSBwYXRoLiAgVGhpcyBoYW5kbGVzIGFsdGVybmF0ZSBwYXRocywgYW5kIHVzdWFs
bHkgYnlwYXNzZXMgc3RvcC9zdGFydCBvZiBzZXJ2aWNlcy4gIERvIEkgbmVlZCB0byBzZXQgJyRE
JyB1cCBpbiBhIHNpbWlsYXIgd2F5IG9uIHRoZSB0YXJnZXQ/ICBJIGFtIHRoaW5raW5nIG9mIGFu
IG9mZmxpbmUgdXBncmFkZSBzY2hlbWUgb24gdGhlIHRhcmdldCBzaW1pbGFyIGluIGludGVudCB0
byBzYXkgJ2ZlZHVwJyBzbyB0aGF0IEkgZG9uJ3QgaGF2ZSB0byB3b3JyeSBhYm91dCBhbiBSUE0g
dXBncmFkZSB0byBzYXkgJ2RiJyBwYWNrYWdlIG9yICdycG0nIHB1bGxpbmcgdGhlIHJ1ZyBvdXQg
ZnJvbSB1bmRlciB0aGUgdXBncmFkZS4gIEluIHRoaXMgY2FzZSwgbXkgb2ZmbGluZSByb290ZnMg
bWF5IGJlIG1vdW50ZWQgc2F5IGF0IC9tbnQvLi4uDQoNClRoYW5rcyENCg0KDQpSZWdhcmRzLA0K
DQpEYXJjeQ0KDQpEYXJjeSBXYXRraW5zIDo6wqDCoFN0YWZmIEVuZ2luZWVyLCBGaXJtd2FyZQ0K
DQpTSUVSUkEgV0lSRUxFU1MNCkRpcmVjdMKgICsxIDYwNCAyMzMgNzk4OcKgIMKgOjrCoCBGYXjC
oCArMSA2MDQgMjMxIDExMDkgIDo6ICBNYWluICArMSA2MDQgMjMxIDExMDANCjEzODExIFdpcmVs
ZXNzIFdhecKgIDo6wqBSaWNobW9uZCwgQkMgQ2FuYWRhIFY2ViAzQTQNCltQMl0NCmR3YXRraW5z
QHNpZXJyYXdpcmVsZXNzLmNvbSA6OiB3d3cuc2llcnJhd2lyZWxlc3MuY29tIDo6IHd3dy5pbm1v
dGlvbnRlY2hub2xvZ3kuY29tIA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTog
TWlrZSBMb29pam1hbnMgW21haWx0bzptaWtlLmxvb2lqbWFuc0B0b3BpYy5ubF0gDQpTZW50OiBN
YXktMzAtMTYgMTI6MTggQU0NClRvOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpDYzogRGFyY3kg
V2F0a2lucyA8ZHdhdGtpbnNAc2llcnJhd2lyZWxlc3MuY29tPg0KU3ViamVjdDogUmU6IFt5b2N0
b10gSXMgVGhlcmUgYSBQYWNrYWdlIExpbWl0IHRvIHVzZSBvZiBTbWFydCAvIFJQTT8NCg0KV2Un
dmUgc2VlbiBzaW1pbGFyIGVmZmVjdHMgd2l0aCBJUEsgcGFja2FnZXMgYW5kIG9wa2csIGJ1dCB0
aGUgcHJvYmxlbSB0aGVuIGlzbid0IHNvIG11Y2ggdGhlIHBhY2thZ2UgbWFuYWdlciwgYnV0IGl0
J3MganVzdCB0aGF0IHNvbWUgcGFja2FnZXMgZG9uJ3QgdXBncmFkZSBwcm9wZXJseSB3aGVuIGJ1
bmNoZWQgdG9nZXRoZXIgd2l0aCBzb21lIG90aGVycy4gRm9yIGV4YW1wbGUsIHR3byBwYWNrYWdl
cyBBIGFuZCBCIHdoaWNoIGluZGl2aWR1YWxseSB1cGdyYWRlIGp1c3QgZmluZSwgYnV0IGlmIHlv
dSB0cnkgdG8gdXBncmFkZSB0aGVtIGJvdGgsIHNvbWV0aGluZyBpbiB0aGVpciBwcmUvcG9zdC1p
bnN0YWxsL3JlbW92ZSBhY3Rpb25zIG1lc3NlcyB0aGluZ3MgdXAgYW5kIGNhdXNlcyBvbmUgb3Ig
Ym90aCBvZiB0aGVtIHRvIGZhaWwuDQoNCkFsc28sIHRoaW5ncyBsaWtlIHVwZ3JhZGluZyBuZXR3
b3JrIGNvbXBvbmVudHMgd2hpbGUgdXNpbmcgc3NoIHRvIHN0YXJ0IHRoZSB1cGdyYWRlLCBvciB1
cGdyYWRpbmcgcGFydHMgb2YgdGhlIHBhY2thZ2UgbWFuYWdlciBjYW4gYWxzbyBjYXVzZSBzdHJh
bmdlIHVwZ3JhZGUgcHJvYmxlbXMuDQoNCkkgZG91YnQgdGhlcmUncyBzb21lIG1hZ2ljICJtYXhp
bXVtIG51bWJlciBvZiBwYWNrYWdlcyIgaW4gYW55IHBhY2thZ2UgbWFuYWdlci4NCg0KDQpPbiAy
OC0wNS0xNiAyMToxNiwgRGFyY3kgV2F0a2lucyB3cm90ZToNCj4gSGksDQotLS1zbmlwIS0tLQ0K

