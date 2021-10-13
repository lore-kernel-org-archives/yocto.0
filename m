Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 841CEC433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 16:52:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.34.1634143955093010106
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 09:52:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=O38eHkZ0;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5920abad25=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19DE02Zi018376;
	Wed, 13 Oct 2021 09:52:33 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=gwSbvwAxs1QzhZdtqU+egAvAhFtvuhSHPQ421QPs/vs=;
 b=O38eHkZ06nHlGJC9sV84mdbxEU3nSAwbU8q8ikxUaz/gIalxNLRYyh+uYepRk6P9LKfA
 MbCLTw9A2KuJdIrkJ0t8GXFdnbLjr5Y/7qmSiTWdTmn7bGt3lBKu+LoSzhiTNRVi65L9
 EjD7Js+TycA7gHuFhBp1oRe34aE9/nO3gyaGyD/8hoFHQ9BDjXK9ARHxRSyKKr+8CD8r
 Hilqz183+h7tpuFYxBh0xS6gD6XdXL/CoiFd0JdAhSSbb1HmIaMb2gqmDvfQouSLDQZe
 p3SvKl5kJ5icgWlWpkq56238hFrEl/TsrnPF6jaBVEPdkxq5GTwqCz4zeeKlOy0eLyY1 hw==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2174.outbound.protection.outlook.com [104.47.55.174])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bnka70vb8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Oct 2021 09:52:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWbiaLil7EMzGOlo/kv5R7tfW6IhAe6gwGB/6MpsYWTiJlR0xmJrGK+9FLosOi7QXLdSyifbo5d7LDfql0WplJfAqay0sdxceSIbkv7CDdfOMSNNeN3v3j4EQA3QrqQk7NNzqJXTrFI0g4mIHr8OhyWgWFW7iMO/TT4R7yJd8R241IDjJFxxyfJyiVcy7yfWQxJlww4tTgXABOtMkw+psXpCy4fKkFzs4t1aYjwn/yLY5XOq0Ghw/dRybl56z/zlXLfWC8Vg+1AfByr95jc77WNps+oQGKjc9PUxMldw9e25bvGg1EGLL9Yk0dheYVnwB+URtUuSlgL24vPjS0vodQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwSbvwAxs1QzhZdtqU+egAvAhFtvuhSHPQ421QPs/vs=;
 b=dj+FNTYRX9UnxHOPqwK79ZRcCKVTpu8VF3YsuVmiHqbZK5KKHNJjkHWJxpXMIFOyXk4OlcRvn4FyDiCQ99PlWTm3dLTBzI1rayx+jkTPuIiausAJ/cLkwrUBvnH78/wHzYrYzCTRI/sZ9+17xIjV6RJV8Dhd8ixRyKFvyQAnNdHvL363+TRP6+vza/To/sz3wDEIq2goEFnZ06/qSJDUB7oJ0TiYkXYVGJHPXXvP/UMI//r2LJsvwLIOMXRrvk2OsVI2iFziExJtuzAaf9fQa0kRee+knCadKb3oGqqLmphwndRS6Wz0CMoAwTkmHAMLwtQ4vVb+p/koH0t4lR9FAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4233.namprd11.prod.outlook.com (2603:10b6:5:14f::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.20; Wed, 13 Oct
 2021 16:52:31 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5021:c72e:2201:1a62]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::5021:c72e:2201:1a62%6]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 16:52:31 +0000
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.3 (hardknott-25.0.3) is
 Released --> When is hardknott's final release: 3.3.4 ?
To: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>,
        "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
        "Mittal, Anuj" <anuj.mittal@intel.com>
References: 
 <BYAPR11MB3301562830160488905FC7C388DD9@BYAPR11MB3301.namprd11.prod.outlook.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <648ec437-a1f0-e365-4e56-855b0d9b666c@windriver.com>
Date: Wed, 13 Oct 2021 12:52:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: 
 <BYAPR11MB3301562830160488905FC7C388DD9@BYAPR11MB3301.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH0PR07CA0097.namprd07.prod.outlook.com
 (2603:10b6:510:4::12) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
