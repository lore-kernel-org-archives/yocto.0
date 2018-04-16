Return-Path: <Martin.Hundeboll@prevas.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C025EE00AD8; Mon, 16 Apr 2018 01:40:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3547 seconds by postgrey-1.32 at yocto-www;
	Mon, 16 Apr 2018 01:40:47 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0136.outbound.protection.outlook.com [104.47.2.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5156E00843
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 01:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=prevasonline.onmicrosoft.com; s=selector1-prevas-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=niMQpDUUPT7cjaMILkbXs05mXfrkT+dDP4QrCSHfF/0=;
	b=DgCDozyGlMNyoaDgEzK0ZV2j4c7luzUg1aEab+zyvoBjHqxtHEqaZW76Yz7LH9g9jqhv6eIuFEnvx8qBQLFJG4hnfmXwhcfqnT5nkgKqiBcWKT0qo2TyGEN/d0euwmzfILJyHci+MBJmj2q8ZJqKRNPJCPuPYVCAno3duFmeyn4=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Martin.Hundeboll@prevas.se; 
Received: from [172.16.11.2] (81.216.59.226) by
	HE1PR10MB0123.EURPRD10.PROD.OUTLOOK.COM (2a01:111:e400:c525::27) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.675.14;
	Mon, 16 Apr 2018 06:07:28 +0000
To: yocto@yoctoproject.org
References: <1523608703-21616-1-git-send-email-yi.zhao@windriver.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <mnhu@prevas.dk>
Message-ID: <84d22c37-2d4a-424e-25a5-b36b6eee9334@prevas.dk>
Date: Mon, 16 Apr 2018 08:07:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1523608703-21616-1-git-send-email-yi.zhao@windriver.com>
X-Originating-IP: [81.216.59.226]
X-ClientProxiedBy: HE1PR0402CA0009.eurprd04.prod.outlook.com
	(2603:10a6:3:d0::19) To HE1PR10MB0123.EURPRD10.PROD.OUTLOOK.COM
	(2a01:111:e400:c525::27)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR10MB0123; 
X-Microsoft-Exchange-Diagnostics: 1; HE1PR10MB0123;
	3:tgP+tXNQAImXopQuFLBw/w4c++2kJyIX7eNbH1Z4rfUBDxn2TLoJERCWwEKh9EqecgKn+O+t982wKt+IXmOI3ITPP/cWSimtd94NZaAZm0eYcmY2E2FKQKTnMVNvze/pMFMXqg9CAPLWPWo7sNhcQOCvLzXOI9oVl450EP0xVAkNT7DCe3JHATmXD4jVX7yprOSmZ/G3VLeOKFIgbZmFJgwuqcQYvvr9jIhhtqL9qlbvsrT28jWG3aZNGCFB8wlj;
	25:rTgR3YDcjEoOlvEt0h84m3Sx6gWpUwEx6Ki6a4Mv/HMPbv3yRFf/8JF8v3ipYwCFRCj9QdyfIuLbRisR/+KO46zkqFJ2yORYWek3JDGPzwj8Lat+X2mUO8xGujidNnJHdToUMb1MtmrdlHXQcrwLOmOR2vCT+PhldPjX9goNJFlh7PGu15zpLCYnaC65azgXhKSEQ7qfOOafhF5YmfV07ZxQVHT3MhrAO/16/ewEgQTorgL6Gx7KdvJMmvnWm9gvVP42rhaQhJdY19E6ABIstFZ9t0JT08QrFX/S26MqhLE2Z01U2DzFFhf2ltUkv0j5y28YqJa6J5apX6738HfONQ==;
	31:mWRamp/tV7iLitV49JY/3uB/X70sTCLl41FhSIKpokSAp1VHdw9R+XM4LaMnq4WRXSHx110Y7V5u6dHm3/NgGHZ/3F6QcarpwH8evHLz2iR1GoRMDxOl/hA2egc/kCvL5V/SlfA9loClu2PK9tHVwIFlQ40SmeB69ZwQtp6KmYJSefpDg04tbSPCFkYPWsGFi6DTQ6i8bHxKtILzGKWY8IJGgmioiGddz8Bxr2x4WWU=
X-MS-TrafficTypeDiagnostic: HE1PR10MB0123:
X-Microsoft-Antispam-PRVS: <HE1PR10MB01231EE4EE4D9F1EABA0C6629DB00@HE1PR10MB0123.EURPRD10.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(3231232)(944501327)(52105095)(6041310)(20161123558120)(20161123560045)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:HE1PR10MB0123; BCL:0; PCL:0; RULEID:; SRVR:HE1PR10MB0123; 
X-Microsoft-Exchange-Diagnostics: 1; HE1PR10MB0123;
	4:JyOYN3RylzJ1Ov9C8HouqLGkGBrU9NRrfO8ATkSZzWz8DRBbjYseszw2BpG8+CrnzR8z/HR8Xw/K4FtF3jGlU+7eAjbUUXFigWSVI2EZDniE32kRzqqeTecEaYNsEyEI/IcC0iNRoTRlJSP98HVBFuv7wYiIuNC4M9GwR10l8ukqnfb6MZXgDxx49GAa5oH9JEZ6ATPAQSAq4mCVadhK8Oj9UdetJo1TrL6yJxae85ReD5UJfCJj7s7D0OAE4biX89vBTMLMRnix6NHYuqIobA==
X-Forefront-PRVS: 0644578634
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(346002)(376002)(366004)(39830400003)(396003)(39380400002)(189003)(199004)(377424004)(6916009)(8936002)(66066001)(446003)(50466002)(8976002)(31686004)(6666003)(6486002)(64126003)(81166006)(81156014)(3846002)(6116002)(575784001)(105586002)(6246003)(2906002)(106356001)(7736002)(229853002)(230700001)(31696002)(25786009)(476003)(2616005)(74482002)(486006)(72206003)(956004)(305945005)(478600001)(186003)(16526019)(47776003)(2361001)(65826007)(36756003)(11346002)(77096007)(68736007)(53936002)(2351001)(53546011)(386003)(65956001)(65806001)(59450400001)(26005)(76176011)(52116002)(5660300001)(52146003)(2486003)(23676004)(42882007)(97736004)(67846002)(8676002)(316002)(58126008)(16576012);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR10MB0123; H:[172.16.11.2];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: prevas.se does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtIRTFQUjEwTUIwMTIzOzIzOkQ5dXhCMWVqbVUyRmV0T0FzRTNBTGNYSStN?=
	=?utf-8?B?aHlUVlVhbDY2dEFmUmJUOWNobTkwU1d6Y25YaHpxSDRYQ3IzUkZGMXZDb0xV?=
	=?utf-8?B?NzJoSHNuVlMzbkVGblpMNkJrSnJNcThnaVFRRC8xWlhKVWFvaUxzVU9qeFEy?=
	=?utf-8?B?VDA4bW1oZTh6SUFOZksvQ0N0YkYzOWVwTVdmcTUzZmc1Y3FJVnhOMXVON3hE?=
	=?utf-8?B?SFlNS2sxbDllYmxZam1wNGdsek9tQk85VXh1WFlTeHUzS0RzdXY3TStSM2tE?=
	=?utf-8?B?allZZXdtaWtqVGJvUlI0dXNEWHpnZjZVbTh4WDlSMitqMStDcEZCTVNmOTkr?=
	=?utf-8?B?dzlmNTMvZC9CTVFhUStnNzdFVmo4K2gyV3RQMHZhUXJsSVVRaTJzRlFNQ3Bl?=
	=?utf-8?B?bGlLejBrRHd0ckhKVnBVWGFsb0EwZVRBZFFRaUIrTEFjUkM0bVJjWFlKZ3Bk?=
	=?utf-8?B?MmZaSlA5ZzFQakdxd1Rjcm91dFFaY3FkZ3VtTUJ0ZGJlQW1mL0htODJPcXBm?=
	=?utf-8?B?cVlmaG1ZcHFFd2hvWTh4VXpub2xKb090S2kyU3ErRFlFd1dMOGUrOXlZZHhy?=
	=?utf-8?B?bmZ5VGtOWTVwV0lrUk45bTFiSG1rSHVLNUlKazNrTjl1OFRuRG44NCtQZmVP?=
	=?utf-8?B?QnpvblRTbXA5QzhOYWp3V01VdWhQWlBYRTJ2OWZDOVE1NEUzSlZKSHdXbXQr?=
	=?utf-8?B?MHYxNGczeVN6YUNEdHRhTnBOeU9NV20wQ1Q1Tkl2dDh5SmZHUElYanN2dmFL?=
	=?utf-8?B?M0w5WXVtU0xXSDVVTWduTVBPYldGT1Njc2x1UGlxSmZMbGcreFpyRE5iL1ll?=
	=?utf-8?B?RmVNcVdGa1F0NW1pczRNOHQxN3BscTcyd2x6clZwbzdYOGpDVUVhOGxSZDZs?=
	=?utf-8?B?dFlXTU1lM2RCeUxWWnZna3dieU9FVVo1TFFWVndRWlRISFFUSWZmNURKWEZi?=
	=?utf-8?B?VHZOMkVFaUovdzExeHV2ZTBtSFJpQ1RCMFlBTUdJUGVOTUZDS2VDRkJKOEVI?=
	=?utf-8?B?NyswaGhhcnV0QTdaNnNFa3dVN2pBS2JVZVVmQmlaL3B5S0tiUUZyUEpNVnZx?=
	=?utf-8?B?d2N2blRkZENFbURSTHBLaFRMOVNWV1lLcjl5M2taNnN0MnE2VzBrSXdlS3hl?=
	=?utf-8?B?dlNOL2tHZVNmb0J2a2FaQnJQUTVJUmpuYVJZa1lza3BYWmJuanpwdzQwRzlF?=
	=?utf-8?B?QWRwanZnbjE0NDZhSUpUM2NCcGYyY0VGSWVrcFBCWUZoQmVrOEFYUjlUWkdE?=
	=?utf-8?B?N2lUWmdJeFBXVmxXNUtKd0R0SVNTVVVUL0NicnlnNWwrTitpRmx6WDJGSmhG?=
	=?utf-8?B?MUxkalg4eHQ3Q3B3emNCZ3ZOR1BoYkZNd1VvbXhBOVVkYUNrOU9iOWREbFlv?=
	=?utf-8?B?TDFFcFdybjZSYnV3U0JXWEhQbk9mR1JRdlVSaU1iMERVRDM5eHBrSTVCelIr?=
	=?utf-8?B?bE55TmpoZkMyTU9EZ1JUZS9JL2NzWTlOOFNRRWpzOXhMZ3U4RXlmN3hWU3pW?=
	=?utf-8?B?MVpiK3dVOUl3RDl3MFdvMmo2R2N0d2VCK041OUVSYVlkSkNjRDZwQ1NoL0xG?=
	=?utf-8?B?Z3pPb3pKVFMxZm9BRTRSK1hzdWw0ZmNGMDhFVHZFTE9qampUSjhlTVVPUHRi?=
	=?utf-8?B?WmU5RTBMcDN3MzdlUHllcXl2WTgrd083RDI1SmtlRnVJTndkT1FXQ3hqSTZr?=
	=?utf-8?B?SUowb2VJcXlHZmRQMm1wWDdsSms3VzhBenQ5TlBPZGlxaUdSa2ZHUlV4aTZj?=
	=?utf-8?B?aUhlK3Z3VUR0VmRpNkRPelEwU1hhYzIzbVZUWTVNOUswaDFjZjRWb3NKVDZR?=
	=?utf-8?B?ZnVLY0pDdU45VVNiRHFyTXM1ak84citxVVd3M1M5N2JSOVhZT3FNRm1EMVVD?=
	=?utf-8?B?Vk1yYXVjeS95UWZySjEwNmg4bXRLOCs0bldjWEhub0ozNXJ5anVzWFhEdUtD?=
	=?utf-8?B?a0N4b2VXa2pPYmxwVUthYmI4T2htN0lBUlU3eU9ib28rdkpzQy9QeVdaWVE1?=
	=?utf-8?B?TmVaTmhtSUkxRVNibzQyY2I4YXdaQVVld3Zxc01KZENZcTJVaFlSb1JmcFdt?=
	=?utf-8?B?MmZYRXZFaHNOdFBad2puM2tybEZkYnJ4V0IzS2lyQmp2MnpjVmFlbVJ6d2JJ?=
	=?utf-8?Q?23YZlgtGh9w030OmUgGxNa/1hXs4oNJ6nt6aVWh+css8?=
X-Microsoft-Antispam-Message-Info: gyML+4+A/G6/T7X6RrKqrUOd0BkToyyOCUQYEvFdzTLdp3Exct5jCjYRH4ezgnkOGwVwog+3JpkQXG9If9YVh+mNUnL/kbdY6mRVkOxUFYg+QmMIJkJc7aAnYVc4qmPgzfkIem5tYVnep7adp8b60YojwBym410V2WZkp3a/m3VUINOna9YNuIrCagspD0HM
X-Microsoft-Exchange-Diagnostics: 1; HE1PR10MB0123;
	6:MIRxngXTobFibvSfY32JbLwlGBPy45mZTTiIRCuQNKIZ5UNQcmA/Oa4dl7D07B8auHPhsvb5pB56c25/59lEaGDxtIJeJ39mK1hrQDjPoVjfq0N5eVqktiEXIX/sxBgTNwMxbIKRtjmH3KvoEww3nt60HVHrTewvbH1G6zZOHDI2K8uS3gjTM4/M4ti/179t4Tuo3L/9/GBUTfcVZOEedAVMWjNU0Yd3F08kHP5WyOConz4JzqHkeAqbx288FNYXMZlW2tPqkHYt6FwTPoPGeWGRrclo6l1j9PjFld40lheu8l2XkAfZqLlgVI8ODBHBqmh8Ri+PZdDYVdY6Y0J8YTvgNYI/sg6lCO5fVZEpr79KSHdLZV0GhUO6zklJlgmv9VucHTFJG8T8ohefXMhrNB1XrPXwNMuJs1I/pXMtSKbtSuB379Es+4wOJ+GThIdIMAvNn7MRKyKd6KLb8AOJ6A==;
	5:w+5zpW2BmQr2rsitZZBvz9JMP7BA7XE4Ljdy5rq2w0bsyARuobKLCmiLZlxqTnxnb00QABV/Xw3SiuMklZD4QYWmKBFFgMldwdimSepXoBKfaMxyBfCXI1teOxxGdnP8h+SSeVdUWk52N2Tk5v0Jls+NEMNjKWR0kraEoejcdaA=;
	24:Tczap6nZ7pi9+NuVNHoDt+X1WtGqwsHJhK2c3uNZQ1GeWeRMWwSC5tT1MEGSQrDvUUYs9yycE+WxFa/XJMWwlVr2Rz1Xd24hDa3msFcuHOs=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; HE1PR10MB0123;
	7:kkd4rIOE5LjvtcLGiAGdR/4SgYxcPWU3VceYJX37J+pAFclH1nhTLsiQK7+T6f+f1vdeg7nb/Y0kEkYOpP2jlv/4umjCpL71hdzkG9oyeh4qgly9WVlrvagHJdyaIdA56phyV3zLMr9N++r0g9P7fhpJolp0QGHyEOaAyfU25eTuSQtZYbvAjJTgK3l8gFXKSnbK3KuqFciqdCb4cRzFnrUnIv6BQq8C4QPk8KYiBxOymKURcdNixJ6ddoFL7MqB
X-MS-Office365-Filtering-Correlation-Id: 701b8f96-d175-4bab-551a-08d5a3605583
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2018 06:07:28.8245 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 701b8f96-d175-4bab-551a-08d5a3605583
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR10MB0123
Subject: Re: [meta-selinux][PATCH 1/3] libselinux: refresh patches to fix QA warning
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
X-List-Received-Date: Mon, 16 Apr 2018 08:40:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Yi,

On 2018-04-13 10:38, Yi Zhao wrote:
> Refresh patches with devtool command to fix do_patch warning.
> 
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   ...c-Makefile-fix-includedir-in-libselinux.pc.patch | 14 ++++++--------
>   .../libselinux-define-FD_CLOEXEC-as-necessary.patch | 14 ++++++--------
>   ...ibselinux-drop-Wno-unused-but-set-variable.patch | 21 +++++++++++++++------
>   .../libselinux-make-O_CLOEXEC-optional.patch        | 12 +++++-------
>   .../libselinux-make-SOCK_CLOEXEC-optional.patch     | 14 ++++++--------
>   5 files changed, 38 insertions(+), 37 deletions(-)
> 
> diff --git a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
> index 72b97df..c1d2b13 100644
> --- a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
> +++ b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
> @@ -1,4 +1,4 @@
> -From 63d2c02a4dfa5ccd5d62a9f80b6a50cbb9946fbb Mon Sep 17 00:00:00 2001
> +From c5bec43d3fae49e36997884448fc533462028b67 Mon Sep 17 00:00:00 2001
>   From: Robert Yang <liezhi.yang@windriver.com>
>   Date: Thu, 18 Feb 2016 02:39:16 +0000
>   Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
> @@ -6,23 +6,21 @@ Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
>   Upstream-Status: Pending
>   
>   Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> +
>   ---
>    src/Makefile | 2 +-
>    1 file changed, 1 insertion(+), 1 deletion(-)
>   
>   diff --git a/src/Makefile b/src/Makefile
> -index 1920029..06d291d 100644
> +index a89c0f7..f304032 100644
>   --- a/src/Makefile
>   +++ b/src/Makefile
> -@@ -115,7 +115,7 @@ $(LIBSO): $(LOBJS)
> - 	ln -sf $@ $(TARGET)
> +@@ -148,7 +148,7 @@ $(LIBSO): $(LOBJS)
> + 	ln -sf $@ $(TARGET)
>    
>    $(LIBPC): $(LIBPC).in ../VERSION
>   -	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
>   +	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBBASE):; s:@includedir@:${prefix}/include:' < $< > $@
>    
>    selinuxswig_python_exception.i: ../include/selinux/selinux.h
> - 	bash exception.sh > $@
> ---
> -2.5.0
> -
> + 	bash -e exception.sh > $@ || (rm -f $@ ; false)
> diff --git a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch b/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
> index 1fa1fba..d2a362e 100644
> --- a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
> +++ b/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
> @@ -1,7 +1,7 @@
> -From 9a843a025fb0eaad537eb9dce28da539cf2cb9c2 Mon Sep 17 00:00:00 2001
> +From 967beb17658f3f879a2b8640e40c0675e814a257 Mon Sep 17 00:00:00 2001
>   From: Joe MacDonald <joe.macdonald@windriver.com>
>   Date: Tue, 15 Oct 2013 10:14:41 -0400
> -Subject: [PATCH 2/3] libselinux: define FD_CLOEXEC as necessary
> +Subject: [PATCH] libselinux: define FD_CLOEXEC as necessary
>   
>   In truly old systems, even FD_CLOEXEC may not be defined.  Produce a
>   warning and duplicate the #define for FD_CLOEXEC found in
> @@ -10,15 +10,16 @@ asm-generic/fcntl.h on more modern platforms.
>   Uptream-Status: Inappropriate
>   
>   Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
> +
>   ---
> - libselinux/src/setrans_client.c |    5 +++++
> + src/setrans_client.c | 5 +++++
>    1 file changed, 5 insertions(+)
>   
>   diff --git a/src/setrans_client.c b/src/setrans_client.c
> -index f9065bd..e07a779 100644
> +index fa188a8..a94f02c 100644
>   --- a/src/setrans_client.c
>   +++ b/src/setrans_client.c
> -@@ -38,6 +38,11 @@ static pthread_key_t destructor_key;
> +@@ -39,6 +39,11 @@ static pthread_key_t destructor_key;
>    static int destructor_key_initialized = 0;
>    static __thread char destructor_initialized;
>    
> @@ -30,6 +31,3 @@ index f9065bd..e07a779 100644
>    /*
>     * setransd_open
>     *
> ---
> -1.7.10.4
> -

The above patch looks pretty much like a no-op?

> diff --git a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
> index 9deb67d..20c0c69 100644
> --- a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
> +++ b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
> @@ -1,17 +1,26 @@
> -Subject: libselinux: drop flag: -Wno-unused-but-set-variable
> +From 1312096e1d9d5c9963f18208ced54b63b7e5d9a7 Mon Sep 17 00:00:00 2001
> +From: Randy MacLeod <Randy.MacLeod@windriver.com>
> +Date: Tue, 30 Apr 2013 17:28:34 -0400
> +Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
>   
>   Upstream status: inappropriate (older compilers only).
>   
>   Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
>   
> ---- libselinux-2.1.12.orig/src/Makefile
> -+++ libselinux-2.1.12/src/Makefile
> -@@ -79,7 +79,7 @@
> +---
> + src/Makefile | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/src/Makefile b/src/Makefile
> +index 2408fae..a89c0f7 100644
> +--- a/src/Makefile
> ++++ b/src/Makefile
> +@@ -96,7 +96,7 @@ PCRE_LDLIBS ?= -lpcre
>    
> - override CFLAGS += -I../include -I$(INCLUDEDIR) -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 $(EMFLAGS)
> + override CFLAGS += -I../include -D_GNU_SOURCE $(DISABLE_FLAGS) $(PCRE_CFLAGS)
>    
>   -SWIG_CFLAGS += -Wno-error -Wno-unused-variable -Wno-unused-but-set-variable -Wno-unused-parameter \
>   +SWIG_CFLAGS += -Wno-error -Wno-unused-variable -Wno-unused-parameter \
>    		-Wno-shadow -Wno-uninitialized -Wno-missing-prototypes -Wno-missing-declarations
>    
> - RANLIB=ranlib
> + RANLIB ?= ranlib
> diff --git a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
> index a041dd3..2d48deb 100644
> --- a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
> +++ b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
> @@ -1,7 +1,7 @@
> -From 0a8c1c5f3d866d3a3c0f95653416f5f72587ce3a Mon Sep 17 00:00:00 2001
> +From dec50b2504dedc0d13b24b7e7815cc1294249215 Mon Sep 17 00:00:00 2001
>   From: Joe MacDonald <joe.macdonald@windriver.com>
>   Date: Fri, 11 Oct 2013 09:56:25 -0400
> -Subject: [PATCH 2/2] libselinux: make O_CLOEXEC optional
> +Subject: [PATCH] libselinux: make O_CLOEXEC optional
>   
>   Various commits in the selinux tree in the current release added O_CLOEXEC
>   to open() calls in an attempt to address file descriptor leaks as
> @@ -18,6 +18,7 @@ Uptream-Status: Inappropriate [O_CLOEXEC has been in Linux since 2007 and POSIX
>   
>   Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
>   Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> +
>   ---
>    src/procattr.c  | 16 ++++++++++++++--
>    src/sestatus.c  |  8 +++++++-
> @@ -25,7 +26,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>    3 files changed, 28 insertions(+), 4 deletions(-)
>   
>   diff --git a/src/procattr.c b/src/procattr.c
> -index 7efcd7e..3007876 100644
> +index 48dd8af..8bf8432 100644
>   --- a/src/procattr.c
>   +++ b/src/procattr.c
>   @@ -79,7 +79,13 @@ static int openattr(pid_t pid, const char *attr, int flags)
> @@ -78,7 +79,7 @@ index ed29dc5..0cb15b6 100644
>    		goto error;
>    
>   diff --git a/src/stringrep.c b/src/stringrep.c
> -index 2dbec2b..de2a70b 100644
> +index 2d83f96..17e9232 100644
>   --- a/src/stringrep.c
>   +++ b/src/stringrep.c
>   @@ -105,7 +105,13 @@ static struct discover_class_node * discover_class(const char *s)
> @@ -96,6 +97,3 @@ index 2dbec2b..de2a70b 100644
>    		if (fd < 0)
>    			goto err4;
>    
> ---
> -2.7.4
> -

The above one too?

> diff --git a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch b/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
> index 14f0ce9..95735b9 100644
> --- a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
> +++ b/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
> @@ -1,7 +1,7 @@
> -From 193d42c8312cb8b189745696065b3aa5bbcc6968 Mon Sep 17 00:00:00 2001
> +From 667f8670560d122ba9cff96e1b3ac9e9fad201eb Mon Sep 17 00:00:00 2001
>   From: Joe MacDonald <joe.macdonald@windriver.com>
>   Date: Tue, 15 Oct 2013 10:07:43 -0400
> -Subject: [PATCH 1/3] libselinux: make SOCK_CLOEXEC optional
> +Subject: [PATCH] libselinux: make SOCK_CLOEXEC optional
>   
>   libselinux/src/setrans_client.c checks for the existence of SOCK_CLOEXEC
>   before using it, however libselinux/src/avc_internal.c does not.  Since
> @@ -12,12 +12,13 @@ way.
>   Uptream-Status: Inappropriate
>   
>   Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
> +
>   ---
> - libselinux/src/avc_internal.c |    8 +++++++-
> + src/avc_internal.c | 8 +++++++-
>    1 file changed, 7 insertions(+), 1 deletion(-)
>   
> -diff --git a/src/avc_internal.c b/libselinux/src/avc_internal.c
> -index f735e73..eb0599a 100644
> +diff --git a/src/avc_internal.c b/src/avc_internal.c
> +index 49cecc9..148cc83 100644
>   --- a/src/avc_internal.c
>   +++ b/src/avc_internal.c
>   @@ -60,7 +60,13 @@ int avc_netlink_open(int blocking)
> @@ -35,6 +36,3 @@ index f735e73..eb0599a 100644
>    	if (fd < 0) {
>    		rc = fd;
>    		goto out;
> ---
> -1.7.10.4
> -
> 

And the last one too?

// Martin

