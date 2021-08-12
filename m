Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.23517.1628781245620253903
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Aug 2021 08:14:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=d2n64HnX;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3858c20708=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17CErLCH030867;
	Thu, 12 Aug 2021 08:13:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=PPS06212021;
 bh=cUwFPUJqOGUjW5K453IA974Wq1bTlWTxlnOKjxkfgQ4=;
 b=d2n64HnXoMIDStSsD22JZl5CiElujDzsVq19IvgDMqNzp8CBTam8VDKVfberZpSOMD92
 h4vQzBVptDMWp7wxCQpi3w/80GuZJXcOswMoxxFegnPoHGi54G5lSuDw9auZlA62JZkA
 L4I1HKxuVzn/Trxt0XnwRqulZXaVzKjmIyCtABH4sd+KlOLjzMMr6CfP3KclDQ1+D2Sr
 GkR5XJdRK2TxgF6naGTMIUrR+8PH9uPqgMxLnn3vaAT/8b8/KfzSAwgzGVTbl8HySYPl
 rYZJONEbj/LadR9PWbywYAn4/c1OKhGycnaVHNAjCuzDXh2/vLxB1NIVqEAifmf5u5+V XQ== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2049.outbound.protection.outlook.com [104.47.74.49])
	by mx0a-0064b401.pphosted.com with ESMTP id 3acucv0dx9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Aug 2021 08:13:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YREfY2KAHYKXp/QeEpBEMSS5y5HSY+XgOrQ3HozSLQ8atKQvpkDnub+bLUijywQkGZvkQRwCbr71Rx1UzikK6M/0Xf3fNUkJDfCdAI5y9kjvYZwqrV8CeCOCRog8zXHIbvJKP73ZGJbL8u1cQlRj4EgNAWHb8Ng4k72RZseuqwkBMbR+agV7vLZTFqmUiCq+GnzQnsEkfkzI9qUB084ZyloT1YlELKaUaiCk171+cD3/LGwakXfoYUdTz7mchCGoPHy6HsU4fPJwnyTyzPHRKMTkddR7b9pfVWGLn722m/4f0cNZl1/ZQBv5WhmZMJynTVXeVEMThNybAin36heLmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cUwFPUJqOGUjW5K453IA974Wq1bTlWTxlnOKjxkfgQ4=;
 b=LS9lxkWHrtyu+Qq+ffZrHeO4LYlmfSOFRQL79Mew2mqgQW3vFj4LNNhsXWjGRY2OFuZVsbeMgucnGxIOiVofRQaxgQJEezonvnKKQCLEeS4Ny+4bsfE5vnOgoreCzmjJ9lw5KdAnHbUyiHgjvCRTtP4zLEpImXdbInDx/2Pz7PQTBN2K7HYTNAbhw8OG5XSnVJW/GgNimG5HFZXU/8UjMlJKAeASNPEB4yxsPdUoGoOlVkgEZ8KSWA+ZTiKyhd2qVRamGx9gVBKsHh1yz3sgvmIYLWd5OD4o+V1PsujddujCbbubGpbY9eMCm0Jyd+DWdGyR1hJ3T4SLSVUNwqV2mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1482.namprd11.prod.outlook.com (2603:10b6:4:4::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.17; Thu, 12 Aug 2021 15:13:46 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e119:f175:fff0:b3b4%6]) with mapi id 15.20.4415.018; Thu, 12 Aug 2021
 15:13:46 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 8/12/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>, steve@sakoman.com,
        Tony Tascioglu <tony.tascioglu@windriver.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Message-ID: <5a1044f5-1e42-cb7d-47d4-1ef2cf157713@windriver.com>
