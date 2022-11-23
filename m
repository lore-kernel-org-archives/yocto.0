Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 047C2C433FE
	for <webhook@archiver.kernel.org>; Wed, 23 Nov 2022 13:49:05 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.75])
 by mx.groups.io with SMTP id smtpd.web11.20544.1669211338329454817
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Nov 2022 05:48:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=fOo9wPVk;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.75, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S3nSIFnPKjoIHprHGGMoucaT2jaEWhMJYol25xwS726lx0RVHP+fvvczSvWuM9/aM1waV56Los79tm/v8n3KNDbzFWhdnkqq0hrriBbczmH2Na/et6AOfVor3kGgipQeluvqur9aVP5MmO6wDWfHB9f9g4jQCZsPEbL4klQt+2N8zOWz7bp3yUzeT00JG57eaLQ9IEVYqLfXye+jpRSVG7m886d74ZQIvq412gfZknEBXCpJaTCOZUzl/TjrhklyTYSW3WBbL2UEcoTPAm/lYQzteUPfpa/HAC0OdNxIbYIb2Od2MLKeSyH856pSdS1HVs6Sh2TNTy0SV8SQiLZMSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UvTHVQAVSPj/XBm4I5l0aDQ+WQEAVoSHikw72qslipU=;
 b=Z6IGeYB3JYIQ1D+V4uj1aulcpRzqRnpu/ZwhPPo6MldpQwdI7HId43h5EmVl8VxN01CQWrMDrsr2BiV0f7YviPf7w9aFE+U2BYInUGZ5EPLCYyuqP/kw5N1HxpdMNXV793JXESr3zuR92wav51BpiEDLNpIUALV4vQaJ50n/Tqg0nloIcBvhchUQmV8O5auxl8c8nFH7lq4oriSSp5/O6910wQ3hbWStiD7aalELooEmVYsWlGjwwervm0gfWsJdxfdwUCynMd94UB5mSA8lCxSe1i4Lww2UY86y7F3kwfaPoCdYplBNDhJx0OKSAKDdzP9fFa2ktKbjdYEbzD8B4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UvTHVQAVSPj/XBm4I5l0aDQ+WQEAVoSHikw72qslipU=;
 b=fOo9wPVkCcWAl2Z5gvbv2hCMES3yYvoxQQUCEKYsHmyiD5YNzkju69ABIsVDTMSNRg+vPih+xoy03wpK0QJ2bqyNd3N2t5O+ry/Y+f9Kep1nnFxGwU2rVmyhl0ENw7JW3E9YXd/8IhujJfpvpwzRY7mtOUxqC1ezPJ1/1UEn8UXL5+IBK3L3EcRVL8KHtzSKnYEW4UEpt8SrSoKxnbtyqwv3o6NsQvAIgsEjQodVGInAhlPJ6PHsKTK4Ko4tQAuUEfZSuG1zt2DD7oK8XsXtjwFzZVr7XNOE1D4ubpZgpF8TzawXmQp2BgbTBgEbRh7esii8eDI2F5lNr4VsJL6VtA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS1PR04MB9264.eurprd04.prod.outlook.com (2603:10a6:20b:4c4::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 13:48:55 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4%5]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 13:48:54 +0000
Message-ID: <4feb0da3-5c23-8f96-020c-ab242c762d8e@theobroma-systems.com>
Date: Wed, 23 Nov 2022 14:48:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [yocto] how to specify the package version via RDEPENDS in
 package group #bitbake
To: Martin <linmartin.tw@gmail.com>, yocto@lists.yoctoproject.org
References: <CO6PR11MB560299BFED9EE97FA5877D38ED0D9@CO6PR11MB5602.namprd11.prod.outlook.com>
 <27363.1669181105521779571@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <27363.1669181105521779571@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0158.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::8) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS1PR04MB9264:EE_
