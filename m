Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41412C4332F
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 15:31:04 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.72])
 by mx.groups.io with SMTP id smtpd.web10.18881.1668699057088237148
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 07:30:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=YsmWQdfB;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.8.72, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ez1BIKQgfwyR+J3xA9q8+UxRLM6o7eWSkFt3f0QjeVrr5D6rQhyNtFb8k5cuuvxnZIL3sfDzg00wwLW6yOu7LRRaklqWEmhiQhd/CQLKOMefowDR2SsSZ0sbaVvgtC5ZsJrcfcWKqlcC27eXX4MpGZfwqrikaf9qHke/hBlxsi8nSjokoxdRVj4pXU6aBgRQqU58ZURE+0M+rCozvw//vuFIffCO0tif9uGmjORZJ7XHnG6VieGVTX8kadJF5E8bE/DLKg6qI55VU2dB9rxVEtBSk8MP6QwAskalHQS6lhaeGQo+cixWJKD5BgVa/Zm1azzgVO26rUVG/77CP9MZQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KjrwIkofFjE58YjNM0ubmc0sBFuy6ERWlZkjifkx1tw=;
 b=NPayf5Ry5L/j8Fj4nWMgPEZ342VtC60tOLexe7IzRfyGCSSPsjIwG3Ov4OQINfTPZyz5veaGfuIAGd06/ZHGASc/wlB6zGW5/+8jZEM7aAwzo89NVWZCjt2uklA2oVn0VOwQAVZHcpdy/kxj8hnJyp1eKMawO46SOcuGbMR3orDR+6StvMiZLy/t82F0HDFF7x0XvWLJre0emr0/io9cBz4oMDd3JyT6z8VGvUUvBYsLcLApDffo8i7IBMg89EY3hzMngmkVxPDeru4DRmigGzRVnuxYJcrsxEkYFKEoOmx0T6VucyuGiV/BqyrGh6ESGYEYzPYZRR/LLt8F747TRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KjrwIkofFjE58YjNM0ubmc0sBFuy6ERWlZkjifkx1tw=;
 b=YsmWQdfB4CTkvAnDLQJ9/rN/yC7reBzBBNCK5f0TLxEQA7xQewsA4QfcZHZDtvIVqOSHO6kpylf4orqtxOW7yvkqjCVwcpNPBnayd+o0XVu5YQgtV9+i9e47TrRUeyWM67/tmPYizXY+LtO90kblN+LQ7ki+3n5I/XJP03ixbxZV3fHlqeGeqKZeVTbqLCQ899/xQ5oV6xJXrnUvceiPblZ/qMzHXx7BqIGMeLd5DheGJMMhsVsEblOoJ7cUblM84X3Q60yKvGMqGVWqhpsXCLfBoQC21FnT4M/cYo7TII099AyD43v0gGr2w3rtovNzaw9B+Vnhbo+aiP1oW69yuQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM0PR04MB6913.eurprd04.prod.outlook.com (2603:10a6:208:184::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Thu, 17 Nov
 2022 15:30:53 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4%5]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 15:30:53 +0000
Message-ID: <eaa3d543-e119-a176-62f0-8c2afe8d2f57@theobroma-systems.com>
Date: Thu, 17 Nov 2022 16:30:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] Image dependent variables/files in included recipes
Content-Language: en-US
To: Maik Vermeulen <maik.vermeulen@lightyear.one>,
 yocto@lists.yoctoproject.org
