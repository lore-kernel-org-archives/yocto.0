Return-Path: <VINEETHC@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49B62E00A9C; Mon,  5 Mar 2018 01:18:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.78 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1901 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Mar 2018 01:18:16 PST
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0078.outbound.protection.outlook.com [104.47.34.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4A0EE00823
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=1Or75VCUDctp7S/T0cdxDKGQeBDOyEKdtmUcb40bxQ8=;
	b=fXtMBh14UDM2EpJkNLRTqMWkxwHJGGmVJoiVuvO7MvOt9ZtloS4rV1HmYAfMzh997FHXT0KguZnzIOijfJu9wIhBAQlHOotwE98kGLHQv7FdM+D1uoqlRODxNyXEd+UNSZsWjKDnVBh71tiBD5GUlIyjCj7Hmis+P580Dozz/D4=
Received: from MWHPR02CA0030.namprd02.prod.outlook.com (2603:10b6:301:60::19)
	by CY1PR02MB1304.namprd02.prod.outlook.com (2a01:111:e400:50f0::19)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.548.13;
	Mon, 5 Mar 2018 08:46:33 +0000
Received: from CY1NAM02FT039.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e45::209) by MWHPR02CA0030.outlook.office365.com
	(2603:10b6:301:60::19) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.548.13 via
	Frontend Transport; Mon, 5 Mar 2018 08:46:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	CY1NAM02FT039.mail.protection.outlook.com (10.152.75.140) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.527.18
	via Frontend Transport; Mon, 5 Mar 2018 08:46:32 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1esllQ-0006QW-BV
	for yocto@yoctoproject.org; Mon, 05 Mar 2018 00:46:32 -0800
Received: from [127.0.0.1] (helo=localhost)
	by xsj-pvapsmtp01 with smtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1esllL-0001dC-7X
	for yocto@yoctoproject.org; Mon, 05 Mar 2018 00:46:27 -0800
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	w258kK7a001420; Mon, 5 Mar 2018 00:46:20 -0800
Received: from [172.23.180.111] (helo=[0.0.0.0])
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethc@xilinx.com>)
	id 1esllD-0001bj-So; Mon, 05 Mar 2018 00:46:20 -0800
To: <yocto@yoctoproject.org>
References: <CAPm8-H4f4XaMThA7V0kpUBoRCF_xDJdRkOenqyG9XTyMbvE+-A@mail.gmail.com>
From: Vineeth Karumanchi <vineethchowz.chowdary@xilinx.com>
Message-ID: <6e141f21-f8f4-88e1-c3ed-acf1ac6ab4f7@xilinx.com>
Date: Mon, 5 Mar 2018 14:15:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAPm8-H4f4XaMThA7V0kpUBoRCF_xDJdRkOenqyG9XTyMbvE+-A@mail.gmail.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(39380400002)(39860400002)(376002)(396003)(346002)(2980300002)(438002)(199004)(189003)(64126003)(6916009)(2950100002)(106002)(6666003)(230700001)(81156014)(77096007)(106466001)(26005)(9786002)(31696002)(956003)(6246003)(107886003)(316002)(5660300001)(65826007)(23676004)(2486003)(336012)(76176011)(6706004)(58126008)(67846002)(50466002)(229853002)(305945005)(356003)(65806001)(186003)(8936002)(81166006)(2351001)(72206003)(8676002)(478600001)(36386004)(47776003)(2906002)(63266004)(53546011)(36756003)(59450400001)(4326008)(65956001)(31686004)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR02MB1304; H:xsj-pvapsmtpgw01;
	FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com; A:1; MX:1; LANG:en;
