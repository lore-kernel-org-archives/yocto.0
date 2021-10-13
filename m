Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE102C433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 17:43:39 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.403.1634147018976923288
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 10:43:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=jf90TUkW;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5920abad25=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19DE02b0018376;
	Wed, 13 Oct 2021 10:43:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : from :
 to : references : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=LLtyTJT2C8Zak6b3io7m5BKKvi62k+TuJzzkQvSnoXk=;
 b=jf90TUkW3i8t2xJHHGni2qirPaozFXN/M0gjeMV5NApXq77tMka/ZxRwaF2/L3ZVVulZ
 r8eFFdb8W41KrGvIr0vlK9DWhndmvkVUEyfWivRgGO/N6rP/FnfMsWsIIlKrvA+VmvyT
 Td6+FlZbgI6t/AnHA2ESA78yDKUPGK19A86iSWrfciaD8MeYhANlg6q8C2qAsr9QCAWD
 zMbQe4l6GeYrwcKQNbkpXGY/RcwCqqjyntk726x22Ex+mcg0NxA4NFZKB01Md5VJCJ13
 aWwO+CyS4AM2maD13zi+eqVs3zQxUDXaTecm5VfsrH2PW4UIrrxcZLhfe4swyxlBL/8s 3g==
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2045.outbound.protection.outlook.com [104.47.74.45])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bnka70wua-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Oct 2021 10:43:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h8N+8hg/9ROziRqs77yQtN3fB3BHgjXWpneCJqV2Nr7CGT+b/K/2WVqz0q+r02WcsGlKUWERhDjqoJzG/cXn+t0q3SE2Uaq9BPKOTW4MrRPKhXdqnsjZu4y7r91LUhrIGMsLpE6w82rOxRleV++gm8AMXtxvuD41cyRzY7dkbpVRCJbwA/BBDIukKQ3R5Sn2326CON2SnvRYDoXvbVrGGNm0+66XSyyRJhZcejjyamXcjzgRSj/4AoM1+KRW/gPypq9REhlxWhiwqkciUkfB5LFAoWSx4g+NmLF1WXE6oP7363jPjsjXzOOvSiScY062EwJ2yFjTrlVNLw+fuDzoMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LLtyTJT2C8Zak6b3io7m5BKKvi62k+TuJzzkQvSnoXk=;
 b=Jd/LplOfmKXRz+Q02WF8xz5mdjdwdnoFJYR5HHj5FhSLTHb2fgCfJhdxbtN3xd08gVhyhB/4KCWwf+IuF4ZSeaG20nYFYOYmPwboitEBCyKi4UjNXzzMz/l2kuz80EwW/qGByh7P1Z+jUi2w08/8GW+kNq6ldj6YvNNHEr58LykI4e5SsYtyVeoeaDuCZw1UqhivGKqGAHjzqDnBP67XFHzjzLsH/nI0BnQlrfbCMD8mbtRRj+6Av1FnjdFIj0P7zwmtYX+hej3mvCz4HvIE1ciHX+68WKSQWwvxNhL6HAskJaWpLMgAXnSBQnsS+Tn7ar9TY9XGccYhZgZSSyAPWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1579.namprd11.prod.outlook.com (2603:10b6:4:f::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4587.22; Wed, 13 Oct 2021 17:43:32 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5021:c72e:2201:1a62]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5021:c72e:2201:1a62%6]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 17:43:32 +0000
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.3 (hardknott-25.0.3) is
 Released --> When is hardknott's final release: 3.3.4 ?
From: Randy MacLeod <randy.macleod@windriver.com>
To: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>,
        "Mittal, Anuj" <anuj.mittal@intel.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: 
 <BYAPR11MB3301562830160488905FC7C388DD9@BYAPR11MB3301.namprd11.prod.outlook.com>
 <648ec437-a1f0-e365-4e56-855b0d9b666c@windriver.com>
Message-ID: <6835c322-496f-65e0-e554-df1199320cbf@windriver.com>
Date: Wed, 13 Oct 2021 13:43:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <648ec437-a1f0-e365-4e56-855b0d9b666c@windriver.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR16CA0036.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::49) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
Received: from [172.25.44.7] (198.48.226.187) by
 BY5PR16CA0036.namprd16.prod.outlook.com (2603:10b6:a03:1a0::49) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Wed, 13 Oct 2021 17:43:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6fe66732-b3a8-4487-6afa-08d98e70f964
