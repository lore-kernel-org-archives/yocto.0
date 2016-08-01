Return-Path: <manjukumar.harthikote-matha@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAF42E01105; Mon,  1 Aug 2016 17:19:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.76 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4699 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Aug 2016 17:19:02 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0076.outbound.protection.outlook.com
	[104.47.37.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 903C9E00EFD
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 17:19:02 -0700 (PDT)
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
	(10.152.76.53) by BL2NAM02HT052.eop-nam02.prod.protection.outlook.com
	(10.152.77.123) with Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id 15.1.557.8;
	Mon, 1 Aug 2016 22:45:30 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.557.8
	via Frontend Transport; Mon, 1 Aug 2016 22:45:30 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bULxh-00077O-Rm
	for yocto@yoctoproject.org; Mon, 01 Aug 2016 15:45:29 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bULxh-0006f5-SN
	for yocto@yoctoproject.org; Mon, 01 Aug 2016 15:45:29 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	u71MjTlg006759
	for <yocto@yoctoproject.org>; Mon, 1 Aug 2016 15:45:29 -0700
Received: from [172.19.74.183] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bULxh-0006ep-7x
	for yocto@yoctoproject.org; Mon, 01 Aug 2016 15:45:29 -0700
From: Manjukumar Harthikote Matha <manjukumar.harthikote-matha@xilinx.com>
To: <yocto@yoctoproject.org>
Message-ID: <f7c404f7-bd23-c8eb-6fd1-1e185f15fab3@xilinx.com>
Date: Mon, 1 Aug 2016 15:42:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.0.0.1202-22486.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(2980300002)(438002)(189002)(199003)(305945005)(87936001)(63266004)(33646002)(86362001)(8936002)(2906002)(23676002)(586003)(50986999)(54356999)(189998001)(4001350100001)(450100001)(92566002)(107886002)(11100500001)(106466001)(110136002)(230700001)(64126003)(229853001)(65956001)(2351001)(36756003)(31696002)(65806001)(31686004)(356003)(50466002)(47776003)(7846002)(77096005)(9786002)(81166006)(83506001)(81156014)(8676002)(65826006)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BL2NAM02HT052; H:xsj-pvapsmtpgw01;
	FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com; MX:1; A:1; LANG:en;
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02FT004;
	1:bmEROZdYcHpK5cH5U9doj+6QzPKr7CVBdJtGVVL8wTNv3FhlF/xnRABWiOpSJkMzjgvpy66GXpn6VxXuYKKVBIsVo4UXyBgsE4lAKyChsrNekYX/PIx4tzw2zF60wWE90/mIgcgmMEAqKpwOeEGl9NV9A3z4Q4MQ1af66H2g5tuz2h8OgNh+PMZFRsiUXCRQFb4PH47Fhr/bFmv5O7uNgHlHfPe/36ed/ay5pDoaYWwbWEy8Nz0x3vF67sk98xzjbckXwagceDTuaeaeOSm9GN1nCOFqhyan37HrolnutkLwMGRwvS13l5XNj32yg9QIgWB4xzQv7AqP6cZ2vcTZdeQtMeavbU50L2LD6AQgD6eTVbFo+T3WtlVCqCLDefA0m65YV/C5qmqt8i7FzaqlyEH0jKy1NxK0IhnlA/2OeIdclbyvkPKZNsoDw7c8uQVYMNNZEyu5hKsTacfaFiQGOsY8nxPY/4ziC7Ss5XsTJUwO46kD2fTJ9JWSLPxko/LBeTGmUrf6C+B5mKQqdInWVCo8baTr3R6FGef4f0FqhRPuD0TqDTJc9mo/R+D6D9+V
X-MS-Office365-Filtering-Correlation-Id: fa4b9072-5302-4e1b-c59c-08d3ba5d8aa2
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02HT052;
	2:v4SjlM7gHrphSdhX6EYxBfCXBBSahl3zfCgUSq4my/XBxqUIBruQ98jcCCEjh+NBdiU6ad/9BhRPZSJAKYiY5IjBbhlWeLgjakzPhBSCMx9hm+A0oqKfRPGtCXvQNHqZMftHbPz1oDNH7YZRv3L40ZyzMIGougfCfI/ooTK437uPx/Tp42wgYVV4b9ty9ZOZ;
	3:JrQuI0ttK6s8zEy9Xq4yjydrPKvvt/jJ3PK24LGzgHFPCOaMQVxUS7U1v/5DC6+Qe93921UG7peaTg0hkxgOU4SEh0Q36GKHawByx5zB8bALHcEAyJohGSZeRHAAD0WJCpRHN7gTr0YAROjaQnw0ZrZ2jpiNfugD4ygOdG9pqj6FdTxPy+W8nM4gSqoBrFESkRIU5yMoZ5CMqeuFM2NsIWV6S5TjOHb8oqE0nWT1W1a+8q/nukIz+qQv+ggzJ4/8hbOkeJDfP3gt0pKmb954zg==;
	25:TJfxJqWz1I/YpReUFQ/YX1odZRyU6oK4cUEiiI09uqYLc0lDQKkXtKVzeMbEa/RrfsA4Agi3AjoFUXZs579i3ySMSlYpmOHaitv7KbyUBum8pD5aQEzXxFqfqCVFs+rvznvojex4t5k1hZtW/6GqBE3eo1C7MLDAknnJ00NIwOiUjsbQD5HLGKt0EyFZJ9wTSMQRWQijNHY29J+DmP0gCeyUaQRCrVX6TxqcOPe3XuERyPZHatT2Zmq0Uh0FCzGkuUgO/zRkTTzKKbbjlD7Ixk/IzT9Zgd3PoU9FWJPE8Kuk0C3Hf0qtY4EyjpFz6TBe14ewI2bN5KREVbOVFnniOttB94DCYE73K+KPBUF2go+5dyanCEhgFN56vf1wjdgNM9z8IMZppLIV7Y87vN/QHA==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:BL2NAM02HT052; 
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02HT052;
	31:7xYVc2OHfN2wMhFSu8b7HSCISEvVLvsiIn9+NjGaIhk1BSjssfUy6WVRcpaoMJo/3Y+VlgwheiXvT4PoM1IEf3bsGl+k16mnMHjda+D65o+qIZ3gGvgxsYDQrKqP1sWy7Xvs3nDjj7xtfFr3DgpdjYcH5GxSeajdkMSMIzEoB9fBPEEp6A8sIzvok9ufLV5CQjoKas2DG9TySw/qKG+X67H24wcjyd7uI//kBWgrs3I=;
	20:hKO6tp2vcLFg9WeEsWA+8OjCrHs6OiV18E35q0gDDV3oeFTdq/88ts6CuwmJY1AECDvH6tNu+J8Ff6d+fc36c7EYMEGaYiMNw6DLreuvLwaPJgtm/z0hV4hJVSY42IXxFAW/OM+9q2vSBZMq1eVijVPHOP+SwQgyqQF9Z/FRlqQX/0a0+wkvvEP0UXACJXCzZPXfTNQ0KPBvZaLBpZ6Kw6VjnNA06K7Vwwz+769U5txdjUvfLSu1108QByk//yfV1yFr8NhxzsZiax4J8PmhfJopll2JPd8VfPkWV7PDIKpEAgGLbwzEm2DJQsV+/ZM9j/ZhIOrzEBErTJOgVDoaqaoLICV/743wbywZtH8ySYKAViS4XpuDGfIdqq43tHkyDNtGW3oCBxtRXcDV7AjZm2mCBaNu28xeix0EFhb9qRAMJu25Ed4YdFZ94hrBBfov/nj6suyBm9R3kHsFhBEuHZ3CO/eFO92DtZW4ojYQK4Z+LLyF8BhzsYgxl0vHAVo/
X-Microsoft-Antispam-PRVS: <111e8f41d4be40d79c19b02168598a55@BL2NAM02HT052.eop-nam02.prod.protection.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040149)(601004)(2401047)(13018025)(13024025)(13023025)(13015025)(8121501046)(13017025)(5005006)(10201501046)(3002001)(6055026);
	SRVR:BL2NAM02HT052; BCL:0; PCL:0; RULEID:; SRVR:BL2NAM02HT052; 
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02HT052;
	4:x5KL/4O5vv+VkaHZezt6aA20AfoX7/5Qg8+towrjYcCy3vKT7b1VCMw80R7CrxDT5UHdbcn9hFlaZBAtBuDvqW4ZtAqavTKd9sJqbV5EebT799VVxSdwHapjpPdrwxe9o4ctcT1LHRlEzNotGD/NDBHLHlad35ZCZBeHDB7hsAVdC2DRRSJjCPLlGYNUMKY0F17yVd+WXm5bC4vDTAccr32x9OpIgDRCza3XKJE2H03Evolm/IvyQbXAY0k6acQ+0IaSj7qPBAiKr1JjN9Ku2N0BfsvHQy1krYvo0JIXV3d5Ozw2OEc+EAm6D18o1Sf5Y33ic7gEdbfy9u3g4T5Tya+plAKCazi78Y3FBAIgdKIfOaI709lNMT6fpXdz8y97f34gzg2kNth2cXTunTOeYEvk7nNsWjzBK+yVUhNRFkvevRBdExueejpjMbUGd8dSsAITPiACi+E00CY4ma+NExG33+L67IBbFwe88VA2mEnLmD3i2gGvWTb1WIFP4RT/