X-Microsoft-Exchange-Diagnostics: 1; CY1NAM02FT039;
	1:PDThszJlm5xtTH8vftyTZ18MZKf7UtOTr5wz93Le6VGCRetgflhJqLTDxwDlSXHia8IPy3UPOEvfDIjQqjqA/0FFCnhkh1oEkrrKgsdzciCXnENuRA+DNRl4J5TYcQId
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: af65481c-a71a-43c2-73e3-08d5827598d8
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(4608076)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603307)(7153060);
	SRVR:CY1PR02MB1304; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1304;
	3:NbahXh8ngsUxMiR9+dLA5U3hU2GtxK6suZ4CDVFCUCx90yMp0UuhzkFaGcRIoHU7PV2rHTFqcW33mE39pkWxpenyKhI7SWPUrcHDtv+WoobSL1djtAJC30AVwAWcWg/gmIJ2IQQrJqRJLZoKCHKKtF29VNaYH00iu6zjfrkjE4O5RbV6QDy8V1ghEJM2ciI/yAR+NcEV0CTkM931mqwBgUyXHEZvoBYgRUL90Jy1mtV/vOLVJ8fC5/FkuUZ0L8L6Ne9sRxx9JWvRGzz71UAllED6apOFxUa32UisjaYQCl2+es+xdPk1W2aEuKszT6rGi6gt9m99Un+5l/59cmq2kIShoyueTm3vWkdhb/VJ1LA=;
	25:7YGEw9tFgyeuH4BfY4sLuexBhjfVJSCEJQKnIyi/qK+b4SvuLkNfM00QMgSq8pxEPdaCxiKJdMpf39nIclyQh9kjmiJq+3ODUkZXlyMD0aZr8uny0cx7XIP92GMHCi3hMdChua5tc2BYQ+3n2hRumvpwX8ffYMGaxaOZEJqn6oQfUzBzaqz8x9M/Xi6XW1XTrgqNimx7aMY9epQE24rvGEZQuSam2b54EOYhuUoUz+utObZokanQydFg2bgt7CNjXkh0HePXKM+gXXE4CFOTuIAzzWlsGKMLLeTpcOp6Ltm6kBcrUhUaEUEzk8d2zrXPM6yoqmq5qg9W+zEUyyB3rg==
