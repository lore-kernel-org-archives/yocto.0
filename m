Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93808E00995; Wed, 12 Apr 2017 13:14:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.60 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0060.outbound.protection.outlook.com [104.47.41.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63B71E00961
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 13:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=3qX1y54V0apm05CF8+Ivbifp+Ly2DGVkgqAFbyH/dzE=;
	b=Uf83ugyv4t3xY9lk0LaxyQty5DtXZzwkkiBdeMeUd55UHnyTdM9dZFzCEWbF4qw0ix3jiJRZ6aiDPLA3S4GsJNpHiUXJx5598u8h/j3aUCtD5oNONhPELRwc9+zCnAZZQjC2CTwjRL4nEziy0XsI2Z0yNUDep8zwRT12LoRwIX8=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
Received: from [10.0.1.79] (65.122.179.226) by
	CY4PR01MB2677.prod.exchangelabs.com (10.172.135.11) with Microsoft SMTP
	Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.17; Wed, 12 Apr 2017 19:59:16 +0000
To: Jussi Kukkonen <jussi.kukkonen@intel.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
References: <ba1a6361-3fd4-63f7-3752-63c75dff1347@xevo.com>
	<CAHiDW_FKOO2kGXxLs3NiB3yPmGh2OE1xec0Fdgnt2JuVmBvN_Q@mail.gmail.com>
	<1971160.7GEiT5quOD@peggleto-mobl.ger.corp.intel.com>
	<CAHiDW_GipiELX4dDs3sYPm7V9SUGZnQDLOLbwJM0eiJBoQFaQA@mail.gmail.com>
	<aff2fe4c-4d1c-80c5-2094-2951e96b2a7f@xevo.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <59fa0199-8552-6724-c7ea-7ba0564d7067@xevo.com>
Date: Wed, 12 Apr 2017 13:04:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <aff2fe4c-4d1c-80c5-2094-2951e96b2a7f@xevo.com>
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: MWHPR11CA0023.namprd11.prod.outlook.com (10.172.48.161) To
	CY4PR01MB2677.prod.exchangelabs.com (10.172.135.11)
X-MS-Office365-Filtering-Correlation-Id: ea15f938-a76e-47c5-faa9-08d481de66a2
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:CY4PR01MB2677; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2677;
	3:2uLD13EUglHrKMfqlOQW21Cd3kIfV1E1Weme+lc+wpjPJiQtTk+jvUxrvA28HPOH3EiLId3iG+Q/c10GHIkBYdSWryCAu8NZvPrdNAHPSC2jkfqMz3l4NOiRSvvHzRjrwQB7d1HadZK8buf7zuTp7E3da35Eq4OXnJ7oNFaYwY2B+Opp3A0O94mkeNnUsil9NfCve1J+pSWkhtLe/wQuY4N3+yCtuHb/gDcBI7spyLqi4AwKccy06JorMnlsi2vi3curjM3Bw+tCtn3B1DfaJFFyLQzZSnhOLAWDAnqkx4nTzlNnDAsCAULr1llbDfmJFmj8l6EwTF+/2iPPY1hPvw==;
	25:R92TQeGoLYPUaQdJvyLdkqpstYfJFLr02U5PN07yCWCa3yepLZLsAxKisrGm/lo+nwI/aHzKrqGMA+5fxt+8puyS0vpuRQ87JM0Y0jJMUj3RBiw9XwRro6i32+wDxDeub4n8kpfKz0+SZbgSpt/O/SlaRUV1lnRXdnkDWoLjrDHkil8atluzaL5jkn5dEGytEuvJWmVYlTobZXZPxKKz4WfGSWEav4YiaLLdzLn/96+iOLvrfKRHDpYxxvn5echeifdncWYqwV0HIiBvrdSCumllS/S2DiHZ9i5xLTyzO5NDepUMI1vMhe2b7kEN5yJFXOFzsHeKV0AVZRmdhLIrvBHB/9WgHQv+/D7gFG1HCF4b60a7Keb+5kctRtFK9ALPhsoqq4BqtwLWpUmvR5DgLXC4Ny5Em02may9mjYo6Gw2c9t+q6fbYv7d891dEPR2V5hPrRwAOVcEVr2qaeXUcMQ==
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2677;
	31:W/a/9BtVZZxw6yM47I4fA693FOQwrn0KAdW9xXd/vFZeXzOxpz8BkWlVLedB6k55dKZjFbLpu8P/M33Je4ajABNzTfZxhrSd3mB03ai8sYMTrRst55IZMd1EwifQguFIJA61LldqQnt0EXDA7VzarH7OJShzLv71m/px5S3MNgddhQ7aaTS4Z4sVNDn1ZC9EfdfmNa6Uador5ZGBVFYrOPb9JRtrQwJteVRwE91P6Qd22OxrlZ5ws2mY9AGluss+x0rHdB2BV/nLPWrN+Tqf2+O1oVFp9fr5am/WOCUd7UY=;
	20:umMxMgFRCcr3+R83a1EU0S1Fz4UhsuaAYqd7OQDgvf6f5KPOIxRJRfPaF2x7OcpBybFXqLbMcTI5ooYKjsz0F4jU6rqLNR/lQY92laWjVWZ67FmBmMUnEPKyDpZ8OWFSh94RzF7yDeX6N3aXrrpcl95f15P3UcCwEjLkR00HWlTazpNIX4GkE2k0ezeAUYo//QDveVYADFCeQqb4BCl5WIQAshXkCngjplSZz9+e47sD/TdInEO5cBErXldglO2F9XyErVOEfHPAxbLKoMK93jd7vqoBSI/Vg08C0gWc3sSWr/0HLOpO/e2LUBvyRnCSsw3PiFOnRHYtgxxQs3lEDA==
X-Microsoft-Antispam-PRVS: <CY4PR01MB2677BEDF041368EB9748DDE5AB030@CY4PR01MB2677.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:(5213294742642)(228905959029699);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(6041248)(20161123555025)(20161123562025)(20161123564025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(6072148);
	SRVR:CY4PR01MB2677; BCL:0; PCL:0; RULEID:; SRVR:CY4PR01MB2677; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2677;
	4:+bsJigEZnOewTHeaM6CFMvQn60Fx96ucsnXt9eY48NC9Ypu6U7jHjYAlfeGgc4r5g/Qmi/9ZmeqbcBOSi6cdSPXdhHElMiR2mRcrFGa2OPdnV5UyY+A1B2qmtzM6MTDIgFhjq8Xn56PC4gNCrbzkvMXQQUbJygitYl0QpkEegEfCbZVapBwPIB8U4LTyLLEyywQm6eEACJoksL2iyLvR9ZY7Me7A/3dfJemOGi8EKLFOs2HkKP7bPguyyQYl1uOsLnBiwKjR6PmWN7hY6vX9zZWdkJZwjWvdiPtDs9u3k0bRDqZA+UZGYtMjgJZx6D7o2MBGR5On7a1W/mRtjHBOzIXo1hVZ1ucJCtb0f4W/6r8qbAES4ktLPApLwS5HPO1+myGNvTMr/NPbCDSC9PFvi+FpRgin4H4u1CUBgThzFYZlwdJbhGlITOOb9wD6M1nYp+/89p8shjNwLcDBH6uNVBNIel0BqcAuoUk+uN0+dXf7pMhxy6otmrkSXnB5XB/dzF5WFlk7+agpPX0+Rt864GfUwXfGU0ZPgHbk2KKZsFFfsaqLHzftUZ4GCZ2PWJ7i8wm00/6KST4VyyEh4QmXWXk0eQfvNkfaDfn7nkGUQM7NlC4BbTVJFwClr/JFYX7fZq1VcenZ9x7p+QDSBDUkJVfLGbvnoD4FvbVOdr9LaYOmJ9QEXsZc5/zgXK7mOKlvKaQnqaz+LlzHIk8JEqYBHdwoOAgIUnUBtRu8ENJ8cyH/HBNTTIEa9KNAc8yxbaXTJA9m9rw3bstvsBJWwLkzxQ==
X-Forefront-PRVS: 027578BB13
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6049001)(6009001)(39450400003)(39410400002)(39830400002)(39400400002)(377454003)(51914003)(24454002)(50466002)(6246003)(230700001)(6306002)(966004)(25786009)(8676002)(53546009)(36756003)(66066001)(90366009)(6486002)(305945005)(77096006)(38730400002)(47776003)(2906002)(3846002)(6116002)(81166006)(86362001)(31696002)(229853002)(76176999)(93886004)(23676002)(33646002)(53936002)(42186005)(1720100001)(50986999)(54356999)(83506001)(6666003)(4001350100001)(4326008)(64126003)(5660300001)(189998001)(31686004)(2950100002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR01MB2677; H:[10.0.1.79];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTRQUjAxTUIyNjc3OzIzOmJXTWhJN3FaY0VGRHpwb24xYkQyN0pFajli?=
	=?utf-8?B?WS9kak9nRGdaN3dYc0dlZGhpQ0VQR3FZbFRCa3MxbW8rc2Zic1I1NzNvbDRr?=
	=?utf-8?B?dktaTEZZQ2QwWEpXc0ZsWGdvZ3VmSnNLNXAzVFpITkh1QlVTTU1Hby83SUoy?=
	=?utf-8?B?OE11aEJQTlhneldJYW5MTzJmZWE4SVBUb1RrVUlJV2tjSDRoVm8zeTNrTkpN?=
	=?utf-8?B?WkVBc25DUVVZWWltekxJVllmWXF0WXNZOGtqVVUvRkVZQld6R1BTMytpVU01?=
	=?utf-8?B?Z1Z3TWh2VTFYYjNnTHo5YkdWTzFnNDVUSi81NnZNUGVvdTJJQUt3bXNYOThU?=
	=?utf-8?B?WFQrQ0dmUjlOZGNsaHhLTm9IbGhpQU5Qd3VuTHYwaEpiVmlXTW1WOXRYcXAv?=
	=?utf-8?B?blJ0SWlQRUZpaGhOTlNmaE45dFlJWlhFTHliRXBZa09WSGEyVEliaTFza1ND?=
	=?utf-8?B?R1VRaDIyWDJ2WE9GSTBzQ0wwekU5YWticnI2VXhqVFNDdDhhU0FWUXFWRDRP?=
	=?utf-8?B?SUdjOG9FYzEyZDdETGtWai9TSjQ2TWUvSTZJVU1kTzYwcHZwRERIU3VJdnhu?=
	=?utf-8?B?VlQ4NzZ2b2E2RGg5dmk2SXhhOXUxUWpjbmpiTzh1bmc4YmtsRWV6MnlrNFFI?=
	=?utf-8?B?Zm5XQU5sZDkwOEN1TWhuOXVQYkltd09Ga3pOZEg2TzRvc0lWbWJ6RGhtUVBp?=
	=?utf-8?B?amtiV3NLc0RhSDdBbUNFT0ZNRTNVRTE4V2ZFYmYwRkVNLzJFSVFENWQvVEtt?=
	=?utf-8?B?ZmVNNXRwc0VvOWMwT2Y5R1Yzd3k3anZRUWxCMDZLVmVNZCtvdXUrYmlGNVBW?=
	=?utf-8?B?VXZRRWxLTXR0czJ0aXQzT2J3dGxZQ3hkdnIwZDF1MWNhRmwzS1VGL0R5L0dJ?=
	=?utf-8?B?dmc5dS82WFNVR0phR3ZITVVZN3laQk5SQVdEZmtkRlRhNXFIU2pyRDM2aHY3?=
	=?utf-8?B?aW9lZXVVeW10OW16Nkxtb09MWVYwTFFZVnZvYWdtTi9ITFhyZ2NkSlhNbXVQ?=
	=?utf-8?B?LzVySi9RblJFQUIrbXhYcE5CME5DdFZOa2FETnhjeWZDOXZZdTRmTXRMNE01?=
	=?utf-8?B?U0VJS29KYzN6ZStyMTVkS1p3NFh5cDBIYTRyV3R3SnZDYUozSzNoSmZVK2o5?=
	=?utf-8?B?Y0pmNDg4WUQ4ZTNVZTZiNU9JSG9oNy9zK2tqaExQaHo5clhZcmpxNFYyRE5H?=
	=?utf-8?B?WnF6RG9wc1VZaFVFekhHVUp4VkhoekJxSElhRWE2RGR5eVBKWjJsUnVnK1BE?=
	=?utf-8?B?SU5LY3RLZkhSaW5XdVo1VkpNSFptcHozYVVlZllHa0tNdzY0VDRPVEtHSkhX?=
	=?utf-8?B?QzVqZUx1bk5lYis2alFqb1o2eFJNb2N6WjZtMVd0cXU5RS9waUxKUVNoeStJ?=
	=?utf-8?B?eTBJRVdYWnFOd2FGWFYwcHZuU25Hc2JZbDhCdVgxamUxQ3FOTDNBTWVMeVBx?=
	=?utf-8?B?REJIczE4TDBmOEhpZHUvU0lQb2Vac2tJSk9PdW1UVTdhMHNNV1NVUExHZTVp?=
	=?utf-8?B?VFZQTmkvN01oK1RFQ1VUTmI5Zk1PWXJLai9RakYvMzRwUlBBZU91R3A3bmpS?=
	=?utf-8?B?Vk5vOElqSDBJYlUwYXhEd1hIcnhZZ1dDWTc0Ym9xSFFXUFd5UWRqZmJxS0R1?=
	=?utf-8?B?VEF1aHVkeDg2ZTFMQzhiczhzSDJZc1drRWxOanZzcm5PMDhMcXZLbDFqSGdL?=
	=?utf-8?Q?DCEOKDU0sPmzg/ai1A=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2677;
	6:0jMCqPjbgmQlHSgPK3SYZ0HsPo/urXycjSYpciF3ggJPXygImJLTjJbCfq+v6aWBl9kgLvvyXXwkaEYkBcz3ZSQmevHjOG1NMyxPLu3evszz1FP8wVFPIjSQC/OGUIPuXEL4V1NKRopOVZ96N5usAawWd7LJOtupk+8iahqlR3Kcx/Zi016PId7LjcgTzqqUncjjgrTxbI0GpfL2mr75PXcRBTU6zqqOGbPTpePT2S0jwedYc3m7egkA+i+a1wrRWBUX3022vpbFRDGu2Q6uwRsoEMbuaPZn+1NLpwfA1S+6gSWeg80WtjOkm/Af2+TEUIX8Cw5107JS9vs6NlJ//YJxFo2xFYmf555xT7dptqsFZy+h/Dq0noy51yLbSk+aTCMe+Na9K1YiNbdwK0z/8A/RU8TJH6t8U4IQYyhcbiVvcMNEkyQw4I7Eq3pLmy8defASnVU+6cffL3xCpnX7Hw==;
	5:BCZ7RWJm8Ori3PW5FVn/Ry5s3QviaqV88tGGYLRGwXR94RnCBQbPKmibiAMTQFASt5CA1DM+3ku1YFXZFMrC8xtRwXX7z/7qxSX8Exp+05ApX7YoDNB77+4ukUUR9uiR0dkqbhMPV1IArweHoeTiDw==;
	24:/fgXFT8ouNvr0Qcv+ROKjRiwHCdHyETbMdvg/sGagl7v2vSkvH9VVeLfMxalZmLRRYDOH1hUP2+r53n2kbvAGFLG/uLVweLwirwd7bddQZQ=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2677;
	7:/fNn8cQ4mXaxsIv68pxbm023x7ZZ5vZKTFqRRKNviu0g/9vJYuym5bHcIxdahNfs0EdDLf0ZVw+DG50iyD6NCv5ADQjCLV0i7DFVD1qXwqcLcghIctA7G0fBnZzqXaqZBirWuFVB+rVDYf5KpynFZ3mfy651DEVERAeZ7Bk6hoHIO8XQkamQiLysz3lWtiIPCIL9zeWa4mgZGQ28RAyYfn2cjreuoIbT2gqKzX66ZsZwYtEIT35mcyq1+KGkaBEpPLUHJN4fOv5Jggeha/ufPpI7OKWYOyPDSwyv6rtqR1iW6tYOUJKOOeztUTgqWTHvDcxlomnGBZSX0JutU/C5xg==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2017 19:59:16.9381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2677
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Relicensing an Apache-licensed recipe as MIT
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
X-List-Received-Date: Wed, 12 Apr 2017 20:14:25 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/12/2017 09:43 AM, Martin Kelly wrote:
> On 04/12/2017 03:50 AM, Jussi Kukkonen wrote:
>>
>>
>> On 12 April 2017 at 12:54, Paul Eggleton <paul.eggleton@linux.intel.com
>> <mailto:paul.eggleton@linux.intel.com>> wrote:
>>
>>     On Wednesday, 12 April 2017 7:14:00 PM NZST Jussi Kukkonen wrote:
>>     > On 11 April 2017 at 23:52, Martin Kelly <mkelly@xevo.com
>> <mailto:mkelly@xevo.com>> wrote:
>>     > > I'm thinking about integrating the open-vm-tools recipe from
>> openswitch[1]
>>     > > into openembedded (it massively improves the performance of
>> VMWare guests)
>>     > > but first I have a question about licensing. The openswitch
>> repository is
>>     > > Apache-licensed while the openembedded layers are all MIT
>> licensed. I'm
>>     > > not
>>     > > a lawyer, but my understanding is that the Apache license is a
>> superset of
>>     > > the MIT license (it includes a patent clause that the MIT
>> license lacks),
>>     > > and therefore MIT code can be relicensed as Apache but not the
>> other way
>>     > > around.
>>     >
>>     > The license of the layer refers to the licensing of the recipe
>> files
>>     > themselves: the source code licenses of the projects the recipes
>> fetch and
>>     > build are another thing. As long as the source code license is
>> an open
>>     > source one there should be no complaints about integrating into an
>>     > openembedded layer.
>>     >
>>     > To be completely clear: The LICENSE variable in a recipe refers
>> to the
>>     > source code license of the project to be built and should be set
>> based on
>>     > the licensing info found within the version of source code that
>> we fetch
>>     > and build. The recipe files are licensed according to the
>> LICENSE and/or
>>     > COPYING files of the layer it is in.
>>     >
>>     > By the way, a quick search on layers.openembedded.org
>> <http://layers.openembedded.org> reveals this:
>>     >
>> http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/openswitch/me
>>
>>
>> <http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/openswitch/me>
>>
>>     >
>> ta-foss-openswitch/recipes-extended/open-vm-tools/open-vm-tools_10.0.5.bb
>>     <http://open-vm-tools_10.0.5.bb>
>>     > (it seems to think the correct license is GPL).
>>
>>     This is muddying the waters somewhat - the LICENSE variable has
>>     nothing to do
>>     with this. We're only concerned with the license of the recipe
>> itself.
>>
>>
>>
>> Thanks Paul: I was indeed confused and did not understand this was about
>> an existing recipe even though it was clearly explained in the original
>> post. Sorry for the noise.
>>
>> Jussi
>
> Right, I should have clarified. The underlying code is LGPLv2/GPLv2, but
> the recipe file itself is Apache licensed, which is my concern.
>
> It sounds like I should ask openswitch for relicensing first. If they
> say no, we can consider the situation further.

OK, Diego Dompe, the recipe's author, is amenable to relicensing, so I 
will go ahead and do that. Thanks for the help!

