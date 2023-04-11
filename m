Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F8DC77B6F
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 12:10:11 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.62])
 by mx.groups.io with SMTP id smtpd.web11.11873.1681215001665569186
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Apr 2023 05:10:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=Q5gNV8Ae;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.62, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGsO3ahSk9e65HOgWIzWuwDrHYQzin4aw+GohR8T48MLfmvf8XD71/FiMr1hCeDIJReZZ46bQWrIV/0rcucBi/7FLPCuHzZw5XllF+qJvN8kC4XCKTbbEHHqOXQDK3znsqXlsXMioQQ6PKhR1D6Qqz6NsitG5veQpL/bZfKFAqsc847CAwiUOyWc7jHPNM0oY2QH+wHH4XImXb4zl6uu8IBPiJlNLFzXkdbUpIGb6CXeHL3W2RLbAteXnXDigMGAK1qk4ULTewpgw6fz7/N9RBox/Vs8m+NPvPYVvmsvAi8IHVEePLYQKk1L5vRG14+PGF+olUu63xjnnWnCRXhnAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LhXVGLbGGijnD7AN+QDOlGvtZ1P8LpLYaq9d5gY/PSA=;
 b=cwNN7P0dFXbyOCCRoqWkRSZFZnvawSvxc8GDzO7cFYA5GxidGdNL9D5YGP/P/Q8R90h77pgjr4JSy7Qw7YmU+YDc5h0+YVYV8MyMhSeJr7q9w3k5jWo8M2NQkTtD/R0Vo7Q/NoZxI+Ksq2DgMjvMD/lp3wO1fKj60g1ACziL8joxpKgcINoDXP95XtCD/gM8aieNvoSmXabORMQkXFe6ul5Nmn0Pi867VQHxsH7M3qVYeFzIV4HClYNzCoLz+LD/kq3iC9Qw0Seer4W/wTyYIWYkrixqANk7v5l/paKQABdPSy4ft4OhBDHZlNVHPUAbQiAzbneNBIMu9g118FnjtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LhXVGLbGGijnD7AN+QDOlGvtZ1P8LpLYaq9d5gY/PSA=;
 b=Q5gNV8AeQbch8KewXg5kwVWduamORf5+RqeL22mxJ+kFCerkP1r4Gz0o1CQNyVXLI1U8OCmne4T4Pcl8KYUv/bi0i0G0lC8zTdR6fL/CIijIw3D+j8wzaJ+X9kfSRLPh9iPTBxYRPMuV7R2Y2LDTHCKPjlljAvQTW+QLkeATEXddeTkRu6spS5MHwCuJMGsAWcTXQIHG2Fx8LS4AQ9DqkXcRTB9RkxrdyTrVokLgmXdwfvHLRsDFExjGAnqAiKIEpNlCyWai1OFkrGbFMuCrohsVswcxnEYmPMdfJUtL2wUy7W8HE0v0HV7rmBxLwOociOO8u8zJtaevzlPOZxqBsw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DB8PR04MB7020.eurprd04.prod.outlook.com (2603:10a6:10:126::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Tue, 11 Apr
 2023 12:09:59 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::c2a3:a621:4621:fc62]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::c2a3:a621:4621:fc62%6]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 12:09:59 +0000
