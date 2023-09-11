Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609C1C71153
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 04:23:07 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.51615.1694406176777121171
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 21:22:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=l+JKtrWC;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=76185ee191=qi.chen@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38B4Mtcx014803;
	Sun, 10 Sep 2023 21:22:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=YPGyTz5FhvjsZyIt59eAHs2rMxZvnQmSjXka+G574gw=; b=
	l+JKtrWCR7EPJnCZuaXYpHj0MCYdfFV2C67zIuFNLrYOP08yvTZGJPmBi8yn46yl
	g6FkrmnbLKaibQG1Dvyit1JE0AUbET6aP6Z8QkCfH3BiDRpcm0ltHJIpX4S6ZJg+
	Og9sWe1+NMUnQeGA+19qVgB57+BnVrEEWJGhhs6tXYvOtxZyaWQ07yht7l8Z3xdz
	zAymqKiMXAvG2fYrmMhv1Or6xZu2/b+UcYrdkv+6QL8nq5KIq1jbj89bEOZBVtr5
	gS7tUG9EiTdOf9/A2otGY6dFjdcLS/sbGeUmnCNOPh0msLuptzW477jZoNO3jTU8
	m5OXfBfJ2+jDBi1MggVNmA==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2176.outbound.protection.outlook.com [104.47.56.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3t0r7fs105-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 10 Sep 2023 21:22:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hydNywCgQnRXeNFeU8cCV5GgeU0hF0lfR1bbbM39Tl5UPSQjMasc093sZhA13DXCRNGnvRumUu0YgZz9V6cNy5TkgoeyyeR0ybRnE4ZN9ry+OAMZX45KDQdPRqYdOyaXygP3takgYh4NQCRp9Cy7TDp8EM45chzGf9rXmW7/ZaV3uX3oSAU4GsxMLq6mVUhSxY5ThPWoTtr7QUQpYzgJN7gGXd7NM+ji3qEG/2j3ux75CYox8u3sfpGcvLa6FM6An1N9rdvPmxiL9nOqDTQPmZAfddLQcM6X+1zQF5NnJ5VjTR25UVqldGjVGmyl/5YyQPdcx62rrkgnk25luarCLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YPGyTz5FhvjsZyIt59eAHs2rMxZvnQmSjXka+G574gw=;
 b=L1HCQR2Psry5u8x/v6rmXkrUAHh0e4u6bTh+FXH/reGLaT+0N3m4Y7LV58tb/0JCX8PPFsl14r9Lfz1Tt0nkpI8DjIcxMLxs1x4i7gNSXuGHB79DTiOCfg/lyEEm9B38nKToSoGubloqkW3nme6/9JTYf28dMu3QOoQv7g6w08I9SLq237XyifGupmpqzdY4ELlMa1pTEWMZQHlTVPikeson/W81YaIE1gRduJkUrFkOCel0UHFoAXfzeG0mF9s+scW00671tVe8Ps2y0a4ApjCHtnWlLLabO6AOCDvHvnh/Rm6fPS7gyyb6KVEoBZIiTAzfz81M9Y8S9SJaaDfmiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by SA1PR11MB6807.namprd11.prod.outlook.com (2603:10b6:806:24e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.33; Mon, 11 Sep
 2023 04:22:53 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::da88:58a3:bc6b:2e3d]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::da88:58a3:bc6b:2e3d%6]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 04:22:53 +0000
Message-ID: <c4eeb346-6cfb-2bf3-6db4-1402d595e09b@windriver.com>
Date: Mon, 11 Sep 2023 12:22:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] Question: Sharing SSTATE_DIR and DL_DIR through
 Lustre/NFS for team work
Content-Language: en-US
To: me@linux.beauty, yocto <yocto@lists.yoctoproject.org>,
        yoctohelp <yocto+help@lists.yoctoproject.org>
References: <18a81ed8796.114a3273a387212.4468069863803228583@linux.beauty>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <18a81ed8796.114a3273a387212.4468069863803228583@linux.beauty>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TY2PR0101CA0026.apcprd01.prod.exchangelabs.com
 (2603:1096:404:8000::12) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|SA1PR11MB6807:EE_
