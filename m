Return-Path: <jakob.hasse@qiio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 366D0E00B28; Sat,  7 Apr 2018 08:15:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.76 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1993 seconds by postgrey-1.32 at yocto-www;
	Sat, 07 Apr 2018 08:15:41 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0076.outbound.protection.outlook.com [104.47.2.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C93BE008D4
	for <yocto@yoctoproject.org>; Sat,  7 Apr 2018 08:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smarthometechnologych.onmicrosoft.com; s=selector1-qiio-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=biv5fvnuJzII388pd2rbsYvv4JuZM8DyDEvpJDUnRqc=;
	b=EoQlBlfEJdP1fpRykAvcd15n0lE+xfaBlNLzZoE1qNKZiBjxb9QfVfYZQnUY59D0TR5gARGrWJ+tktM29xCCeYKn04S13NngtgwpoI+91+RQap57TfY70A4F5HjEtMslvy5f0JvUH4QglkoI4DLjoLxcMUJGYBw/lljuNsWzpkY=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=jakob.hasse@qiio.com; 
Received: from [IPv6:2a02:168:68a0:1:e53f:b388:4c51:a703]
	(2a02:168:68a0:1:e53f:b388:4c51:a703) by
	VI1P192MB0062.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:c1::20) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.12;
	Sat, 7 Apr 2018 14:42:25 +0000
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4ac78687-69d5-a330-6b26-97aa5762e5b0@smart-home-technology.ch>
	<3628235.utvFBA70li@peggleto-mobl.ger.corp.intel.com>
From: Jakob Hasse <jakob.hasse@qiio.com>
Message-ID: <778dedc0-fc79-822b-2a31-d205c39fc6aa@qiio.com>
Date: Sat, 7 Apr 2018 16:42:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <3628235.utvFBA70li@peggleto-mobl.ger.corp.intel.com>
X-Originating-IP: [2a02:168:68a0:1:e53f:b388:4c51:a703]
X-ClientProxiedBy: DB6P195CA0009.EURP195.PROD.OUTLOOK.COM (2603:10a6:4:cb::19)
	To VI1P192MB0062.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:800:c1::20)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1773e2bc-7fe8-471d-1efa-08d59c95c7e4
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0062; 
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	3:WPKm43hcpqgBpokFrf8jLltfDdPcYofBFWmXLgzAjl8PIKj3i4Y/QR5XktS23jvFdPQs5Bc1sriLu55yXEGHlZ364VC2jIzWXErxY92SPk5gPe9qH2tMDti+4XAWWeqRZXXfNAvr6pSOHreb6PQ5r1Hlw4ywu3Sxv7ERkUeWlKafi5kdnRThjz31Uqfm6husYsjfNCBPUvs8HNRa9qK6N3auANMH8VMnaihlBXQ9QUhv/aeutaGcQIrUWFKe/oFN;
	25:MzrrN4mP3bpRE9s526GAB9AG4e5vdmX2gerl7yQ0aLdY3YcvWSNzrnBZuAcNx0nc8Nj+YA5aLiEkcpTxVcfshFzjjo+vvtQFIVkIMi9mKpJ/kI4pxAul508IniqMDdY6E9nZSMaCKhIECPyznyobiTbyI19aK9s1zwio7I658060YPwPNTH5It2Zne8e4Jaiw7ArUaTIWeHgzUkkUR46GZkKqjgYhukQ3V9xsdscqPnh6fELSwB9omzB1H0fe+IUa2zaiYQAsnT5sxeagLBLRYfS7H0cIBwTkZZnXeRes4QfKJs8qa4Z7CGrm6LzapqKgxcTpVXu3TvjMyw2xWPavA==;
	31:k0azEeyBrwd1TNC67/rqdueN8RHlnMXFGOOeorcm+kFRiRuTAy4FOQPymiGinEh0axoRl/g6QoBOUzOxHCeSR+3rKcQPofmffypZyIt9vo9HkGOE1O6YlhRgcB3moBpBB9LMM3dh98I6FmS2P7xM3fnJj0btgMOkp0RgM3cUK/IUbf0mJ1GcMa9Smag+eINnK0C7/FUDHxvoczZMIepgDp1Xu8VGUOfvckniZfzbaWQ=
