Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1013AC54EAA
	for <webhook@archiver.kernel.org>; Mon, 30 Jan 2023 09:31:47 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.37046.1675071097233751577
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 01:31:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=kv5FNlx2;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=139497dc38=mingli.yu@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30U8OtQc025559;
	Mon, 30 Jan 2023 09:31:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=VkRklI95nsuPnrw8fDMzWgXUfFaNqytccAaBtIxZgrM=;
 b=kv5FNlx2SgKlgo1lgj5arnRa4aM3f7z6thbCOWYfBOM3nAHxxxHw+cQUrnL2bAUIi3ab
 UeqDV8qTDheahEHcnJwiWea7fKdxUcAJmlUdxQ+cLSS+RTnCYJhmTQgavMaNubgnkak5
 S/3n6EME4q0HrWwRQoRabtJGZk+6i3AtPO46TGskJE65UYC69yQckgYRuk1RGOTagY2U
 aEiqthNoHcfkzfeaJs9UzHq4YA8rp3TwYVWwWFlbVXbS4iREIBIjtECv5S39mtBR3FKr
 LOHyBeVICkU1DZJMYzQvKCyCq8HDA1/DZ6U3F+D/U2yxAt12IWrLPAkL7Tipa/Gz1uV1 6Q== 
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2174.outbound.protection.outlook.com [104.47.73.174])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3nctpat0gs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Jan 2023 09:31:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a0+x1HUiLsxlcyoIjc+86+u2B0GZEBVqvH2R8PA6SoeEDRp0u1BYt8GfnIbs/KnwoBgKp+7YUpF7EdDEdGOqq793a+UXkoQhq6xa8ovUKjbzXnGT+BuJeSOiWyZQyZEs9zgFR/tv3ryjyAYQFwtWtw5/wul3As4iW8Sn6D7eTsVda0sSM4nmkyUKvT6v7wi5Jq94nwszJXL9ONnuHz4PLmcMu5uEGdYGt/+CeW72WgPfYtuu05TA7bJmgy+oyVdLnDcdbvJy1JdYk9/pPuftaawhnIyKY46H5OOUimSrcQeW8AIotrI+JQgL/0NVEsKMTjZaq8gsm2gwvZUNyMY7YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VkRklI95nsuPnrw8fDMzWgXUfFaNqytccAaBtIxZgrM=;
 b=EsqD60cKKGsYEvVrqCzCVyTLYsGFuBIVqwzMcSQfLxtoLTn64SuSn9sSzimlpdVTQuUrOjhyA3XTilJZeBT29ChKYcTbWziTJVHrWjyJjIzdcOYr+F1/C8jaA1qTvnfwIMNBaN3cbf2U5R7wapQEkLLaxYlkpZwXtCEcs2JpRRkFnGESE6MWOS95lwP2AQIsPrfLXs+qyjpeldl0httwjYY8z5pcBNultR1uocxhdYjHI8cnmMzJCylPA5LWgR6vD9+qGcD0MgdTBhUz8WTnftv6tlnlxzXZQXgQcwoftH2D8UzJvSKMbgz/fFPak69l04KWmM/2iaa/ncsTVNquWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by MN2PR11MB4549.namprd11.prod.outlook.com (2603:10b6:208:26d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 09:31:30 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::c0fd:6b71:8808:4c21]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::c0fd:6b71:8808:4c21%7]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 09:31:30 +0000
Message-ID: <5ca660fd-f3ac-ddc3-bd37-3673dd1c4423@windriver.com>
Date: Mon, 30 Jan 2023 17:31:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [meta-gplv2][PATCH] readline: add config file for
 pkgconfig
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Yu, Mingli" <mingli.yu@eng.windriver.com>,
        yocto@lists.yoctoproject.org
References: <16E4FF25202E130D.32496@lists.yoctoproject.org>
 <a9a02594-cf52-8c2f-758a-4f0cf2bb3ec1@windriver.com>
 <fa6c1e3f95c9f60e0303ee3914246fe8173d638b.camel@linuxfoundation.org>