Received: from [172.25.44.7] (198.48.226.187) by
 PH0PR07CA0097.namprd07.prod.outlook.com (2603:10b6:510:4::12) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Wed, 13 Oct 2021 16:52:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e1540f3d-d54d-469f-a8e2-08d98e69d904
X-MS-TrafficTypeDiagnostic: DM6PR11MB4233:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4233EF3525F87FAD9EBB9239F8B79@DM6PR11MB4233.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HFKJV158jR1yUFUOc3nwlmbfTn+710RqpSf6k/Ft6YEPw9YV7lVZFUKfolE7nxcnNVpZdA0WVrac2aAeDMoXVDgNVZPIaX5x8mw0ZuB7nTa5yIr5OiDGh8G2fDJE25wFM2Ke7MXlvIRi2Unup69nYqmT7q3ZC2AA7liyHqjTffbUBxk/1Gqh6OrRzUDUTnzbx7XURLdoFy4lXzRLvcEzGsa9FtxDMIB3A6J+Az4O8jZfCvbIr+1qG1y+dbzpncsxDcbdIz/KguUwG721Sc6xFOSW/nDYgh3uoiW/9sUXOWZCEMQc6d9kuyCTNtWAOiafsyNhT2plwRNGb+0APJtzPtz3TWe8cyeE/G8csH3xbFtoVj8KFo7jVGcjN5uokMybGhUb9t4K3uHwRpu/3+7GY8tXKl4XnnxlhaQtvpGJhQ6ritTzy6JiPnTTMKXU/1q60ZnkpuhBpfUbwlCvI2+FTYYxMUZVy329ooBL7Ibo7cwMR3jd4E7gLS15yRojK1SxV1LtbTBEDmovQBoP+2jTPi3DC2toAx+UKjOtDxue/baBAA4mf0X6fuhmlmcNrs6xxa80LzZXcli48VrdFYl+wOBfyQx0w9itaMR803ggL6E9i3lrJgsyGOO2zaZ2iqj9wdpsi9t9LBr3JIyctia9yQz3Vzo2NRT/aNzC0bQRRcPyx9md0b4w1ZCImhsg79WMtraVLHBUIaMHB9XOaAQQ/Vi24JaOgwCXb5z8DAEXbEaLtKGtFyqgogGLGzMO7CclVyiNguTthMCRgmNsaq1NH0erOmY6kjN5OOIp8eLEuXn/I02AOi7/CDYjZN4Q5HEmVhS2pEU7ce0o735S9yDK0p3LQRgHqrH9/u6+tHu9T9ubGoVD84CxJqxHO6zeHSr/kcj/AemlliuWDxQJTxOoiA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(956004)(6666004)(36756003)(2616005)(16576012)(316002)(5660300002)(508600001)(66476007)(966005)(558084003)(38100700002)(31686004)(8936002)(86362001)(186003)(26005)(66946007)(2906002)(66556008)(31696002)(8676002)(6486002)(38350700002)(52116002)(110136005)(491001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?Windows-1252?Q?ixCMZhY+Zj2b/aQniyOU56DpeV7tS+jnsvr/9wJuau+kkqf/0gZOMmII?=
 =?Windows-1252?Q?aCa+thRxhm/e/3+Ppj9/c7P4tOtUL2rbeIHqyl/AR7/WSHO/AozIF1je?=
 =?Windows-1252?Q?NDhNA0yi3MY3ssfl3b8Xt93dr94lfW73lboqeqV+fYdKx6EysbOw3+ao?=
 =?Windows-1252?Q?HB+eb9fSXGZkHIxbq6b85OJLCDsjgrSdn/oxJkVdSdRYsDe0yPGbYA+Y?=
 =?Windows-1252?Q?vmPlI0OzwRaJu1WPsloxoJuIoI9mJXiK9MkQrNINOPlie6iYSFoybIK7?=
 =?Windows-1252?Q?15n4jMatb0qJCt3cvmnq5u+RdoH64RnDKP3GfE6WKlvYjsHTBAJpFju6?=
 =?Windows-1252?Q?WZ34JOPCYTK6JkK/3NeYPnyBMaxdn/mUvl1lKYKc9I5v8IPAZyr05N6y?=
 =?Windows-1252?Q?he04yxEELNpy8YdIe1ukzkIX2PQKufmKejR7bG1Ah/rwPWXdXZ6w/mxy?=
 =?Windows-1252?Q?/R+RC1JIItK8l1vbU0XBfekF++GUox/rw8EfIlkpl1U7ZaDq5WkkvOIr?=
 =?Windows-1252?Q?Y/rDhlZDswNNN8Gv0pZLxJAGHcj4noYlX5kLj19P3n2liRG9WbQ8vSEB?=
 =?Windows-1252?Q?PMiCHspEP8mN1JOZ/azvXN5EBQuA+sSsXOYpBllN8ZueLHI9vrfeUUqW?=
 =?Windows-1252?Q?AR+h8koh1vUPW3JEQJBhhsYggErniBU0gdoI1YW/G562LHNsLnVGZUlH?=
 =?Windows-1252?Q?MuIZ7xKLeYwLvxEAGt0mJTSM6JT4QqDs2hBcgrFZoopYCzWZYhHvq8oq?=
 =?Windows-1252?Q?/I0uyd2Y9oNpriDmpd4DQuABzdg1Dz4H5LJAxZ3biFRSXQIfsRQQJgSf?=
 =?Windows-1252?Q?dYrc1HbKxE6BZFenOOWDaGFpz3/pMW3l396PYd3gYOdNDZP022S/LUn/?=
 =?Windows-1252?Q?xIz2F7rZhWPLoNGHGJnTQOlJ702Ero6N78KUp5PFNG6wp88djKNluwoC?=
 =?Windows-1252?Q?rBened0GVKIwMzSkbCejbxURabItdzervtuvhq/3QQBmn1BIZ8SBOMgf?=
 =?Windows-1252?Q?V+P7cXrNaJ6upDx7x9O40TaVl+ehE3oDOgPZvWT78Tw7jl147IJe1vlQ?=
 =?Windows-1252?Q?0QQT81X93IgjJbb+B+4IyWQ4FNSkrFERa4DpVQqx8EJOE0ib/5CrnYPh?=
 =?Windows-1252?Q?QeslEatBlVtx2bCM78UY9g7ovvGugCUXYLmi1ZYJ1v6AU9zk0hZxr95e?=
 =?Windows-1252?Q?TuvlSLksUiZzIVNli5YGfCgmEMxRRwo6Zvp9iy9r5YfUFiXPVTR2zkng?=
 =?Windows-1252?Q?rr9yxe4oIGW3Qq2e4X04Ibeo54iitJ2KU/PRNMb7r7cmXuRoRNm5HGLS?=
 =?Windows-1252?Q?ecZ225NXuZKdlUMFrhIg02cDihGQwJQGbOpXYpwa3CIT5bGNzSfyH+Ja?=
 =?Windows-1252?Q?6LhR/uf7riUIwX9LZwzat+4TBMHwRmLCS2tNdSBqLvagsWDJH6FHrsWG?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e1540f3d-d54d-469f-a8e2-08d98e69d904
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 16:52:31.4876
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 7xhNM/dSnh60tLbuH9LeVbMnNMjO6gDGABdhS5hOrbJO2L/xsJ2iwK5UvJGCHNgd1K6TR7lkbft56SGonw3CVxFx9uH/6Wf5DW5a74FeOq4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4233
X-Proofpoint-GUID: DFqkk7kyBsXiIqorZ7gx3nhNLEF168vF
X-Proofpoint-ORIG-GUID: DFqkk7kyBsXiIqorZ7gx3nhNLEF168vF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-13_06,2021-10-13_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0
 bulkscore=0 clxscore=1011 suspectscore=0 adultscore=0 mlxlogscore=908
 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110130105
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 16:52:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55053


When will we be doing hardknott's final release: 3.3.4 ?

Is this info documented in the wiki:

I don't see it in either of these links:

https://wiki.yoctoproject.org/wiki/Releases
https://wiki.yoctoproject.org/wiki/Special:RecentChanges

../Randy