X-MS-Office365-Filtering-Correlation-Id: dc9d523e-58ce-47ca-3d9b-08dacd597642
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oVkHaPzih/074w9z0L4pOKexZDGhoRA1gTnEMKILRHZFne53uVuZls4NkZ/XLQsCQpgLHSuKB8WcXXI2oz2oxzwQRpOb2DQqAjpVE7b83A99ievD4nkJFRlgU4KKP0hJRErDo90vPYWwtsTC4J3Bb1iu109awSTW3sEk+8lIY+zfc+UxkehJj7MK08u0Y29b2qoWLB6bOxnABGHhsWuoXr1h3j4kVTBQvA0einSi+O+pMDBZgEBdpyukSezj9fK3Irb7IavKpQWZbXJF6B9GLOH70rOd5D7wcOm9JAO/ttIta0xaNnDAsQhVcggSHsfzoJUf3yOU9cjhYVhPz9C8plIkFAAfCzTer9Ygh47wYFaNjrkNPZY6ke25qLHLjVKFsp4EKWMasoqBJX7DRKmipnRzP+banYZDMqhWT2CdkiCr81a5qQQHdstBirl16zgNZEtPhFxt33KfXoe8rWb0fiuCAiratXDpEMCyDyYr1R9N81qJpm622okl+23V78LEMnOYBM80ShpPhKzJBVauTxm3SZ+ijoiplwuaNMVQYT+ryKKpVJ0CA65rs7RArNbL/2HiGfG1DwERCKLp2KxqQG9ZGQjwfBkbvtRBXE9Ydkc0MqoNKykkAax13RV2rqWYNrp0j3pTsNN4qG2TXtZ68y0wEyBJCc9mouu2rEonsy6XyvJns22+1qyKGVyDB9/94DOyo1FdgOesOEafXKF5cBVSBj5Ug9AjWR650y98QsE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(39850400004)(346002)(366004)(396003)(376002)(451199015)(66946007)(44832011)(31696002)(86362001)(8676002)(38100700002)(2906002)(8936002)(5660300002)(53546011)(66556008)(66476007)(41300700001)(6512007)(6506007)(26005)(186003)(2616005)(478600001)(316002)(4744005)(6486002)(36756003)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZHVxUmNxTS9zYk1sQk9GZUpmWG9vdDJZYWxscjVwbUZVczRUaE9TbzQxdVB5?=
 =?utf-8?B?aUxCR24zWjRsSmg2OE5JR0s2dmlIQTh0VUdpUEYwaStjZjhaaHJ0VlluMnMx?=
 =?utf-8?B?TWRCYVZNcDZwSjMxKzNJUDM0eG96SDlDeUlIdHlTREtVei9NdlB6NlN2bE1n?=
 =?utf-8?B?Ri8rc0JVVFpBay9DVlJOZXhUK1orbUFGNlJnUGdHenBlRE1ybXMrU0NzK3VV?=
 =?utf-8?B?YzVwdnM5ODJZOGlCR2cxQzl2WHFTc3NmRXkwOGpvbHZRNWxVS0FielFRTHlI?=
 =?utf-8?B?eGNwaUl4SC9YdGx5bG9Fd3NEN2R3Tm1ONWsvVzBSRm5TWTYyczN0Sjd2Y3cz?=
 =?utf-8?B?QnZRc2dhVXprRXZmVGZMY0R2NjFFZTkxUjhCa1U0Qm1mYlpSUjdlUG84MmJT?=
 =?utf-8?B?WGNzamgwWUwzVDVCMUJLSmlMd3lURUZZb0xMU0JLWmthOFRid3VuQnRta2pM?=
 =?utf-8?B?SFZKUGpTazVtaVhwdVQ4MTcwZG0rbEFsL2ZHcHl2NjlOTzlWRVMzUzM5dDNM?=
 =?utf-8?B?aG9kR0ZBbGtCNndwRWw5RUcyNnovTHp0QTk4dWZnaUZWWTduT0Y0UWUxZldz?=
 =?utf-8?B?K0owa3hEckl2bWFaR0RkbE1hclZCS2lDSXBDUWVmZkoyQUlua0FwVDdNQnhX?=
 =?utf-8?B?b3JEZERJUkFFNjJ2aXVHaVlnUm1CbGx1R2lLblVhV2NzSnZselFFVVZvMUJW?=
 =?utf-8?B?ZGhDTVhJVFpCZmRMOUw0MWFlcHBSZVl6bTloM1lkYWpxMGlOeWFVT05HQ0lR?=
 =?utf-8?B?TEkwMERGaGRCelNHMExTdFdWSkxYejF6THlZRllZY2paRUZVT3dCVXRrTXpE?=
 =?utf-8?B?U1hucGMvelBFdkJxWlBuZUdjbjVta2hYZ3RmM0ZGdStTZFhQUk40SlZlM1NE?=
 =?utf-8?B?VjdOM3poUHdzeG5Mbzh3c1EwVExsMXlHRDlneHV4b1FjTHRhdXo0WWVsSWl2?=
 =?utf-8?B?WmowYUZOM2lMMFRmNzRzbGNkSitYV2g4clZxVlphcm1kbDVZblRTbVZlV0RW?=
 =?utf-8?B?R0lYTitvOHBBNmNvS01sSjNpeFFWUWp2ZHhJYjAvdDB0MkJINkhwYWJXaGJl?=
 =?utf-8?B?TER6MHhKbnJKc2k5dHVJZGZTVmsrRm9tUVNLTWpsbkV1b0dVS2VSVkNDMVBs?=
 =?utf-8?B?WkdVS25Id080bjl5K3NMUm9aUXJpd3dvcTV5VVk2ZThYUzI5UmVHdU0ycUJs?=
 =?utf-8?B?cjllNmZZRmFKYnVyWGpuaU1QTTRCRWdQY09VdHFJeFdaZnd6SFRkZ3BGQlFz?=
 =?utf-8?B?c1U3bWtmcTJYVFZHWUhKdkxkTVo2bUxNQkwvZ3R2dDlVQ0JNKzZUWG1HeG03?=
 =?utf-8?B?ZnJ1cnFTUDVlZ3BNQ05uQVBtN2xwd2lqMzJZcjZoTG50aysvRnc2T0IydkFS?=
 =?utf-8?B?MVk1NFVpenlDRnFUWnFxVjIwdzZWRnowZGc0VWovbUJhMkhTVDNxSFhpZ2Rt?=
 =?utf-8?B?SHdPRzFMbHNiYUxCYmdINXhieVlZOHRLUWtwQk4vd1FmUFprY0RUaUUvOFhy?=
 =?utf-8?B?WVA0ODg2WXdYMXFiamh0YzdObnNiVlZ0WVZEQWZMem5nSWxmRGpzVGRsaDNj?=
 =?utf-8?B?czlYcDR3aExhalRXcXhqZEQzYThnWmdyTVRNR3ZZTEY5cEZDV2dXMXI2eSt2?=
 =?utf-8?B?TStzaFdqc1IweVdaYThxd2M5OGV2MEpMc2xnNFh2UW00V08rck4wbTBqUEd3?=
 =?utf-8?B?Y3I0VTdOc1ErWUo2Um5PNDQ5Vi9qOWFxb0YrQjltRlJBUnNiTURPdEpVU21i?=
 =?utf-8?B?YzljYXQ0cHd6SVgyNWhubDFYTkpacElBRzhIcTBlQXRQaUZOczJ1WjlyUkpo?=
 =?utf-8?B?eUZjeGhvNjQvOGNTZm43NHlMWEFSNFNDblE3Y3J4alY1djROektma1grQ2hN?=
 =?utf-8?B?ZTNNNExvL1FzVHpGRjQzblVBdGtva3NsRVBaMkVPTUluSkRCK044MlZJQlJa?=
 =?utf-8?B?Wk9nZXdOdEtJZm5Qa09rNnF2Z212cSs3YkVweDFidmZsbWttS0RQNS9OYzJj?=
 =?utf-8?B?QVdMdHBBU3dhRytHT3lOSzJCcVJmS09vTWpZckpIU2t6bWtuSDNJQlc2bzdB?=
 =?utf-8?B?YmU0M2hLYisrMFZVSHNQYmxXaGM5MnpONEhRVWxTenY4azNYeUNJK3VMQ3Ba?=
 =?utf-8?B?amhRaURzK3paR3U1eFlXZE53MXNiN1RVZnhrY2xDUk11c05qZDgxM1BJNG1p?=
 =?utf-8?Q?CDzMnSESQwXwdR9j6ReR5pM=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc9d523e-58ce-47ca-3d9b-08dacd597642
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 13:48:54.7444
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eynosyW0LV0X1jejcYzSBOEomhpNRNX5XtIKMUiLdzQQTIUzyDP+7yz8Cm9wHV08x88amv6khloQ9HvX/qTQ+NLwKxiN/4DMutUQHoK5gu3SknHoRT1e7sLQdGaJsLoD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9264
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Nov 2022 13:49:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58627

Hi Martin,

On 11/23/22 06:25, Martin wrote:
> thanks for reply, i original method was specified the package version in local.conf by PREFEREED_VERSION.
> 
> i wondering if configure package version in package group via RDEPENDS makes it possible? but it seems impossible.
> 
> what situations allow REDPENDS to specify a version? thanks.
> 

As far as I remember, RDEPENDS is handled by the package manager when 
installing the package. So I imagine this is a way to make sure that a 
filesystem is not built with two packages that are incompatible at 
runtime by failing when creating the filesystem. The choice of which 
version to build is a responsibility of Bitbake which happens way before 
RDEPENDS.

Also, chant #1 of Yocto applies:
recipe data is local, config data is global.
So you cannot impact one recipe from another, this implies you cannot 
pick a version of one recipe from another, you can only say whether 
you're compatible with it.

Cheers,
Quentin

