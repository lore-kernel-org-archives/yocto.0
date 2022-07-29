Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B571DC00144
	for <webhook@archiver.kernel.org>; Fri, 29 Jul 2022 08:31:52 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.43])
 by mx.groups.io with SMTP id smtpd.web09.5745.1659083506693327413
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jul 2022 01:31:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=dHvQD4+y;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.43,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z0dOUX102MOZELvXJYTCfwI29rNsl24TKM6/E2+Rf4uKiG1w9WcsScZNTC1bhGAocnq62aY8Eg6DFKR/LcA+144Ir689vYh2SHnAeUp66qkbG15sgrlHw0UocnHv+DoqNH3y7Nhn2nNjJ0UZpkC5n1AVVzN2mYPcFBnejG1rfMHfB69HccE+Th/B9/ho2OE4yeJ9lDlfmew7YINiEcU5bJHrtOlJc6hMvpV5tzG6nYuSonspiljgpsiKDcmIVqhQxFXG7F+Yq6ECAKMPs7wKgRmARooriP3wOqiDF1ZLO2YnaQIdZHSS0DV7Tdi61cfUWv3bj6PUiFJwtbyJiQml6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=etNec8JZRJ952m1AtmIgfZyc/BNANGBV/FD5Mz4Qu0g=;
 b=oVJkQ+kip7pk/u0qxDafqf+y8D/ouKunaP+6CqSFb4Fl62DljZSCEFogKFi6ccHwoBSVgjWkBE0SEGX/1S1FkhliALMBrKjwyGH3pA/iohUZffGsHzN3QQzTEz0pTtgUZ+LRxE0wDPjgj6GiosPiTGJxhITIF+9Pp6SJqKv/ailQ4CnNyJQuoAYQILKXkh7XmUuOeruQcBr+cSwF2nN1qOv+NaLY90qOmbNOLcxQ9O6iKCgky5mVlyOxlF9Y2pBOVxURajlwz0kHM5mOpt2nEhJitwti+avxgpoPEr4LCfbFxLojErSmG4MCA369mXivUB2VLpBdUELEm56D0xegAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=etNec8JZRJ952m1AtmIgfZyc/BNANGBV/FD5Mz4Qu0g=;
 b=dHvQD4+y03QbCR72rAiHb5aHYkHW/rKZlk3Tl7Dc16fhCd50eInj+mPcr0jkReTiYWhIRxDgppRuluyjQCHc4/oxBCzwy9sSITKKAUUVjX83AkIR6Y3Ik2hGbq6jCD+el7Ll6yr85neIN7GO7dlChTblCJrdY7V9ul2OxuhZle0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by VI1PR04MB6976.eurprd04.prod.outlook.com (2603:10a6:803:130::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Fri, 29 Jul
 2022 08:31:41 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4%9]) with mapi id 15.20.5458.025; Fri, 29 Jul 2022
 08:31:41 +0000
Message-ID: <e4fedd4d-d986-8a82-d370-2c72273827f2@theobroma-systems.com>
Date: Fri, 29 Jul 2022 10:31:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [Need help] How to add one package to build directory of
 another package