References: <CAKO9uzrV9XpnQnQ4irHwfr9OQehjJ=dXndVo8cijyGLy3_yViw@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CAKO9uzrV9XpnQnQ4irHwfr9OQehjJ=dXndVo8cijyGLy3_yViw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0208.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::18) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM0PR04MB6913:EE_
X-MS-Office365-Filtering-Correlation-Id: 4198aaee-e74a-4761-7f3a-08dac8b0b6eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xObcH/h0ywkKntqf/Df7PFfNpQ9M+bEzHxo6FgFVayPPXs/5GkkPD2f9Yq1N5q6vYZSP0nG/1pPzAiiB2v/jwjdknJQguhjij2Pr6pomoVFUopqnXrDlOwdyCtYwgmU6QpcI1D5YB/gvPglKQqgjQXlfiMc679gwa/LBx/iutdsnuFJUtpmvbFhlyB6mF9TDETdKak8EXecIxj2WrageyukD4Osr0y9ibWG0V0ygIDXxWcp2cn1RzFCUss7/6vpUjE+h9iiE9CEZrzXIQkScaq5C/91RS/z04tikhT6MvO2zinIX7wx7/GICSosEL+VhBCgoycKrw/AvwyaQ4SkSxsLyfq0U6cSIuujDml3SwOj7IB4E0ZzSFmPnLpfEEW0uo1V1VtUXuOxyAVdmA/mRhLwgqrJ703hcKry93bsarh3MpekV3CtFJdvyCNiTnjeFEuJlYeOk6E9vxZrfOTz+/aQzmyUADHG3wb7DFJoImm3dVgU2LInXZ5vNzB2CqkjcMgYPwnjwD1w8P4jcEj7kfBiwbSILPt0QR0i71UEWdHZmGceDQp/je8FSI0FOx444Ews8ewHDRMiQHP4YqJaKwYIa19Ztq+8DGhFOZG6/98nvJocjyKVrl+KHPq+hmc2DM5ytH1w06LdQ5Hv1EZnPSUinTJd2NG8gQVNhNSfEF7E9cXpSSBigK910o77Vc6cjO5ZG9exyMmNE5WAzqqlMoj8t61zQcHaMfzB5PGH5cxKFPVM8usV4CdfG9zpYKldP
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(396003)(39850400004)(136003)(376002)(346002)(451199015)(2906002)(31686004)(66946007)(8936002)(44832011)(41300700001)(66476007)(8676002)(66556008)(5660300002)(83380400001)(6486002)(966005)(6512007)(186003)(316002)(2616005)(6506007)(53546011)(36756003)(26005)(38100700002)(86362001)(31696002)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eWpmM1dmazZZQnlESStmZHZUQ3NXWk9FS3ZyTVFVU1pCdXQ4QzFBU0s4V1d1?=
 =?utf-8?B?dHJ0OVA4MmR5UDFPYUxHZ0h2QTdUZW1HQ09nWlE1MlFkRnZKOCs0T1ppZk1E?=
 =?utf-8?B?SzhjTVpzNHZRQitCS3RQM3oyd0JYVGJGSElXR3JGNlRsczN0cllFMHhpUTZw?=
 =?utf-8?B?SHZBWncrbDJ3Y0hwVWx4NVZxdXdyc3JlVjF2SmRQN2NJODZ4cHE4MG8wU2dr?=
 =?utf-8?B?N1A1TzFRb1JmTXlQK3ZqL1U3dG1ZRU9NUS9xN21CdWVmcW8rTDhwYlhSWHpG?=
 =?utf-8?B?bEN4Wjd5N1ZSby9DN1BPaGsvbzBCOXRIV2lmOWVVdnFvYW50dHpWeXVLTXUz?=
 =?utf-8?B?Q2g5TThjZXhKbExmbnR2U2dPK0NaRFczQ1hNd2ROUXZFaGthNUkxN1pRTERD?=
 =?utf-8?B?Z1BvWmxQQ2RFbk5HWkpsZEplMG1OSmp3WnNpNTdZNXRPL1A5Snc4MWM3S2c2?=
 =?utf-8?B?VDFoTXlGNTBVYVZOSzFjNFlGekZZUkpNY3VSR1E1R3Irdmt6UDJmTmNMM0ZW?=
 =?utf-8?B?akRJVDlycHFpcUpxOWM4a3lUUWVpQ0I0a2lObXNPOEdEazhWWFB6M2ZTK1RL?=
 =?utf-8?B?NElJVmxxVmY5bDBndzcvTEdWdVFCbmVwa2ExSlF6aGsvOGF2R2pKZU1GN0tD?=
 =?utf-8?B?dFlhdCtTYlJ5VytjS1Q3UGdLdGFhSGhLd1dHVURJZ01OMFIrbkVFcHNsU1Zx?=
 =?utf-8?B?eUxCY1V5TlU5YUNhMUtwWUhERkl0b3lrc2F5R1BqQVA3bVR6dk1ySXc5N1Ir?=
 =?utf-8?B?TDJGUUJZMEhMaHVuMTZuR3hOSEZpZTZIcnVyMDV0Y2c2Ui9kRUtsMloxNUtF?=
 =?utf-8?B?RitQRTZVMTl0VENjbHp4TjhWRUFmaStNK2xlZ21icEFvMTN3T3pndFh0Y2Nx?=
 =?utf-8?B?N2F4akM5elBwUll6c0lDV1BwYkRLN2RJTGVIUlRyeUpWYzJnY2l0UUJ4enZ2?=
 =?utf-8?B?VjhacUtvdG45S3ZwNnFqWkVXcnlJOUhPeDYzb2lWWlBkT3h5Q1l1RUFLMUd6?=
 =?utf-8?B?WFBkc3M2Vk9DcHR1TUY2cTdLaDA5TEFxQ3NCakFGekRVNkVhOGdOcVNnNStN?=
 =?utf-8?B?R0tZQXFTQkZHNmZxUzRsay82N2RoemhUR0ZYd3RJRXV0djlmOXYydFI2T1Va?=
 =?utf-8?B?NUMxYWhPVk4yWHp2S2FsTVB4dlM1OXBWcWhhUVhzaStyNGlDYU9zK1ByaFdV?=
 =?utf-8?B?L0kvOGpoM3NJQk4xYVlQcSt3TGxBblNzTUluUGd0cFpjRnNYZ1VBTUlUTUIx?=
 =?utf-8?B?UnNFQnpHeUlLUVlMU3NOLzY0U1BIRG00cGxlQ3NEdVV3dUM1cnhBRUJmK2FP?=
 =?utf-8?B?anNvMGFnUTEwdlRYdnArUlRJeXRxbmNhL2xhL2hKRVlGYU5nQUpPa3R0Y1dm?=
 =?utf-8?B?Y3dFUzROWE1jeS9pbmtiL3htQkJQRnNGb0VwMXBvVXRrN095Q3JCT0U5QU9z?=
 =?utf-8?B?dWM1Yzl0K2JiVFlxdWFQdU81TytnN0xkK0VxRHBnVlVSc2pjSmVMSmdNa3pM?=
 =?utf-8?B?ZTFxU0orcis5dUxsN0FEWXN6ZlB1RUR6bmJ3TVRucEpqQnBLRW45bFc4NnBk?=
 =?utf-8?B?dC90Q29ZTlRMbzA3clNIc1puQk9pK2xGSXYvM3ZNdDREU3FHRy9SSjNxbW8v?=
 =?utf-8?B?SElQWkJPSUtudm0yZFhLOVpWTW5BNmlKWVJqd2gxY212czVBZmN5RW13bS9v?=
 =?utf-8?B?eW5zUXpGd1prMUpzMDVxUEFDUVAwMkxkNkhkTXArWUUvRkJHdVVzVlNram81?=
 =?utf-8?B?TU9UOGhGTzdvTmxxUW1GZ0JLQjBsQkpmaTlpSitHejd1M3RORmh1c0paQzNY?=
 =?utf-8?B?RlNET2tMT09Nb2tPMWtBS2ZjSmd6WFloSzZybnVMY3R4OE1nWm16U2ZOWkpE?=
 =?utf-8?B?Y0NhLzBFb1N6U290ZXFicjFoeGFUOVpwWWdNVUhTalJYR0x4bmVXTXNMeFc3?=
 =?utf-8?B?aitUcDhvcDhXMmxHdWlCOFphcUpWYlR1RDI3VDlUcHVUc3dpQ1JZcmdMejUx?=
 =?utf-8?B?R1hvaHowVHIzeGh4dmU2OGNSTXZ6dlUrYTA1a2tCYmVCdHRxT1R0TjIzN3VX?=
 =?utf-8?B?UW56ZHVmbnB2WVdObHBhV240STNLSkFNS2txa0FFNnkreW45d24rRElSNWFa?=
 =?utf-8?B?dmJKTG1YeTdYeTBoRFBDcGpOUEUwcXFyUVdISzMvQUxENHZTR1g4Zmp0Y2sv?=
 =?utf-8?Q?stjIZrjw8NFoIRal6jl1oMg=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4198aaee-e74a-4761-7f3a-08dac8b0b6eb
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 15:30:53.6438
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yIwROzgLfQcgNiy3FZHt0gXyX2fdeKmjJlHheIi44iM991HahZdIywJnZaO0pdDaeTJqrCaR+9lln+tJKML2C7gEXv1DhYgk4OfYmINVmWZJpDUK3w2eMi3pL18LDhN+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6913
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 15:31:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58588