X-MS-TrafficTypeDiagnostic: DM5PR11MB1579:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB15792A8780F38AB509BAE13AF8B79@DM5PR11MB1579.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	uALOXKTnZ+EkGFqogaUay+kF+BYdxjYvZZqtyu8nToH/mcTx89qXkDPAZmEz/LAo1OWFTi+2XZnCWigrX+FQh8FKY5UMAmwDZ00mX9lN8lUstiCs378slfWcATwyOZurNHO+Ur3DhjAKrB6BFrutS1qcbGfOS0HwbxOxNiBz7X4UEytol0dOavL17j13pXFYDdZgO0OVSUgw/BmybG1bswPUZFVmHOYlTDGDBg2M1S9O0rLTgVkZI4kHpNERI27oPBCZjJVncTYFId8T7j1JgL756pGH6LqPAY+INsynkZJU28QEh4ik53w5Y9d8nAgyN3SVRbwo8oq2mDyA1oLIRo7KyfDt4mfhb+lpAFt7eRM4k0INcCNr3yUT/8jEPoM1HYQFkZ4ftMBEIcLKOCJKNN26mHuFyuqoF2dDQYv9VA0ga96K0BDAKcZzsSt9gpvWub1Ia6iITyhxdQL1wCxw7po0V+MC5/CpZOhIDxOcpv2CrBu0Ny+MjH9SpguumMy1+cjw+E3NSBwzOPamMRC0EFviHBTOfsuYqQiSYjI2IzvlquEsm5wH1dYUgHcYjCU65/slq010My79SVWBNf5smzQt1aV21Hi47YM6JGxFoI6IZvZB3thKZIuChTqfR24blSw0yyjh+I5ub1O6fREnZX/hFdJzJwJe7tLSO3Ij73FD1zMDJei0Nrw4aFe+UfUqrpIym5nrpLT5czru0KxBDnGIuGR/oys1cIRVnoi2u+VuUw9afQz3trFM6CfANGnX46lP9XzcQ2naLSokuPuXqn9jbJrG1tXT7tM/mJRMH6J7fLa4PBn+p5TNF8sqI8qSjss3VvFnNyLWxmqX8vuwR787mG73Z7sre5t0s8ClLt4rUPudBoV068GkJOrldOVWax966c9STI0FKq/LT9O8QQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(186003)(8676002)(66476007)(16576012)(38100700002)(4001150100001)(26005)(110136005)(316002)(31686004)(4744005)(8936002)(956004)(86362001)(2616005)(36756003)(66556008)(53546011)(2906002)(6666004)(508600001)(966005)(31696002)(6486002)(38350700002)(5660300002)(66946007)(52116002)(45980500001)(491001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?Windows-1252?Q?XfqkOIolbilWqjpuMnDqGrOd4Km8dNeD/6Jr8gR3SCPbnCi/S70krZGv?=
 =?Windows-1252?Q?7TFijZGSEjGkp2GzjXs0JFt6RKQ2Hqc/QasDYQn5ApHxbzYmam5JrKDx?=
 =?Windows-1252?Q?K80lQJ1FUux3aIp9Ju0WhzGlSp1WLN+VuboyM6NCxOOb241oMM3GR7rR?=
 =?Windows-1252?Q?IoKeeXSL6+OP9RZP2VzMQex/guOSJoH8Mad4rwrMlQDp5Dk8oe4t7xUn?=
 =?Windows-1252?Q?aKwrFD4mUFKNEyvHNjeGQXvz6/T5DSYcIDDe3zty7lHkqmuSN+mFXhjF?=
 =?Windows-1252?Q?mC9A7FlCTFWvZZGLTRaNie36RMICZLggGEoPTrf+YsihMyP8Xcez8f1R?=
 =?Windows-1252?Q?7aDAsCeJzjhXheC6JDwnVtqF+Omir01mgIWdl3s+eJpaYziBRI3MfCYl?=
 =?Windows-1252?Q?BxRKDDxtvceJKPCKpnVdYrBCXWcB19eTjxemSVGMnt0R4jkN30VlBgXp?=
 =?Windows-1252?Q?Paj4O7ZZHgGLf7l/QaaxwVRyIp/f/qgoFg6LZgm+KqHKLVskvqvGRw45?=
 =?Windows-1252?Q?iuDxBlaz5ZLqBHqRRmdB1z3XYAvNcwnkkrBJW5uWXw7bmzL3FEAtRNBi?=
 =?Windows-1252?Q?ZQZiXPeHu9HrOFwQkXMbUsPkM209v7QKY4oNvkyyLGUe83Nkmvxycs7E?=
 =?Windows-1252?Q?tQvaRXhjm4u7B7WOD1FsBMfXKuVAMjLZDZpDyNL2qDMWzQfqc3gy9dkk?=
 =?Windows-1252?Q?Jiq8cFcjH8YlWF04+jJBBCX02JOb5xhDhQ+YLZTNZoTG3sae6ZRpS8Bz?=
 =?Windows-1252?Q?bQoyUHUncyppInZi/h6zrI87jx7IgsxFd2/7mgQrk0/PBsX/ZKznutm/?=
 =?Windows-1252?Q?MLxljV1PYwV/FEVaZSLwMezaT7YjlC5XukevKTQ7isLUuhdFWR42ZU58?=
 =?Windows-1252?Q?4jjQXDb3Xk4JIvjIlrDq0BS8cchJraJh4mkRqClMRBJ55s8ITDvth0Zb?=
 =?Windows-1252?Q?niBHgI9EgO7Jre40I+BY6v+Yc0B6vACHMGwpeeHtKw7HogM2Z6vq7W9R?=
 =?Windows-1252?Q?27jlACk0DKLLqVuqk4fxksYpje0AH5S74bmyS51NvAQHimy/21Ci0CPb?=
 =?Windows-1252?Q?Uawxj9zpCztHZDoyA+nZ9r/dZrG7SgaR4n9Y54dJ9FqKTx/VmWadJ0RU?=
 =?Windows-1252?Q?zqtwEXWYOf9J9a6cxgBE3sP/bLpYY4t6R72wg6pKSdfMSEqIjI1oA0bj?=
 =?Windows-1252?Q?kjp35gtR6jw7SGPccnfdJ+S0E5d2Jwku9QZYimRvzFLbizpWLxFkSTVa?=
 =?Windows-1252?Q?+3C1DkQqYaZS5VwBc37ikj7cL6FOEmE+Wyx//q3ArvgcjqysyeXVIy9j?=
 =?Windows-1252?Q?jnvSsURyQJpONsOBE82u+Q9i8B+yEF6oC7BhG0eoz5IRtaYgSNiefdWN?=
 =?Windows-1252?Q?JZAOT3/EExpuYSYvtfSfQYdt07B7aH210XJW61Zg7BP1ooKbNJ9o1fNc?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6fe66732-b3a8-4487-6afa-08d98e70f964
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 17:43:32.2814
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 GbGiqaqGsshkX6pjvx99GGCljIYIQIJmTK8Ii4Ml5ePUTuUe2FP7eT6A4TWoABX54h6nhrfjYg7h1CtjSGKIRmgXkFJzQkc56T1F0q5sDX8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1579
X-Proofpoint-GUID: ce6YZKPNOT-JP2GbJaNT7bZ5orglt9b5
X-Proofpoint-ORIG-GUID: ce6YZKPNOT-JP2GbJaNT7bZ5orglt9b5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-13_06,2021-10-13_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 adultscore=0 mlxlogscore=999
 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110130107
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 17:43:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55055

Sending to Stephen's gmail address.

On 2021-10-13 12:52 p.m., Randy MacLeod wrote:
> 
> When will we be doing hardknott's final release: 3.3.4 ?
> 
> Is this info documented in the wiki:
> 
> I don't see it in either of these links:
> 
> https://wiki.yoctoproject.org/wiki/Releases
> https://wiki.yoctoproject.org/wiki/Special:RecentChanges
> 
> ../Randy
> 
> 


-- 
# Randy MacLeod
# Wind River Linux