X-MS-Office365-Filtering-Correlation-Id: 28cf4226-4211-449c-7eea-08dbb27ec413
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Pok4B9SWPwoN/aCFs8B74mk24oX/I736FVljHB21PPy1mortJL9sKmuuiwBjsSyxk6WS78xuX1vrAknYu/l/sg6EuIIc0U6qJUmgsCgFLvYKwbG0gNqlpYctOfZxVvvJCJTTeEbl5qxP5x9m/5zHmyTCla0fDwvQoNfgd+4cjJ3AVPhu6XnBmOYsOHf97Pz4lkAhnDw4YAFbgS44eCQXO1OyiCN4xyqzjHF8KedDAvsKRuv5Fin8arezuxhvo+K1Zy4/vPTag3rqvmmz+6i4RJXARwfp2WAA+jCNYRmZKLWMQO+8td/BqyloNOlI2Gq4gmZJ0GL/esuH37QahL5ICujxLBXDXzm/QN9YXBbQch36zGODyz5DvuKnBFPGjdc/Jd6vxd1apOEQOZxMDxh6/Gc/A8y24dbRgrkpXlr1BIwLjwaCYDDLESHpESoZ5zNtEA2WY3csP8eYARIlzhFa4wkXzErlaw43K0Qde8y9vwp9t7/AfrhNrRhIkcvA1vLrZ+i/nCXuqRbKP2ACxxb1VYRFCJFG8ffWnaczna5+SGnKInzb+JGzgnNWakKiHgALwFeYnPgpyE5kzzlDWRYwFSTRgXCCHhEr2rzS0YVzBCkVzRU6dMs2NRXgPLU48rL68RiF5gUct6QSWiCXq38865f7r+biabHCzRPO1BIBc8w=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(136003)(376002)(39840400004)(346002)(186009)(451199024)(1800799009)(6506007)(6486002)(53546011)(6666004)(6512007)(966005)(478600001)(83380400001)(26005)(2616005)(2906002)(66476007)(66556008)(66946007)(316002)(110136005)(41300700001)(5660300002)(8676002)(8936002)(31696002)(36756003)(86362001)(38100700002)(31686004)(66899024)(13693001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K0hKdnhGTFRweHkxNzBVL3lGYjdtaG9UL1ZTT05FYUpDWENUNU5vMjBMcGJQ?=
 =?utf-8?B?QzAwN2s1Mkg3UXF6Z1pTR0FXdXMvOUpKeWVSelJJNjN1bnE3OHJrM2hrZFd3?=
 =?utf-8?B?d0owbXEwNFQzdS9Ya2FMQUdDRkZLT2dHNEdKOGg0N3pVV0ZDMVNEb2d0a3dx?=
 =?utf-8?B?eXVTb1JFOXNaeEEwTmRRYlJkc1MyRUhUWjE2dEVmU0pYY0t4dDYvSHZxeUVi?=
 =?utf-8?B?K3h1dGR4ZDNCSFo4REpkZzd0dDlMc0oyeFA3Q3hoYWdxdzlCekFmeGZQajFY?=
 =?utf-8?B?aHRneTliQzVxbmJ2Uzl6RUZaNnRZblBwVjMzeUlrdkxobTJZd0grSkc5SmtI?=
 =?utf-8?B?c2daUno3aVJtSStVQ3hBZmZyTTU0UTdKQkhyQjhDUzk5cHhWZWw0VUVSc2dV?=
 =?utf-8?B?MEtxZ0hTM0QxQ0EzR2NrdXE1OEhqS3pBL2F4Z3BndlVtVjNiWWxucmFTUlI4?=
 =?utf-8?B?RkNtcTJ6TWJ3U2ZqMVJVRFc0aWk2aWZoY3VvMC9pcmdXcFd6UjVOUnBjdEpm?=
 =?utf-8?B?eGg2NGp2M3pQMEdNNXNWa3AzcmJ0YUl0aVlnblV4THBaZWJROHQwdHVuZUtM?=
 =?utf-8?B?dkh6L0p4QWUyODMydk11bERQRjVDbXZjekU2MkdIUVN2WHNSTEExc1hFUVNm?=
 =?utf-8?B?RDA2RFRYUjdYN3FSdEx3R0duY3VSbkhTamxOdnpRaVNQRHYydkpLM0hTOUNB?=
 =?utf-8?B?SFY0RGhnVkttdEN4dFhGeGdrSTl6d1F6aTYreEZDYXp0cW9IR3ppYWkwSEFD?=
 =?utf-8?B?aTNmUE9MTDE0VUFkL0dqVHo2MmlKZHhrL3I4TFpDbFpjYUJ6aUNSZWpiRkhH?=
 =?utf-8?B?dzJtTURoRDB0NFZOQkpCOHhaT2VQRWFPYW1CRUtrNnlmWndUWkRGL1QzTDc5?=
 =?utf-8?B?U0MzNjVuZ0M2Z3RZcGxVSy9oOG5qWVB0aUhFWktJTUx5SUJYSTVGd2g1YWxX?=
 =?utf-8?B?MmRKd1gxcHN1dXFEUG1nOC96Ukp1YmhHS2R4bXhBTlUxZWxQcTUzK1NKSW9V?=
 =?utf-8?B?akxzWldhWVJWQTNRejdxc2xrK0tRS1h4R0p0Wi9EUVUyWmIwQk1QVzlRRkNB?=
 =?utf-8?B?TnVuM3RWTUpybTBKUG9tQngwU045ME50a04xMUJDNjdwZSs5emtDODlqcENv?=
 =?utf-8?B?cGFZVWV0QnJwanQzSjNKOTVLWTZDV2xoanM1Vk5acjZ5Smc5Wm83ZDZTcG9R?=
 =?utf-8?B?SzRwZHRVZks4NUNMOHcwenJLYjJIS01hSjBTZmFWUklNcFBZdTNzbVlwWWs2?=
 =?utf-8?B?aHROQnlQS0ZIbnFYVzRCd3Qvd2FNdHNYUzZCWlNZR3ZwazB1VXdEN0xwcXF4?=
 =?utf-8?B?OWlBREJqNHo2cDRlNGFObmNkS0NxMkxpZERKM3hsSFpJZFVoYTE1WWg5dnJM?=
 =?utf-8?B?cFF3YjlQM0FDeWF5eE8rdlAvSkFIY1BpUTRPa1pVR3grMGlvTHh4MUJBT2dS?=
 =?utf-8?B?cGN2UE1UQmw2amZrSW4vN2x5OW4yYWJ4RDlIdjJCRU5LbXJNbHdnbVRHM1hq?=
 =?utf-8?B?U045ZXhOWmpDQXBjWHBVMUZvOXJiM2pIUnhuODZLeEZWSjVYY21OaTFSUURU?=
 =?utf-8?B?UzRRODJORmttSEt5cW5UZ0o1eHR5UUVLQ2IvMkc1MXVkcWx3ci9jVVVnSXRH?=
 =?utf-8?B?WHdGc2NiS1ZKK1ViektPK1kxYkUxMjd5Zm5BNEY4SnZ5bXNjN3ZuQWoxcHc4?=
 =?utf-8?B?aGtuOWJzYlU0VmVWR2ZZN3FacFFSYzA0emZoZjNCQ2I2STErNTNGUEcvdGV6?=
 =?utf-8?B?UkZidGRHRUl6S2x0bmFUZnRiMWU2MDh4dnVsMWxwS1pQUTBma3Q3R1hOMG50?=
 =?utf-8?B?VFJSdE5tZHdFaUFkaW9IMm5jd09DSEZ1OUtLc2ZiZEp2T2x0dnpzMnNUMFFN?=
 =?utf-8?B?eDhxSE9YRmJmWHFSa2ZEenYvSjJCMDVSTGZYVHA2WjhkZis5bkFycW4wZ2VI?=
 =?utf-8?B?VUdKNkZNWkRGNm9SdEU5clhUNU5rakFSUllhL2dIRjNad2xnaGw3Z09BdnI4?=
 =?utf-8?B?RUg1SGtWbUxjY3NUU1lLaHRPbnVNZGFqRFc4cGdNUkdLc05KUXhxb1BJTDZF?=
 =?utf-8?B?RzM3UjJiVUdjb2Q5VHgxREs0ckpLZUh5OUJRQ3ArUUF2eVRnMVU3WmpTZ0Ex?=
 =?utf-8?Q?iI3X9Kf626JFaGm8RSCX9I6AX?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28cf4226-4211-449c-7eea-08dbb27ec413
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 04:22:53.0087
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LIKSHraVtH6BqRsVNYdN8E31H0g9nJyMZ9X7fNJ3j60ucGFZ85PVAtfJEB4ECYQEytmEVdyp2jpyCSNUqNv4sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6807
X-Proofpoint-GUID: eMZdGhRTiIy6MQnAjXYbWtN_GwZz1Dsr
X-Proofpoint-ORIG-GUID: eMZdGhRTiIy6MQnAjXYbWtN_GwZz1Dsr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-11_01,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1011
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=821 suspectscore=0 impostorscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2309110039
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 04:23:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60964

SSTATE_DIR and DL_DIR are writable. Sharing them among different builds 
owned/controlled by the same user is OK, but sharing these writable 
directories among different users does not seem to be a good idea.
You could consider using the PREMIRRORS and SSTATE_MIRRORS.

Regards,
Qi

On 9/11/23 09:49, Li Chen via lists.yoctoproject.org wrote:
> Hi Yocto experts,
>
> I'm a Yocto newbiee and I have a concern regarding the slowness of Yocto for our team(around 100 people). There are two main reasons for this:
>
> 1. Yocto itself is slower compared to other build systems.
> 2. Each user in our team has their own private SSTATE_DIR and DL_DIR, which means the artifacts cannot be shared. This leads to unnecessary disk and CPU usage.
> 3. Every user works on SATA devices, so the IOPS and throughput are both low.
>
> Since it's hard for us to invest in expensive enterprise NVMe for all build servers, I have an idea to address this issue. My suggestion is to use Lustre/NFS/Glustrefs along with small NVMe to share everyone's SSTATE/DL_DIR.
>
> I prefer Lustre over NFS because Lustre offers superior IO performance scalability, making it suitable for data-intensive tasks. It splits the data, allowing it to be requested from one server but sent from one or more other servers.
>
> For the storage of SSTATE/DL_DIR only, the size requirement would not be high, so a small NVMe should be sufficient. NVMe can provide much higher throughput and IOPS compared to our current slow SATA, so I guess it can meet our needs. If necessary, we can easily add another NVMe to another server since Lustre is a distributed file system. The overall cost would not be significant.
>
> My questions are:
> 1. Are there any errors in my understanding?
> 2. Is this solution feasible? If not, why? If yes, can it be further improved?
>
> I look forward to hearing from you!
>
> Regards,
> Li
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60962): https://lists.yoctoproject.org/g/yocto/message/60962
> Mute This Topic: https://lists.yoctoproject.org/mt/101284965/3618072
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