Content-Language: en-US
To: Kuzemko Aleksandr <kuzemkoyocto@gmail.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <6148E1EA-62EF-485E-BEE1-035DB5CBF79E@hxcore.ol>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <6148E1EA-62EF-485E-BEE1-035DB5CBF79E@hxcore.ol>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0094.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::9) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 42605e01-5f66-4071-f615-08da713cc368
X-MS-TrafficTypeDiagnostic: VI1PR04MB6976:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/24cBjKSf8vVFLqnHjcn2QK5VIpLRNdyVKPdU5N4WMeAskZsTUK7mNDW1GVCI/brMWsfYna6PCg0ZJf+Zbd4ImY3d85SJvxav9+TFjEpGinDiyyxeZR5j345T41iHU99b5EKrLPHzwWXR90uH5aAiaWz09QJMR/DfAfKDCG4dZ6oxwH6NG1Rh/cYxnmVzy8/bVDDkTB26U8Si8zX/49SYUSH0ipgpYts3ViumnJaFhB+tT1cDeimXeLEnd+rkRrEWZhEmG3bh5SHWX733d2g3Ft0POwT9PXe3IOzce9THEvSDgc3LOxzXMoNurAto9gIGT5UocKMtNp3SOGYaHy+iF4+u6VA9ft/V/a1Mv9rdeKR/hqd7/R6bdgp2H7026kuO519+UZ07kzN3RqEhLpqLWkwlbYqm/1J7VyUbkqGhN5cnEQoNM5OcLKnJWtuvOgNqBi3MkF9bXgauCVOrVZI5UHVX0R35R90CXANo/XUSJnsUEMFX+2PxlQ2eMeMsAvdVaSKKmxJ9OnpqdWdzxIzW2K56e0mFbe0YFM2w06wAhuLcU5IoV7QjB+WtUCXucXatah9r2p+wiBliR//ideZLqVYIBqkcCt2hPulzgaSV7x1MOzT/W5S1Rnz+XtuQFSUtdoZbsw2oN54BLWP2W5DE0Da95KWjWBExusRh0hBytGTo1COpI50uQwBeNf9ks6hW2rNwsIs/XyYdxlEE62Yc2IWtPf9MhRnV+RM7b2N5wzADsOKC4dew2x8L7o0WjpVTJv73pgq320FoTf2NAtoXeQtC6Al4yipVpt4uGbz7IPYe08dnf9si9Kol/q5y8Z3FneOsyczGsC/RtLdnDR8fB71K4+fU90xbesnzNGwJTlAUCv6sucrhQxwruJhSK+jJ2LBVbt72ci8K+XfZO+EIg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(39840400004)(346002)(376002)(396003)(366004)(136003)(41300700001)(478600001)(6512007)(2906002)(6506007)(8936002)(5660300002)(36756003)(31696002)(26005)(44832011)(86362001)(31686004)(53546011)(966005)(6486002)(110136005)(38100700002)(2616005)(186003)(83380400001)(66556008)(8676002)(66476007)(316002)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dTMzRDlTYW1IVmdaQzZkOEFtaytKTnZnZDQxN3ZQdklCT3JkOWRKUmEyeGp2?=
 =?utf-8?B?bDJON01YSSsreVA3eFBYNmxWUWV4ekhIY0ZueG0zcEdoaVZwbTZKVXA3dS9V?=
 =?utf-8?B?NTA4YWRDSEpxU2NLaTdCR2xmWHd2L1pwQXQyZHFha2NvN3d5WjIzdEoxNWhW?=
 =?utf-8?B?OHhkQyswRDg1QU1QRVBvYVJjUWRYSzdGbWlrUFM3djJOS3dvcU0vVHI0VzVI?=
 =?utf-8?B?dkRoZFNSdEtnSUprWi9Bd2VnSFlMNWpPZ3Z1UlY3eDJvZ040eTVzTFI0MzJv?=
 =?utf-8?B?OUYwd0MvYnpWOUR4NWJrNmxoS0V4TXRNZ0ZqT25pbjhQcVlkckh6UHFNNTcw?=
 =?utf-8?B?emY4ZndEOGNrMEwxLzI3ejRWeEFIOVd0VktYRTgyQ0FYV3UrRWNDdHVrQkFK?=
 =?utf-8?B?NlpvZzRvTWxYMUNTNGNyTnFDNHR5QUtMMnRDQ2tYalByeE9QOFNIWkpvUVdC?=
 =?utf-8?B?SVgvTi9RaGNYeHh3UCtpdmJ4M1N0eFJQOE0yNU9Sak9JdVJFM2JGajB5bjBl?=
 =?utf-8?B?WDF4UkJSbUtXb05yOUZsclJOQ1VhcnhnYzRWRXpJM1RheVFyWWtOeVRNaDE3?=
 =?utf-8?B?S3BhRXNvc1BYMmZBenRPRHlUaHM4bC9CTGtOTzErcXJ6bDdSK3pSa3RpQ3Ja?=
 =?utf-8?B?TUkrTWtGcWMydS93R2RLWVU5YVRRM2VTdmJnV0F2TEZWbXpPMzdmaTV1Nmsv?=
 =?utf-8?B?SE9qVUcvenBvK1RtT0RqRyszWWluUTdlQkxnWXQ2WE5Rb2dKTkdENUYxZlda?=
 =?utf-8?B?UmNZbVNJamlrUDN2bmFvcE5VSlJPcHNOQ21rUVQva3pXVTJRWXFYdC9pR25p?=
 =?utf-8?B?ZmRua0xHb3NKc1RoZWNaUG9YQVNlTFpUb1VmVlRSRkI2eDBSTGxuSWJNS1JR?=
 =?utf-8?B?Y3FHNEZ1VFZ2a2M3ZWtBd2Z0QVVvUXJPREtvZFRHVjJlY0FBaXlHSVN0UUhM?=
 =?utf-8?B?WmZtRzlOR1dJY1N5VmRXNU1EcW1MQXAyMlBaM0ZTV2VIV1I5Z3dDZll5alZW?=
 =?utf-8?B?R3d0SHdQLzNQdGZyOWJ3TnVWZ1hLQzVtWXlsVG1sdHBNWXllRU9DcDA1OHFi?=
 =?utf-8?B?T2s2eFlFN1VRR1BLZjNYS1BHdDRMeFY2L001YjBxWTExeWhpM3czcFc0ME81?=
 =?utf-8?B?YTJjNGJnVWlVQkxmazhHU0w2a0RuRnFzWE81bjFtVEhQbTQxMmI3aVlQNXNH?=
 =?utf-8?B?OVN6SHZqNyttOEZlUTZNNkNLOTlaTkFQMEQ1Y0VhUVIyZUUzY1dqV1hoRmQ5?=
 =?utf-8?B?dzRRRXBEcGlKU1VpdThxdkgvYU43aEJ2RWtrcW4ybnBHVGd4TjFkelMycmEz?=
 =?utf-8?B?SHpHQzBEN1NYN2V3OGc4NWttWXU4cHdZTzJNa1YxYlZ6SXhDZzVlQ2hQMGps?=
 =?utf-8?B?NTFoNkNaZmVnMVhodU9ML2hMTEdxQ1Z0MkgrcXluM3VKaUxOKzlONkF1dk9x?=
 =?utf-8?B?eDZ0Wm9RSm0xd1FpcmFrcFR4VHp0Wkp5cG1HMmVpcDd2clVXaTlSdDZNS0sz?=
 =?utf-8?B?TzRhUmZzcEtBejN3bFlHa0kxbENBVGxnZmo1WmNCNUpBZUlpUVZ1dEl4c051?=
 =?utf-8?B?Q1Fna2F4YytXR2lOb09aUGdpSWZZZ3hMTTYyMDk1a2k5ditKbHBTekxFTXNM?=
 =?utf-8?B?OXpuWEpvN3ZQYlcrR1BYN3NUSzEyVFQydHNHeHRmRmt1cTdLT0lqd0FnRWcx?=
 =?utf-8?B?ZnU0ODV3MkgxNXh5YytmQnphOUdTcFIrUWs1Q2RLYTkxWndMdWhNKzdONkw0?=
 =?utf-8?B?SW82ZXlDbGhTZWYzWUd0NWkzUi9mb3ptbGh2Q3lpdVJrUEZYSStrY2xrSDF2?=
 =?utf-8?B?NG55QlRzRng2QUw5N3lwRGljNThYUk04cEVsanhORWk3czFCeldEYjVWWkpE?=
 =?utf-8?B?S1VsNERldE92RDk3VVZmcUs3K2pVZTlCMHFSSm9HbzBFZnZTeHcxRzc1QnV4?=
 =?utf-8?B?SkJhbTZ4T3I3RmI2MUJxZUhjbTFESVFHeHhCYm5uMFRmYUV5ZnEvdit0MkUw?=
 =?utf-8?B?QVJVV2l2TXk4ekg1N25nWEhQUWVCbnhlcm03NVBZQmJ1eXJXYStIM2RPVml0?=
 =?utf-8?B?MTZPVStEc2JPRmlJOEpUREpUVmJ0eXgxYlNWVVRjVUdyWkJHRVExeitSdFd5?=
 =?utf-8?B?cml5SjBnSklURnBBTVA2Vk1PdjEzTkJlMVRrbmJXZEdTaE43dkdqaUUxcU4r?=
 =?utf-8?Q?sRe18IPYYbc91pcWeA1dpHc=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 42605e01-5f66-4071-f615-08da713cc368
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2022 08:31:41.7696
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 MNAT2+0HOdqeFCUKvwpctv1mJ68vHbegNsl/gU2uZ2kc+8tv9eKOEbbVunJ5QHPadevYxxXcX2HkyZzhyL6ACFmfsODWF1nEBGV6xkHXkoIqGn5PMrif3oUllr0h+ID4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6976
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Jul 2022 08:31:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57688