X-MS-TrafficTypeDiagnostic: CY1PR02MB1304:
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1304;
	31:ki3AADlBnFHbHIYteyRc7NR+tvdqLo69qgdEE5HliR75HnSCkO0v9S7WWuk6UBZl7yLHMnZkOIXu9Wf5Mf6cyh0OleHrZhfWX4x9sh80ZNlGC14b/qridq9+uzW5XrcqzN6fXrn8H8jP5g28sR1kUJPmtfqpVqEWqsG0LuOZupYMAnVa0giFQiUE5wJvDMj6Sedat1EvkfL2OOCb0W3zpM/HCTpp2ttzSwfOuRSAREE=;
	20:NV6nuq/3AW5P+r2ibnJ7nSp68rMsx+IAWe/7uu7kTE5x2ajU39j0hVYcBBfhveYwoLnYsr6Xq9LyRDb4oUAO5eOEPSKSe1wOYyLdzY6jx4uFWrKsshff8Hzg11rWe8fHkWHP5ZYv/CnyCjn38zpj7P8/LBEFMk/+oAUS5x/R8RA7roJTVqM8uoVvf4gr8CaoeqSTapavmwHsUpkI7RIQTC76IXG7cZKZfhhelnyca5QY1zAfHmmxFOtRRQ34GIvBWWZMXZpAiMdV+1s4zfvodmtSu2iMpv3gt3BmnyuoeIfpFRa0/aebT2xxgN71KwggmndTCtr4Y9EKJpQaPxFqSvgfrIXYPtaSbJu+0RJQAHWk/20+QTlaYJLvGOOd8NR/lyDaKt/QJ4/3kHTPeKi4uTsOFwYfwcYalb76SICBdQ5o8H6iZsgB+6LyeRphyU76w77tce0M8ftfTU0uGZKmK4ymo9v+ROrJMreFQslBfM39bxafH66fJvuUJAI5NnDp
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <CY1PR02MB1304E434D44BED340B710083B9DA0@CY1PR02MB1304.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040501)(2401047)(8121501046)(5005006)(93006095)(93004095)(10201501046)(3231220)(944501244)(52105095)(3002001)(6055026)(6041288)(20161123564045)(20161123562045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(6072148)(201708071742011);
	SRVR:CY1PR02MB1304; BCL:0; PCL:0; RULEID:; SRVR:CY1PR02MB1304; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1304;
	4:ml2o6CT2tUh0rZotLgXIRXCwbIbhxyjvm+Pb2B4tVAGZvuAAdX/eHwWr1qaliFLgofBupPHtSmfy/WBMhVKWQClIAKSgGV3vGHh9zXWTR6nVXLWg0jujVWDFh9MhnKN5Hn+4mPUTxk+wLL3M5oc2fGqqDvjl+l9qNJ3j5rBIVLBLZxIaa6v6rIBTZOzdFhgzhbd8n3PmYwr+BtVjrNwKEZz12PH9G5x0/B6pyCtIFibHvA0bYC680IGEV7lgbmSffxkx0dRPoD4+5K11tIwNXA==
X-Forefront-PRVS: 06022AA85F
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTFQUjAyTUIxMzA0OzIzOlRENWw3SmI4S3pnY3RONEplZlZNNFE5MFp5?=
	=?utf-8?B?QUxuTnJXSit2cHIrNHREVlN1eHplMG1iSzE0N3pFYWd5b1BaVjlGWlJ3aG9v?=
	=?utf-8?B?WjZsNVRNVTdrMHVDOERKRkpnUE5KNHhTYi9RRGN2UzcweWc2QWVFQ2VET1Jo?=
	=?utf-8?B?RnVLdTRaMmFCNURFUTEvdXQ5dlV5dEZJenZ6NFM5YmlvRExDeVU1STB4ejRm?=
	=?utf-8?B?bzBzTCtoeGNSUDJVSmVOZmhNRmRGYUYvelJMVXJxalJybEhCN0ZadVRaVDdL?=
	=?utf-8?B?b2E0WnNNTUUwM3pudFhEdzVHQ25xT2xOQWV2ZnovRXhRdkROdWlkcnpUNExG?=
	=?utf-8?B?ZVpXeWFhVlhKdW9Qd0pjaERWUExoWS9rYXAvbkJwNTZxZGdZNDRpcmJyWU9l?=
	=?utf-8?B?enVMdEdEbEw4clJ2R2swYVBVVU1TNW14VGNBMXZUbGxRSS8vekVPVXVPdllF?=
	=?utf-8?B?c2w0OVdkZng2S0NLUklZZ0NHRUhGbXg1L0FXbmFZVnVtNDhiM0RJdlVmRjFW?=
	=?utf-8?B?UXB1STBSUHR3dFQwbUJsWThhRFJTL0ZSSkRNd00wenN6WHIySDJVV2ZobmVK?=
	=?utf-8?B?MEhMZHZNeWhzZmR4bTZMTS9kcTJBSlFISzhxZUxuTUtxN0Z1NWd4bVFIbk95?=
	=?utf-8?B?WnN0TmIyQWN5eUpqTS9SWE96aW15RHZYZmc3M0djdXpPaW1lNzNnWUo0NlZk?=
	=?utf-8?B?VDBvSnRLV1Izb05xUWRTRk9UcnZvdS96VlVSN1JHSDFKb3cyL1BHWVdKZ0xw?=
	=?utf-8?B?cXRPWDV2cUxyM0gwVURDbXh4cGR6V3M3ay9VaXRNOWlXY2ZyNEs2cnBsbXhZ?=
	=?utf-8?B?d0g2cVRSRVVmZFpTaWpJTkdlTUpPZkR1M0JCZDZhTGdsZmJmR0NIOHFSTW1a?=
	=?utf-8?B?WjNIRGM2MnBaWE9YajBTa1BOQWQ2clJtNmdpUFZYN3Y3VnhyWGQxOFhQVVNB?=
	=?utf-8?B?bGFuKzZQNmFReU15ZTAyaHVQbVFIU0l1S2x2L0lGdkZnTmtFa3g4Zk5ybEdG?=
	=?utf-8?B?UXFscENhb1FNTmJ5QlUweDAxWjZZMFJRZ1k3VHN5b3BtZFpqS1FaZmNuQndn?=
	=?utf-8?B?MVpEeDNTM3lxc2ZrUURQSG9DOEtWbURzTXhpMVg4dzYzUVlRdE5Pektic0FJ?=
	=?utf-8?B?dWtMem5EdDdtcFdFMjZrYlFJU0MzdHIybTlwd0R2bVVjWmp0K0owVXZobWpx?=
	=?utf-8?B?Wm51V2V6c3Z1SXlOeHJZRkUxY2h2UE5sY1BnNnk4cjNod3UrYXQ2QzBRTG5h?=
	=?utf-8?B?RFErS0dQQ3lOY3JQQURoSlRxeGdVQUtZNmZMOC9BMEdwdHN5dTlSZlpEMDVF?=
	=?utf-8?B?d2MyajcxZEhZeUswK1FocTUwRHpWUGRsZzlHZ0lNdXpmYmk0Q0d1aHMxZ3Jm?=
	=?utf-8?B?REQyYnZ3OEN2VzZXeG13cXlUR2lTdXFZZ1JORnF1ZzEvWDA2RVh5K3hRV0Zt?=
	=?utf-8?B?dlBmK1Q0UlcvTTBCekdwV2JlY2tXbTJxeWFyT3p0eDBUZnZXTDNZNm9wbFpD?=
	=?utf-8?B?UlpoZW9jM2Z4QzhuTjJIWlp1LzlPVlFwRzh3L3FZQ2lGWVlvL0NlODNWUEd6?=
	=?utf-8?B?d2ROUTZXcDFKK1NWZC91Mkx2eU5oaTJ6MHdxRjhCZ0I3Mkt0QUdJV2VIeU40?=
	=?utf-8?B?VEtaY3ZRS252RDBCSUswZU94OHQxZG5RU081OFd2dFpZbER2REVCWXlTS3Nl?=
	=?utf-8?B?V1p6SFluK0ROeElKM2dKcS92YXorR3FaQU8zdlNhRlFscnNhOHFaZ0lZc1Z0?=
	=?utf-8?B?bXBhMDhPWVhMSEU2dzRrZz09?=
X-Microsoft-Antispam-Message-Info: Fk8K9FkmISgozJnR63yaOWskvCcI9DFKXLaWg0Z/msuUOuPAn9UIRV24BCYf8K86AI7BlwgYHzZztJ9+3JDUiRSDdc3hjvaVr1ZOFK+HCvt2ATCCwnLnsrS41M3GXKvmTYtofMVlNZSA+ADtnxyF9Kw/TerAUslSSwN/vaiDqNVjbIBsYUg3Vq9maiEEJq57
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1304;
	6:H+aZPRhT/tPf7D6UyipWxL3b9mMZYrBXmGN3n9T/IkxKGBYx2Uik02OVWVuo1FU062CIAt6ts3/nBR/mCP9sjPwwN+7vKe9BWi+Ont95tdvmt6YiJ7GnRWuYaupm2JoUrr8lq2leWr6EmpBE0qxAgZnbpDqK/szLJwWucG4tQeAHJraykEW+nhALN/ZuJ9BsSnXgTTUE/+D9z/te0UrYsNbfCT6pl51UKpzIUDmlMjShnusjZxot2apCLU6DxovYYwSQEqpjuakpLAv4hsARU1sfLpwCFaT4Q9uwnb8ZgFcSOa8iqzOyLj5j+AO3XyiptPEOwzu8eoxsQ0gsXYUREkHvSW5YuG9vW3xOR+oJgl4=;
	5:RCsImQeynurHvdYkEV2N3WTzeifwRUym2T2Yq+Ny3yRs6pDaeAPQqzYCu72sM2d+0T/YbgJRZXchmRE1HZnQVbO/Oi4uwmx2adcHvPCbU611wA35f7iGGka4AdT+yafvvwJC2LLrCXmGoeTM0H75uKw9GUbtHDpKcn0COhYDMts=;
	24:4Q/Rqexls+rPzkHd8yVBqnbM5a0u7olsZQsREw9TGrurKjHOhLQ0Ss0ymr8mO8L8LWP52DodL8DYwohb0+Z/PPJZAvJibgqP2doUCoQW6OY=;
	7:Ihc/7lc8pQbsWu1PWlD/HsG+l2TixiedN1bDsXTTUOnfTUBIQj2vQxNuqplnGZPecOS//mNxFMHfzXvYTaGjVPD1eDbjK508stXvhfFOmdSRNd6QURzu5oDIIzm3W33uqbDx6VowPEONwsupkxAtwclCWvT2GlaIAqPgB5lr08GV1xDaF/1U4ufSFIC82lescwJigETQc9WZnLMJLQ9edxE67qzgvoRys1ojdWoJGekCJ7BH1lxqrBhnhGp4MVmy
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2018 08:46:32.8493 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: af65481c-a71a-43c2-73e3-08d5827598d8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR02MB1304
Subject: Re: Run application at system boot
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
X-List-Received-Date: Mon, 05 Mar 2018 09:18:18 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi ,

On 12/05/2017 07:51 PM, Laurentiu-Cristian Duca wrote:
> Hello yocto community,
> 
>    I want to know a few things
> about how to configure yocto such that
> - a simple application (let's say a hello world C program
> from a new recipe) is run at boot time.

use update-rc.d class

INITSCRIPT_NAME = "myapp-init"
INITSCRIPT_PARAM = "start 99 S ."

and also install your app in init.d

Thanks
VIneeth

> - run a kernel module from a simple recipe at boot time
> and automatically build its "/dev/hello" interface file
> (which normally is done by hand using mknod).
> 
>    I appreciate any hint, example or tutorial regarding this questions.
> 
> Thank you very much,
> Laurentiu
> 


