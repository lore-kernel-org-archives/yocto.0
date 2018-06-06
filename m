Return-Path: <jakob.hasse@qiio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A535E01642; Wed,  6 Jun 2018 09:18:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0073.outbound.protection.outlook.com [104.47.2.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B84E00E40
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 09:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smarthometechnologych.onmicrosoft.com; s=selector1-qiio-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Xq/aVR4pBwPIcg81puAdpB3ovTtp8pCDlSchIEQ23Zo=;
	b=fzAlCHK5G5E9YoBQJb7kbuLlFB5QVdIZgs0BOv4O44oFo3N/I5fPm1Fp1Ed5Fiz3UNRO4so20zHg6XYYvZ9vcxG74V32gPR3XnhQLxyMSENu8dilZuLamyj+I9bgmRmw+nD9A+HFZnZIgWEqdIC1OQZuZf22Ussmx9UrT+Sfyus=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=jakob.hasse@qiio.com; 
Received: from [IPv6:2a02:168:6893:1:89ab:e652:a54b:537d]
	(2a02:168:6893:1:89ab:e652:a54b:537d) by
	VI1P192MB0062.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:c1::20) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.820.13; Wed, 6 Jun 2018 16:04:00 +0000
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@qiio.com>
Message-ID: <a2161204-3806-e19a-c7e8-a256956ef704@qiio.com>
Date: Wed, 6 Jun 2018 18:03:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
X-Originating-IP: [2a02:168:6893:1:89ab:e652:a54b:537d]
X-ClientProxiedBy: VI1PR0101CA0053.eurprd01.prod.exchangelabs.com
	(2603:10a6:800:1f::21) To VI1P192MB0062.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:800:c1::20)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0062; 
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	3:Wo2zUTnDfHFuCkz7uppGAEbYfod+x2yH760Q1dwi4p7a5ROSae5kT8g5oJxAq1tiSbsFWFCvZXX3vW3R2RyIzMHamCZxyaIk6rEUzel/1bLI2vUzJt5a5r3ri/UBCylcO9oBFwjnTNhxlxjFnhBaGNuqxdjmQOLBJTD1/0UZ7wHiDZdTSjqzKJRFUsaLKlBYtjLuTqOl/fqTN/mzP8gqh80g59NwTRnuewmf0IBOpamPxZhF4YzrD8Dr2RBhcjBu;
	25:0fHBSR1M+xkxEsrIU9+Y7QYOaaKJ8JWL6QJ9Eye9syIGvCxsLDmmk4q5AgLnFFh+0k9t0VjU36wdrbRDcmK9zIPlJtEV+7i5jm33N/bbLG8L2wFhYpP2yVZ9qTNrLRFS7mRukaEozmFs2RUOUb71Xv4Lmq/3Gl7pwp1bbDSWerUrMTsq01Aonfvqnef3aEdIp8z4fniwQYXUxeYAf+uI3wR1agyduKKK/8JMEPH1SeAvsakae7Io6AnNpXLi0IJPqd64+IYARFUnEU/LnCmQy1CnWesrFuJkJ+HeHhlH88mS9/UmrwJXqdTx3+viJF9o5434DZO4FNUyUFZN/7IeAw==;
	31:wKwjlQXnDgVSfXbC2KhtokHHbi2j1pE4BJXwPvDsQxOBxiPMlP2LiN8ctWvGtYmWBA5D8LbbPGl8c99d2G9NdIDI+ttoIqyn4TP2PrMkXlUnINIs8Q/JHj2nE/yFtakDpmAO4g64H+KW0rSBlTPiWxtqTn/soZ+yw6j/dGPfOUUVec4qWqQ1+lt4IoJ/LptDq977c4faTjcBt8cwWm7OIqRD135BjZXNlEpBR4fpk1c=
