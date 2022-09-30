Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F49BC433F5
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 12:04:28 +0000 (UTC)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.78])
 by mx.groups.io with SMTP id smtpd.web09.4741.1664539458778591370
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 05:04:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1
 header.b=Ac+5DL/S;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.1.78,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MvfEoF0soffULayPWlj6EYuJcuQUw3r/u4MapX9X9/auPual8wOm0w7iQNwLjbu/vuNSOnr35CmjooBqm+gIqbCImMgTh7EyRKJKjcdUynM4bYEKbqXMD0L/lpRBq1IN0xo4Oa13UwYePdKEJvbp+xIoUN8Z/GE+7yofLkDytyQ3GlW5hLCOfAWS0IBz4HPca7pSQeEw48fZMtP82CgZ7ftskXprNYQ0n5GW4StiFxX7BJ9lWeo/FwbnY+SgheBFEPRNhr++tWOFfMKx3eezQKu2Pgx2K0Iz+VluWgfpka+u6HbCHWjce4uT6inR7cS7r1hz07GeuHQ8x65Bjszxag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IPwvMmGRrNAzCqsoysHQdVrSPPyEm1QocQKR5Ly6BUw=;
 b=T3EZYtNCOwtteb7k1r8XzbyGONH+7BGc9YSQtL+DtfDskSY33w0wAv1EOsqsJr49N8tKWQBmkD0lTguJpXs4ccw6uhJqtjilw6DnwKWz4JjC35D5sT6pUv/Xg60RMlZGvFy5OLdauvWaFN8/P0n02wZ2WfJEw91R0AQ+ULIAyRSIjCnUEcj4ck2bH6o0EWIJ8Y/i/+1RqzZHWpKAYNp2fdkGPw7O523kAQ/jEkVG9cPiyqAPdcluEcZWX2vjoJLcM7PMIAuqHaL/DQu4g3eTOAbake4B4fkwiF9voteNVkdVvrvohNORQy/3WTjTocnFAq19cJYHxQBs/2BmHzXpqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IPwvMmGRrNAzCqsoysHQdVrSPPyEm1QocQKR5Ly6BUw=;
 b=Ac+5DL/S6ilzxFLywxSSOY/8Y+HFkbw4ErJpUmjebG+81gvChvDhPs2fC4x1LlL9I4Xcpg4x1cJj0BSsY0oXpUSvpQjy70A1OUKyGpKnKjbx0JYir3aWZf/f4C4Nv29aeb7KxMw9ja2Km8ZamcnQRt4xhkCvf1KCBYvjWiqwLwtVb05M20jUIURC3zK8WCge1mfaMDG5QAfPC5Kk4wPhrq3rHG/WrQcD+wC+rV8UfJqJxlHFIgrlFykm0HQ7eKwMcDT5pKyhW9yrvgQl75ylxHhrqxh+4Oqsynbja4P9a3D2rDzTFEK89D7uhhjYZlPCM+xYnnvLABSzqu5E01X/3g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by GV1PR04MB9215.eurprd04.prod.outlook.com (2603:10a6:150:2a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Fri, 30 Sep
 2022 12:04:14 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 12:04:14 +0000
Message-ID: <ff8eafe3-c02a-0aff-74bc-ba18b6e0e733@theobroma-systems.com>
Date: Fri, 30 Sep 2022 14:04:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [yocto] [meta-rockchip][PATCH] layers: Add langdale to
 LAYERSERIES_COMPAT
Content-Language: en-US
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com
References: <20220929234506.3681015-1-raj.khem@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220929234506.3681015-1-raj.khem@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0044.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::7) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|GV1PR04MB9215:EE_
X-MS-Office365-Filtering-Correlation-Id: 86f19798-1669-471e-981d-08daa2dbe460
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BOcZEdf24dbtGtMj4ilbKNw7zbxWgV2pb59O9n0nIIQO33r8+aofEg2ibAWzo66YpKMs7TDyNidsnVLn02GlVyTfa7+C//2sEnoKOrjOLBCjknpS61LhdCd4hoQIsqdUO9z8Pm1z3dSEwiZXviUzm+8YRmlHYjEPbZKsl4uGCKGSRpW9cw5RGERvtILqJj6f0itCjqH5oD/kKnhAzKQ2raRPzeBw7RMV9sYWRI7ULfIghoiFluFotmQq7SSYQkkYmbI/ZVtKeNTgovCwVjF4LQtS3XddrvprrYU4ZfLdRg1GlGqstyW8EWh4C1Z4nNsXm4+dVwuTaROd2CArqIlZhOeUH9J++Aa64ApQ4rriERsxJVp4klhXU1CRouV/HusGh0f1Yx7B11kWbXnhC1wOlnfGrXdtXlAiSy+beIfBhm3Q0/or+srocPgxo20/Psb1txOVruq1ga5zftps9d/od3RzCbJC8wvZrZkhIdysJTVCvlMjzxQzH3lXm++04T81oW/iydyEdlRuc1llxGF4QuaC/lwVu7IMZv6z/ot8u0/ny8rdyNWtEt1SFyOk9ILvEzUpVt3NuDQoxS8eGZHroSqonyXOgP5r189lSJeAb4c8vz+Dd823s48UfjsGZJm+UCqpALOWAzNLrWw91omUzJIfB5mUE7mLXU2xyOwQcw2TTq/3YUj9O80upKKDlZw4xY6iGpJ+HkgdVMcXYI9n+q4hKEouAgt8Jhscqku/f8i8HffiVWyKq3x6VQ/zKjMIDPWDhEtkIBl0JoceV+y6Pb+8aaZS/17ZLBojmZ1LcLA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39850400004)(346002)(376002)(136003)(396003)(366004)(451199015)(44832011)(4744005)(6486002)(31686004)(478600001)(5660300002)(8676002)(26005)(6512007)(86362001)(8936002)(6506007)(2906002)(4326008)(316002)(41300700001)(31696002)(38100700002)(2616005)(66556008)(53546011)(66946007)(66476007)(36756003)(186003)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TmFFSzNvYlZ5RmlFaXZFR3QzU21RUzFwc0J4Yno1cWU1UXZiWGF1MUExTDVv?=
 =?utf-8?B?emlYQmExYWhKNFU5b0U5b3hsTm9WVWRTTStkM1owbWJWeG5WWkF0NVA3ZGJo?=
 =?utf-8?B?YzE3T0h0czltdlVPOVBiSzFJT2hEaDIzc3JvY0d3NmR4U05sT0JmNGNMcEpt?=
 =?utf-8?B?UUUvT1M0NXhNSC92YmVGMXROekRmUnh5OXJEa1FiQjNRQ2VPemJSYW1wcXZi?=
 =?utf-8?B?U1NMaHBJamp3ZGw3c1F5cjgzdVRlZSswWWFpeVZRU0JYL01KTGJRS1hRY3Yz?=
 =?utf-8?B?RHhma002djF3bW9LSG4zQ1I2STFzeUlVUEp2WllSNTZiVmtwVCtaWDgzT3hn?=
 =?utf-8?B?RTltTVBrcmhPcmplWGRDSnp5R0pWU1FmUUViN0V5d3VWSFpUUTVmVmFZaW83?=
 =?utf-8?B?aHcwSjM4RHZ3NXFZbVdQbC96eThKb3cvRmIxS1ZTQkF5VDM4YXVXMUhZL2lp?=
 =?utf-8?B?MFpUaHdsSDIydU1ZVWFXRldNUlBqK1czYlk0SG13bDlySFhTTUJSZTFtd2or?=
 =?utf-8?B?U3pRcEllWlIva1JWRzBzQ2M0Q3h0WnFUMEZlMG5UckMxZWpSeHgyYkFGeEdH?=
 =?utf-8?B?V29DaFUrQ0VUQ2JkaHY1WXRFTWNVL2YwV2lLTytLK3JablJMdkhLMCtHMDdF?=
 =?utf-8?B?VStpdWNiNWNjNFh4WFgxTENIT2JxNkxHNVE4L1ZaUGN2SXd2bjkyWmxKM2Uw?=
 =?utf-8?B?ckUyUWNBOWZHVFpWUFJzc2NZMTNCSlZDS1RtZVBmMUwrZE1TcFZvRy9Fd3FI?=
 =?utf-8?B?allEMFNEc2JNaUh5SWpmeUszSk5ZeWk3YmRBblA3Y0dVSDdHaFdGckZocDhl?=
 =?utf-8?B?ZWlnRWVzNFNiekVUY1RNTzBvNVl4cFRRREFqREI4Vk5pZ0JiQUhCRUsybFBm?=
 =?utf-8?B?RWRpNExuNUNwbmxHS0Y4RHNUSzJYYkpwb0pZSTQ2VzRraVNhbWJBellqYTZY?=
 =?utf-8?B?Rm1BSVJhZ2Iwb3paVVJjUlRMblVONEthVng3VjQxMXdvSkgwNUxORXZDYno0?=
 =?utf-8?B?cEg5b2h3OXhBQXpkYldyZ3g3dUtRWno3WVJtMXliaFlMWWU3NmtGRHJ5cXVm?=
 =?utf-8?B?aXBWYXVML0lLOUV4UGNQZEltTzBodUxpbW9Za0U1cHhGSFR5SlRqb2ZPc3hO?=
 =?utf-8?B?aTVaSHAvQ2tBamE5OCttQ0hTNmJxVVpGLzRNUTFuRldtL0tpQnpzWE92djdL?=
 =?utf-8?B?dlNzVTAyRlNSc0pqYVFkTGZLNUdPaWtFR2RLeDFhUHlSZ1dONnE5ZCtlVFc4?=
 =?utf-8?B?Z0NjSUtLNlRkOXdlNE5kaDlieXdwc1hEMGQzTzBtenVOUXBZdVU1SlcwOVBu?=
 =?utf-8?B?dTBMK1hxRUtZL2JZUWVHemEyTUUvQ0hyM1BsRGFHd2w2Sm9IekVLa1lGUzhV?=
 =?utf-8?B?TUNrUEhhbHpuTjdNSVdLTm1odjduZmVTLzV3bXlJbXNOZ1FwYWRjR2JtSlVs?=
 =?utf-8?B?TlppMC9RUVFWRVU3ODIvbys4azZQenFYbUY4NlVVYnB2REFQZkN0N25QajBR?=
 =?utf-8?B?clZscFBCNm85K2hqV0MyVzNtLzY0N0tCc2FMSndVWERXUEZEbUlEOUFsS3B6?=
 =?utf-8?B?eWVIOFAxNWxQSnRZaFVsdG9WbE1LcXZhN2hDMHpRZ1R0QlpBM3dNVUp1Y3N4?=
 =?utf-8?B?ZWdablVxRWxGRlVLRTkzeE10aEVKNGkxSXAzcHBJb1lLOWdUY3A4Z2wyTTN3?=
 =?utf-8?B?REovNDQwUjNwbnJUUnFTM3VFVUM1MDBtek5yRXdPT01MRXM4enZWdnhWRDVr?=
 =?utf-8?B?OGZPZTR2S1lzVWJ5ZjNRaURMTkU2NTJnYnh5V1YvWWp6VjN0emtOT1lKY3BO?=
 =?utf-8?B?L0pFRndSQWttaDlUMW15cGxYL0w4NkdDRnVkU3dteXNWbTBHWTVSQTM3REp5?=
 =?utf-8?B?bEp5dWxSYnN1N25oUDBjV2RnSXBvbklsZTBYcFhDVXAzRmdMc1BtZC80Qjhv?=
 =?utf-8?B?TTlEcUFQTlpHQnd2eXpGUXc1VVg0bGErNEFyY29IZVhmSGwvcS9ZNzNaUExn?=
 =?utf-8?B?Wi9qdmk3MFl4cHVCSkgzVHltSEU5bTUxT2RTRG1WZ1BKNjB1UUk4R0dFdkZU?=
 =?utf-8?B?eVRBTUxHZGN1NSs2eHRlTnJkR0l2MllyUjBPUzg3bzVhZTlhVG1McjV5dk1a?=
 =?utf-8?B?UmJLNzZhNDRpNVZvZzZGVnNkY3NzZTJTTjk3cUZUYkgyODlHZGJ3aW5CbStH?=
 =?utf-8?Q?Aiiovp+m0WhTC27FBeTtpkk=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 86f19798-1669-471e-981d-08daa2dbe460
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 12:04:14.1138
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 F7BFPJTOam/AlIz6tN24gxwGNN+zIiAnEZyVCU6Tx15ZLy3Ztox4MUnU9107OLnvms+l3WKVeI2wu0KzUfaKDt5j53VtmsfiiNJeJ9BAw4+f8xkAPtNwiYVSm0qCaez6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB9215
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 12:04:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58230

Hi Khem,

On 9/30/22 01:45, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>   conf/layer.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/conf/layer.conf b/conf/layer.conf
> index a2661f9..0e28857 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
>   # This should only be incremented on significant changes that will
>   # cause compatibility issues with other layers
>   LAYERVERSION_rockchip = "1"
> -LAYERSERIES_COMPAT_rockchip = "kirkstone"
> +LAYERSERIES_COMPAT_rockchip = "kirkstone langdale"

Considering that we have a branch for kirkstone already, maybe we can 
just switch to supporting langdale only?

Cheers,
Quentin

