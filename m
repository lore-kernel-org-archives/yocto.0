Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8035.1626356394833710627
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jul 2021 06:39:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=AddoS3OX;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=283088f2e7=randy.macleod@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8CCBA38C08EF
	for <yocto@yoctoproject.org>; Thu, 15 Jul 2021 13:39:53 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16FDdcqm004428;
	Thu, 15 Jul 2021 06:39:48 -0700
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
	by mx0a-0064b401.pphosted.com with ESMTP id 39tb390cq6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jul 2021 06:39:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NP4M1Wg8DdI1R/rz6fzEl8EglQdIjql34eCGvzLxUo0tpFeBAB6978hJ3eLG+ooEQvkGPRGkJ+dAfrkishRV8mHGUtvCXYtXjTtb4Bs0d9s9Zru9ij3UrDViUnW3untX03ZJOH90Zx6haTxKER6u6moS/ittCf3jsd+5l1VrInuiZ9GNFcrDG6cYSX7XSZoF0PN4fWDgVkvJDVG0ruc4VNlukE3BX+mJL1ic3yDtlU9yIJgwT95jY1rOGVMMWqWhb/8qQm1DaNa1nI7sKUguyVXe/xJ+EiuThW293DVlCjATXcngIBmDmqLYyZ3LhqnmxJxdUPISJca8VTR/PlA6nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P1soHCZNBngeIaAMJ60foybQNJYPkBHbyoSLDsqeVIo=;
 b=hZmoIs0ZmuNJjwahG8eiwuJLhgQ0K/wK3vPlRvGiNz0Lo18nSOB1r9C22qOXQ1B5IGNv3lMI2m+ZqWn1eqMciLjX/3/hfSPH/bR8CjIquLjU7fmoZlV4ggK0w0uHifgM2sXghAxUKstfeJLRixzK5f+diFXg54aGIYhFXuRL+cpngqB+2nm8O9tFA/euHZRjwsQ6fRXqv+15t0/jcKxg0AJkHeBgKWuf6n0niLrWE2BERNlwS3fILq9/WH4pL2TzMz5X097ILnhiRJFTiQGGGor/n8SCg0h7B8Ey2Tfy2NXiSyKOhS5LGixu5HTftdWCvCQEDl/NqHQm1jKC11aYew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P1soHCZNBngeIaAMJ60foybQNJYPkBHbyoSLDsqeVIo=;
 b=AddoS3OXP+C7yGtXH/NkgK9nM2pGYZF2CQ9ZieAp6ehXdakGdCDPGz884DEmQuFIy+Mj6fk3lCPjbsLpuEzk9xkYIoIF+mAKnR3g3elJq5BiuxeJb7PIi9++3U/61u0ppQF4ewHUJiGX+YkgI00q1FWFLhSQT+RFTKZSn8hP8hI=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1691.namprd11.prod.outlook.com (2603:10b6:3:b::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.23; Thu, 15 Jul 2021 13:39:45 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4331.024; Thu, 15 Jul 2021
 13:39:45 +0000
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: July 15, 2021
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>,
        Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
        "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>
Message-ID: <ed8d00a3-c3fa-3386-2885-eedaacd203fe@windriver.com>
Date: Thu, 15 Jul 2021 09:39:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: PH0PR07CA0069.namprd07.prod.outlook.com
 (2603:10b6:510:f::14) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by PH0PR07CA0069.namprd07.prod.outlook.com (2603:10b6:510:f::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend Transport; Thu, 15 Jul 2021 13:39:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9e488e4d-90cd-4a38-c860-08d9479601e4
X-MS-TrafficTypeDiagnostic: DM5PR11MB1691:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB169153C3BE15995403D35BCDF8129@DM5PR11MB1691.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	h52EVusGzU0QFJWXcNnEnaVzP2JTrEmwEQnq8RT8qj/E18I+YVVpSfBHDG7afKWtVsIn5xnq02/rqahty2RVQnXp3aUWBcd4S4bDPWnH8T5+ZoZp2cPO1d4V+oZ8deTLuk/Cyg4zWCtedLWSgTIoe9etEgNVDsI8UJKR31f660X2IiX2p4x3p3wqa6ku1RBNoub8Vz8j5HFG2nbxnPl5TFuqQ+WJb3YJqgkbvwyASFQWoyrJOCFN69X1GMXzk0piQavBPYQMqtQpgfwKjjfwBVsDWRalLbS8Q0Qp8+T+P/vIWBtz4jHv74Ex1oJlWck0Mvr+3whb3jXNRRTfWZXNJOnDPO4MlwBTtyz+agpKWalcvbxBXpzehVvkzSSuy2p1aJfg92dBCzn8BOSho74nYx8E38xYWuW2q2DUI3sEHLF4rcfhB7Yd3NzcrVT6yKf89ttNm5oUSM2qaDEJ9abrN1fam+xHXm0V7xzJqJ/JpuEe4ggTlKpL3sQpyG+P6TZDyUVXjxh/pZyIwGebsD00ZEP2UY+TH62IPXO8Rk203SgZF5liXNRRwpMl6rppCOZiMUk3JHq1SSZ/l5UtECfz7qZ1yzIdYzkTsqppA+MPacsWeBUgEpmBLSUJTE5ti0XOrclRAa/wDE658jlWBconxbZQG5J3WV6uq0NT6xYXe6+vKudIQGvtbvVWMiG/yzFbHGJRxgSvfNfNxJsHXs3Lgjht8BDe+k584FzAmnaQOUBe4THdd8B17sq/lXCbTDuMQMyYZ0ErwoAAwyJh1Lr6YZloXq5RG4uWnDja8DUTqr7ZgxQHJGNY/cg9K+8E7Wp9g2h89hu/vGky/QlHh3uoJBUVbDdtOWm8jP/9kyZJn9p2rvu4dEEsvQJiZ2QB5S0Zl+Ns2CN3XqjdtO74SCMtrg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(39850400004)(376002)(366004)(136003)(16576012)(4326008)(8676002)(5660300002)(52116002)(2906002)(38350700002)(38100700002)(6486002)(966005)(316002)(36756003)(2616005)(956004)(110136005)(107886003)(478600001)(186003)(26005)(31696002)(83380400001)(31686004)(54906003)(86362001)(8936002)(66556008)(66476007)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WmNwZHppVEhxWWZtYTZGTmRZL093bzJPOVJBS29zRFVDSmtXSFh0OVE1Q3FT?=
 =?utf-8?B?VUw2eEtGSzlIZjVuMmphcVZOd2VzV1NzK2pnWThLSzV1L3U4T3R1b0xQdXFK?=
 =?utf-8?B?MndBYTZOSXR1Ykx2a2RHTWY4cHU1NlJVellzaHZ5WWdaZ3FodU00Z2dRRkNt?=
 =?utf-8?B?YVBMNVZPdWlsK1h5d1loL0tLQjNMTmFEcExRV2lFelFvUjVTR2tWOS80YW1r?=
 =?utf-8?B?cnI0OXpHc3M4SHFMUGhxcWh3QjV3QUpiVTJ1NWJwV3l3ZlYvWCt0YXNvRUFB?=
 =?utf-8?B?aTZyaGYvYVFKdjRDODN6VU9PMzRPYUxzREE0RE5wenA0akVXUVk5RDNzc1VC?=
 =?utf-8?B?ZkZNY0RLUWQ2S21sR1pnbGlBcUdmTlUzUSt3bG5ueTBrbHVYaVZCRHdaYTg2?=
 =?utf-8?B?NE45MVpHOHZMWmNCbVUrbS96SnQxRmpuZFdoZDNIOXMxQ1JoU1NRWHJLOVBl?=
 =?utf-8?B?ZGlKZU1jQVdKQTNQZTNWL1dzNjdxRUNVeEt4a0tuMHpsRXAxTnlhRWJtSkhx?=
 =?utf-8?B?MnVMMUFSTXA3WE5ja1NXejdXRE80TGN0NTcrSE5aZnlHWEg5VlR0amczaGRu?=
 =?utf-8?B?QjMyVzZqY25leXVnVjBGS3hVa1BaQXdKd2pMZTh5Qm52MUR2bWE0bDNVNGVl?=
 =?utf-8?B?eHdsU2hVWWJmS1pmTzZiT1Z3YjFJekZRSlpiREtKRTNFcE9WNlB6RDJHemxy?=
 =?utf-8?B?YnFxK0dMaDloZ0J1RnBrOHdnUG1UanczejdZUVFGSGp6S3ZvdEVlaXdBSzVZ?=
 =?utf-8?B?NTVjbFZnRDhrU2JJVkJIZ2o3OGJmZnNzSHpnZ2l1U3NtbmhCMmVOR2JRa3do?=
 =?utf-8?B?UnA1enRMTFZjdjJwcThhOVFPdE1TL3dCbm1RZDExL092V2U0dUs0WHpnL1ZQ?=
 =?utf-8?B?aUlaRUcvNFA1a29sSzdNUG94SzNBandpN3lBY1NJTjVjemhFc0Y0cTExWGdT?=
 =?utf-8?B?NzMwQ01iMFFQcll3Wi9Ld092OGw0OFVkNnBmS1VWZmhseDAwRC9uWjNhL09L?=
 =?utf-8?B?a0Zsa1lad0RDWlJWdmt0YUQyVE9Oc0xmUlovL09xWHZwMmFsSnIrd25XdkVH?=
 =?utf-8?B?R3JnUEc4QldlOVhGQkNhbXI4Wk1NTWh4eXlsV2ZRSVduUGNCcEpzZFBMblBQ?=
 =?utf-8?B?QmFPNll3Q0FITGt5WkF4M09pM2ZLaDJtMGJCZFBkRHJua0RJQmgrMHc4VjA2?=
 =?utf-8?B?OFNJZTV5bnhDcklMUjVHMStEbFZveGxydWE0TUc0aDlXcUJOdWpzem1UbW9K?=
 =?utf-8?B?cUsyUWowS0JVNmtyeHZJY0o5dUUxbXNIV2M5TU43ZnNwc015Tjl4TGNkSW1P?=
 =?utf-8?B?MmdBYmdUNlpGcGhQZnBuSEZTYkF2c1hyV0wrZm9DNTdzZmM4cDAwbjJJZkI3?=
 =?utf-8?B?S1RJY1NoeTM2V01tVFl0NXhvQzg2SUJVOVpZSEIrK2V2Uk45R1JxRDFGQmtC?=
 =?utf-8?B?RmV1a1kwcndQcDVwejFoem9SVjJPS1ZXdDUrNzhDZHRVakhsNml1MWZIWUtF?=
 =?utf-8?B?bDBsSktzR1FKTk4rbUQ4eVpqRUd0RkpwdEc1VmpwVUoyM3UzUUNmT0pPMTBh?=
 =?utf-8?B?LytUTlRucTVVeG0vbHFmL0F2RkJhYTh4TnUzTG9LL1YyenNWVjBRWW10T05J?=
 =?utf-8?B?MFlXMi9vUWl2VGJlOTFabUYxN0ZuSXk5SHpDQ1AzYnB0cnRRa3pzanRBMTBX?=
 =?utf-8?B?cXFEcWZpa3VzckNxL3ZpQWZqa3dRKzU4VmY1Q1RrNzVWVTJ4ZG9YT2hsRTBP?=
 =?utf-8?Q?CBoAvgwNMhXsSjygTGn93EfYzD86O2xBNW74i+k?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e488e4d-90cd-4a38-c860-08d9479601e4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 13:39:45.3022
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5ZmzLebqyUEk8X1xvXqmowJAxtTmZvVzL88VbFkUkkQBQ1GPkXPZ3kAQiiIcppDgqdjzbiuqRzqIEhynUDXtaieaL3MZTMfqz+tiNVCrc20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1691
X-Proofpoint-GUID: zEA0AJ2966NVS2jWY_OM3jEtBn5t1r69
X-Proofpoint-ORIG-GUID: zEA0AJ2966NVS2jWY_OM3jEtBn5t1r69
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-15_07:2021-07-14,2021-07-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 mlxlogscore=999 spamscore=0 adultscore=0 phishscore=0 priorityscore=1501
 clxscore=1031 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107150097
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit


YP AB Intermittent failures meeting
===================================
July 15, 2021, 9 AM ET
https://windriver.zoom.us/j/3696693975

Attendees:  Tony, Richard, Trevor, Randy


Summary:
========

ptest failures, somewhat improved but still seeing
problems particularly on the arm builder.


Add Michael Halstead, see questions below in section 4.


If anyone wants to help, we could use more eyes on the logs,
particularly the summary logs and understanding iostat #
when the dd test times out.



Plans for the week:
===================

   Richard: maybe bitbake server
   Alex:
   Sakib: hook more responsive load average in to latency test.
   Trevor: patch to set PARALLEL_MAKE : -l 50
   Tony: tony to drop AB INT flags for bugs that we have worked around.
   Saul: on vacation
   Randy: organize, rust


Meeting Notes:
==============

1, runqemu (same as last week so I'll drop this comment next week)

Tony having trouble with runqemu on some Wind River machine.
Richard has a fix for a race in runqemu in master-next.
These might be related but if not Tony should debug the
issue/ collect logs.

2. job server

- Trevor has submitted changes to use -l for both make and ninja
   with a value of '50', in master-next, The auto-builders are 56 core
   machines. Sometimes the load average is still around 65 and that's
   likely because ninja uses the 1 minute load average and it can
   start 10s of compiles before that limit is set.

- ninja could be patched with make's more responsive algorithm
   next or is this good enough?

- Richard suggested that we extract make's code for measuring the load
   average to a separate binary and run it in the periodic io latency
   test. Also can we translate it to python?


3. AB status

    ptest cases are improving but still need work.



    progress on tcl, and other tests thanks to Ross.

    parted is still failing frequently,

      Ross is not able to reproduce it locally.
    gdb test failing still. - Randy!

4. Nothing new on this item this week:
    Richard reported
    - something really flaky going on with serial ports.
    - particularly bad on qemuppc but also x86.
    - related to Saul's QMP data dump?

5. Sakib's improvements to the logging are merged.
    We think Michael needs to update the script that generates the
    web page. Randy/Sakib to talk with Michael.

6. (From July 8)
    Richard says that we may need to redesign the data collection system
    that Sakib's AB INT tests are based on.



Still relevant parts of
Previous Meeting Notes:
=======================


4. bitbake server timeout.

    "Timeout while waiting for a reply from the bitbake server (60s)"

    Randy mentioned that the bitbake server timeouts seen in the
    Wind River build cluster have gone away after upgrading to
    a newer version of docker.

    Old: Docker Version: Docker version 18.09.4, build d14af54266
    New: Docker Version: Docker version 20.10.7, build f0df350


    Clearly the YP ABs aren't running in docker but what
    about firmware and kernel tunings.

    Michael,

    Is the BIOS/firmware kept up to date on most nodes?

    It seems that we are running stock kernels which makes sense but
    given that we don't have concerns about privacy since system access
    is controlled and the nodes are being used to test open
    source software, we might consider optimizing for performance
    rather than security.

    Alex pointed at: https://make-linux-fast-again.com/
    Which just lists a set of kernel boot options:
       noibrs noibpb nopti nospectre_v2 nospectre_v1  \
       l1tf=off nospec_store_bypass_disable no_stf_barrier \
       mds=off tsx=on tsx_async_abort=off mitigations=off

    Michael,
    Can we enable some or all of these on a node to see what the
    performance difference is?


5. io stalls

    Richard said that it would make sense to write an ftrace utility
    / script to monitor io latency and we could install it with sudo
    Ch^W mentioned ftrace on IRC.
    Sakib and Randy will work on that but not for a week or two.





../Randy
