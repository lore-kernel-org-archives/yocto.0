Return-Path: <jay.foster@systech.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28E11C433F5
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 19:50:02 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.49])
 by mx.groups.io with SMTP id smtpd.web09.448.1635882600486404781
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 12:50:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 ec2-184-169-130-19.us-west-1.compute.amazonaws.com}: permanent
 DNS error (domain: systech.com, ip: 40.107.236.49,
 mailfrom: jay.foster@systech.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ef75D+Bji6kCjmYhLvHaivWelxYCbCyfcw5QdTzQ4i1R1H7kITk54tQvDYtLol17Lq8PQjKtvYK4rIasvMQhF3/2bxrIWdjEayL2Hp1VUa/CRdtGWxEF3s2lj28BQthib/Mu1XU80PswUafQzsXFQXiFFChrHJHbEgpo/tRIZSeGnL+WBJ1ySS+6MP8ixuzkbtVTaQeaUmF5ZsHk9KHRwYMfn5hpvRazHrkQO6ex1sttU/YGR9fv79ipVN347lH+DZpYJ843Sa1UQp7AeYcFtveC3kI7iA5GjeMXwVq85WD62xwlSayS+4YP+6+Q2SzJmZKeNKvKGwSEOQUU2yLlJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z2tS3nOYxeWobn7wcXbflDpFcFtgennkjDGwsFAxlxM=;
 b=Fy54HK/4W/SoPGJblIaBUZt48/8kLbk/k6Y49JqWoiQ4ir+ryCsHks5dOUJvXcAQLVqKG/6mXkHXgMRxyg8iRmT3JeD4PL/92W1zcvUw/EgUTdGIMsGBnZMNcP/H+50JbMbXP3Y9SctWBKIOEv1iOUuiGgcXLwEHiGOoiLeCMG8Nx10MyCQ5tBB9s+pEmn3HbxGbGHjy4bPpwivPAIJ6ynO1VN+komAY8pBRz6esDLpXKmraeAfboeLn4aWLDcIJFPlrZ9cWPnTziPl/LmVRvGaCFVQGeB1mNm263gaxyEpoPkndWusIoAwwZ4cGA3bWkHIuFQiN78st4ea3bfTKHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=systech.com; dmarc=pass action=none header.from=systech.com;
 dkim=pass header.d=systech.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=systech.com;
Received: from BYAPR20MB2664.namprd20.prod.outlook.com (2603:10b6:a03:fd::26)
 by BY5PR20MB3138.namprd20.prod.outlook.com (2603:10b6:a03:1fc::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 19:49:57 +0000
Received: from BYAPR20MB2664.namprd20.prod.outlook.com
 ([fe80::ec43:56a9:6f54:d0be]) by BYAPR20MB2664.namprd20.prod.outlook.com
 ([fe80::ec43:56a9:6f54:d0be%3]) with mapi id 15.20.4649.019; Tue, 2 Nov 2021
 19:49:57 +0000
Message-ID: <63c81a59-469d-41b4-2053-269465491bf5@systech.com>
Date: Tue, 2 Nov 2021 12:49:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: yocto@lists.yoctoproject.org
CC: Jay Foster <jay.foster@systech.com>
From: Jay Foster <jay.foster@systech.com>
Subject: Yocto Unauthenticated git Protocol No Longer Supported
Organization: Systech Corporation
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BYAPR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:40::42) To BYAPR20MB2664.namprd20.prod.outlook.com
 (2603:10b6:a03:fd::26)
MIME-Version: 1.0
Received: from [172.16.4.182] (70.167.11.34) by
 BYAPR04CA0029.namprd04.prod.outlook.com (2603:10b6:a03:40::42) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Tue, 2 Nov 2021 19:49:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc29cb47-7967-477e-b7ea-08d99e39f2d8
X-MS-TrafficTypeDiagnostic: BY5PR20MB3138:
X-Microsoft-Antispam-PRVS: 
	<BY5PR20MB31380FFC8129542146229A67938B9@BY5PR20MB3138.namprd20.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	k4fvLoo1z+GH15VaAvDTxHvuVYYlKm66tD2/yL9qnOdGqy9TLFtFtdybvegv7oQSYVU2XCWEIrsZRWAyx5FNq084UnnCEgoaHdVcefZDukayeAV1Hco24f6/9JUM3bcrIcMswjLjxa/AF9gQVpmwmt0UTIvxT1UqIhTAgHTyZfZ712OM6hSdL/CuNgnAxbJrWj8vli5vlBPZD69pG5EZhmq7paQN4q63X5q6XzoAUh+9wo2h39aKmTQDIIO1hYaf0NrRnXISxSeo2zZV3afNr9pyACfOhdVW7hI5mX+07+Docv8W7fofY2DbOpblS9JCVSNKrMRLGjazAqCHXc8BPI2HOhnkIXnnwEEZ5Wxe+Zuelh1u8l40zgzg/lUFHtsGQW7BKy6u2UnpOnMcchvygKhI/03MUMNPuOMFOSuCeel8u/WMohSyoDnrJe+86MRPnyXhe7uackfih99f8dNuGNqSydWP7a5Q4VeooDqPylVe7qfvWT90w0MJN0Aip1usMBA4hgWU196kFAod3e5uQlNUj0+C0DpqcrE657kVizpHuSIHNQ6u2EXs0N2TeCqBk91GCGarDLjtenq+FwUnBIgdjdVpQm+QJEtapiLX3eoFP/hyQ54lyxfaqipC7n9g7p+0mLHvhe1HxDIONh9RB/BhnvNgwXvXVpzmuqSmjiisq6JoXcjmgtzauoSfNsBfJ99SqoGZHVcqvsDc75egh3UovN31ErpIqaDjivHl3wCCmGE3KuF4eIhDAlHKqNKEVD8ujnUdsIMMf6jhab8w/foee6gpZKlJ+zfU048LA4h+NBD/mYuElzUZKhocc0jvzvoxLFVeTVdTXzL1kmJN96MVBgKlCjzFQfRUy3QIZUE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR20MB2664.namprd20.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(39840400004)(396003)(346002)(366004)(376002)(6916009)(4326008)(5660300002)(6666004)(52116002)(31696002)(8936002)(66946007)(66556008)(66476007)(36916002)(316002)(44832011)(38100700002)(508600001)(107886003)(16576012)(38350700002)(2906002)(186003)(2616005)(86362001)(956004)(558084003)(36756003)(6486002)(8676002)(31686004)(26005)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0dWnziJYd6kPbSHVqFurV/EpoCdr/o9PrQwpUPPU3rrnQmWaSgpN4TyKhy8s?=
 =?us-ascii?Q?8fetDSvABx3DYM4PqTGqVH6JP45wZKW4W/8PrlvodfGeo8ub5bDBk4x1iY/i?=
 =?us-ascii?Q?HFT0wyTWbg6rHmgozwlvseBZIMX/l1abm47BJMcxESvAXYbyMYwyWGaT/F/d?=
 =?us-ascii?Q?jQ3fXEUXLCjQTUKMLUyxIum7fVuT2pvMO01Nci1uqh1SEbCTokgF5f6sp+Dp?=
 =?us-ascii?Q?jmuiK9ZBvQCAQauohogwcTGysvgiz9MAlt87RzK6k1PXiVkxa9Ex2CreabSy?=
 =?us-ascii?Q?InbvLH7tQUCPD/fA6Nx4unlIt4usflKPc6bOp61RM20nYSy4ZkOdNCOrQwNw?=
 =?us-ascii?Q?7bE3xv3xmE+rCLKymiI4eDcU+9XE79jAKCs+vebjUjky9D8SBuPALyk36SCX?=
 =?us-ascii?Q?FraggaazTyJ6n4DbNbR/1q+awcoR8Sazhcg3os+s9+g9AezpYoUd3iSEMGtU?=
 =?us-ascii?Q?2utj3hV1qeP2fG4PyUiageABDSkhHMSEkecf53Zw3dO+gHTObc2xZ4/IAmhN?=
 =?us-ascii?Q?It8trvlRLmGc0PkCxLKwuyTHYbBOg0le0qnUvfitSvKTfwsKO903RuLwsotk?=
 =?us-ascii?Q?839n683NmHYPzplTx53IYxJWqDnY4UnB1923GrisV0Jh1zSTQhtf6kJ3dqJi?=
 =?us-ascii?Q?qFVX9puS5EHeUl3V3RuivuOFjAt1e/UlUpLNNiDqr0cUdQId1Tk82qDRpKVI?=
 =?us-ascii?Q?xoActL5tvkNEW+scIwPv6ge4F6aK6IY5XEDK4X8tN2Rk0Nt+4bdhVjDfeLDB?=
 =?us-ascii?Q?B3mTCPSJGWdF8G4nfdU21C1RTcJK0ThVe5a+2dZMUslZrV0AfM/UE7uxDbEt?=
 =?us-ascii?Q?d2noGgtwr5S4LBIIMvSNO0Xn8abnsu+ilJ5muRXn/VPYVxKhub2Pbq6E012o?=
 =?us-ascii?Q?ZKfFC8JbAZROY0v8ygaV+gmIEtfElKkeLsDBwSpj5kvYLIVQR14egi3CYC0b?=
 =?us-ascii?Q?2DkfYtEiwjgEy24eK06dJN8m9C49q8S9IzHUXmPLAnTflGD/IAwp8HEfqFcB?=
 =?us-ascii?Q?xEXdzqwMdKxOr0MQ1gEuWHEz6W3S36/VYBLwhz8iY7Tep0XgIb/vp8+zDuJ7?=
 =?us-ascii?Q?P9FGN1xzE9hCFotEmR348VWvbU6Y9XpP11mj42T9gG1A1fn74iu9ij2JSgq5?=
 =?us-ascii?Q?aKUwZdlkJkA96pQBAplD+xC/exvlbGEFxeRAuFK4GtbYx/1q/BOWkyZ1QKyP?=
 =?us-ascii?Q?D3MPddm2twUKVe1dk4sDn7g3khsjR20dnYPOCHWuVaUnJ1QfELsrSNDKxlvd?=
 =?us-ascii?Q?4oSKt6T+PJKvnfo1NiFYEYxqcFBqr3q1uroPhin5msJa7ZBgVKf7f7WJ4Ug3?=
 =?us-ascii?Q?jXZfnWEjEJp4XXFfnK5ib5b9xvNuN3oEN5MBw2+P8d1bWDcp6cUSeaQM/YDc?=
 =?us-ascii?Q?VhJhoM9caWxOQz8NGrXoqc/ctzH+i0QrVRoz27J600t1d9kySHRtViqiquTo?=
 =?us-ascii?Q?7LcwhGB+c1rtE/sgTkQ2IOxxpJEJ1fuxXHQALtIh92Bgifq5GoCPbfVeOvD4?=
 =?us-ascii?Q?nQYzAWqfopxqtjSut7RRqIgW0YAtzDh/XmbSGwk6wILfc1l5aZhIBxMAq9zW?=
 =?us-ascii?Q?CBUm1dsg4t0udAI9HlhRwORKYgD+XjKYNVc4GDOIsKA2b9f4iQR3pyQ4uVhw?=
 =?us-ascii?Q?rrF0rE4Y86jxPRN5FeFMTI4=3D?=
X-OriginatorOrg: systech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 dc29cb47-7967-477e-b7ea-08d99e39f2d8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR20MB2664.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2021 19:49:57.5698
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 47224f68-59f8-42cf-9b0c-62ae261b2df6
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 QMtrPTFUnqpesW4iWIPUhkJt0bGfFV7qNMP6DWP/zlrjyXFP0pnmHUOjBHpT6aR6enPtVYcrNm8jd87Nu7eJeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR20MB3138
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 19:50:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55219

My yocto builds started failing today (November 2, 2021) due to this=20
(https://github.blog/2021-09-01-improving-git-protocol-security-github/#no-=
more-unauthenticated-git)=20
issue.=C2=A0 Is there a fix for the yocto fetcher?=C2=A0 I using rocko.

Jay