X-Forefront-PRVS: 0021920B5A
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTDJOQU0wMkhUMDUyOzIzOnAybUQ0OGdScWMvQ2o3MDRQaGlFOW1qdSt1?=
	=?utf-8?B?d1NwRmU3MTc5bVdKMFAvdkQxYlFYYUMzUnZ1MnhVamo4VkFRTDc1RHl5K0ZW?=
	=?utf-8?B?RGtvSWNGM1I3TzZQRUUwbTFTM2VsSnhSZXRmdzh6bmNCcHJmSi9aUTZ0cmE3?=
	=?utf-8?B?dzhDVEdoNk5MK2drVFlUMGZvOW9DUTBVc3ZxYk5TaWwwNlVVMWVnaSsvTG92?=
	=?utf-8?B?Z3hLbk01RERoWHYvcWs2dHB4SVFObUV0NGJqS1IvQlgvVWQ3MmxnWkNaTlp0?=
	=?utf-8?B?WEZ4NXpRS2FQN2hudFZ2a2w5OTdBS0toUmdkVnFpWXQxVTdRSFQyeTJtYVp0?=
	=?utf-8?B?SEZCYkNzaEhnM3ZXbEltMUppZndEakpKeWxtRTBOcDZpalhWOFAvNnFqODli?=
	=?utf-8?B?ZlEzL1lEbEowM2FGOWlzZXpuS0Y5dTl6T3c2Y0xRU1RPT0FwV1JnUFYrNnFJ?=
	=?utf-8?B?b2dEb3V4amphbHFDaE93V2NjbEdKTS8wRjQ4QmdBQzMzdXJrNmc2RDFJMDh6?=
	=?utf-8?B?d2RsbUVzdmoyY0hBUzR1ZktSQWtvaTFyaEltbkVrM3hNNHJhVWUvRUY1Skpw?=
	=?utf-8?B?bUVQWXBuV2hUTGtrR0QxLzdORTZMcnduZitQWVp2bzZmQlN4MUhnTnpIemdo?=
	=?utf-8?B?Ymw4TnJ1YWZPZkpQeGpRc1MvSDhLT1ExK0hHL2orVlFIdWxISjdLUDJXWEh4?=
	=?utf-8?B?eWFvSlB0QXdDNXpmZmx0bUpLMnVPRHF3V0cxWEV4bTQwZEhJWHZJdjZsUm9i?=
	=?utf-8?B?aWtabU5QQjNsSnI1TnFUL0FXL1lRV2w0YmYvSlRRNmlMTDVzcXBoY0Z0RTNi?=
	=?utf-8?B?SG1lQ0twS1Q1TzNLUlZXQmM2RDh1T3E1RmdkczU3ejZ5RjFad1E4dzFnQUtk?=
	=?utf-8?B?aTNtc3NrZ2xVcWNpWExPbDROWEV1UUVweVNNektzUFRLbzZNRWFqZTNDd0xP?=
	=?utf-8?B?a2pqNW5nL25QWG1CTzVoYkJ0ZHNrUHQ1clhjc3VLVnowTmxVa1lwN2tDVm00?=
	=?utf-8?B?TVZUcEJ0RkIzaHR4R1NCZTN1dWNrSzNPMWt3a2ZDejN1VEZneng4WDBIbk1K?=
	=?utf-8?B?cUpiR2pQcFdUeWtPbkdTMVNndlViQmpqZ1Y2OEJtczMyTE9qY0l5WmRCWlQ4?=
	=?utf-8?B?citkSWFOMVNIZmwvT1h4QlhHTFFOVlVYNDBrakJqVnY4ZjBUSUFqQ2x0dng3?=
	=?utf-8?B?UVovK0tpTGlXeVB6RTBJazBuYm1sSzN3aFZZUG5UaytBVU9CdDhqcHBUSTJ4?=
	=?utf-8?B?NExJVkRKVG9iNUUxaTJhRDRzeng2MS9UZEFHOEloY1JPdmdMUHhRcHI1TG5u?=
	=?utf-8?B?RzhRc1pLM1pwVFpRVStpeERtMUVFaHFya09xVUM4amxoU3ZSMjdweXZGK1dN?=
	=?utf-8?B?TDJMMkdLTlFpS2ZuZGV0cGJJTi9Bd3B2OVBJZUFUT2pxRE14dlRpdWdkL0pH?=
	=?utf-8?B?QitKVHp3ZG0vb3AyZWpyTDF5ZWdqTWdrSHNNb3dOTERsQ2cvUzZ5cVA1YUZn?=
	=?utf-8?Q?aIINdlQFEYJXQXteNDVh/Ol8+pyjLCQynTpV++e7T7Yn7c?=
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02HT052;
	6:nEW5Y+iNbCzD4gqvS/H+DkI5a9r/rKr7lNctkhL2hB9EpLt/TY1MvFLZb39JLVJ+P6B5EfQ/S7GpU+T61knX1oWWrbfYW2BqmM9md+96YX4+p5u4LBF7Bir0WPE/r9BN+Q0gXoB0/W+lkFrPc4ETNMDindQBsBiJNkCemaBMTI/tdygeXgTugiDNO4+xqwnK0up3qp9ejIahbYfKTzIjT7dZKe2ReHqUil2B3zFPgWiflcvzp6+TF72h0JtHRuFKzRL5CLj60CvKolWAS4BKxfgXF811p0O7WLDHlPGcvb9JzTLxy1/7jhKdLgtEZ2uzCo9CaMHG5lDt9TwSIMM3zQ==;
	5:tT0uDByjtmohwm21nRlNbX8ThydHFIVqj5hDxRW3eahX1BJ13IFQZQvW1pH5/+wbpakUOvg47kh8/7ZC6/qzdgxH/Y5kh03HzTO5t2L3MpGg+q/+8Mxgt8eJs6xtxEG9Vpmy6fBwFdFj7qHhaAUnmw==;
	24:gx9jXNzHI7dlE/6FF/k7JjXi27qVaAuuchJ0FnWDtvIpymnMRAu5fqePDGv4jt5WXCwNIU325I7J2lgpEqDdvIHbehvkUHHTSwuT8HBhXas=;
	7:Q12YQjUIsq+9c1bZXK+7FLelgb4ZVOi9TfqW9ep6YFxACDRI1hFId/1ojtv2iASK8tHsE9Y7bJ1ylYMnWGNpx3Fy6ZBoHi0A6IdUWpQL5T+NYx+WFFrSDVXAW6ZRK9CNSdTYoWluEWwrY7G0xENYYDifZJpF6ICWjCNwbJ0+a5gaQ+a+NdE/XNpAg/ikJGmo33EwVA8ef18HjzbuR+zvkRquKw6xkCLbZNogfuobUA7CgRbPvZj45FXvwoONr8jT
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2016 22:45:30.8144 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT052
Subject: Question regarding kernel modules using outoftree kernel builds (EXTERNALSRC)
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
X-List-Received-Date: Tue, 02 Aug 2016 00:19:08 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

All,

I am unable to build kernel modules when using EXTERNALSRC. When you 
inherit module.bbclass, it depends on kernel shared dir (from 
do_shared_workdir). I do see that SRCTREECOVEREDTASKS has explicitly 
made sure we skip do_shared_workdir in kernel-yocto.bbclass.

Is this intended? What is the expected flow when building out-of-tree 
kernel modules using kernel EXTERNALSRC

Thanks
Manju