From: "Yu, Mingli" <mingli.yu@windriver.com>
In-Reply-To: <fa6c1e3f95c9f60e0303ee3914246fe8173d638b.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR04CA0014.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::24) To CO1PR11MB5009.namprd11.prod.outlook.com
 (2603:10b6:303:9e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5009:EE_|MN2PR11MB4549:EE_
X-MS-Office365-Filtering-Correlation-Id: 99c0a44b-4ed0-4faf-bc4c-08db02a4c4c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	P/Aq5D6BE3huTTXXnsytRAyZHBhZcFLCEQDdcH/zbwwpcuj2JEdCwwbmETUqXp9M4p0ef+YYP+BxO3r6wGDjB2imxWelXeS+Ydu51j8Ga7YQ8ILy/pMmNF13WPDHy2hOmYogdktEabR4GL0V7Na2gMSkdELn36VTCLHXGIlKWZA6loe43nw8PXE7Zz9uY5tQ+5anwEaewKFo5tWwRKmrtctLwx82nb2R2FlikAIvVrXyaWV+Xeef+LXG1F/W6DCnl8Z1DYYylrl16e5dLPde6l15Q5PbMKPzvW/BeV9w/xM74qZViEgS0HoZPVxE7EbrOsXVTmmhWmegl5LAZGI0jHBbTWndm/mcvtyRviL5FnWjE+T74AqO/a2A3hROZUoXsWiHb4xjvZur+hP1O6ElzqYbgIvGLh1acRvvImGEuLfLjZkRjiaXD6di6uTncADDokLlavgPOMpjSjvDQk+U749Y6OADUIZGzoI/7knBlEz+bNxvxLoaecv4ekNOQcMosA2S0iSVaj1Ac6DVTOVxYf1IBrBetW4C7bgHhqma++w16jTabyG43MJrnuuoB9HvAQjWfdGcidMpK03wv76EsEmiXEWW/COvZFtGNjsFyhrWLOCaluQUwPTfL8Kn8e22lPNB9ZndDhPFtAwoJ6uzS7G3xV7dIU5f1nZdsXixUI0IzA5Zypv3QFvSayggnMIoPYXoRJ15vgvtQqhRpIAITxMzNOjr4GPTiCKUZgC1HdEPmTEpBgP0bvsbglCGPyQ0r01opymIjgXq3IKrHkO9rw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5009.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(366004)(396003)(136003)(39850400004)(376002)(451199018)(31686004)(36756003)(6666004)(41300700001)(478600001)(6486002)(2906002)(966005)(110136005)(38100700002)(86362001)(31696002)(2616005)(6506007)(53546011)(8676002)(66946007)(66556008)(4744005)(316002)(8936002)(5660300002)(26005)(66476007)(186003)(6512007)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UVpYNDc2bThXUHN4bHBUZ2JsT3M2REJRQ243Rmpjc01CL2F2bWZMaXhzRjRh?=
 =?utf-8?B?T091L2p4cUJkQnFTTXpjdHYvNkRwWmRzOXYydGNsbDhLMGJRbFFTaWlVZEhm?=
 =?utf-8?B?Qmg2MDd6TzYrRTBacXJ2bysxZzQySjlQNmlqby9BVCt4dHVraEY3QWNidm00?=
 =?utf-8?B?b2FydWdpSlFEbys0dU1Pc0s0MWFkN29GRWVYV2xkSjhpZmh0eFFQLzZFWFZh?=
 =?utf-8?B?VXdjeHVZVEZTdjNZYStrVDdkMi92Z0UvUFNqNzNHRm9oWFlybHRtVEtaZWh3?=
 =?utf-8?B?b04rVkRGeXpDUTRUM2ZoK28rR1Y1TExyazlmaVFjY0FFNEVvcjRYUGdKTDN4?=
 =?utf-8?B?ZjFBaVp3d3pnTno1cmZRUEF6K0FTcVl0YzZidTFaVis4LzM1ZHJmYmtibEFF?=
 =?utf-8?B?ZTk0bXpjc3V4NWJPWnZwL0RtSmtrNW9qbmxvaGV1UHk1THp3MExtWXBzelU5?=
 =?utf-8?B?VVEwdE4zc1lFVVFIZHdHK1plUXhVZmJveEJFMkhBZ0Q3WGFZOFd5N0FUYTBu?=
 =?utf-8?B?OWtiaVF4eEVwSTltQnAxREl5ZHFmWjQwOENjcmlzcENNRGZPMGM1Ui9DOWQ1?=
 =?utf-8?B?cXFuRjdKQnQvdFpYMnBYa080OGtGbkI5UlJ1dkhUcGRxY3BZZUZ3eE43bmVq?=
 =?utf-8?B?MzdZZTZxd1NWdDVwb1ppQWZsQUJyMDV2bGZNQmcyN2NmNi90MjFmRjBnUDFG?=
 =?utf-8?B?Q1dXblJJejBNclhDSFNzU2h1Q2Z4SUVGVDdYMExVU280cTlVYmhuWUZQOUVx?=
 =?utf-8?B?RGsrQzlpZUxVUzN3Q0c2MmFWZ1JVTDRWakJRd0YwS2RQVEhrdUFEUUtENS9m?=
 =?utf-8?B?T3c5Smd2SkRUaXVLVktucjV0cTJmcXhJNnZIRzlZM3cwYXlySXpTRWdNM2ow?=
 =?utf-8?B?dlFXMHo4WFNOU3pyK1gwR2pLVlRJbGJKN1dhS2gwaWd3cVpvRE81YnJRZTdY?=
 =?utf-8?B?R3lOa25BUXhhUUtRODdTaUovaVVmR2VZZ1NSWmpYNitTR0xOUjFRRjBzSmFu?=
 =?utf-8?B?N1daVEFRakhpdWdRVnA0SDBTUW52M0xnaWVDU0tDUldTM2RHWUdvSXdCdG4x?=
 =?utf-8?B?RG1senJlazhwTGc1eVNqcXZ4WlZ3UCtJcVE3Qy83T2NqQ1pIWTZmM0RNUU9S?=
 =?utf-8?B?UXQ0QWdIZlEzbDVHQ0Jlb1grU3VETnU2T1ZUeUVqTi95SGhhbVIxdGxyYzBG?=
 =?utf-8?B?V0J0dTVRWDhHMW82Y0ljSmFNd09RQ0lFNjdjS1oyTG9vOUF2bDZVK1hhd2Z6?=
 =?utf-8?B?L2gzZVVhaEMvQ3BDVVhQc3hVVjhFKzUzRk1MclVxMEFwYU5qRmt5YW5oeVh1?=
 =?utf-8?B?Y0o2R1ZrTm1Ecnd4MDJEU1dlRStDcEJtcENRSHpnNGZJVTVjNjIyQklPVnVp?=
 =?utf-8?B?TVQweFVHLytsZVNITDVJMG9lRGlvT2JnTUJaSUR3b3hNQmszN3hObFR4aTEw?=
 =?utf-8?B?VGU0MzNZaWZvNXExYkZocXJISzl0emVPVmNkYlhQVGhSbDhhbkNGL3NCSW9s?=
 =?utf-8?B?NG1RTjhkSkdNOVFwa3RuV0UvOGp6djdaSHB2cTNWM1p2SmtjRGlYbTNneFA5?=
 =?utf-8?B?Um5ycnpBNjZJdlhWUllBYUw5am5VaUZRZCtRV0l5T2hzSWtQL2pCREFiNUpB?=
 =?utf-8?B?bUJESzN4QTMwODBCQXVSemxib2lXTytTV0NFWnJmYWttWnh4UldyZ3V1RGNO?=
 =?utf-8?B?T2hJUm4wUW5WUkE5V001QjBEajI3WmZPR21Rd29vdmV1YkQ1cmJQV2IzSHF2?=
 =?utf-8?B?QkppOXpVVG1zTUZHcU12YzErbkEzMkpsbFBEcWNneW1mbDlPeWVGY3ZsT05W?=
 =?utf-8?B?b0dVYlNhMVR0YzZlRDRndUQvbEhtejBaMXhKbzRMWXFCTmVMbGFjQ1YycjhS?=
 =?utf-8?B?Um5qOFp5S096UlBiaGRwMm0wV1JZVTNYd3NhRDhoVVNvdTM0MlljNDZCWm5L?=
 =?utf-8?B?TjhJMGxCSzJIbnk3ZW94WnVCNy8wT042YWd6MlY1S2ZKUDNXRm5LSHR5QUEw?=
 =?utf-8?B?TzJnK3NiQ0k2K3JXRnlPdHRyTXBZeHZkN0JtMkZvU3dWWWZyajFEUUZjV3Zj?=
 =?utf-8?B?RXV2NnAzanNiR094ZFpwOWhWVGltakJBaGhCbEdrOE5MV05XaWNsOEt6c1I2?=
 =?utf-8?B?R2g3Z1lmcnhob2hIUElNWjRRT1RJYU0yOUZPZVU0VGpPNzhVUzJXOXY0Ym1T?=
 =?utf-8?B?UVE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99c0a44b-4ed0-4faf-bc4c-08db02a4c4c6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 09:31:30.4663
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: efANAg4UFjsKu8VLv8RqGdHMZnoxKRiCcOpgLbsve2se5LAhE6pDhWy5QRhfJLYlfgl8cjSrpYW02r7aCaarWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4549
X-Proofpoint-GUID: fraE9B1v-LNILNNI2uTMz-smXQbULf06
X-Proofpoint-ORIG-GUID: fraE9B1v-LNILNNI2uTMz-smXQbULf06
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-30_07,2023-01-27_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 mlxscore=0 clxscore=1011 adultscore=0
 mlxlogscore=767 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301300091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 09:31:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59098



On 1/18/23 22:50, Richard Purdie wrote:
> CAUTION: This email comes from a non Wind River email account!
> Do not click links or open attachments unless you recognize the sender and know the content is safe.
> 
> On Wed, 2023-01-18 at 16:43 +0800, Yu, Mingli wrote:
>> Ping.
>>
>> Thanks,
>>
> 
> It is no longer maintained.
> 
> https://git.yoctoproject.org/meta-gplv2/commit/?id=43bf0e8d5985945d19d01f94bfbbda420c4435f3

Thanks for the info!

> 
> Cheers,
> 
> Richard