Message-ID: <980124a9-5b74-d549-dddf-b52f23f85914@theobroma-systems.com>
Date: Tue, 11 Apr 2023 14:09:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [yocto] Need help with CMake cross compile using libxml2
Content-Language: en-US
To: stephen.yu@microchip.com, yocto@lists.yoctoproject.org
References: <BYAPR11MB31892807C6AAE69BCB060FE38E9A9@BYAPR11MB3189.namprd11.prod.outlook.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <BYAPR11MB31892807C6AAE69BCB060FE38E9A9@BYAPR11MB3189.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS4P192CA0018.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:5e1::7) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DB8PR04MB7020:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a89a8ed-053d-408d-c17d-08db3a85abc3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rFfvrOKfuPKCdFpZogGNGJrTq3M8PzWUUdKJNgZo31eUCXcVkg+l6rOS/+3k0vU3m+DefihOCZXVsWNfcEaWPMJ93r9XnqccSU3TG1mAQqCNsPj9UX2i45bV7W0q6qbBRNas67J7iotzoUT+jImosOycu+AGGWk0X35IyqKtvCAFD1yIpcm+Z5O4j2NWHSp3JB7ssHJo9vM0AFYzcG9Ly3pgA/cUrm6QOFmjxdavBptjm7Ndfh1J8t7nBb2GI2cC6eMRk3t2aW/hsFBqXsBsb8AWafrV8dVNqhPV8Lz5edRY8rw8HlM8twF+oG5GhGEqZqQt87BChJwCE0BmvR58hL4ActlQlCH6dFOLwJT5+2buYswhbWU4zm7h0eYdIISOOUhxaeSruzTIo6iIFH3+0su+uvMuITMWI9scWRJQxVF+Lb8TaZ5BawFA+L7SLog2i6d/VrxF34zu/ICo+bEnVPeWCz7itkLBN5A4WWLRIC3TX/z9gB9vSQU2XorQ4u+vginCrj9SKmlkSK73JhUYqi81hjuoHoghsq4tkJjvEZ+JhhHjCRxifFjJYas+vXKaJ7n2mPSGHjBCtWeM5UrFdnWZlfptdcjh820N25RqPKPVITeKWjbh8PQ5bJsCCY7i+aGUFTEclL5WQ63XkkZK9w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(346002)(366004)(39850400004)(136003)(451199021)(478600001)(6512007)(316002)(53546011)(26005)(6506007)(186003)(44832011)(6486002)(4744005)(2906002)(5660300002)(66946007)(41300700001)(8676002)(66476007)(8936002)(66556008)(38100700002)(31696002)(86362001)(36756003)(2616005)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SjVmV0hoVU5DdGhuN3ZaczdIb0dkT3l0b3BKNVNMSnZxTWFsV3RZTUpPLytp?=
 =?utf-8?B?OWphVVMwY2JacjdTSkUySW01RFVRTzIvUTBTR2hmYk5XUllocXFtZ2VmQkx0?=
 =?utf-8?B?Z21XQ2FQSmkyK2tRczAwcmhxcmlLWnFGZ0hvQ1hzUlJuWUx1RG5TdjNDZ1RC?=
 =?utf-8?B?S21ZNDZJRHlCRnZJOW5rMC9uY1JweDdzYXZTTzRacVVoSGhoN2s3M0ZPNVdH?=
 =?utf-8?B?bEc5STBKSGlyT0hhM1lLSHRMUFFCMW9aSHc5VTdBMU1rZkdOZlFxTWdpRlI4?=
 =?utf-8?B?ckp0YzNOcFZBd0R4N0p0TVVtbmF5VXFNYmxwVVhHazdXaDYxWlN0T2YxMU9k?=
 =?utf-8?B?aFNZaHNJd2NIOHo0OGRYSE5JSkJLc3VTSCtxUUZmNUhBZndRR3Q2TnlWZGI2?=
 =?utf-8?B?ZmZsN0RzbitrTzZhOE1vYzJHUTNOc1JvdFcwREJ5OWZuRit2QTF6TnAzQTZY?=
 =?utf-8?B?a0hGb1ZZckduZlFZU3cxdHFRRHJ4cUIrSHYxOHNlQkwyMWFwLzhyKy9zMEpq?=
 =?utf-8?B?NnhMclFGVjBPQVBzbERERVArV2tnc2pydlkxZTlUelJ1dmhqNDBqS3V3NWlD?=
 =?utf-8?B?eG11UTBvd0ZLTXpscDMxUnh0eEVGWEdzOXJZNVdTTnY2WUE4dWV1eVdjSHhr?=
 =?utf-8?B?eGxGQUJ2aWQ1N2RUbHczS0t5emozMWgwYmFXTE9nTlAvRFd5WDRqZTZDUVlt?=
 =?utf-8?B?eDBwNnF5b2ljbmNkUk14ZC94bXZFVnAzdGV4c1Z2UXlxY3NjMHZBdEU4VHk2?=
 =?utf-8?B?VW0yb3J3bGJkdXJzM2U5b3F5bFgwaFM4TkNSMUZ6SVNITUQ4TnlDODlYN01K?=
 =?utf-8?B?Nk12ZjlxTjE2TzVmSzZoOS9iMjZZYzYzWjJKTWovdVlJazU3TWwvOTJTMEhD?=
 =?utf-8?B?YTczaXVwaUdMUVlNaDN3Z0c3TzM1SG00cWFiMGVtSXBxWFVteHZmaGhkWHhn?=
 =?utf-8?B?cGc1SGhyKytyMmlwUmY2V2JLc2hrOXpkYkhLZDJqZUhaMHBXU1ZIb2NSLy9Y?=
 =?utf-8?B?NSt6WWRSTDJjd1REdDhOUklMZk91MWU0NlhTYTZ2blM4Q1ZJTWZacG82T2Nl?=
 =?utf-8?B?V1JHOXRYa0tjWU9obllrQkRncEhCT0Fqcm56ek8xMjRJUER1NlJoS1JkbUda?=
 =?utf-8?B?VDNEaWtzN0lobDJZTXpPYVNYWlFnNkVwL3g1YTNpQUZ5STFhVm5tVFBWbHlU?=
 =?utf-8?B?WWxyRTRVYnBSZHNkVlBEMHBMdWhlRGtNQ2tCei9kZmxDZ21aNWpoTy9Qc2Nl?=
 =?utf-8?B?QzY5cC90YXY2b1ZubmFNR0NlMlovUmhMQURZcXRDbmJNelN1UXI2TCtqMnhh?=
 =?utf-8?B?eHdkbFVVTTU0YVRlKzE2WlNUZS90c3VsSkpXWndKME5mZ2g2T0x1UnBNMU91?=
 =?utf-8?B?VnZDc05KMm1PM1NZMDlsWTdRZTFmeElPTjV4aFppVVdxLzJRU29LaEJLSm94?=
 =?utf-8?B?Y2FwQXdBdGhvMit2enR4dE5XdlN5SWppbEhnS1hDSlRMRWRqRSt6cUpVY2tK?=
 =?utf-8?B?RWJ6Q2lTMDFXeUx0aDZaNXFOZ1doeHQ5SWFzZExrVkNXMlQ4a1crQjdraU1F?=
 =?utf-8?B?QlQ3THFjZGJLeTV4RVdlY2hvRmw5elJMQWdkeElnaCt5YkR6cm8vZ1J2K3VV?=
 =?utf-8?B?bklSTkR6czEzNzVvNU91alZlelcySytDekpUM1NXTjh4cWJpZW9Jb1ZoNzlo?=
 =?utf-8?B?THpjNEVKWlNlanlCWTJCOTIxcWhERlc1UWhaTVZEUFBnM21DeE1waEliL2I3?=
 =?utf-8?B?emlQUkRKWmhFbnIzTWRqblRMc21XWXpUaERMRmdMK3NBWkF5SGRRUzNPS2Nk?=
 =?utf-8?B?SzFxbU11MlJiSjFUTkFEOU5renRxWFQyMkVzZmdGWkdMK2thekJiT0N3QmM5?=
 =?utf-8?B?UmxqQUpFUWtJTlhHL0VPK0cwS0JKUEdzKy9UbjRna0pEY0poV2VBY29YRTBq?=
 =?utf-8?B?cDN5ZWhQVVF1amJ5TVZaM3RkK3doaCtMd3NJSWJBZDJKMTJsZDlMWWxGM3pt?=
 =?utf-8?B?U1A0NnJTUFozZ3pmQ3BpdnZwT2RKRjl4cHlETHRPODlxMWYwVnJvYkxUTnAr?=
 =?utf-8?B?eUJlRVFwc2Y3cXYxQTdDc3ZiQ0JIU0JyZThCN3B4dmYrY0xWK2NNUWFKWUhr?=
 =?utf-8?B?VVRzU01mbGZONEx5UHh6cDgvemJVMEZpQVdlektaVHFDR2U3VmJ1R2FDcVRZ?=
 =?utf-8?Q?OM1HbpFg9CP2M3j7kSq159w=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a89a8ed-053d-408d-c17d-08db3a85abc3
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 12:09:59.2101
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lrYYedAUc221qWfPAa21LCXpER2Y5eEW7sCIFFTlcfEAVkZUr7CYoDUAVf/nfUWdPdlA1SlZTYjs2hcNJEO6VzAxSwG7JkF+AwEgMi5aV7QIgVuVKJqsaXjUb9F9ZjZa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7020
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 12:10:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59677

Hi Stephen,

On 4/11/23 02:00, Stephen Yu (Microchip) via lists.yoctoproject.org wrote:
> Hello Community,
> 
> My CMake project needs to cross compile (.c sources) using libxml2.
> 
>    *   The CMakeLists.txt has "find_package(LibXml2)"
>    *   The recipe.bb has
>       *   "DEPENDS += "libxml2"
>       *   "inherit cmake"
> 

I think you may need to inherit pkgconfig class too if your cmake relies 
on this to find packages.

Cheers,
Quentin