Hi Maik,

On 11/17/22 16:22, Maik Vermeulen wrote:
> Hi,
> 
> Depending on the image that's being built, e.g. development vs. production,
> we would like to be able to include different user passwords and firewall
> settings.
> 
> We know this can be achieved by just having two different recipes that do
> the same thing, but with different variables or included files. However, we
> were wondering if there is a neater way?
> 
> We saw this post:
> https://urldefense.com/v3/__https://www.yoctoproject.org/pipermail/yocto/2018-June/041378.html__;!!OOPJP91ZZw!k-UkKru_mKI6U4p8UgDfH_VEh1-qar1kiQuqcmnyrETRAnubF79KykqR7VGaRu47i1Ws7n8CAagOJBqEFBB3goTxmBkgn8-qL3X383IHnKva$
> which seems to do what we want, because one recipe can install
> recipe-development, and the other can install recipe-production, while the
> recipe itself can then implement what needs to happen for either.
> However, other recipes included in the images can also depend on recipe,
> and they shouldn't depend on one specifically. They should accept that
> either recipe-development or recipe-production is included. Currently we
> see that both the generic recipe and the specific recipe used by the image
> are built and overwrite each other.
> 
> What would be a neat way to achieve two variants of a recipe, and having
> different contents and settings in them?
> Or, can we solve that other included recipes depend on one of the variants,
> instead of on the generic one.
> 

Development vs production is solved by using different distros.

You can then have the same recipe but with different files (see 
(DISTRO)OVERRIDES mechanism for SRC_URI file:// files, c.f. 
https://summit.yoctoproject.org/media/yocto-project-summit-2022-05/submissions/SCYYWD/resources/Demystifying_the_OVERRIDES_mec_2lZOP3n.pdf) 
and/or different variables via FOO:dev-distro or FOO:append:dev-distro 
for example.

You could also have different recipes both PROVIDES'ing the same virtual 
recipe and then have PREFERRED_PROVIDER_my-recipe = "my-recipe-dev" in 
your dev-distro.conf file.

Two distros is usually overkill when you have very small and 
non-invasive differences between your dev and prod images (e.g. an 
additional package, or a lone package that needs to be slightly 
different). In that scenario, a "drity" solution is to have two recipes 
and have the final image pick the appropriate package. But this quickly 
does not scale well once you have recipes/packages depending on those or 
if you have more than two flavors to support.

The best practice is to use two distros.

Cheers,
Quentin

