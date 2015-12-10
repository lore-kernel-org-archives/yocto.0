Return-Path: <yukatharsanij@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE5B5E00B97; Thu, 10 Dec 2015 06:47:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.125.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-sg2apc01on0130.outbound.protection.outlook.com
	[104.47.125.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2E9DE0049B
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 06:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tataelxsi.onmicrosoft.com; s=selector1-tataelxsi-co-in;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=bzuXkFEzbDAA0R0xigNZN9PKPswDhbUnhV+L3jhvHHQ=;
	b=rCl/GBswqE1c99C0atEkm4G/ET3qDViRxoRL5w97Hf6fc+l7MR63bPz2mQm+F4Y/EZhQ8DkCEEH5ViGjs+P7Q/JY6loJrnJA+8uH24ByOvNqFhpjhtZq0oks4tkpB+lAkYTkGJA6pXxL3/dvwiZqIo0GL/N4jcpPtGlm2qnqTl8=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=yukatharsanij@tataelxsi.co.in; 
Received: from [10.75.12.38] (59.160.207.5) by
	HK2PR04MB0660.apcprd04.prod.outlook.com (10.162.241.142) with Microsoft
	SMTP Server (TLS) id 15.1.355.16; Thu, 10 Dec 2015 14:31:48 +0000
References: <2413401446092375@web22h.yandex.ru>
	<SIXPR04MB0668A492F04048D5C7998873EC200@SIXPR04MB0668.apcprd04.prod.outlook.com>
	<CAMKF1sqfDA_FtZApDAgrB2g3n7peQVVnNWS3cEx1ejX4f_XLMA@mail.gmail.com>
	<566831EB.4050302@tataelxsi.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Yukatharsani Jeyachandra <yukatharsanij@tataelxsi.co.in>
Organization: Tata Elxsi
Message-ID: <56698CCE.5010807@tataelxsi.co.in>
Date: Thu, 10 Dec 2015 20:01:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <566831EB.4050302@tataelxsi.co.in>
X-Originating-IP: [59.160.207.5]
X-ClientProxiedBy: BM1PR01CA0040.INDPRD01.PROD.OUTLOOK.COM (25.163.199.12) To
	HK2PR04MB0660.apcprd04.prod.outlook.com (25.162.241.142)
X-Microsoft-Exchange-Diagnostics: 1; HK2PR04MB0660;
	2:+WaLtnQi1vIuvBfSUFHHznW7byFr6fAT4lQqB3se9H8xEJfkRgVsEerHpADJQp0dLU0bW98qZp/94uU2daBmY6IiHrGsKXYQoXy+mh7haQrOZbsO2Rw4ZxMCAWJIvX0HfHMaphMPnfeZd7MBJC3KYg==;
	3:dBrI2IdT21QKHtBKvdxwUq2xSM1S1BKCL05Pqy0Rq8uqWxGp81IfGldImJNfn4G6A6YY2aMn/VgHCiSzHlaqY8hEnrH8eFLVoZNOI0jLTzBwE5Wr2QU4t8QD+VsDiZDB;
	25:PPxf9XH/LRk3zhTOSyy9dX6DApMnOOZH7Uo2UACZ1xYaqFoth3hItPlO/rWPCAuaj9CRhi2dxXrC0Ww02q9z2RedEHtIULT4/pa7+SnkMUW07KO1bXZaLf4uyM2DUm7WAFnVj9v8518Lel266uEp+dALy1QYE1u1BZIpdpONoPkc6j0pMCoyLtu3pU1fq1EKXHbj97tZdjUUmnviS0NvskOXhuUqGWuB4GZxPF3o4PD9ii4LBOsAtXuQvYjK/UU2+cf07T6jEogaOR7T7VFN/A==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HK2PR04MB0660;
X-Microsoft-Exchange-Diagnostics: 1; HK2PR04MB0660;
	20:9ydHELsHiG4YAyxz9e+Y2N+tqsL8sgJqRUhhBXij78CWBGNTkdsK/qBwwVwuqIZGVhUCayN2C0viunVnAbpFUlXG0UXKBttay3W5rUZTBeZdmAu0yecN3GslrO9t6TiBt9cTL0r38B2qiUdvfjV927ytIE8h8chXuHTuHRG3dcfe9mlYo6dVxycYBVs5cmjWZ3fdm5tDxDZyovvE7WGTplvJFmaLdLT7fF2N6D2Ips1QzAJ7IS7BZ2oIzQ3UmakhG9SU9+cbGbBRERE3x6gDxlu7idrVjmT2MoU6nIKo2ibjFBmmsuDLHz7bTcbR68ysUmm/kPJHbs1HZtxk14vQyn3Aj4r/s6XWyvWk1vRkSDydt/jovSjgszorvLq1GYWTjQ42eBNz/M9MOeCE8F3W4pXAhvDGypnDSVAXczllicimnkZC0E7ExFhXusg+mE6ZWX3ow//usAJabOyINH8LxkGAos8P7E/5AruSPWFQ6vLFB6gUiyqGEWxJcfWUI0/+
X-Microsoft-Antispam-PRVS: <HK2PR04MB06605E2EE43C5470422BB8A2ECE90@HK2PR04MB0660.apcprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(185590752853456)(90964069518039);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(520078)(10201501046)(3002001);
	SRVR:HK2PR04MB0660; BCL:0; PCL:0; RULEID:; SRVR:HK2PR04MB0660; 
X-Microsoft-Exchange-Diagnostics: 1; HK2PR04MB0660;
	4:FtVfveDrwXHQOcmM5r9poCtM/wQP1+ezKR0wcIG7GsvcwjFVaxoHJW0gAbCVdIQweV29nGrSkofB9vkuvjY4qkI7HTgSS0bGs57QBRr/zbMkgyK35SHOfke2Do9GuIRaS7RVNf01RzGY+klMgAeib+WTzff0A7LUYJFB9nyF7IiHYSOeEKq5136FWCknUNvHe9e7FaBsb4PXgVAsmX4m8tOR4GcRK8S8BfMiUSwI14P0k8WHNpiI6AhlWkN3FQ5ii+LhzyjRRLDSSAijwoX7vyq14PnYDo9LOL9TkSz/OZJbjw1OL7cdMoovdueKgAnSXiy3Y2Lw4vxGCYYDLHkNqdxFnGSeYHepiXyohqnpH+dFspKfrkWh1Rr+Ggaxxt1mwnxZAaSvxEUthVCuWWqQ8sBoR34gmgr2t0zcpFoEQG+CKE0PYmgJBPPLkMCxgeNv2vjHFlcsyuKr5q+x3gWorg==
X-Forefront-PRVS: 078693968A
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(6009001)(377454003)(53754006)(189002)(24454002)(377424004)(199003)(52164004)(86362001)(551934003)(64126003)(4001350100001)(2950100001)(586003)(2351001)(93886004)(77096005)(5009440100003)(87976001)(15975445007)(2501003)(101416001)(5008740100001)(23676002)(81156007)(3846002)(5001960100002)(122386002)(53806999)(54356999)(110136002)(97736004)(99136001)(189998001)(40100003)(230700001)(50466002)(59896002)(43066003)(450100001)(87266999)(65816999)(107886002)(33656002)(42186005)(105586002)(106356001)(1096002)(47776003)(36756003)(19580405001)(5004730100002)(80316001)(19580395003)(65806001)(66066001)(1730700001)(65956001)(83506001)(74482002)(6116002)(50986999)(76176999)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR04MB0660; H:[10.75.12.38];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:0; LANG:en; 
Received-SPF: None (protection.outlook.com: tataelxsi.co.in does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtISzJQUjA0TUIwNjYwOzIzOlAyTWlYQXdJMnp2NEo0Zm41Yi9WT1U4YXJG?=
	=?utf-8?B?OGpxajJkTkowL3lhRTlQY3ZYdVJ0bE82dThSbDJVODZQaXlGZ2ZQbzhwUzZ0?=
	=?utf-8?B?MlFnc1AvWUZiWFQ5SFdQWDFxNHVlSnNBK1g1OVlVR1pDSTBDOXNNeG43NWMw?=
	=?utf-8?B?Z05EQWZ2VkNHZzZ5Smtwbi9EZ2tzZk1Cc1JHSkhqSjVtdnBwR1dWWC9CTDF1?=
	=?utf-8?B?MmlzSE1uUC9iSHFwcVlaNC9wRTBzNm9yb0tJNnJ1UytVSXZrTlRGVUF3QVVG?=
	=?utf-8?B?eHdMdzZCRTJWMXNwQ011UktNYUEyZXdPdS9RK3BkZ2Z5d3lhRk1LUFRKSW9m?=
	=?utf-8?B?QUZQOE5zWVZZYmQ5TE9MRWpyM1E3emtTTFZ3REFTRlZ5NDlaRWM1L2RlbGpB?=
	=?utf-8?B?dm9jb3hEckdiWUdEK01jNCs1RHFuWDU2WHBuV3JyU3YvT1lNVjBPcjNmOFhz?=
	=?utf-8?B?TlpQY0NFZlpMZ3BqY282ZXdpc2pNL0VTak0zYmVrTE5FSFpBcmdYVUZZZUs0?=
	=?utf-8?B?M2hEQlZvUUVISUhZd0M4eDJlRjJLOWtzSEoya29zN1NSd3pWK0E2Zy8yNVpY?=
	=?utf-8?B?KzlCYUJxcWVlTU92aTZkK2JUUXRFVFM5VW1IMFYyS3JDV0gweEpMZEFCMklX?=
	=?utf-8?B?SmRQWG1SNmxOS0dYNVd6TUdzRFBtbkkvcklnVXlJNURzcGIwVHEyZGpnbTJQ?=
	=?utf-8?B?b284ZkY0VkJRdnlRMnVJbGRDUW5lS25paVU2d0tXdFc0WS9qR090bnE1N2hF?=
	=?utf-8?B?Wnk4d3B0VnVCMm01dkloWS9wNzlpclYzNk9ZNU1sUDlHOFkvanpmWmx1M1Vo?=
	=?utf-8?B?eGNaQjFhV3RuUURBd3BXdXdLQ3pnQm1xKytnSmtueE5pL0lkc3NXdHl2aEZJ?=
	=?utf-8?B?cWg2K1NjcEVMeitKckJXaTRSVDIyV2tScklxME1US1lQYTk3STcwbHBOV0xj?=
	=?utf-8?B?Z0JLZlRwcmFQMnFCTWhXRVRoL093K1RXcWNWZ1JqZFNJL0VuMjh0RTNsNStK?=
	=?utf-8?B?S3AzcDh0SDZ3b3Vva3dybFlqa1BQOWsyRlE1ZVAzbEJKZ0gweFY0OUFadTdo?=
	=?utf-8?B?M28vbTJvNjhDMDJVaFFIQTQ5OXBYbEtSalM3UFVyN1YzWVNQM0ZtcHA5N3pG?=
	=?utf-8?B?b3RtMnZIU1FmR210QUNEeHlNZjdXQnNRRUJFSDJvcVdLeGJZdmQxdE1BSnVp?=
	=?utf-8?B?YlgrYitSNWJadW0wazBjOHhrVW1YZVF0NzZZeGJQdFk5SlY2ZjY2c1Q1dWtN?=
	=?utf-8?B?NnlyMEFoN2V5bVRkQ2pUUTJaVVpZa0cxMVQxYktJcFZqYi9nQ1g4djdScFhF?=
	=?utf-8?B?RUZYS0VLRVZoVUI1M1cvZ3MzSnRxdWUyYjF2SnF0TWR2L0J3Nmt1anZxdVYv?=
	=?utf-8?B?eXFXaEJ1bXlOQUMyVFBwLzZjRlVsVWlaY1VvMGVpY3N0akEveUR6Z3I4cllC?=
	=?utf-8?B?bHpXeTJaTUlkZHFwbDJBN1ZjUDEwcExVVG5OZkxlZHVGZitmVTlXZDZuRlZO?=
	=?utf-8?B?U1pNbGMwdmhVVTVFdTdMTEs2VjR3cDFpUkxoRnZHL29WWHJLMXBwVWVVcFZH?=
	=?utf-8?B?Y3JveVhEV0FLeENFNlRQT0RJSW1QUkZ1SW5hTEJoWm1xZllEdWFWQlpkUnUy?=
	=?utf-8?B?enNBVHRXVkNvdzBUaHRBb1NsYVk4WkY5dHBON3BiZVcxRHpGTk1QTDdqaUNn?=
	=?utf-8?B?NVBxREl3WUdIWDkxSHZSYTMyQ1hxQzNEVWVZQWZsWmxRUTZtNzZ3ODlhUDU0?=
	=?utf-8?B?bGdBQkEraWcrTS9BSENmUzZLbXhmU3Y1OWVJSjZva0s2VWVUcnhnK0NFQ0U0?=
	=?utf-8?B?Y0Vsbk9kMytGOFNyZ0paa1dCZUhMS2hUdWl6Z2laQlZzWVY5cW5BYnY3SWxI?=
	=?utf-8?B?M2MxRkZsVmJEelFYOXVFcWdIdUdtZWNnWE55Wk9URnUwM2ZFN0NKaDcvckJQ?=
	=?utf-8?B?Ti84M2NCS3BLZzZVSHNNdk5vc3lJMmJrcytXSDVScUw4bzFFVEJGd1Yra3Fl?=
	=?utf-8?B?WXFGWHdMMmxJWkRIbnd5dUkwaXNodTJmOTA4c0R1VVQxT2cwT2ZqZi9KYXBr?=
	=?utf-8?B?RmNvTExlMkpld2hmb0R0MS9qU2hRZTRDa2hGTGNOWk9JRDFrOEdUdVJqTmtp?=
	=?utf-8?B?eXdQcEdYRVA5SUU2SUhzV3VOUFA0bEhPRUpIVXlJSDh6ZHl6SDVrMWZGcStp?=
	=?utf-8?Q?1KxsuBQWQYabEcn71JZWBxpZMO0cwLBQvN17qkRL+U=3D?=
X-Microsoft-Exchange-Diagnostics: 1; HK2PR04MB0660;
	5:fFC0CVitwwxZWDggfF+49KvxQ2Yj9y+U1SMLjEWszVUm2hCQsDmVfs8+FT7tuWRtKj6IuKsgTANtHhI8be8/FfUXsvpvMKP2WGneq0bbdETVECWKmuRLbG5ryk6eDja/h3HOXgmOv0nY8jZMb27WlA==;
	24:xaYU2kV015KhcfmOkLctpfOEawSZDCWTEBts212t+pvBSKfGvbp87h9Si/S0292kvnpTbrdhtF4NriD1/opx0AF5ga65o+0z0GWHUkrM7T0=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2015 14:31:48.6669 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR04MB0660
Subject: Re: Computing transaction Error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yukatharsanij@tataelxsi.co.in
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Dec 2015 14:47:15 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

I am getting the following error while running my bsp image.

Loading cache...
Updating cache... ######################################## [100%]

Computing transaction...error: Can't install 
packagegroup-mrvl-bsp-1.0-r17.1@bg4ct: no package provides amp

Any idea what might go wrong ?

Thanks and Regards,
Yukatharsani J.

On 09-12-2015 19:21, Yukatharsani Jeyachandra wrote:
> Hi All,
>
>          I am trying to build my meta-bsp layer using external linaro 
> toolchain path.
>           But i am getting some issues since i set EXTERNAL_TOOLCHAIN 
> path in local.conf file.
>           Is there any way to customize my meta layer alone to take 
> external linaro tool chain not other general meta layers.
>
> Thanks and Regards,
> Yukatharsani J.
>
>
> On 29-10-2015 11:19, Khem Raj wrote:
>> On Wed, Oct 28, 2015 at 10:15 PM, YUKATHARSANI JEYACHANDRA
>> <yukatharsanij@tataelxsi.co.in> wrote:
>>> Hi,
>>>
>>> I am trying to build kernel image for new hardware.
>>>
>>> So, I prefer to use my linux 3.x version with specific changes.
>>>
>>> I want bitbake to fetch the local path of my linux.
>>>
>>> Is it possible to specify the local path in SRC_URI.
>> yes. use file:///path/to/linux.tar or even you can use externalsrc and
>> point it to your tree during development.
>> read through
>> http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html#building-software-from-an-external-source 
>>
>>
>>>
>>> Thanks and Regards,
>>>
>>> Yukatharsani J.
>>>
>>>
>>>
>>>
>>>
>>> ________________________________
>>> From: yocto-bounces@yoctoproject.org 
>>> <yocto-bounces@yoctoproject.org> on
>>> behalf of Andres Sagot <andres.sagot@yandex.com>
>>> Sent: Thursday, October 29, 2015 9:49 AM
>>> To: yocto@yoctoproject.org
>>> Subject: [yocto] Kernel Version Dependency in BB Recipe
>>>
>>> Hello Yocto Community,
>>>
>>> I did a search and found a great deal about layer dependencies, but 
>>> I am
>>> still not clear on how or if it is possible to add a kernel version
>>> dependency to a BB recipe. I would like to bitbake to report an 
>>> error if it
>>> attempts to build my custom package with an unsupported version of 
>>> Linux.
>>>
>>> Thank you and best regards,
>>> Andres
>>>
>>> -- 
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>> .
>>
>