X-MS-TrafficTypeDiagnostic: VI1P192MB0062:
X-Microsoft-Antispam-PRVS: <VI1P192MB0062BFFF88FC3D21B821913684650@VI1P192MB0062.EURP192.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(10201501046)(3231254)(944501410)(52105095)(3002001)(93006095)(93001095)(149027)(150027)(6041310)(20161123562045)(20161123564045)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(2016111802025)(6043046)(6072148)(201708071742011)(7699016);
	SRVR:VI1P192MB0062; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0062; 
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	4:Xf4oEbfQnBM2m8l5C6JCOxh0sOFndSKS4R8Ra/YBY1tbSqtZw4Pdf+TkBkkO5Uj/OuRWnCqyB8JIuYHIfyEnGhgBY2P8fGU/AwQHG7q+ME0g8ANMmaSjWZvOXkph79lDFCzqHEorhbHDl8RJWP15fMglX2pHf6McvbKIIQL14wia08koxSMJOxq6fv3rymBNXMMAFowHLmtnFVCCv7gWpvQrxag3OKdOXEHE+5u63RXCxpEsPPgXoH6d36MUpYLLYdcJ51KVzVevFRzGQGy2aA==
X-Forefront-PRVS: 06952FC175
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(39830400003)(366004)(39380400002)(396003)(189003)(199004)(6486002)(2906002)(68736007)(36756003)(52396003)(16526019)(67846002)(106356001)(386003)(52116002)(2870700001)(46003)(105586002)(8676002)(4326008)(81156014)(31686004)(97736004)(31696002)(2486003)(52146003)(23676004)(86362001)(81166006)(316002)(50466002)(47776003)(476003)(486006)(65826007)(25786009)(44832011)(2616005)(7736002)(5660300001)(64126003)(305945005)(65956001)(65806001)(53936002)(8936002)(478600001)(58126008)(107886003)(6916009)(6116002)(1706002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1P192MB0062;
	H:[IPv6:2a02:168:6893:1:89ab:e652:a54b:537d]; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: qiio.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtWSTFQMTkyTUIwMDYyOzIzOmZXb2sybXZFMEZQUENZWm0wYXNOWWtGRmdM?=
	=?utf-8?B?ai9qdTAyYWtqTTNRa2FBc3VBQTZQMkp2TjBDM0pOQnJrMVJlR21PVnZHVG5U?=
	=?utf-8?B?SmVzeHI2a3czcWpOaC9Bem9nUDNVaFZNVlFlejBMRUd3TFdKR0FrY2pCbnVG?=
	=?utf-8?B?bzlUYUNEaGhzbnVVejhGcUFVNk1kY2RXd0pUd3dZdUZaOFg0SlhnOUc4cm5j?=
	=?utf-8?B?bDJ2YUJvVDVYV0tmNlBWUEdYck1kWWcvWFh5OFYvVlU2Q2RSWXVMMDVVQk5a?=
	=?utf-8?B?OU94U0w4M084aDd2aEkyaUI3dVBOSGsxakxuSmRqczlQNlhOTmJSOWlMSW5V?=
	=?utf-8?B?TXFhRGhKZG8vMVc4cFNXSTRuYTJOaDBsNE84V2s2Z05nUERvMzB3K2JJdEFW?=
	=?utf-8?B?aHhaTzcrd1NhL25tbHBXQTNXdVNOT1VsN29FcXA1VVhIQWN6UGgyd1VQV0dk?=
	=?utf-8?B?K1JPcFVFbktxQitkeDZTRGEvUFJmVkFTVUZJNFJrRDBOMStMM1ZhZ3YvRmNl?=
	=?utf-8?B?djdtMml4TndjQnVuMy9yWTBsSEN3VTlyTDVPNTk2RnQ5T2ptWE00dUU1R0VE?=
	=?utf-8?B?N1V0VEtqQzBVaERaTDk0VjViT1FhZ3B1Y0h1MTNIUkdTbUVOcFFKQVc2TDZB?=
	=?utf-8?B?a01ZZkNaUXdPdDBXRkdoQmtJNHJlQkllZmJBRFAvZzdGMUw1Y3VSb1lYTmlw?=
	=?utf-8?B?b1p4aE96M3RXVGpySDVkb1V1L1hoZ0FaQ204cCtVMnEra3ZJMlhMWDRZdHU2?=
	=?utf-8?B?ODRjNDFra1ZuWTRnSE95ODd5NldHM2IvY1ZLSVVqaHhDa2R6RjRsZisvUGVL?=
	=?utf-8?B?QTBNaG1yS0RRaVNLcE9VMmh1cDdPYWNxRk1sU1ZvVVk1WTZvSnNjQ2NPc3VN?=
	=?utf-8?B?Nnp5TzB5aVpsZUgrZXFkRnIyYk80TlFTNkluUit6Z05KNTVrWjdSL2UyOTRG?=
	=?utf-8?B?N0V3WTNpTXJ0NGpBQkdQYjRHbDhpbWdDdUJ2dU1haHRXV1hrK095VXFHREJZ?=
	=?utf-8?B?UGFYeGdHWTJNNFhZRDgxSUxheE5nNE5KdmVQL1lBYWxpS250ZHdFb05MU1Rn?=
	=?utf-8?B?dXlUTmtUUzRTb3lpQXZIYUl1VUZ0WUxhMUM2U0Z0THd4SnRyaThLenRXMDE4?=
	=?utf-8?B?TUhiVjM3VlFHZUdyVnRmNldPQklONjFoa09XTGQ4UFFuQTJleEd6Q0p0am9I?=
	=?utf-8?B?ZVN6Z05laEZjT05WVmZWVGRPTTlBL215UldDZGFCcGpqYUF6UkoyME9CVCtC?=
	=?utf-8?B?VzduLy85NThWcTNFbitQM1NFUDh1elhqZ1F3dER4WFlIK3BBbThxdmxMOFdS?=
	=?utf-8?B?aGdqMm1IUEYweXpMZ3AzWndXa2FIZ2xabXpsZ0h1RlBySjVYNHkxMExpSFRK?=
	=?utf-8?B?aitGQ1JSWVlIa0IrWDNhY3Y3NERkbGJHWlJIWFNCK2YrRURQaUNtQjAxclho?=
	=?utf-8?B?eldKMDBQWHpMT2NkaUllNU5RZHUwdUw5SUpJbDdaKzY1T1lzV3NZZ2huNnZJ?=
	=?utf-8?B?NnJFUEVYYlBuNmdtTzRkb3NIZWdUaGxWdDVTVlZwak5YZVZYZWRIVjIzcnlK?=
	=?utf-8?B?TytTVG5sRzdVQ3FOMEM5SFBMOG1Na05oTVJkYlhPNFVEa1FjVVh0QVlnYmFy?=
	=?utf-8?B?NUw4QXM5Z2kvZHFBcXZQM2JPV0hLN3d5RlorcE5DQXVCSXpDSExjK1YxcXFl?=
	=?utf-8?Q?BFZ5BTcckeAKpSac9s=3D?=
X-Microsoft-Antispam-Message-Info: sIZbk0vWCecaTPOSa1AIp0sMI3Irx39nwNWcKc+ULYrCroG5es1Ky8cO7A77D88eulCtDVEbbKa1ISXNwFqFrGOZG9E1nlERFP9lnnyC8GJtTs+SV0c0pkSTcLPdPAktRs15fEJpjS8Z7ObxDZjXvxskK043UAGTjfE5x3nPAMZv/94lI5ppyES9LL/rh2QY
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	6:uXAy9U1qDURp95XySmt5hNruCTrL+GNX2PDJKsskxdIBZegEzrUzfYVq9MLoIsS5H/4fC4L4sLs4u2H9OqFuoRUow4iLwNjZSkQ4CX4IGQyxwPwBx1YK4A/XU+20kK/G3DjfQkGwcPyzw5gwHyUUT4I/Pi6iwGJntRiEw9UFU/ssECpXmEG9VkXgRuE9YhUVXaZGXjYdyEpjPlPhy4ycZ8uA3/qzoNDUkDrOo6ya0z4WNlEEpDPbVcDUGXgxple6nFM+57Azne26qIo5zWfRhAyL1T7U0fCv1aU2QcffX8PYJneNubbyre0+MHilk1vinyYo9l+0sQUyuE7qIe3Ya35Ly6sAlwNlGl6ByTt86XuLrjO9ojAmyDMIbwJORMRnyyz/mor/ybb/3OXwZi0OIU9jGiTX0YlxykMKWPNG261clhYuTmtahMg/6SEf8VasGyB4HlRLIx6pm1eb+4n9Pg==;
	5:ZaomWXnyBRRvyvGPebYGzykN3PYEKQO2QtHA3EIvE481KZcA/51UpoJtsQHp6B7mk4jOuSsKYxk2zoDuSt7NzujdZwXTDycos2c6KoffC0de348UuJKH/GCKuKG0ZOU2d8WJFvrJ4/FKDILgzNbhycTsHswG3Kc2V1h36Lmz/Qk=;
	24:nEcZzNnKguXGRayYHa6bEevFGwbCKr/xdYlFgDRzSfFx+a9/B9YhFixTx7lWQffEVHSkLikizGeKnYKYbgV3xmsAeSOBekw/LDNURNUGmZw=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	7:iRFOJ6BPCvCiZpWYQPFLQA8RKfNk8CKNDC2ae6Se2kjp90z01A8rRylqS9xfeIeIklh0Uje8SpwpURucx7nMLYB9QXNrM5HMoOazLyUt2kpqG5o/OyU60DZxzMowtVXDk5mqA6vpVEazEQ8sjeaK9w3WNWWGEamg90OXqSmyoMDVuuvZNpd9P2lPKt9qv7or562HLc9Uyt5DB4wjQ5uRUcCyawQGy9ePXeL3mTTiGsO4qGnZpo+Frg/IxCwxMVei
X-MS-Office365-Filtering-Correlation-Id: 9fb233a3-b73f-4c15-546f-08d5cbc71e16
X-OriginatorOrg: qiio.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2018 16:04:00.5878 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fb233a3-b73f-4c15-546f-08d5cbc71e16
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7110674e-f830-4f7f-87a8-a46973e4c75f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0062
Cc: Andrii Voloshyn <andrii.voloshyn@qiio.com>
Subject: Where to make image dependent kernel changes while hardware stays same
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
X-List-Received-Date: Wed, 06 Jun 2018 16:18:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: de-DE

Hello,

we would like to have different images with different kernel 
configs/device trees. E.g., we would like to have systemA with uart2 and 
systemB without uart2 but spi1 instead, with all the different 
configurations and device trees. The hardware does not change in this case.

How can I make such kernel changes depending on the currently used image?

My first trail was  to make different machine configs anyway although 
technically the hardware doesn't change. Then I can append different 
kernel configs in the kernel recipe like this:
SRC_URI_append_systemA = " file://defconfig"
SRC_URI_append_systemB = " file://defconfig"
...with the corresponding defconfigs in their machine specific subdir.

But maybe there is a better way to reflect these kind of changes?

All the Best,
Jakob

