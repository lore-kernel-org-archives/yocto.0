Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.957.1626910609914085602
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 16:36:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=FQ9RuQp4;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=28368f3232=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 16LMkmSW009610;
	Wed, 21 Jul 2021 16:36:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=yqIWKS6Sop+ouuFF3h8NgnZyx9JXZjIjxkp/m/tQp24=;
 b=FQ9RuQp45/4Q+ta25mNpjAzdqNpHP86JvZeYgtKCmmKKZR97IPWpfRTQrqoal28rCDpe
 qIeQeLuimv87rylbSL1ym0Q7cvIvRiEFA/E4gbPQWzg/VENCgOXTAw2k6bLrZM/QHIE8
 NupgfkxcixDM9ZJR6qnXBEDj0Kp14aN+7G1IFPO6LMD3I5Y0qdvcH3qCouXV4fSZi0PK
 HVeCF5McEJSOX03uWUc2VeoP/lpYGzw2oRoORSBxhYS9px4RC7/IGZ3aQYox4NJRgoaw
 vMDG4hr+ji3cj7i3gFwtXNaWX1VMQwgqrZ6XBQEanQBhUXzeKJ65GpD4lLZDNGwTD6MD rw== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
	by mx0a-0064b401.pphosted.com with ESMTP id 39xb1h8sbt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Jul 2021 16:36:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RiH4mINAajjxCBJ6eGdAnoF85wqlCGIgH+8aRVGuJk3JIwEN3Rje5DfAIOIwOiozAOXP4G9m5A4i+l+LOSdhCckz+Mn2DRmlqRvRfq0FtWetgPZWO8qDLG1lVF4sXTox2lPd0xWwD7ezsahlfaCJGg2r+fwn5mVvScIGEZ8j6UCF0AgA53b2KNmOx5ajyl6bZcT/96KXzQSNY5tqPt6CesTaWNytodJfoZhR3R3SnUwMdd8SCRfQpUmFKGbNoOs+tmGPsiztbA9f5Hkkxb1g+ZReVv51tiaCJULyon7EXMcpe6qxR8+7H7ashvfv+KcS4p99AKb/50Y7JhqyQXaXyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yqIWKS6Sop+ouuFF3h8NgnZyx9JXZjIjxkp/m/tQp24=;
 b=YtNWWOGVEmJq/vbGIZGgxytQPOQdw6xjT60Yi5sB8+02llPGgoX1nipn4rB/EPqmeq+cMS0Q/lBXPvyc0nNikO9s8tgmIS7qvJ/XCUah7Ss6373+OpzDXcE1PaahzxC317N+I5LThhtliTRPM8y/u6vOaovuPJN/YkbKlM2kwPdlDrGSedIQqCX314MP4zpmyURlV220txe3ikf/Irn7sMBoz4hJ/GKvxA29NSvxQoD+9+OjmHEiDcEv3/uRv+dxtYWpbCS45q3c6kYFMpaXX4/0+5G6dDZYMOs0D/GXe2bxBwyLq5XoMvfzKE6I+nLYUZFrLv5ZzSI62AzIwG6l3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: denx.de; dkim=none (message not signed)
 header.d=none;denx.de; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3514.namprd11.prod.outlook.com (2603:10b6:5:61::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.24; Wed, 21 Jul
 2021 23:36:41 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4331.034; Wed, 21 Jul 2021
 23:36:41 +0000
Subject: Re: [yocto] [ptest-runner 0/5] ptest: Various memory fixes and enhancements
To: yocto@lists.yoctoproject.org, lukma@denx.de
References: <20210721094627.29833-1-lukma@denx.de>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <40d7ecd0-d330-6573-5959-4be169e1160d@windriver.com>
Date: Wed, 21 Jul 2021 19:36:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20210721094627.29833-1-lukma@denx.de>
X-ClientProxiedBy: SJ0PR03CA0197.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::22) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0197.namprd03.prod.outlook.com (2603:10b6:a03:2ef::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.22 via Frontend Transport; Wed, 21 Jul 2021 23:36:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7421f73b-b9da-4659-824e-08d94ca0643e
X-MS-TrafficTypeDiagnostic: DM6PR11MB3514:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3514E37EA34F41699CD3EDD9F8E39@DM6PR11MB3514.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Z8YTROetirlFaAhGjKWktnYbQIWvw6YWz+Q25FK7v+3s1bo6PfzCFJyk4uxgHtROT0YTyENojINW3rU41+sRjQJj5ux1SbGYVpNCAYbEFy2iFh4HErmcTPEFPD5E5NQ52KzIUBLOBht7m6cxTtwFcvNeGLvvva104pydVZUoq1JDg1+N9jp1+AUE9FvKhhR8GnXRQRGt+l14XwDJPLJhzbtlTC4ovw21H0LkEIy9lRyvaBO1DL9Hn7YTQh5qyQ7ClSymR4qf9lU/E/gCatE7LCoixEZND1wg+eo20v9Xa/9ii+d/UjCZ+Hz4AFEsG4V6MkYJHHBPbQIiCS5Z8MykW/iQuG9vLeCw0PeWpq0spaMSLQpKcfyFoCsJu71obIcls2c455BBe+xGxXsgKbH6ogH9AbgOxAr+uvYk1briISbdxDHvD3QV+xpjNPc3kibb7grYn8XSq6EcC0fYzTcAuGmnNCleqwRsyVIcTFbwUpJVqbPLyKPiLW0CQ3xW72O4OdK+mWrBkXqK1D/y7g2YSQu3lufLoiUm+8t5AyGR9pN5aYeJHrIVhcRYxJz9oRSRexT3GinQZlFPKswsbcZguZDbN0GXqcqKxM/WoFwjxpktgqZmS3+yTWEMiy/cLEUk+GB++bDIPU9tyvn2HNqmY3ATB6hXbif7kV7ZL9Po9nAcQmINmBzIbbGVGUGlEHWfEiCK9fOyhI1IkLDySE8v3KDZjE/PRvHGooix+dJobiV6/MJiBPWcs9biFNWYBOSjR9Jdr/C+cqqwxV550smrcyt60JhhgDkDRhmsEMWc/FmWIegJl4YmIkk4tQXUfacl1rA/MbON8Z6r4VXo5UmDfTCVQkD1wsiniZJOpvXE5TePw9ltpYJGpPFmELkpiJUn
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(396003)(376002)(136003)(366004)(5660300002)(956004)(8936002)(6486002)(8676002)(478600001)(31696002)(83380400001)(316002)(52116002)(966005)(86362001)(16576012)(2906002)(2616005)(31686004)(38100700002)(38350700002)(53546011)(36756003)(186003)(66476007)(66556008)(66946007)(26005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R2doMWVDOFV3UCt5bHlsRjdxSmpyaktNZk9GUy9EMGQ2eW5MN1htblZBUWJm?=
 =?utf-8?B?KytMRGRCRjVIWHUzSitzUWM0YUVpWHQ1Z0gxaFFVZDg1V3g4a1BuUnZlL0xV?=
 =?utf-8?B?VlBBUTVOTGxkRFd2ckhJWm4vUk1MS2E1RW5VNURLbTBkMndvNkFrRkRjNTM2?=
 =?utf-8?B?UmxtS2pSUHJFYzVJNFhUQU9lR3BYZ3hKWnBRZzZZNkh5UE9maXd4cm5EakRy?=
 =?utf-8?B?eHBwdVdNcFhxaVpTbUJYdWdOb3dqM256TDRCYWllaGgwQnA4b1l6dVg1TFdp?=
 =?utf-8?B?T29wTGJjZndzb29MYWh3YUZGeGRXUTA5Q0hZcms5KzdLVUR1MjlnZzhUbmlv?=
 =?utf-8?B?a3FxTi8zWG0vaCtad2w1ZjZnVzRBYlFFcjc0U1dRcSt1clhFZ2FrNWZsZjJV?=
 =?utf-8?B?c3ZJL3FORnJualhYSytJMk1HOGlDWGpFWXZRMndZamxpbm9EY3NEaE5Vbmdo?=
 =?utf-8?B?M0lzV00wUkdWRjJEMGtOYktlN0ZNT1RTTi9uTURjWTYwVklEUFpBSkgrZTEr?=
 =?utf-8?B?eGVUaS9QQWcxQWhtY2NPMmk5NTVLRlhpU3F5T1g3M2loUTlSSGxvQ1F2bERO?=
 =?utf-8?B?c1ZkdDJnb0xab3dwT0tqOU9QTkNXR3hvTFIwSVF2TFJ4MGNlbllydW00d2tU?=
 =?utf-8?B?aUt2NmwzOUMxVTdVL0taaDZSNnlCNTNqRHNqendFbXFqOTJFY25UZkFzWmFV?=
 =?utf-8?B?R2Q2Q0JWemhTditsV1BrTzh5eC85bkZVYjVXL0wwU0w2RS9WTEc3emNDcFR5?=
 =?utf-8?B?RDJROWxjUXpWR3pyckZyODR5dXFmTnRIVUx4Ym1xK0I2OHJEeXN2cDF5WFow?=
 =?utf-8?B?UUVaTE1EeW5iQTVjaHdFb2JSRXQvdlR1eFJWRGVjMHMwN01SeU9MTmNyTlhN?=
 =?utf-8?B?UitadlNwWVh5NHJLMHRyWEpxSit0Z0VOdEtWKzdOV25KY1JORlNKanFqckVU?=
 =?utf-8?B?Vk1zb2JsK2xuenFVeUVzRytyc3l1aGh2V2xKNjYxdkZpRGVwZURUblhIWGFu?=
 =?utf-8?B?UlJSOXVSdmRycE5iUEk4TjVQcThvUk5qT3VCVlRtL0wvYURmaHRyR1Rtek1J?=
 =?utf-8?B?R2ZGRE9HZXc1ZS81OHBHb0tEVmIxOHdhSFZqSTBTZ1hNTFB3M2s5YldHYVlC?=
 =?utf-8?B?eTR4RWtnRUZTOGd4bTJVc1pqWUI5Zmd4eXR0Nkt5Z1d3MCtHUWZnZllZdFBi?=
 =?utf-8?B?bjBNUGxHOXdVTVJ2cGNGWXBGSVkyMnN4b2EyR3l2Y1JXVk9wYTl4SjhKdDNK?=
 =?utf-8?B?NXl4NEZpSXRJcGN5KzJncGs4MUZ4b0Z6L1BJSnRDZ0Rwb1k5TTIydE9XNkd3?=
 =?utf-8?B?a21zZTBmQjR4MCs0eERlSC92QjYxQ3RJQnhPMFpzamFSdUQ1dm5KWkNBVnRE?=
 =?utf-8?B?QzlaV3hWRUxKYllvS21NMjRxVUxSZkZwSHlGVVM0YTZadExraU13d0dCTXZI?=
 =?utf-8?B?SHF4VkROd0hzZ0dzb3Y0anNJZyt6bEZnVmFDM01jQjRPWUsrbk5lWkIveUtX?=
 =?utf-8?B?TXRWNytabnBQMEVZQVpZbmQvUHFjOE1DSWtwcDR5OU95OHVvNllJMDgyQ05D?=
 =?utf-8?B?Y0t5c3cwMGVib0RSUGdrcDZSL3RTZUozVUl1V0FIMk1pVHdxM0RSMUZ4NWJ5?=
 =?utf-8?B?UjJzU2JrM1Z0RGFJV2JlUlVtcVBGU3owZWxHRnFXTy9NckJ1T3hMQVlyUkxU?=
 =?utf-8?B?bElka1d6M3N2NFJCRkpVeUV0bVJRT3pvdzMwMlRPbVA5YURvOUh1bkJmWXYx?=
 =?utf-8?Q?/53MkdKPfkOOPNeS2zraPFFCzWWwMZzLIZmVCiy?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7421f73b-b9da-4659-824e-08d94ca0643e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2021 23:36:41.0941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m5W/xFcG2y4udiLpi3/a+OqWWQ3XgGQ8O/mqhlqD1AMMJBitif9mGH7HzFbajsQSMDPMg9147RZyv0vkqqBH1QryurbvMxq8LXIoCApC13w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3514
X-Proofpoint-ORIG-GUID: N2cXs6qEI62-C4_aTuPnupg1rDFRUtaw
X-Proofpoint-GUID: N2cXs6qEI62-C4_aTuPnupg1rDFRUtaw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-07-21_11,2021-07-21_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=648 clxscore=1011 bulkscore=0 suspectscore=0 malwarescore=0
 spamscore=0 impostorscore=0 adultscore=0 phishscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2107210141
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-07-21 5:46 a.m., ?ukasz Majewski wrote:
> This patch series provides some memory management fixes and corrected
> return code handling for ptest-runner2.
> 
> Adrian Freihofer (4):
>    git: Extend the gitignore
>    mem: Fix memleak for ptest_opts
>    mem: Simplify memory management
>    mem: Refactor ptest_list cleanup
> 
> Lukasz Majewski (1):
>    main: Do not return number of failed tests when calling ptest-runner
> 
>   .gitignore         |  3 +++
>   main.c             | 33 ++++++++++++++++++++++++++++-----
>   ptest_list.c       | 13 ++++---------
>   ptest_list.h       |  8 +-------
>   tests/ptest_list.c | 13 +++++++------
>   tests/utils.c      | 22 +++++++++++-----------
>   utils.c            | 11 ++++-------
>   7 files changed, 58 insertions(+), 45 deletions(-)
>   create mode 100644 .gitignore
> 
> 
> 
> 
> 

Looks good to me.

Did you happen to check the compile with clang as well?
If not, I may do that eventually.

-- 
# Randy MacLeod
# Wind River Linux