Date: Thu, 12 Aug 2021 11:13:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: SJ0PR03CA0271.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::6) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0271.namprd03.prod.outlook.com (2603:10b6:a03:39e::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16 via Frontend Transport; Thu, 12 Aug 2021 15:13:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6e733839-7aee-45f4-6e92-08d95da3c7d3
X-MS-TrafficTypeDiagnostic: DM5PR11MB1482:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <DM5PR11MB1482A180994800A70A027AABF8F99@DM5PR11MB1482.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 gJOPjofEfu5WMLO0RFIYpyMxFpl3f9ad8l3N3U0VUez/kfsRnZJ8nXOOC6EbJvHwAf1eI+L2sopB6IXaLf0RIjXiEoll6vHg/TtbluvzfDcKmIVySNeFZ5pnaHWQBdWbX3vBL8GzAtwgDDRm6T/kYtBVpevyB10yEL0OV6qcbkuCuAORkrjJXwKw9rEn2DNf8BoFpi7AkyrhvQQIZLBl3T9zPqZIuJcvcI9G/tCoNFy7jSXGbI4IsI+ZoGHNYA7RoJEH4NNmGOftzbEAlQThY0GV7ABGigpB7ReRliK5s4kaGbmniuBO29JzVENf9AU9ixQCv9922EievMgVEFrXESTqiUdjZspJXWMbhpVWFIdIItxTPN8b1Lvu9zoZuwgKvRz7v1UdsG8iA0d8CCKeTtbpqKOUqifSgvjPeYjRdKzHYBXCe9b9zVxUuKi7xkecC5ksg3p/G9OtXqTkal2cLh7HFnSbiwdmXmws/doNDMze6bP0ZrEmxDjofRO5e1aH4ypZ4JGfs74ZTRmx4FuixN9mpkAZt4LU5fC0lRESUfnT/qCaVBk4l5PGtWrwDfxIAOaBR6ZOZ6WM/zIb+GYAdA4I2L2IA1y5cSpd7bgXJaLk8oUR3JoStxAsMHc0k0Ob4QpjCF7w2qs/vvNgQT9Ouwf4i4fmBvsD2ftAcCjSI57xnr7yzZ55/aRyNqMhNp157c1KaQKKqCSWAI7C9gqusG2nOhEr8nsv74PT9aORN7T7ITmy354vig7FH7Aoytwi+rlxYLhwwsJunTrEGV5BGOZJAmNqtvpuXyXqhugF5CRsHYdCSmQ6giOqKag92P9nkONwoFX6757beU4RDpDlzLNIawRKdSLkKqsilHgmh4I0yh1ILcokGHGOeYvAWgJkRt9gqhlVUhaEKHNS60UwnjiEj73yWfhd6pNnRZZNZ6Y=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(39830400003)(346002)(136003)(396003)(38350700002)(6666004)(2616005)(38100700002)(956004)(4326008)(8676002)(186003)(8936002)(31696002)(66946007)(6486002)(66556008)(2906002)(66476007)(86362001)(7416002)(478600001)(16576012)(6916009)(54906003)(31686004)(26005)(4744005)(316002)(52116002)(36756003)(966005)(5660300002)(83380400001)(45980500001)(43740500002)(15398625002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?VEdMWUJnQ0pPSmplZHBqa1doVjVMazJ6Ry96aHllUkFqV3pNQkQzYVpsc1hQ?=
 =?utf-8?B?OC83THZnRjBvTE9QTEZaSXJtNGxnVldWRVJHYVNxTXViSDliRXhlWTRQUlg2?=
 =?utf-8?B?WlhWZ1pMWXhxV3BvTVVaR25tcmVzNFFFd3lYdDJyeGwydjlVSU5Gc1Urc2c5?=
 =?utf-8?B?YUxSRXJDQ0tQOWhDMXZmKzVmb3VCeDFXNkZxbDJ5T2w5Q2FUUDNMTmtITnFW?=
 =?utf-8?B?VTh6QmRqVWljaTMvaUlCejJZM3k3YVAxSi9Gb0pYRHozVnl5Y3lqYjFzV3ha?=
 =?utf-8?B?UmpwS2g1MVpOUlZDd0JjWTBFeVZPTkk5aHNzRkJ3aDNieHRTZXlwbUVDQXNW?=
 =?utf-8?B?K29IRE5CQnU2MjhDU0R4WkZYa3paREtZRnJtQldESk4vb0ZWR0JoUGVxQ0Ry?=
 =?utf-8?B?K2kwei9xS1FRWVQ2bFNoRzlpdUhMRnJNM0tIUXpDRW9xRlMwZHJRNjBDaTU4?=
 =?utf-8?B?eDZsamE3RDAxK2F2TVRtM0JyN1dHZGFRSkIxZUxrTmlscFJ4bjdqSGhtYzJD?=
 =?utf-8?B?aVVjTDVXVlpjT01BWERWYlNrTXRyWHhFd0pJdFl2ZTBkdGdISHFPYTcvd0lq?=
 =?utf-8?B?NTlBdWp6TkZPZC9LQ3RxOXRJa2dCalBZc29HZUY4YWZnSlFHWktWU1Z6WXRT?=
 =?utf-8?B?Y3pqVFJFODNJblovNWJVZGpNWG83ZGlrTHk0Ykp2cXNvVUVWK2krRUhBalEv?=
 =?utf-8?B?NlBiZlU5djhSN0g3NU9WM3dmQXh2cHltMkJTOFpveEdCWWV1MlBxeE5IY2Vn?=
 =?utf-8?B?L1dCQnFPeFdzWTByY0pCWTlGQ1dYbkdLQVRnN1pMRnNJcndLbkVBbnhxVzBH?=
 =?utf-8?B?UlZQSVlKN1pnK3hxVjIxaXZYNE1VOFpPbCtaUDRhQXEzcENibmRMUGdOUkl4?=
 =?utf-8?B?U3JTRVNNYnRMc2tZTFpDeHI4dGt4UnRleDBOZURUOGpicUl4bzkxdURXNy9I?=
 =?utf-8?B?SUdvT1RiK3o4WEszVXU1K3h5Rk40R25QYU1kUzFJeTA3QXdGOCtQRHprcEZM?=
 =?utf-8?B?M0FOMnNKZlhnRlBCcTdSc0ZBU0MxNmFUWlkya0dCTktUWnF1Q24vNFFWVVNP?=
 =?utf-8?B?OXlBUkJSRFAwNXRaN2piMEV4bDM0dlZsTHdFRzI2eFFtTi9vcWlSNUt0TXA1?=
 =?utf-8?B?SjNybzIycG9RTVZLUHhJaTI5TVZRVjgxOExBVk1DdXNId1QrTjl1UmJyNU4z?=
 =?utf-8?B?QXRtb0tBT0lrN2FkQmdyajZOdjZQV1RseEhtK2lxalFVUVdnMXlwOENQZjdX?=
 =?utf-8?B?NGVrME4wRDhGc2hUTS8vUk1qVWRvR2xscE02MGVjZFZ4VWdjdCtOK3FVaHB0?=
 =?utf-8?B?YVZxVUZycGZUNVU1YnlGakZRaWVQaDZxY3ZINzlXSktBdENoQUpyQTdHd2M3?=
 =?utf-8?B?R0VzUm9Ub1NQMW13U01XUnBrSUd1STVkQ3pzL0dCWFZNZm5vd2ZaQ01YSDZa?=
 =?utf-8?B?VWx5MXc2Y2d5RXNQMTBQZ01scTRubGR1MHlodjQvbVZJOVpLY0NEOUJSRTZ6?=
 =?utf-8?B?T2d5Mm94b3Z6MzcvZVE4WElneXJRWW1RMHIzd0JDL1hjQjYweTN2RnZuaTlI?=
 =?utf-8?B?aUFTRUVyUUI5d1pER0krd1lIWGlJSjVZdTlybEdnVGRBSGRjcnptTHRxYW5O?=
 =?utf-8?B?eG52QU44RFNBbjhQZEFYaG9qOThZQW9PSjloYkhyRHRFaWtWeHhxbWFaSU9j?=
 =?utf-8?B?WURWYWlYYUlLQTJ1ZGpoUWdrMm10dXhKeTQxTlU1Wk9MWHZTRU1qUUtkc3g5?=
 =?utf-8?Q?cykRGoUgPpdIWfo9bnHqoOoLqXMX9DZDp0Wcq7d?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e733839-7aee-45f4-6e92-08d95da3c7d3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2021 15:13:46.4739
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RcpjNKGad63HMQn0kvPeq2h6ukmOiCvtQ0ik0/B41SmLxS8669OVSZEplv8YY6Lanu2EFX0gx1mWzxvekBmPw8XeSMKvMUGrkxf/KqoTspQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1482
X-Proofpoint-GUID: 2xSN-lg0op0msftXXTJogZXTK5M9HSqx
X-Proofpoint-ORIG-GUID: 2xSN-lg0op0msftXXTJogZXTK5M9HSqx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-12_05,2021-08-12_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108120099
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alex, Diane, Joshua, MichaelO, Randy, Saul, Stephen, Steve, 
Tim, Tony, Ross

*ARs:*

Deal with old milestones:
    https://wiki.yoctoproject.org/wiki/Bug_Triage#Old_Milestone

1. Ross
2. Bruce

FYI: AR = Action Required according to Google's top hit:
 
http://www.nathanzeldes.com/wp-content/uploads/2014/01/Effective-Action-Culture.pdf



*Notes:*
*
*
- (carried over) Steve encountered build failures such as the one in 
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is 
testing/investigating on internal Autobuilder instance

- No Future/3.99 bugs to triage this week (wow!)

*Medium+ 3.4 Unassigned Enhancements/Bugs: *80* (No change)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *30* (Last week 30)

*AB-INT Bugs: *46* (No change)