Hi,

On 7/28/22 19:14, Kuzemko Aleksandr wrote:
> Hello all. This is my first work with Yocto.
> 
> I build b2qt for qt6 dev (follow
> https://raymii.org/s/tutorials/Yocto_boot2qt_for_the_Raspberry_Pi_4_both_Qt_6_and_Qt_5.html
> <https://urldefense.proofpoint.com/v2/url?u=https-3A__raymii.org_s_tutorials_Yocto-5Fboot2qt-5Ffor-5Fthe-5FRaspberry-5FPi-5F4-5Fboth-5FQt-5F6-5Fand-5FQt-5F5.html&d=DwMFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=c_i3MaPo6ffKKQtAL2EgesCHFHsSQRbKkv-lEgDTmdFnvMZU_1wMkdsDy5rL2C63&s=xBxzYNFdfAtCmLpM_fqzrlUktQ0MnxSfXaruWaqUQ3M&e=>
> instruction)
> 
> It build fine.
> 
> Now I want to add some packages (libdotconf and speech-dispatcher). I found old
> version of it here
> http://git.openembedded.org/openembedded/plain/recipes/speech-dispatcher/
> <https://urldefense.proofpoint.com/v2/url?u=http-3A__git.openembedded.org_openembedded_plain_recipes_speech-2Ddispatcher_&d=DwMFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=c_i3MaPo6ffKKQtAL2EgesCHFHsSQRbKkv-lEgDTmdFnvMZU_1wMkdsDy5rL2C63&s=daEJD6JsGX9B2YDJXUIxgWO5hoabsYoVLBO2EK1A7Lw&e=>
> and http://git.openembedded.org/openembedded/plain/recipes/libdotconf/
> <https://urldefense.proofpoint.com/v2/url?u=http-3A__git.openembedded.org_openembedded_plain_recipes_libdotconf_&d=DwMFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=c_i3MaPo6ffKKQtAL2EgesCHFHsSQRbKkv-lEgDTmdFnvMZU_1wMkdsDy5rL2C63&s=joXx1PvDY27D_crWkeGBjwBzXTATcT_g4KeIQGOxcqI&e=>
> 
> I trying to update it for new releases. My changes is here
> https://github.com/Kuzma30/meta-myconf
> <https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_Kuzma30_meta-2Dmyconf&d=DwMFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=c_i3MaPo6ffKKQtAL2EgesCHFHsSQRbKkv-lEgDTmdFnvMZU_1wMkdsDy5rL2C63&s=8VkhyIOGEoZkkGHPaRdNU18yQb-37ULpZZW2fGkL0g4&e=>
> 
>    when i run bitbake speech-dispatcher I get this error
> 
> checking for dotconf >= 1.3.. no
> 
> | configure: error: Package requirements (dotconf >= 1.3) were not met:
> 
> |
> 
> | No package 'dotconf' found
> 
> |
> 
> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> 
> | installed software in a non-standard prefix.
> 
> |
> 
> | Alternatively, you may set the environment variables DOTCONF_CFLAGS
> 
> | and DOTCONF_LIBS to avoid the need to call pkg-config.
> 
> | See the pkg-config man page for more details.
> 
> more info is here
> https://github.com/Kuzma30/meta-myconf/blob/main/recipes-multimedia/libdotconf/log
> <https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_Kuzma30_meta-2Dmyconf_blob_main_recipes-2Dmultimedia_libdotconf_log&d=DwMFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=c_i3MaPo6ffKKQtAL2EgesCHFHsSQRbKkv-lEgDTmdFnvMZU_1wMkdsDy5rL2C63&s=O_v12F2fX1XevhN9blyuP5HidwfNa01GcWE-D0Q6VcQ&e=>
> 
> Question
> 
> How to add libdotconf to the speech-dispatcher build environment?
> 

