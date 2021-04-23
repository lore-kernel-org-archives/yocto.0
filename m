Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.76])
 by mx.groups.io with SMTP id smtpd.web10.4529.1619146431117551786
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 19:53:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=MNgxIlb8;
 spf=pass (domain: windriver.com, ip: 40.107.243.76, mailfrom: jason.wessel@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=evlAN3s8CTFD8HPT0r/2qsFEDDCRPEg/KMgAxmuQqytUZu3bzsNny+fXNSmEh5V8dtZyTZmEAGVxtlZHIOzcLYTv+nhhOfLKLx9lueIXSk81/SgjNCOBSW2vE9n5b+9I01J05eRtL+t+qsgHtfaYQB9h7LAF8iz1d+0f0+ppjzIzsMauqV9SCphIjM28+pxFs3TNzdF1ZX/NDQ2OOAdTJibAnasdqUnRt9zxXJbrLqFFLwh+JMrNCzve69bjrEuQplg4h7Jet7D4r1+TFd5RbxhRLE5fAxzhVfncLExxAsoDO0t0XkNa7fob8pKgYKlrHqgxa3QL8Wko4HvjfkO5cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f4XveF8Vyi9/pxghSbqO+vImA1JvS0/EWYlGB712Gfc=;
 b=l4y8JG4+0NdFUY8ObV3TAQK5VUpgYHtX6trJVoqci1QWO/kLda1LxY4XjYLYia9zlKjblpp5SCj+nkTmtoei1azXZ1cBojNSiGdsNCXNfT++XKL6qNkBP//KXUnD4KzPC7iXMMHnZkEZdDDrICShmQTxx2htUDPHS6fdqxkXrQSQzVDVDK0/ox1n7+YESeh5ieXbP/QnpcxfCswFTET8pI/W+0GZocqgJGFaaGchL3h5gVvcFWkOqXhx0b7vLzHe3haB0Arr7rpNs0J0YcxwzvpNnSvBNKpSKgvEImFvhRkKGunW0RhDSF+vIfo4COo7Zo9YN/gYo0a8dyt4GM3omA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f4XveF8Vyi9/pxghSbqO+vImA1JvS0/EWYlGB712Gfc=;
 b=MNgxIlb8I3F5bKnZusZOEMo6ecwjkRDQfQyi4R0xZx8GlkCKsPdWglABNRyo8dbVO2LFflfDgQKdoRbBunYrFhlDmC8kyjFW8bajR0XlMcfPmxQa3t/sHos5UlZJyDWKxoWGjVWNaagLU48pUmUqFuRMUNLXVDae4SUQ4Dxa5Vg=
Authentication-Results: kernel.crashing.org; dkim=none (message not signed)
 header.d=none;kernel.crashing.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SJ0PR11MB5181.namprd11.prod.outlook.com (2603:10b6:a03:2de::10)
 by BYAPR11MB3590.namprd11.prod.outlook.com (2603:10b6:a03:b2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22; Fri, 23 Apr
 2021 02:53:48 +0000
Received: from SJ0PR11MB5181.namprd11.prod.outlook.com
 ([fe80::74b1:2357:c5c8:10ec]) by SJ0PR11MB5181.namprd11.prod.outlook.com
 ([fe80::74b1:2357:c5c8:10ec%5]) with mapi id 15.20.4065.023; Fri, 23 Apr 2021
 02:53:48 +0000
Subject: Re: [meta-openssl102-fips][PATCH 0/6] hardknott fixes
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org,
 mark.hatle@kernel.crashing.org
References: <20210422065609.143415-1-yi.zhao@windriver.com>
From: "Jason Wessel" <jason.wessel@windriver.com>
Message-ID: <a94154c5-52d6-f934-15b4-04647b500a0d@windriver.com>
Date: Thu, 22 Apr 2021 21:53:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210422065609.143415-1-yi.zhao@windriver.com>
X-Originating-IP: [73.74.120.8]
X-ClientProxiedBy: SJ0PR03CA0112.namprd03.prod.outlook.com
 (2603:10b6:a03:333::27) To SJ0PR11MB5181.namprd11.prod.outlook.com
 (2603:10b6:a03:2de::10)
Return-Path: jason.wessel@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.2.15] (73.74.120.8) by SJ0PR03CA0112.namprd03.prod.outlook.com (2603:10b6:a03:333::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21 via Frontend Transport; Fri, 23 Apr 2021 02:53:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30eae833-c959-4009-70cc-08d90603049f
X-MS-TrafficTypeDiagnostic: BYAPR11MB3590:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB35904AC821CEA2D9B2CB92C297459@BYAPR11MB3590.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Z9KKluhNfx3zRPvybW6X4lWoy1DSTsCmId7j2KXw8+3UCp4i2jTwI2ZzuYLv4Qq9tNj9ANqRAozMkngWlymorx83XDmY13zCDdkFEKmzcTexQCWRjMb+DsArr2z75PzjzJzqGR/khUWjgAkvDj3NPSm/50yXv0mTolxG5pkfjF4XmjHD4w4Js1cQIhnoFxsHDJEdWIcEOCLYCG+/rIY82KbDppPE4KBEf9VX+E3XP1rQq1OODDUNoVtLzbeGF6UxEIyq2f/nqMxV1gkvDfqCw6vjkLLEEISfaUuxgNdHsSOdZtxawTAy/RCpzsW/ThYYAY3SIDtn6geZYSplZ+bbd2u6T5vX1ycN3FVwuKXehhZvEBLcdr7JOfYEjUmIcKxDBzqccfTE1Qz4jsAXtcirh/cy3Ju+cJsw+Z5/RXQChlfkjksE2zMLXq7IM497j6MtDrDFefeCo9OWClahsDCH9vxwiXKpN8OKRHizDQQ7CCULZFuw9L9OUk8eulzxA7afcl15aPgfYgw5S3WV6BndZwEyqq8ZT/S1/Lm1jtoHYJypq0GF5ebm56h1YEgxE01sxT/zPM4Db4VQfQDsMMORZNFTBu+8QfgdbU+iBXr2xn/kSOWgF6tQZLUdZeip4kfuXQFitzXEl15YXSYG+7nPbRMNKcoK6GfWa9xlmPyd30qvjkKwytKhbT9+jE08ZwdX
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5181.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(366004)(39850400004)(136003)(31686004)(36756003)(83380400001)(6486002)(2906002)(8936002)(66946007)(66556008)(66476007)(53546011)(86362001)(8676002)(5660300002)(16576012)(44832011)(316002)(2616005)(956004)(31696002)(16526019)(38100700002)(478600001)(186003)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?STE0K3pCR284cmc4R2tSbGhMWE9xZUc5bnVOcXdpYU8zVTJ3aDFwd0E1VHhi?=
 =?utf-8?B?N29PNXZOWnZnbGFmMGhqQ00xZG5JOGgrRG5xVU54aGY0cElnZTBKY3RiM2JO?=
 =?utf-8?B?bkRxQjZXNERCbGJTYXFOWWJCN0hvVkdoTnNTWlUvRGVPRGFhWDl5ejUydXJK?=
 =?utf-8?B?MFRnVG84eW5ydXZWOVhSdEtUSEErQzhXcU1SVFQxZEswKzB5enNvL3FkQzRP?=
 =?utf-8?B?ZXhxdFU4VVJMNUVuaWVoMGVBSzI3M1daYUw1dkRaeDE1cGhpN3YxU21uaEc1?=
 =?utf-8?B?RWttMzZySE1nVG82MXQrbjhzaTVSMURsY3JHa2FGUE83RUZVekRFUmtyNXRJ?=
 =?utf-8?B?THpmSUVqanp6dHVRZzJVa0ZjTyswSlg0Z2hBcEdCNEU3U2h0RTdBQXIvTVBt?=
 =?utf-8?B?ZnQ2VmZPWU1LN0RmcW80K2MxODFmSjJER0Z2eDlaSGlsMUNUeUF5cWhiRm1J?=
 =?utf-8?B?N1ZJY2ZVQ0FhNG9IZUlLTHEvaCsyUnZLbjdRUDhCWDNSVUFlR2l6bkVTRmVX?=
 =?utf-8?B?UjYwL2RhV2RQeWViV3cxbzNZQ1hYTDJGMzUyK2diOVFQNTkyeEpITjl2MnJT?=
 =?utf-8?B?SmtNdXdmdmFXRGlLY0JkUUgvNXdyTHpFK0w1ZTFhQmpYVVFyRno0aTVjZk1m?=
 =?utf-8?B?VnJtdnlyRmFWRGVxRCsvUFU0ZmJURU1oZGNybXA2VGpNQjZPTGlHTk9mVlZj?=
 =?utf-8?B?cWNjUGlLQVg3L3ZCV1NYQ2YvT0V1cVZNQlN5bng3NkVDNGpzNUhyVWtSak8y?=
 =?utf-8?B?RWJFc1NPR3VlWU1lU3FweXlPOG43Tnh5Y1hzSi9VL1R0SWZPci9GeEJ5QkxX?=
 =?utf-8?B?bG52NnI1UjJ5ZnNKZG45WTNYcDdOOCtwdUI4aGJmZVQvTFM4R3RSbW1oV3RB?=
 =?utf-8?B?VUVUOUpHV2ZzSlpyY1pIMEdkL0R2MDNqbm15enM2WU5EbE42MXZnNFZoZCsz?=
 =?utf-8?B?d1J1TjgzZ0FYMWRFTDBFVXkvSVladUswY1Y0MnZHeVdrZm9HRHJTZUVCeGpa?=
 =?utf-8?B?WGh6c2E0aUU1WEtVY0VLRzBoSjhmNHlGc3dHcSt2SjdBcHZVbytOcnVCc0FF?=
 =?utf-8?B?Zkx1VTY1b1hZRnhVOXVoQVcvV2Q5QXN2dXNndmJZcGpzR1k5OW05L002aDZO?=
 =?utf-8?B?QU5wQ1phZnBXVXl5aVpCYUJNWm53UWFWclhqK05TR1RaY0NQWHdVTjJsQU5W?=
 =?utf-8?B?Y1NFWDV3a0JvZFlDcmVBcVl3NlFCMHNybXM1dzJzbEExMEczNUZKd2R4S1ly?=
 =?utf-8?B?ejJKczNxSHhmVXp5WlcyYWJLUnRScXh5M0FtNVlndmk1Mm83V1Z0MEdjb0JZ?=
 =?utf-8?B?TzlvcjRER2NvOU0zMGNwb2l4Ly9HSEk0QUhxYk4xVGgyNTYwZU1XZTFmWTBS?=
 =?utf-8?B?RTRFdk0weGc5Rzc4UFZ4SXlpYjM5alo1U2tWOEc0NEsrMklscERQbndvdi9y?=
 =?utf-8?B?MFVuVkZpTUlxUzhUemFKOExjRVZ2Q3h3aENWTVRNZERkeHlYdUtFZ0VhV2xm?=
 =?utf-8?B?WEJ3Sm9XU1NnQ0xiVHN1STNzeENPcmR3ZzdUdU84V1dwMGFaRU5rbUgreG9z?=
 =?utf-8?B?M0NMenkxNjgzMnY0UHdXSVJ0aTZVMXExL1dyV2lCRnRkWmh0ek80QVZJK0pk?=
 =?utf-8?B?dUNqNHVJZmowclo1NkVCTlBOKzF5MzhxeWRqMG14cFFCZnBjbEVaSTQrclZ1?=
 =?utf-8?B?K1lNWElGT3ZzOHozcnkwNDF5bW41MUQ2OW8xNjl0Q2tkU3lIU0pEa2x2akw0?=
 =?utf-8?Q?412oejynmJlfA3G/4G7YKXxlbT6WkSjfBwiTkgP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30eae833-c959-4009-70cc-08d90603049f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5181.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2021 02:53:48.3604
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oetg/eHWOuSfo7mfM0K/zthPDBaKSH4iZBQ2q92wmsEO7SMP4k++mQsCKHjWZ/2K8U00/2PAS+VR9NlNYcy2f7K0eogHX999c3PKQtwp08Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3590
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Merged.

On 4/22/21 1:56 AM, Yi Zhao wrote:
>
> Changqing Li (1):
>    openssh: refresh patches to 8.5p1
>
> Chen Qi (1):
>    layer.conf: add hardknott to LAYERSERIES_COMPAT
>
> Yi Zhao (4):
>    README.build: add "Known Issues" section
>    openssh: refresh patches to 8.4p1
>    openssh: fix the double free error for ssh-cavs
>    openssh: set kex->sessin_id via sshbuf_put in ssh-cavs
>
>   README.build                                  |  28 +++
>   conf/layer.conf                               |   2 +-
>   .../0001-conditional-enable-fips-mode.patch   |  46 ++---
>   ...ps.patch => 0001-openssh-8.4p1-fips.patch} | 173 +++++++-----------
>   ...1-ssh-cavs-fix-the-double-free-error.patch | 161 ++++++++++++++++
>   ...avs-set-kex-sessin_id-via-sshbuf_put.patch |  45 +++++
>   recipes-connectivity/openssh/openssh_fips.inc |   4 +-
>   7 files changed, 327 insertions(+), 132 deletions(-)
>   rename recipes-connectivity/openssh/openssh/{0001-openssh-8.2p1-fips.patch => 0001-openssh-8.4p1-fips.patch} (73%)
>   create mode 100644 recipes-connectivity/openssh/openssh/0001-ssh-cavs-fix-the-double-free-error.patch
>   create mode 100644 recipes-connectivity/openssh/openssh/0001-ssh-cavs-set-kex-sessin_id-via-sshbuf_put.patch
>
