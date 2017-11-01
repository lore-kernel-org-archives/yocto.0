Return-Path: <VINEETHC@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5D21E00D30; Tue, 31 Oct 2017 20:59:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 163974 seconds by postgrey-1.32 at yocto-www;
	Tue, 31 Oct 2017 20:59:05 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0045.outbound.protection.outlook.com [104.47.34.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9F3E00D2E
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 20:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=g4eS3GZ3rmnDC4bybLzPyE0UCwDyvt2ze4xOU7REFfs=;
	b=v/kD+EyIRUS2M0NBp7p/FCC7MBUeZth+0SlZDMFKDIirxJCBXycuJzCh7OZbhfMDtzx+5asfTkk+ctNeHAVtQBHd9F6j6MO73XXA26W2wDfHCcHD6xxFmqUyq3f6krLff7gkBtIrStlN6mR0sx2S8+4HpSrMUBju4cQhRgTAs5c=
Received: from [40.100.54.194] (182.72.145.30) by
	CY4PR02MB2279.namprd02.prod.outlook.com (10.169.181.20) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.156.4; Wed, 1 Nov 2017 03:59:02 +0000
To: Andre McCurdy <armccurdy@gmail.com>
References: <c48d8ea1-c618-dc24-6200-f7511f0e506d@xilinx.com>
	<3d885b18-f114-fcf1-0600-0903935bd1ab@linux.intel.com>
	<CAJ86T=XGnuGPEnnKobJDrYNudEdbV0i8UKPzAFzcC7+Ob_KqEQ@mail.gmail.com>
	<DM5PR02MB2283899C6F536DA44EC707D2B95E0@DM5PR02MB2283.namprd02.prod.outlook.com>
	<CAJ86T=VUvNuZNu4GYY-aqXVMRsOWcLqg7FWdMpwhpg+-nRghxA@mail.gmail.com>
From: Vineeth Karumanchi <vineethc@xilinx.com>
Message-ID: <1d44d6cf-72e9-a168-2a72-e913fd0a853f@xilinx.com>
Date: Wed, 1 Nov 2017 09:28:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=VUvNuZNu4GYY-aqXVMRsOWcLqg7FWdMpwhpg+-nRghxA@mail.gmail.com>
X-Originating-IP: [182.72.145.30]
X-ClientProxiedBy: HK2PR04CA0061.apcprd04.prod.outlook.com (10.170.154.29) To
	CY4PR02MB2279.namprd02.prod.outlook.com (10.169.181.20)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ca5f2223-bb74-479b-7820-08d520dce411
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(48565401081)(2017052603238);
	SRVR:CY4PR02MB2279; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB2279;
	3:l6rhri+gTrQgnrdtaD/q52Jn82H0GcIGdv6q8Ft2BbfFF009jy2um3IFqlSP3btU7qPxB9zivLUNtZtUDtWeAa60fp8kd2s1BJOwtNp5aYF4XAZ3qFRodJFr0/U9cHIIUrijJmW2BYorXSYRxDUIrJm3Ctun1/4bbR7MSDpkiJDNdD0Z2kV+PDYaT5x/vq9OzKVlToIBizIGSvkc9LCyDzbdFEnQXlZW8GAaLOjHjXy9+o6YMY/5CpmDF9HvBLl0;
	25:Ozwfrr0gvwh+dh/hptG99P/p70I8A6oBU/uh3ZRt2G/opxoCj1VzesEtx1neSJrbTQQJ6OsKot4jeaCOc7MkKIQakEJzg14dMkoxS7QihmOwPH5VH54W0xXG9ZeDFAqVXWguEMP6JkjBAi7TwcGzgvyp6oh3f7weiyB+tulHuuJKOTbYsg/2dMvbjIrLFwPPefrLFepQBlvZMudFsvai5UTE8keqKPs+MVGZoNSY/T+3VM6ebpRJFxmacykLgdeys5YI+KVbIW9DM8pgU3XrYDdKLimFxwY95Q5bvowWv9Uerrq1PkWXC8TgGoriq7W1JpsJhhAdUmSaYjST1Nwv9w==;
	31:+8AfB9drMJsU5lE+dnQXNOOy/j4JMti9XfEzQkkrj3lRTAKn5ox2jwWsujBUZBbCkYj+ToIHc/eORXWlGHFdemp++Hcxf8OW0nYUOo4IMSN63v786+l/cP2NRnd9cvAOZBr/x32XeOScReFXf4iPOZ5aVfu2jb2fHxVotLLpVMfCn5aQXv6iaEeoLB/ld8TGvF9BjvRm1lVsggnD3UCEocFd2lp/jrUUQ9iXTd39cd4=
X-MS-TrafficTypeDiagnostic: CY4PR02MB2279:
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB2279;
	20:BquCX4cU6ttBs49BquWFx4Xg1TA90W5SZEHOYVvBNfB4Vb1Qc+NBqo9wcOrjp+BWIxUR1hOkFm5YeD0v1vXowWq+YRQZmmdX1qHcqOGMB0u7gmt3TyLsaDJZzt6Rqaqz/3m6DdQYGJLOvgJ65udDA/3qkKpovVlf0kN+LapsntkDyVIwnTopz4Wxp6K+O34a+X/K3prFUsYfQWhDVB5E41Z1qIm48ofCUPqb1XfztT6NfZuQDqKvMMb+lUMHy5UDOSbvanLaaCtxqpPteA+3y6nLKHXS/+SO2G45u1/RfdJ8WMZMwE0GO0QH/j3wN54SOhjoFukRwKyAkhQAoJKK5ocJLI0HsBGLE0SqsGo1HgLw+Ct03fGzOKmEVfa/8iD7oHxFfiayemtq9W80s5JprxzU7KAEow8fJ6KdeS32246wU9IO0VcpC7Xu5s9+v12RiOu4OhHLL7VJ/W+2Dz3WhzNrkMuePpGBak8qmDFXmwpgGSN1jZOS1QPUVD/kxZoe;
	4:csw+pushPJAzZx8s/LF/EFKvtI5fA2KKsS2MgaeCHjwZtiTDTmqN+GiOOaNAQGRbFttLtFXPMzZcQMgu7aeHAjCSF3G0Hdy49gvwLCmhwNE9Gkpmu5Cjfk5Opl+L59GnEFv9FvJW42lhB2YXEwKZix9Mi1creym5YlV7Oimt0VBknsH/bkugsZfkb52k7Z8DvQLmAZJiR14YmgH/eRGmLt29X90T0y4ffMTycdtK2LL42vfYWp3NnUaEIQ+m46HC
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <CY4PR02MB2279FFF75D45FFACBB5770A8B95F0@CY4PR02MB2279.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(3002001)(10201501046)(100000703101)(100105400095)(3231020)(93006095)(93001095)(6055026)(6041248)(20161123560025)(20161123562025)(20161123558100)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY4PR02MB2279; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY4PR02MB2279; 
X-Forefront-PRVS: 0478C23FE0
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6009001)(6049001)(39860400002)(376002)(346002)(189002)(24454002)(199003)(305945005)(31686004)(6116002)(3846002)(66066001)(966005)(229853002)(25786009)(6666003)(316002)(16576012)(6486002)(47776003)(97736004)(5660300001)(6306002)(230700001)(65826007)(7736002)(72206003)(76176999)(64126003)(65806001)(49976008)(478600001)(1411001)(54356999)(23676003)(50466002)(81166006)(105586002)(53936002)(81156014)(86362001)(83506002)(33646002)(106356001)(65956001)(36756003)(4326008)(50986999)(16526018)(8676002)(53546010)(93886005)(31696002)(575784001)(231993002)(2906002)(58126008)(189998001)(101416001)(68736007)(39060400002)(90366009)(8936002)(2950100002)(54906003)(6916009)(6246003)(67846002)(78286006)(120606002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2279; H:[40.100.54.194];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=VINEETHC@xilinx.com; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTRQUjAyTUIyMjc5OzIzOnRHTGo3eW5rRmtIRUVsQmdhUVM2c1lUVWJS?=
	=?utf-8?B?SDUwM0ROVmVPS0o0dUwxWjgxOU1uM3hKR0RuOVgvYTBQUU00YWpPbHZXRk1M?=
	=?utf-8?B?WGNZQjZEODNDS3k1NEJwNG5zSHVTc1FoTW01UFlQbGhlQW5rRlJyeWNXL2lO?=
	=?utf-8?B?SUs1ZEliZG5qRGt0ZXprRmNFdkJ4RjhUMHVINEdGSXhQTGY3b3FZdHBvMklJ?=
	=?utf-8?B?UkNhMWNtUEdFS2QrcDN0K0NuQzBFWkYvUDQvTy9EVkJFbC90dWlVajlmT04y?=
	=?utf-8?B?SmJ3ZzBDYkpqZTEvekZycXllQ1FWWDRtdDVVUW1tR3ZBWGlqOGNLMHhsaVR6?=
	=?utf-8?B?cHROK3g0c3Jvdk9JdjZQOGRjbkRDeEhuNmFsMmpnM3dqcnJzVVpKc2hORDhC?=
	=?utf-8?B?bEVVQzZGVFhOb2xwaHFhSFZBMVlseEt3NTkxdjZ2TktMSENmdjZZeFRJUUZt?=
	=?utf-8?B?V2x1SUZ2aGg1Ky96VFVYTkdzUXVRWlMwQXpxeFRmUkVWemNlTHJIQkRmL2c4?=
	=?utf-8?B?RjR2ZldsZlNGZ1BUZFNQUlpPSHhwaGpkZHRLaEZxT0tFOUZySXZTMXJpWjMy?=
	=?utf-8?B?M1VmbFdKMWRUSlFLN0R5M0IwV2l2UlZXTVRLWlN1MTlhNmVrWEM1dTRpcHUv?=
	=?utf-8?B?N1ZQTmFjT2xsK2laWDU1Qks5UFo4QStQVHViWlhqUnlXZCt5bGhiRkJyM3N2?=
	=?utf-8?B?ZC9GWlhNOTdLd1RqNG90d2pQSEZJS1YxYlMxaURQaU1kZHcwa0txWkZkY21q?=
	=?utf-8?B?ZWUwQ2xYL25JOHd3WjVJb0ZudHZtekptaHM5eW45MEIrMTM4QjRaMnBOY3hC?=
	=?utf-8?B?Qmo1Z1Zpb1RqVDRDRFlPd0hGSVlqYmp4RGZFT1VKc216dUFoNndGWmJXR0dU?=
	=?utf-8?B?bjZWbThuWFAveFA2VUxDK3pXQ2ozZWFJUGJzWlFaQnNlQnpoL3BYWDhuOEQ3?=
	=?utf-8?B?MzlIZ0JPcTRvYjRNenMzNTY4SmI1Wlc2MjRHMkhtcERzL0dySHY2MDdBZmFi?=
	=?utf-8?B?TWl1VHMzYm5wcnZjUXVCUmk5Sy81TW0yNUJGKzVKc1ZMWEJCY3JpNzFzRmxC?=
	=?utf-8?B?eG1vNFRCRFNiTTRPeC84aW1YdzNIV2JGaGtDUkxWb2pTVE1vZFNyODZoY2Qr?=
	=?utf-8?B?MnhmeXFJc2h5eGIrbnpJcUFPV1FhYWVNZkRRVUJpYk9OcElwaDZZQmdtemJ0?=
	=?utf-8?B?MWpjWW13aHRxVDFJV2xvL1o0T0pNeVBjVUJHSEZEVU5xOUcvbTB3eHBYZGZl?=
	=?utf-8?B?UGhpUEd5SjNPSjRPQmFzcXVVTXp3OTJTUklWL0dzdVBuTWhXWFY0NjRJclRU?=
	=?utf-8?B?NVEwRDBrT2JXM3BYZ3hiRXJZQTk2ei9wWUVYTFVWNjVTSDRFTVpIYVVIeEdY?=
	=?utf-8?B?Q3U5VnZ5dUZhcDFTMnRpVlNZSUE1a0RrZDVxVUFyL2NhV0RVb2FqekNIallQ?=
	=?utf-8?B?WlRxdmxLNWttTVMrNXdnOHA3N0s1LzA3QnlsTUluaUUvYXdKMlNIS3NzcW1s?=
	=?utf-8?B?bVFCbkJOWm5aRWlEb3Q0aFdiSFE2MXY0Z29jbGRoVWIzeTRQdUYzaEpkK3Vm?=
	=?utf-8?B?M1hhcG1mMk5IbkYvTEVMY20xclZ1c01ZS1lHR0pDbGd2OGpJMm9YSnJha1Rt?=
	=?utf-8?B?UWNzUkt0R3RGOE83WHhjekNOcTlyU1YwOVZsQmx6ZDMrYUsrN1JlQUZjV0ZN?=
	=?utf-8?B?RGZXUlVnQzlTUGJ1SVlXaVEwclZmRkpDalFRc2ZJUG1Pam5MOGFoZktHdHA4?=
	=?utf-8?B?VzF6dm5TQTNlSUYzblJXcjFsOXNrNjBSOVpadGR1ZCs0NTJVY3RZOHZML2VU?=
	=?utf-8?B?Uzk4MWVNOWlBN2RBcEdIK1JFbDNMR3pGMjc0ZDRjVUxndHlteTBTc0VWMURj?=
	=?utf-8?B?WGpsV0x5aUZkQXBob245MFRkU0doTG5NOFNMeGpyYmZ2RkVoZndQTEZsY2tI?=
	=?utf-8?B?dDdWMUxiM3I0WHBOYkJzeWx6QUNJb2NWeVVudzl3ZWRJeFIwYURSZFp0SzhG?=
	=?utf-8?B?aXpBNDJUazJyb0tiS1dtbHBQbE1TMFkrWlBGR3ZKOFkxVHRnRUVSTDdiUUVS?=
	=?utf-8?B?eWhaNVFNTXZPTDNTb3FucmNlVCtJR0p3RFllK29EZ0R4MktaQnUrOUltRDkv?=
	=?utf-8?B?R2lncFBlYTJ0ckpFSnczN2pGd2dkcTF2aWlPSFFpSG5SbUMrTWl1eWRsd3RG?=
	=?utf-8?B?L0pKakJkVVNtSDZXT25rVVlQQ3hBPT0=?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB2279;
	6:0gXdmNOglTCja+KxKqRQ6uxHef1Gtva0GlU+KP2VYOW/uGnnWP01gx3ZWVmdlUk//xI5sK+E9D2G90D6SaQ9WekGYkBg/zxXXIHRf7J0OeECRy6FtveuoNY6kXEO9NUNCVc9udXLEnuO1zFuD0epQS+DeRoIcaMjrD2umUhZdBK3k/To0mZRvfDHTCKo3lG5LT2Pf9fDMEvNNA5mFZy0z02k+0ijrRcWku9E0JdoQDDshtDR1KKykB+rc6WPLGARkuWCVb/YG222bNZ0okVAnVimYlLTPolx/Ix/AIUK21vteSxPaploV3W/dceEzqtFvqgZKcFxdP/avCMoZ83v3g==;
	5:+l56KjS5iivcnuovTfimG/LrVfVP63ADSnulWVtrxgi1sgj9aVGWPHKCUTx1oselAZd02ZwVf1b+36pJVaHfkUxdGCGfOw76Bv/u3TQLEeWO6SkIveolNGZ5pTSjU4DQrJfce2u5ngI/vD9CZ3DvIw==;
	24:71YhZ7NqME17hNxTkRH/hltkEvAOln0Od2542EdWwfC0g2wTj8ErXjyy+AK7d90as1Yki4JusFGYjMednYo0/6084hkm/AzI0/nJDVtCRFs=;
	7:tGVgpfeN3RD9TsnXmrfRyIzo4sgJkz61TndNgPWkR8oPodnP6RgKgCuYOl7YWPtfPW/gcduQRqyXU3xjekZTzOFbubF3lmYlQaAfp8eurOwVS/5g93E3Ch3Uo/ZnaHFHqgXAt/S66zWvE+7VYnqYYoBnk48CP2A9VPW2hwTXZidBEClwIuWUpz/z7LxiXLf5kGPhA6UDN+MGTwam9o6VSN7Xbd5r7GvoHlJgoKmazI0=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2017 03:59:02.1693 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ca5f2223-bb74-479b-7820-08d520dce411
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2279
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Checking sstate mirror is hanging at 100%
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
X-List-Received-Date: Wed, 01 Nov 2017 03:59:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 11/1/2017 12:11 AM, Andre McCurdy wrote:
>>> It looks like the logic in the wget fetcher retries once, so if it's getting stuck
>>> then that seems like a genuine bug.
>>>
>>> Vineeth, are you sure it's really continuously retrying?
>> Yes, I see continuous retry of wget of same sstate files.
> The fetcher explicitly tries to avoid that by retrying each file only
> once. See retry logic in:
>
>    http://git.openembedded.org/bitbake/commit/?id=54b1961551511948e0cbd2ac39f19b39b9cee568
>
> However, there is a later commit which may also be related:
>
>    http://git.openembedded.org/bitbake/commit/?id=6fa07752bbd3ac345cd8617da49a70e0b2dd565f
>
> Does the version of bitbake which you are using contain both commits?

Thanks Andre
I am not having later patch. I will check the issue with master branch



