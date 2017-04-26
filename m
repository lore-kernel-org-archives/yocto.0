Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC0C9E00939; Wed, 26 Apr 2017 10:04:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.61 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 848 seconds by postgrey-1.32 at yocto-www;
	Wed, 26 Apr 2017 10:04:08 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0061.outbound.protection.outlook.com [104.47.42.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87153E00777
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 10:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=IP2vZvdIWCjkgKo0cGZ5kziXj5bkPTMWWLF1nr7uaf4=;
	b=u+aRrFeihPSVBqhfZ6ZCvjik/ZxYGwSMugCHhwlnVSa9FjmEnerf54xYWHASvCJq7FQsRIE8i4tBa5vrg7O9PQncTRzx2DKgEAjprGd3UFZ6gc5SSh8J1qegxQq3EKZPvbI5DOtbhNbtFg9nRmeyZQNcaYuTU1JlVH1l9KPLdJA=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
Received: from [10.0.1.79] (65.122.179.226) by
	CY4PR01MB2680.prod.exchangelabs.com (10.172.135.14) with Microsoft SMTP
	Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.13; Wed, 26 Apr 2017 16:49:58 +0000
To: Khem Raj <raj.khem@gmail.com>, Yocto Project <yocto@yoctoproject.org>
References: <0c84e977-c53d-8703-fe34-839cd34900fa@xevo.com>
	<201e0392-340d-a4ea-8676-b8d2a860538d@gmail.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <04f82361-20d9-b82f-3698-5265e8e8af3a@xevo.com>
Date: Wed, 26 Apr 2017 09:55:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <201e0392-340d-a4ea-8676-b8d2a860538d@gmail.com>
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: BN6PR21CA0015.namprd21.prod.outlook.com (10.173.197.25) To
	CY4PR01MB2680.prod.exchangelabs.com (10.172.135.14)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 35a72d17-8a40-4014-c6b9-08d48cc44638
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:CY4PR01MB2680; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	3:5rAlZnP4xq2ntJqW7qwiVWxHkch7SNBwMqYt9PNqpV+U44EPp5jMJmuqWPvQA6Ex49YNQ/3aZe8zVQR2186/OJf79rVIYwcYGTiigk8u9GA9PZopUJIhskxE8HYjm2jbOLgUfjPLfRIuinOBSO9P9PjB9hf9782aB59DlhPqxKO+WwFQGF0cFQC6D7ZLiLmC4Lo1NSOysze82UT3IwoJxI5jZGJyuBFum1ru/WL81fwRsuOUi3jdNqtgbIBlVoHKelQblV7PWBLB7mxRJdzFL3tpRAkCFn4YBkTdYCfmNVQetp/UTTSvo62KxzvqFeFe8LC9fugiWNiErymj6EHR/A==;
	25:Pas/b/HMxrqCDKJII3EGFk0U/M1AvUBTz6KaQ2UnMIHQxjinVc4EP1GAj82iaw4JUqLEbyLtXWbUw68/UxPFoXEWSH8n1xmzokq9K5drs16O6okwZklm8Yr7fEtj04Qh+/1bsRzG5I4REpr2+EGoAUt6A4bxXeRniEkawRcN/mzea36xJUYqbvlLNsOGUIJyYrl8t8ZPRPiQ3YvlQ0V6facJDkEi9vx9499x1VRqgP7bHkFVAgu2RJrFSw6+v0J5Uh6NMW2SvFGA7sPiecrexSlpPS0T4+F5yK5QuzoRLWdqk7FQYLK6/fFWP5itZScgixzH5Ceoq6fHAkIFPTtW5cmFOEIn6Hljcu8q58s5KH/TLAhBPsvB68D6Lf4FUfrGRTvZg3BHoHrQVuyYGGSQykDDXTcIdKerNa0PBU5pa0h1Oy+TDLM1OhtTC+oK5Av5Dxebgkee83SRfUj17p7X1Q==
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	31:qY9rTQ3ZXQypt9QwvPrydR9aaLxrIh/iX6JW4VlgH6uOy4oSYp1P5BG+F3zJWH1jI17AfAu0pDN+vBoK/NwePsSpXq8DUXYRHUnrWbc2c8KN8W+U0EHnxhy2kHkGY2h4uAr4edXiaiOrS1VW4re49xaTqvMYZPalzwEwe2zBRUoKDecqeyeFd7daPCBeL/aRIoWy4bGemUfesiNpOaqpNSAcfoQq0f76s2oZim/awiFNG3S5xW/yXHJXXK+EEuYV;
	20:eqNFhsvCGQrMseeap4zjOTHHuuvWnA32EA6oL5Aq3dK6Y7H1XZWylSD6fPLKqZmfQm+YG52U86388W+GMSrT/ufMFuHiLvlvB09UvZNdRrHaV15WqiTMJ7mpLZMcUu6ebiaskOGVi26Zhz3im0h/Pd9M0CVhxV6m8Y4MUYwQIXvXIuAXyR9yy+DExPj2ci0TTZ8IccRoNVl/I84/VaRVt0c9JirzKOvPqTjZQ2dTAKB6xtmf1wM8fV4bEytSrDNehXC/KtBfFa0q7UkVKm//mdYoE9aVVcXntxv9za48kanXsKXZOmzZBlKrXyMhbisjeyAto8MDfB4OLADYTcExOw==
X-Microsoft-Antispam-PRVS: <CY4PR01MB2680F0E39C5B66F3CE276414AB110@CY4PR01MB2680.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:(22074186197030)(183786458502308);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3002001)(6041248)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(20161123555025)(20161123560025)(20161123564025)(6072148);
	SRVR:CY4PR01MB2680; BCL:0; PCL:0; RULEID:; SRVR:CY4PR01MB2680; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	4:DIdBdqWFRcwC48w1JEcR1FXarh8iWgYwvtiS/43n6j3mreP9zny5AByagANROaGpGBiwdEsF/9kAAgR+ri8McAf3+t1fs9EZth3z/dceSLs48BLOLRQxIL/pzw8MNlIPjEpcBUTgaRHMrBRJsoYX9ZAwz+xunLM0eRRk8+9HOfEigTVacW2LAwaJ5rLX/Z5cF9lOlJ1ngEIIWGgXjHXnQ+OwG4xaRNA09XYlMiDJNWA4Gd4SQc2xcGjtjFTDRhpdZBIOOjunMgG7z3UE8hWi8LW9FV/htIxvHHNRS/i5Fj/PIiMJAPEbK42Uze1AuEytZyIKAtJPE3QwcIhPjMb5fkPvgrWbEIC0G6HJoJGskKL8sNfdTycSPK9xscb29Pb6EFIvZR3Z6QNiofOZLWVvt2U2dRTxn0Rt5/aMqp/lMpPXZhg8rOMopPDU92b0+BcEwbLTtKf3FAv1Wfe4YS2IclU9+rwuNKiHr++d/Cuuk7UHissDeWvGAkLkXYbG05+yBNqdipHg6zJ8dtb1G1XeYmvvBlosGeBKGy156m7tp6zlHSgjgTCry/MriT4HszI5uFwB++FhdzGobYnSvimImhikDQDn6UHjwL1NlpmKSoN1ZUo9LUqz9WTP6Lob14BGM3DcyGuT7OVd/nAw1ocScWYdA7u7xDSLo+UcCWuSBOuQA6NgknCgllYwX1/Bs1hsVnqPF9voF09vFxEcHIVhzaPQ5eO5fc9zbqust81841yRZWnxbqeO22a/Dqp7UZ25a2OU7F9hizbPuDyzi3YWsQ==