DEPENDS += "libdotconf"

in speech-dispatcher recipe. This adds a dependency on libdotconf target 
recipe so that it makes it to the sysroot of the speech-dispatcher 
recipe at build time.

I had a quick glance at your layer and it seems you're targeting 
kirkstone release but you're still using the old override syntax. Please 
read 
https://docs.yoctoproject.org/migration-guides/migration-3.4.html#override-syntax-changes 
(and the migration guides of all releases between the one supported by 
the original recipe you got speech dispatcher from so that all required 
changes are made).

E.g. it's not FILES_${PN} anymore but FILES:${PN}.

Cheers,
Quentin

> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57663): https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_g_yocto_message_57663&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=c_i3MaPo6ffKKQtAL2EgesCHFHsSQRbKkv-lEgDTmdFnvMZU_1wMkdsDy5rL2C63&s=s6659odmXqweDgGoyqWCDKOodVstQ1MZdNtIsJz5pBM&e=
> Mute This Topic: https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_mt_92675007_6293953&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=c_i3MaPo6ffKKQtAL2EgesCHFHsSQRbKkv-lEgDTmdFnvMZU_1wMkdsDy5rL2C63&s=kuh6AkLsrgETcXWCrffQ2QlArIjPZnspezjip4n4J_k&e=
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_g_yocto_unsub&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=c_i3MaPo6ffKKQtAL2EgesCHFHsSQRbKkv-lEgDTmdFnvMZU_1wMkdsDy5rL2C63&s=zeQXkGxxKX67vIHLI2NnwtmFTE2pXojILy-dbshgtk4&e=  [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