X-MS-TrafficTypeDiagnostic: VI1P192MB0062:
X-Microsoft-Antispam-PRVS: <VI1P192MB0062F1424939ABF2C1DF2F4784B90@VI1P192MB0062.EURP192.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(158342451672863);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231221)(944501327)(52105095)(3002001)(10201501046)(93006095)(93001095)(6041310)(20161123562045)(2016111802025)(20161123560045)(20161123564045)(20161123558120)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0062; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0062; 
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	4:bx0g+iKGf5eTosKZIvxPiDMK9Tz6ZKfAsutocvTSd4nDXqcnf/rtmquJUFXbvsb4/b5k+HoK1KJYnfnYkEJ6zPSveWG4tFLHQjkPOGfyQbVNn+54YiJLE4/Mvz5dRpcLIqQam36OCwrZaL7uhCkmsmzrbVb2EulJPQnS1VYsFnawG9xrMx7a2G0lQedM2MttRCbgd5iZnUicMgkvOpgF83CJxKhfK5jgB5oHX5SPVqkBTPLxfhSZHiulBQiOYuNd4K1+Vkt8mQVMDJZGiBRYSI6tFMoNSVtMpAvHDfFMQvzBt3Lkon751Slab/sgPaXY
X-Forefront-PRVS: 0635D5275E
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(396003)(366004)(39830400003)(346002)(376002)(39380400002)(199004)(189003)(229853002)(65826007)(6916009)(5660300001)(186003)(105586002)(305945005)(6116002)(2906002)(7736002)(65956001)(65806001)(16526019)(25786009)(67846002)(76176011)(6246003)(50466002)(47776003)(31686004)(4326008)(52396003)(23676004)(52146003)(486006)(8676002)(64126003)(476003)(81166006)(11346002)(52116002)(53546011)(2616005)(446003)(36756003)(46003)(81156014)(230700001)(53936002)(1706002)(31696002)(59450400001)(8936002)(478600001)(2486003)(106356001)(58126008)(316002)(86362001)(6486002)(68736007)(97736004)(386003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1P192MB0062;
	H:[IPv6:2a02:168:68a0:1:e53f:b388:4c51:a703]; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: qiio.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtWSTFQMTkyTUIwMDYyOzIzOnFiUWdlUXYzbUcvVTdBNlpKWkhsUDVFRXZC?=
	=?utf-8?B?dlZXdW8rOFhEYUtLUlBTUnhCeVJnSkZNOCsxL0hvUGNHNzVtWEJQekxKQkpL?=
	=?utf-8?B?VDZib2dFeEREUVo4QkVsbkk3bWVpcUdFbmZnc2pmc0plNXpod24yS1c0bUlI?=
	=?utf-8?B?c05DaHh0MEpOd1BuejNXNGFsV2xXRVBkcXgyaEsySVVPQ1Z1TUQxM2hHWnBi?=
	=?utf-8?B?WXhRc3JYdHFvdUsvRDl3WXI5clFaWTAxUUpGSW00VVdsNWp2RnRmMWVRdWYv?=
	=?utf-8?B?RUtJZGRiREpyVGYzZTNVREJNaTYzMDFVSXNMeHk5TVFlWjhvZWkwNFFxRUZH?=
	=?utf-8?B?NmF1b05Ia0NDeUFiSldVbU1lZm10R29JWVdkSzZ6OVRBL3lXM1JXL2JkL0RW?=
	=?utf-8?B?L3loR3pNRWNjRTIyZ0tkWmJISTJhOXpmQjV4S1FBY0wweUZLUk9lczhWanFG?=
	=?utf-8?B?REtqWnEzVk9PQ0pQQkczUWVHcXcyVmtRdVdwWWJtaGllbVdIK0lEY0d6OW9C?=
	=?utf-8?B?WU1KNWlQUFU3Rk5saVRpVnNVY1hKSXY0cS9zS1I3Q0tQc0pHb1YvV0JsL3R2?=
	=?utf-8?B?T0RaQVJUeW04REFicXMzS1N6QXVBcGVlTFNsTzA4YmgycHFBSWRrZEl0QWJG?=
	=?utf-8?B?Yk5qOWdEVkpzZWRYVnZVT2lDenJrRUlIWFA5dnMyRXNZVHR6b1cwemNTTWlX?=
	=?utf-8?B?ZEFWWmoxbjNBVEw4WkJOeWpZa1d4YmlRTXlPOWIrTFFJN1EwclhWb3UwckJr?=
	=?utf-8?B?MXpBbllnL0ZXYkcwK2VmSUJuQjk3UGVtd0o1SGtzVS94L1hnM3Rma2t4VUhK?=
	=?utf-8?B?eUM5ZVo1aWlnRHNLM1VPb1VoaTM2TmVQU3hGSnpBUVl3NTBaOGFFRDIwdk00?=
	=?utf-8?B?V0tkOVVucWRQd2RFeGJmbDJXUzVoUHg3ZUp3M2tGWStnZWtLSFlhUUxWeUNZ?=
	=?utf-8?B?YzRyNDFFbjlqREtKdEdpY1B6T0d5SWVvQks0Q2I2VzRPY09ES2pNcE5LcHBU?=
	=?utf-8?B?c0hCUkE1YmIxNW1OSW1XWXZ4Nk13VjFKOTNuZ2M3YXpCclFBN1JDVmZSK0ow?=
	=?utf-8?B?UUVhaHZTQkFtdE1VMXMveTdzUE9GU0FTbC9RLytLelBtUTZrOEwrdUs3OTE4?=
	=?utf-8?B?ZFdiR2hxS1VtSzhTbCtYRXhmVVFqWnRyZ0dwNkZCM3huOWI0TTNyUlJzQ1Vo?=
	=?utf-8?B?U2xYNE9uSFlXeHlOaE50dmYvYTV3N2owK3dYZkdzbk5aQ0JZOXczaGtrYVJo?=
	=?utf-8?B?M1hhN1FZMWRyUktqdXdkZi94OHFhTldOK0xib0Jsek9ObUJzVzl5MFZWcHdx?=
	=?utf-8?B?Ry93TDYzdXVxRFdTSnhSY0hVclEzQjUxdTdRdVR1ZFZQd2VYUlF4a0tyMmNw?=
	=?utf-8?B?MWtoem5HbGJmcDFIYWkzRVFwU3ZHMEZyaEJFbHB6d1MvMzB1dDR0Ykx0bksv?=
	=?utf-8?B?RnBzQUUxR2RQdDcwN1N6SE1oZzc5V2ppZ2QybGs4YndTM0RMZmNUS2dZeXBI?=
	=?utf-8?B?a2FoRnp2SzgzdC9wUUdvK2JXQlUwL0lQM0xYaEE1aXBmQllQZEVVTkNaS3Qy?=
	=?utf-8?B?Z2VvcWU2TDhzUjI2bm1hNUF2NkIyVzBWN2Y0QUhXOE5KMVEzcUZRaVgrQlVD?=
	=?utf-8?B?NG9LQ1l2TXRqRHIrUXRGM2tPUE9McmlNYVAzZ1JkU1J2aWpQZGpZNVlFR2Ry?=
	=?utf-8?B?RXlWZ293ZWZtdnJPTUdUbWpyWlVCZmUxMWVjUmlYd3E1Q2c1S1N2UXNFdUM3?=
	=?utf-8?B?d1M4Z0FWUlpSMzhlclFIK1ZVdTR4Rzk3cTd6aVdDbzBpd1E5UU43L1ZUWVI0?=
	=?utf-8?B?VTZyVGNmcW44VkYxU3NselJqT0gyaVlRTTROSWswTDcvSlE9PQ==?=
X-Microsoft-Antispam-Message-Info: 9WVypxufaqG96s3rY+uJOeQHnw1rOze2guBLP4omnRolUeouYSND0UPg6EodBTZcEF0Q7bweeaRjPz1fOuhtd2R8mT0rUGM1o9dkI3taWZ13eQ//XdZeN2r16ECQgkWDfAHveQ5ey01QT+hUXDLrf3u/ZdHge9eXQzDBGghY4mdqGWeg8ozr37+R9J147n+T
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	6:V5GMM0XVJJVlIccWux2/8As+Ut8hOFSgsbCkslbV+3TTo3XQTKcU2XY/YU2G7ipKEIhcwb+L/JYjSU+Ptgo74rS52P4IzoapQ7xCUqxGub6ae7pb96ooHllKM6KS9W7SNXerRIHGT7A4JeiLTT5Cd/Z5in8fPVVmP8VfwHTVEi6iAcwP/0yf3CcANrRF4bKTymbgEr3nto9LBwd1I79l3MbxWUedXxuDnXuAGtVSj0LM87lpyh8blt+ojMcxioTz9qvaHe8+nsJylFr6ZPLAG1U2MKsHp5SO4DS67btq8uax/83aZd0eKu2noE/QAPrBAhnhzkdTSX8qItEZXvk2Tk1dkmSQ80Iw0MW5VoGNT1UCcM3ln/yae72ekRjPjIKrMc8aW8Xd9z5W8K65ClRifZgOrmbeo4T0tmrzhjgB6layUWWr0ZbGWd6+kjz21WdUGzg6BBe4LaOcuzFPYdUIgA==;
	5:MDyUVvjIVzcZMOKlB/52k0KGoH/1NyEKRyQD0D6u+VkG9Qgk8rfxBSTaUKaYABzpUH8KtxDPvlJqrPmMGB8YA76nGtCBNze66kmhaeb8MNdOjnBXVqJeQLIfrRydgw1X5k7gCg5T8rig0YscT7dQO3wZBxScwFqh7ypUIp76FnM=;
	24:JP+aBK85Y+j/hGSMV+0qswMhWpZbRFN6mYGnCN9w5f5Z5QL4jYNJNBNEvUrhOb4RJD0XK8XXeBNloVkQaOj0w59AQgnO2XUHsEF0vNpRZFM=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	7:RIuSi5XM93fZ3fCqs75FNUDEyps7n1IKyhGT3colSM77usmjTw6YlS9egjryTXO+i3dmo0njP/1ctLanKewcpaRpgMUPr+tgOBxvensIPq9keU/zbzjA66YRe//kcfhSQbd/fn8tRyeDV2Jst0ZDO9QcqBeLGu9dlbv8nbv9cSz76q+pFadAkG7v9dXAq+d2yIajhts2wAq6ZhFS64B59wGfmC2wLoo71nRHe9siziT5rUlAMY/hymPDYQe7A/8D
X-OriginatorOrg: qiio.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2018 14:42:25.7656 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1773e2bc-7fe8-471d-1efa-08d59c95c7e4
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7110674e-f830-4f7f-87a8-a46973e4c75f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0062
X-Mailman-Approved-At: Sun, 08 Apr 2018 13:41:55 -0700
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake problems recognizing the latest version of a repo
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
X-List-Received-Date: Sat, 07 Apr 2018 15:15:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hi Paul,

thanks a lot for the clarification. Now I know much better what to 
expect. The pulling from the repository seems to work fine after I set the

SRCREV = "${AUTOREV}" variable.

That seems to have been the mistake causing most of the confusion.

If I encounter unexpected behavior with the locally kept repositories, I 
will come back to the mailing list (maybe it was just my confusion about 
all the revision juggling which let me believe, that building an 
EXTERNAL_SRC repo also does not work as expected).

All the Best and Thanks again,
Jakob

On 04.04.2018 06:13, Paul Eggleton wrote:
> Hi Jakob,
>
> On Thursday, 29 March 2018 12:41:33 AM NZST Jakob Hasse wrote:
>> Right now it's still a mystery for me when bitbake builds the latest
>> version of a repository and why. I make changes in my code and whether I
>> commit them or not, sometimes bitbake builds a package with the recent
>> version, sometimes with an old version.
>> So my strategy is doing mock changes (adding whitespaces, "enhencing"
>> documentation) and adding signed commits as well as forcing a PR in the
>> recipe and re-running bitbake until it works somehow (I heard the
>> bitbake prefers the signed commits somehow could not verify this yet).
>>
>> Hence, I would like to know what I have to do to build only the latest
>> version of a repository...
>> 1. When it's local on my computer (with EXTERNALSRC_BUILD_pn-<package> =
>> "/home/some/local/location/" in local.conf),
> If you are using the externalsrc class (specifically with EXTERNALSRC set,
> since EXTERNALSRC_BUILD only controls where the build is actually run) then
> you should find that any change to files within the source tree should trigger
> do_compile to rerun next time you build the recipe. If that does not happen
> then that's a bug which we should explore further.
>
>> 2. When I build from a github or any remote repository.
> In this case you need to be pulling the latest revision:
>
> SRCREV = "${AUTOREV}"
>
> If you need to specify a branch other than master, use ;branch=branchname in
> SRC_URI.
>
> In order to force it to rebuild the latest version every time however, you
> will likely also need something like this:
>
> PV = "1.0+git${SRCPV}"
>
> The "1.0" bit can be anything you like - usually it would be whatever the
> latest release version was prior to the commit. A couple of further notes:
>
> 1) The result of the above will be that every time you run a build, even if
> the recipe in question is not being built, bitbake will need to query the
> remote repository in order to determine the latest available version.
>
> 2) If you want to ensure that PV never appears to go backwards (which is
> important if you are using package management to perform upgrades within the
> target image) then you will need to enable the PR server - see the manual for
> information on how to do this.
>
> Cheers,
> Paul
>