X-Forefront-PRVS: 0289B6431E
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6049001)(6009001)(39400400002)(39450400003)(39410400002)(24454002)(377454003)(3846002)(229853002)(65956001)(6116002)(47776003)(6306002)(31686004)(36756003)(64126003)(189998001)(33646002)(42186005)(65806001)(6246003)(25786009)(6666003)(53546009)(53936002)(66066001)(83506001)(65826007)(2950100002)(7736002)(305945005)(50986999)(76176999)(54356999)(86362001)(6486002)(38730400002)(2906002)(31696002)(90366009)(77096006)(8676002)(81166006)(23676002)(4001350100001)(230700001)(50466002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR01MB2680; H:[10.0.1.79];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTRQUjAxTUIyNjgwOzIzOlVwV2dRbU01VnhWb0FZRjFhZzAwQi84THpG?=
	=?utf-8?B?bjV5UFp0RDZvU0tYY2RtMnpqdWJ6NFlIa2hvdHJyZitDcG9JcXlyaEcvUUEz?=
	=?utf-8?B?QXNmVFVXWWFXMUhuN1ZNdHhPd1RwN2NwT1ZwTUlJRmliMFRZV1htR09yTWNs?=
	=?utf-8?B?YTFkTUppaTU1dWVQUmpibVNMN3FMZkVaSzJZeHBoM1g4Q2xMMW5WY24wMWZN?=
	=?utf-8?B?RElJd0dHSGMraXhpeG5xMmcrb0ZNN2FWUG1Zb1VVM2VZL3pmcHkrQjIrNmpI?=
	=?utf-8?B?NEN5djY1bXZHUTR4QTFEVVpiZnp1Sk5jV1dGVWxWckpDMlAzaFlkUytmbk5m?=
	=?utf-8?B?Y1BqWDZSZ0RBNHpXU1cvcXdHaUFCZzFnNy9hUWpNNnRLUm5uUjYrc3RzZWYv?=
	=?utf-8?B?UHRZdTVMNVRmVlRnVWpSdUsxeXQ5cG5ueTM4a3oyeG1TNkk5eURhWmpOb2h2?=
	=?utf-8?B?UHJtVFlSd2UxdHdySUR5c0hHY0FaeDdKR3QvZWpkQ1RFUkZ0ZEtMakFTOWNv?=
	=?utf-8?B?QU9vNG9Ob1lSRlhlbXViV1N5b3I3NmVXWklYRFBEUzNTZG5tbkpscmM5S2FU?=
	=?utf-8?B?c0ZUWmpIRDBETUo3dTBaMERidW5CRUlUbTMyaHZaNUFZaDJpeHIvWTBObHpx?=
	=?utf-8?B?UnRVemUzRjZqUWQzaS9kQmlrNXU1S1BiSUxRWVRZVTN2Q0ZYeFUrVEtqOExY?=
	=?utf-8?B?Vkdlanl3TEZ1QWpkTytUVDV2MnV0SlRoVjVFSWpJNlJjM1lENisydk1uUDhm?=
	=?utf-8?B?OWhpTTBWYmJURVNUL2hEQjJsdEdKS2ZmcFN6TnRjM2ZaSG5NTi9QcVhQdndO?=
	=?utf-8?B?dDdrN0xFZnNFdE1jWXpmVTIrQ2Uxc0JCZ3dwWEY4bmdraTBkWEZjdXRSRzRV?=
	=?utf-8?B?eFk3QnJGcmM3cC9hWk95UGZJN25ROUpKMXBmampvR0lVaDVWdm8xWHhpMFA2?=
	=?utf-8?B?UFYycERvUzBDYkpNWFBrR29RZmdJRy9RWXdXSUhqREpQcENkREZXTkN4M0xH?=
	=?utf-8?B?bzQ0V1JrcE81bkVoYmFyYUJabmMxaUxnVUJtcGNXcDhPZjM1Q2hrWHlIaW1h?=
	=?utf-8?B?NysxWWc3Zm1VUmhuWWJENnRtTjBjamFWYlVWUzF3M3B3cm1lNkx0TVpuVHly?=
	=?utf-8?B?b2FZNWlNSkl5L3dSSmYvdkh1SnVSR2Q1Q0xTbUNsa2hyanhDcU5ZQXJxVWN6?=
	=?utf-8?B?VmV2QlVLSW9jdzN4Zm9OK3plRnplY212OWtObVBvRm15dUtYMVNYcUdvSVFu?=
	=?utf-8?B?MXhycUM0emdHbXpaOWl3NXAweGc2Z3I5bG1VOThOaWNEZ25vSjFiUmEyTDZW?=
	=?utf-8?B?R1g3eUEvOEpGclMydXF3VFBMMEMvamZqM3Z3NEZjVE8wYW41TytDNnk3Zlhu?=
	=?utf-8?B?Q0RZaDc0MWJpeGZMNjJ1TDhsUERuTGRvSnFlWjQyNlZUd3hnS1pLa3pHN1Ro?=
	=?utf-8?B?dFM1QXVzWnltTGFIRW4za3U4a1ZRa3VwMmNiY1FmNGVoNVFBSHpFdlRoV1FE?=
	=?utf-8?B?c0trUTlnYXp5eUdPWWdUMWxuVEdyYlJJbFVma1psYkdhbStyd3NubUNMK2FB?=
	=?utf-8?Q?jKduzbYiZOWBX8CTDEAk9Z2fgeWI1tBAB8EfkvAvb5Ms=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	6:cDfGJ6qEB0u+UKz3tslXVVKPkS8qOt6gEofar2zLp2iv9wgraeEApklDQGOepAxmP1owV+5p8b0yYur75iHvASybr80rO0vdIZH5Q6ojK8SfsLM7oI0NREZ5dAux8tUk5iNEghW1GW4g9idxmVQf3RiElGd7nJuiHrvWZnVR/Qi07P3oFqQIJisVfPE9qPAZsSXkVWKAC7vrqKnPNujINUx+DrOIPh3VZ5rQXtu9qDjoN7uAH5fbPp8k6mmLFU6PGeOI+HhyxrS00M5HXXSQwtnXB6Fq2+/BgxeIR90ATjudR2yOHq+CC1ZuWttqjyeDaMSftPim2SdlG3G8yXWbtAWpvEnHVg0QG7CCFIzlhrA2+tCwGhZZWswvuBvfq9FsAaRKyWn30e20n1yL5L2jKHeVpT63BjScD2GGPjLfAzyBDa6YtlB+YFQiC1vPJ5j7FZKDcRwusz9b0qEWV7UE+VQjp52Eq+uuFRhioDNEjtzD9NiTKK6BM7wzCWuBGc/M2c75bD4V08wzO9Wv7oA/RQ==;
	5:9jJVExkubLs4tmsLEPsILchvkaOLnjHo9fWJeKkDdFg0DZwKpEfPQMWtNdGxefiDXu5FlOwO9sq5cCmQa0RjWF+++qnm/4PF4tZ759+G+WVDODYidxFyfWraktR2Q5lYaUzJ8Z49ef5Ueed1JjkhIzcT/jbuwDj8MZkNat5o1ow=;
	24:iOVef9dcoZb1WKnIStdcSKTWWW3Q1PMD0acyOkX0JR25OZnhBXUM2PTqLkgms3f6fuhW1wqW2Rk+0MHnIRr2k7uAlAevlpfl6tC1z64iLAI=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	7:5vM9Vs6wmUi/A3PERjhUeD1/56Uf64xBJzsiHxKGhMXk8fh3Axbf5vwT7W1L4OipEYhl4A9YwtRAcFustkYzXeVzfhTZZRrPja5cPd4qxFm1GYrWruGwdIgElWpunVBGHc953bF3TAxEuuo8Q/ZasFqK2bgBZ6BPYS3K5sjiDVVf/QAdx3PXfBafdyvBTYUm5j1oE3b1cnGtMja4rVPa/2okeuGAdUPA+4xYqWOAXV7QGpablwRhl4T1rKGHJpGimM3ISlmHiV9HCNYU5KfHNzf522d8l47ZV8oaaqh3OrAJG/JRHleJ4wBGVRABfBiwrp2lZf37S6u/7uXvjGb8gQ==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2017 16:49:58.0042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2680
Subject: Re: How should we handle GCC 6 and -isystem /usr/include?
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
X-List-Received-Date: Wed, 26 Apr 2017 17:04:11 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/25/2017 05:44 PM, Khem Raj wrote:
>
>
> On 4/20/17 5:04 PM, Martin Kelly wrote:
>> Hi,
>>
>> After compiling a package with GCC 6, I noticed the following error,
>> which is a known issue:
>>
>> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70129
>>
>> The problem is caused by adding -isystem /usr/include, which breaks the
>> GCC 6's #include_next. I see that Khem Raj already removed this for the
>> nativesdk [1], but it seems we need a similar fix for other packages, as
>> we are still adding -isystem in meta/conf/bitbake.conf:
>>
>> [snip]
>> BUILDSDK_CPPFLAGS = "-isystem${STAGING_INCDIR}"
>> [snip]
>
> You must be not using master since it has been fixed by
> http://git.openembedded.org/openembedded-core/commit/meta/conf/bitbake.conf?id=88ec93d152762aedeaa231d2732e9d4b9843795a
>

The bug is referenced is actually exactly that commit (just in poky 
rather than oe-core); it looks like I mistyped, as I should have said:

[snip]
export BUILD_CPPFLAGS = "-isystem${STAGING_INCDIR_NATIVE}"
[snip]

That said, after further root causing the issue, I found that -isystem 
/usr/include was *not* coming from BUILD_CPPFLAGS but instead from QMake 
translating -I /usr/include into -isystem /usr/include, as is mentioned 
in this Qt bug:

https://bugreports.qt.io/browse/QTBUG-53375

So, AFAICT, what I referenced in bitbake is not really an issue, and the 
real problem is related to QMake.

