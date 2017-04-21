Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 917E1E00A53; Thu, 20 Apr 2017 17:14:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.77 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0077.outbound.protection.outlook.com [104.47.41.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F967E0092B
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 17:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Lyv9cEyYoW4I4cD46WLtWnltY2/gmLjK0Y5SYYEjAf8=;
	b=ft+7GljHLSxPJ26bIGRglFvPfLgUkrEcYiuanPSgmjAdDwoiKcMjNq3LZY36UVLeaIU10eZucq5wusp94wMjanJRZHPs7/Nl8V35h8CUUmaei3rxQWF+Ig1wZ4ZC2xuwwV7uxFwv6bzMfNOPMNy9SLWHlBgIBzBeiDgHqx2Lo5E=
Authentication-Results: gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=none action=none header.from=xevo.com;
Received: from [10.0.1.79] (65.122.179.226) by
	DM5PR01MB2682.prod.exchangelabs.com (10.172.185.140) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.13; Thu, 20 Apr 2017 23:59:40 +0000
To: Yocto Project <yocto@yoctoproject.org>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <0c84e977-c53d-8703-fe34-839cd34900fa@xevo.com>
Date: Thu, 20 Apr 2017 17:04:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: DM5PR06CA0057.namprd06.prod.outlook.com (10.168.110.147) To
	DM5PR01MB2682.prod.exchangelabs.com (10.172.185.140)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5890f773-dd6b-43f4-f034-08d488494f4b
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:DM5PR01MB2682; 
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	3:tSALZ/auIYW5QB4SQMGChDvimXslldeohhOo64b0H+vzFZv2DEg6IvrErvws/x4g8xFkfboNnlM0Hm9JUHJ30zwKUnu6RlOGVXaQbTcPnYw+9pVPS8zSI6ZQ1U8Z4mImk/2sTfdLGXEBqsCK8lVIIhFFYZ4ef26oEiw44SBJkWCQ0+/wH7g3T1cd+NLIzjo3jbWewZavWhZH4vyRivS4H+/DHu5KE125P3gfcYhUk5YH805a3KNCMYDFGEaEgPQ/PIu1Au0axgZg8hX/AD/Q9jKiGJYz20Bsgw0KTrEBrOIDUqEgxjWJCRYijJ2EPlq0qDaDHhFGlI1AmlZ9EsJWhg==;
	25:eGug9Kf1BwGwI9N/N7zgNPJ6/RfSd4hMMW6QiOrodwpwoXjnupGbXQQCwHn8PEHSMG3u1aoX6UEJfVgY156eB51WFzZpPRKRzIsRdplTUg5TPzMjr7gCRWzGHKnUHn8w2HVqb6a0nEoZXwUQRv+tWEdSKF+kfR/Aw+USktlx6AY7oy7bl/j3AHejhZZFriTpQq5QDCRahVjvO4epIJ/IYPhhSNdxzEBFdWo9t/wCgJk4sYfN4RrWL1BIwuI1iN9f8qeAtcaNSITmYE4/NmFABOx93nTLMk2juEGDOZ4hZAR86EkisKASoOCen95Nl1SY+tc3DtQUWhQ1+VP1+BmZMKQV4gqua+L9n0zjCIEwyGlHxOIqSr4V7v6DjTgQsIBif+W3hVWRZ4BdxkWOsIe91zOltY939T4zoBTUiVElp/665kAuPXoNboxWhwpB1QiGYsfbZciazIPeNX/al2EfOQ==
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	31:sU8OmlP0zcsmQFZ4XJPORfHHCj8LyDQ1aNGxVpQa/bjDTjPJRfVljTu2jirXyecD28OVupubou1h760/5HcyEZUS7qnNJbEzFJp6cbjBnIVyfq4ySEMiqSZVpmGxKnxv91cIO7NwwYQzz4GfF4pGed/Azv0Fko+dPMvDrq8sRJyXG/TbQz8n2Xk8B3i6KAdo9slhj1fKfmCt+9l9Dzv+cK69ktcBsN6hTA/yokbLi7ooPlotBZpPCyAPs9ZYXxbar47Qdn7QLziqtPacjPzj2w==;
	20:XIIXhVONhHpdB/HKrYQNDOfBuw52B1Sp/2tY3XO3KgmRECFl3PFaG1wPOs19aCpTjgsqHB17wt1nUcj65VDo715tEIUO+qhPBC6KwW2p/NU15huqJ8YonbXyLzubBMADt/QAALAi+b+tfOO4weWvXpROI48mIHHJuAZMcyCy3V1cSrm7tAnArDhlXmKY546/CKpc0cxz7duXe9mRxcQ2EEJGqHFGFQBpTrzr1IgdukpPc9yqi4CKJgNkBwA2ifqY69Jd6DGQTc9Rc9rOU0/QL29D0pGqOqTSrrWfVhfUMu+ceFT3Yf6SA7tn6OVSGQojlvS+biqeGtv5Q6UC+aHDPg==
X-Microsoft-Antispam-PRVS: <DM5PR01MB268272A9D38981E481DF8F94AB1B0@DM5PR01MB2682.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:(22074186197030)(183786458502308);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123564025)(20161123560025)(20161123555025)(20161123562025)(6072148);
	SRVR:DM5PR01MB2682; BCL:0; PCL:0; RULEID:; SRVR:DM5PR01MB2682; 
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	4:pObLkKeLR0cSzq4kNmux3f7OpMs5fTzzr7lJr7sRUcws/aOuJn3hDogianXhnEhZC+kxwxMWGE19NAuOr5JsTj5WdPPCvtWCEAW4q0ZuPxx59P1vgkYAvcfoXG3mbhN4hAZLvkpgYOSRX4Zm69gGxOF1Q6HvTwzqUXiKjaPLRosZBSHCIPYKENBz4MyepXKDbdMuPbqaePU8VzIjVTGgQbe2vdixUqk+Q+vqHsHZMbEDpwnIHoDCkWwU/hzRv6tdttZacFnt6vEueas5ZgR4u649UKdSXgWLT/fxqKHt7VPU18VBgnuz6ZDtvRH+i5hRwcJwuaHC9BMjPo6p2us9lBV3KTeKIZ6uZiG3NpPkZjxACPVTqGOqlYLcejYrzryYJkuquD7z+0ZRXowu1PBkSdmYNRv+MHQc0qa/T+RK6AszrX7LuYls66HisCoEUbApMzMihkjIuOsRaMcf+5L7S96Fe6ny9LqZsO3BzH50OtG5OqsMe5FTxP5HPciVlj3jMFnvoGXfHAsy/twTSEhml6ZIUzsSLKy2RJ/lLD6CSUTud43RSJLoGX2/cNLrTc7Ow4ocJFVn3dU9QJwTdWrFQb8ER2aiNOAAPGGlxQA8fjac3oo/fmqNmJto1DiCdPCx1sfZ4cAGnIb4DSN0ukil/ohrAbZ6+rFXLk7sZDYeNFt96mwmRdTEwPpWSGKjy9UGpLYOG5jhH9hTSuix9Z9gS9YgLQ0lNTPtxdp3RaWNWIIIYcxokLd0A0gMDzPYfMRib1QKXLl3xDH2wiqsAiUUrQ==
X-Forefront-PRVS: 02830F0362
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6049001)(6009001)(39400400002)(39410400002)(39830400002)(39450400003)(6916009)(50986999)(5660300001)(54356999)(110136004)(47776003)(50466002)(189998001)(4001350100001)(7736002)(305945005)(66066001)(2906002)(25786009)(8676002)(83506001)(81166006)(42186005)(230700001)(53936002)(31696002)(38730400002)(4326008)(31686004)(33646002)(6116002)(3846002)(36756003)(6486002)(90366009)(77096006)(86362001)(6306002)(23676002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR01MB2682; H:[10.0.1.79];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtETTVQUjAxTUIyNjgyOzIzOnpiTjZDWTlrMzlucU14SzltZ2dGMDVVcjNN?=
	=?utf-8?B?a2hmU0RndUlld09RWUVrNG9YMG0rTW9TUmhCM3lIR1lCaVdMRjM5Y05HUEUv?=
	=?utf-8?B?cWorVlcwZmNYZGY2NUNJbHdiUnZxeEs4MGsyYkZQU3ZGUWZGS3V6bWhsY2dj?=
	=?utf-8?B?ZHJIZllhNWsxUzJwM0RqNUNMbUZia0IzeXFXZXRnTEtZaEFGMVdNTnd4L0JT?=
	=?utf-8?B?VnpubGpJQVkycXJtdW02VWNQclJkQUN3Y3k1eGxZK1gvKzdUM25nL1dMOHdq?=
	=?utf-8?B?c1BsTGkzSlZYR3ZrWlJ3d1RYZ0x6T0ZWNHk2cXFaSWtJOHRud0RERTk1L0d5?=
	=?utf-8?B?SVc2aTFhOHdlTUx2Rm1adkRBOFp4Y0pKczFIUXo3SnlBRVMvWFVMb3lWK0JS?=
	=?utf-8?B?Q1RyRkUzcmtKSzVGaVptVHUzdjBrdzcxM3NFYVFuM00wRWZDRGI2ZmVMQU10?=
	=?utf-8?B?dkxjNHFyRnd5WEU0OXBQcnJvSDRiamo5QXZSZGN5eEhTUFluaEdQQVVIUlBt?=
	=?utf-8?B?Z0lFcHVWY0xRa0RxQ3pYWTdKSHhwbS9WN3UwYlVWSmxyS2luUVpCRVhKcGVo?=
	=?utf-8?B?cjN5M0FJODBwYkxua3RPb2JkZWNrTUk5TVgyNTNlQndQVTlRZFd5eU8wVmlp?=
	=?utf-8?B?R1dEcGR5ZWtvOUw5U1lWeFFQNWkvZzhTZlh2UXp6b1J2azlaM1dXclREUjc5?=
	=?utf-8?B?VmxUbjF3VjdBWHpGbkJCMmJHdHQzUUw2M2FpeThhaFc5WGRVRGdyem9nL3R2?=
	=?utf-8?B?Vi9XcXNseXMxYnprME1wVjA0cnhWN0xhT0ZUeXI1SFU1ODJoc0t6VXphYlMy?=
	=?utf-8?B?TDZGVWZEUEdnNFptUUJXTGhmN3JLTlMrMytjMkRsOE1kQndXNUk4dE5qUlBO?=
	=?utf-8?B?UW9hSFN1eE1tVGNscmYzU1pLRHRhNlk2SFo2VTFLVzY0YzRVS1M2azBYVDUv?=
	=?utf-8?B?VHZCNTBOMGNMYXVpdnZSTUk0dHFYR3NjQlRnamlBZDBtSkNkdklocE9DNW13?=
	=?utf-8?B?a0g2TjZCMExrdlFyZW5NZm1WUFhzbk4rNHhwZTVIZlNZajJKUGVja0RrTlQ5?=
	=?utf-8?B?Qy9taVpheGNvelhXeHd3YWJVSXY5WmlEc3BMbzZWMUtBZDdLMWZ4b0VxS25B?=
	=?utf-8?B?NjQ0RWNFODRzUmJUTFpZN1dDTktEek42dWRlQzF1R0NadFJENS94VWxleXJw?=
	=?utf-8?B?SzYzTEIzS1NkbmVTUFpGV1NRSWJGNWFaN052eTlQa3JzSlB4ckM5SzFJL1E1?=
	=?utf-8?B?azlCOVpnLzhtdndkN25NaVYzSjBhcklON2xLRFlIVXhDMFVOOGUrYndySWNH?=
	=?utf-8?B?YlV3NXBSZG82SjN5eXordTZ5aVpFc2t3OG9WaU9KcS9FVnhCdHhzekRuVHg0?=
	=?utf-8?B?WTQ5MjlJQ3c0TDNhSlk1TW83aGZPNkltWkVlWTBBPT0=?=
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	6:M2qI3KzHlnlsWyAZ46u1m7UBHcpX5eB5JvSwvvygpVS1q0TwZrOyn9YzQS8UvYi4JDS/txpibafssdoDcn4bojxKw4pn1WCYRLMs4TxGtbOIK4u6mOsD7KRnkG/VF2oFgVgXjkQ6iyyXI807bjF2OgJjWYb4R4U25Xwy54wObfBfykj1lgJ2mTBMRwErh60B+Tt6gWuKTmEN5hd1d2+c9+Ntg1UcHqMAGGkIqlREJuOzLj0CGAADLFu32a9Z9st4lgq4Fgw1nEYBqrUlhNuZRdDhQ072pbBMVTkuBSKTgLpnNVRBPlIZnAj0pAmbcRqC4bwCV5VjdSFbKfQ/LKgIxBlmiWpEmuQa3dA+1GW0z/idWUkdA8WoPKCa9//9tILxnQqqQKUcvPj5ROjhNcJoc5skbdUMuOxmJOeXkbgLSLaYyQdCHjzi4VBMRE52lx2aPwWEX3yfi60mepsNQJ6AEBuOoMbPgzfLt/hzqgotkMlheLIUb81ZeM9xcgOBxcR1OfXS9grnxdmlZHIq0a4Z9g==;
	5:fLMdAS1ByHP0sCjRLRhzC7rPS3gIEzzm1+KbasNsDaovrpyFD2FyFHyzbGuqERvGqzhuzaRyHrfjiO09CrxkczBBRtYtPfOHrK93Ydkk4aYPkW+VGWCsORkap+qDPYf1177ia8jtGo+2VTpneNrPNA==;
	24:9+7766LWp5HA7prZpyckg677bILVbk8VRmjzBj2HFwgbG4BNsltE1sCRwoE0DwOaOdFzJEVkJyleGEeqj8XhpqCo9mfecYcCWtsCmknMcY0=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	7:I7D3tNoArfsDeDWxGv9OjcujQqcTXDPE4UAL2cdMD02tSJYxVTlcJdjciJGao0VkiCmqxTqNrpmxDMua6epKJowviB9buuaZqIH0KIlm+7yI5GnnOqbyuWUYZ7A0QCelgbbLt6+bPfw9dPiygjQXOZZ3rjpZgZ2eb40LbqydqI439lAZtHExOR16xT/fhQDQM4UuJRWV3W4Kfd/CQUprYpPyULkffsMDi0ggRZWCPV3dMbEalw21p0ScmC9uPU1CJf2OP3hOmbvzmERbhklQP2hM61cOfG/DtYMoIrVpz9Ok0v2li83YTzfy4OgM9WY0wiEbwMmvorASvb8MKRIaRQ==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2017 23:59:40.8237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR01MB2682
Subject: How should we handle GCC 6 and -isystem /usr/include?
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
X-List-Received-Date: Fri, 21 Apr 2017 00:14:20 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

After compiling a package with GCC 6, I noticed the following error, 
which is a known issue:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70129

The problem is caused by adding -isystem /usr/include, which breaks the 
GCC 6's #include_next. I see that Khem Raj already removed this for the 
nativesdk [1], but it seems we need a similar fix for other packages, as 
we are still adding -isystem in meta/conf/bitbake.conf:

[snip]
BUILDSDK_CPPFLAGS = "-isystem${STAGING_INCDIR}"
[snip]

I experimented with a few options:

- Changing this to "-I${STAGING_INCDIR}". Although this works (and the 
poky repo will recompile with it), I believe it will break when a recipe 
does -Wall -Werror and hits an error in the standard include files 
(-isystem specifically ignores warnings for this reason.)

- Changing this to just "". This breaks at least pbzip2-native, which 
can no longer find bzlib.h, since it uses the system g++ to do so and 
bzlib-dev is not installed.

I'm guessing the right solution involves passing a --sysroot option to 
the native build instead of -isystem so that the builtin gcc/g++ 
/usr/include will find the right files.

Does this sound right, or do you have other ideas?

Thanks,
Martin

[1] poky 54d06c080393785270313878bc4a15a9915571ba
     https://patchwork.openembedded.org/patch/122285/

