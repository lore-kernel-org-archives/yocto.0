Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 492F4C6FD1F
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.44228.1678540408933527199
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=GLqBjsRo;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDBAeL006573;
	Sat, 11 Mar 2023 05:13:26 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=77GjDb4HN66LDa1ADZHlRufnddpjiREEBbwyRJwrEDg=;
 b=GLqBjsRo9d62puVBkCPG6ENN/vOMv/B2U8rWFfSgfbLYZo0cvADtkAQELpdtF9+CJ+CK
 kd+ubV92sJH6i2LbopmBRqIAiv3P0TmoziSZVu3IGiK37grCu9aKRltyWOL9CyV+/J3r
 EuMwooXXkIUn2WV1cmpQk6bfkoKZ2273lsl7xeUh55ZtTPoNbkRobWgytHN1sGpIsoBv
 QBWN4022d2Vr53+aunHyegDVYHI6wCF/sOJOPsSgSP7CwupxqS3a0mYLmMcbTbbNBCkI
 NfXvcLiqktoLoPtt+UPZstW7sKEbIRjihr4lpmxDCNG4arY4R2LhgX9/0NqpgD7D45fw jw== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8t1r00bf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LLWtGGCrUXkQnJOXIeeBtc099FxNZgXBes7CwRPIQof/Vbwm6Wwyn85+anZzYGy5EhJIKTfLTNqohFJo0Wy8aGaIcQSsv4Dr/t31Dzv5YmoH8TUoqJZPCC9orVY11fQKK3Sjg3596XuhLPIWP6s0mnbwHrtdOvE5pwmAJzyCqYNMnOHqqoWR78pc83FRTQbuy7ig/IzHwmAa3t9c5bQ68rTu4onsgbEv08ujL3YSKk6AzsdsrTo2xXbU9lsnEOCchfHBPmOsHmkRfgzytDhQ3cLN75AXJrXjRh9UkDYT/Sr0UIe9N0QLwwK+X1B6FcKXqB74yN/WLOu2FElByXVM/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77GjDb4HN66LDa1ADZHlRufnddpjiREEBbwyRJwrEDg=;
 b=F12/wzwV34l/HJH/MT4c0C0cJ/ixMm0ErAyuJRpSS6J+wy+HHNytKJA1kIWH8vu69B1E+WtBOO7ecAAgtQslLGkQ6Hhz+2H2IJ3kxv4Ias0SkXfm165WChk9gEfQYzVWd2B6yMNb8i+PWFTmdA4gLBYyxwNN+8wNeh79ZbNZLTOlP+HGxiGTbiuloyJXdjyTeZOIs0PQVr1k30uGzk4LnBR1xusE1MjI/hj8Edm+70f2gx3UJrBclqt0GAyOqZxwTFsWCuK+kLngJNQTELoLCobDu5cohNNGVX0gCRfGFaSIIRJpORC5ZN+CX4lXl6DjGNmKXWj4dg6hJt0pO/MKSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:24 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:23 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 01/17] gitignore: add it
Date: Sat, 11 Mar 2023 21:12:52 +0800
Message-Id: <20230311131308.1337339-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: b10df25a-5a78-4033-8df5-08db22326436
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Z60Od0IHiA1wUk0soryoBwVh15CsfPzTruoaJKqQmD/spy4xQoHW7IWRQXC9Q8tiaAtfbz+M07TFYYF6ExGuXSvo3nwXU/dbXWpTOBOc8jhjRIBNrgP6NrRCRrMh+JjWjVLSaqwRdXFpsels1OKuZjGlpJZFpDylM4GGMDLjZLniQjHOPiL0doruU4MYGWyBDOVj3FxsDDCoiNhj2mmlUYm4UwoOX7UVziYA3Uf28GVyxdllz0j93a2ODhZL2Dk8VMjxELzcKYL0/UxIp3fat/67YfeJC02R13WjvydG1GUfmOwmyYN2i7YqTSZ2kb7JdE8fTNMJk0dT4OOXBn3ZokWO906IoyxoVtRbRdT9uLYzHYxa/7sPoKD21DV99RNcu9+gG4YxBd7EB65ki+0hijR0vKOvDVOLLyOE2SexrDuDtOfSMo3z/X/MKt/xObochXpP2nqq75iGJm5fj3AMVqy7dGY6ytSg4ob39Xc7f66Dp8gkg8sNo1DO0qGrYbTpk1/ZAx29jgpIgvQ5RwUPBnNP9591kn2raPlMKiX9+1oVz89+Fe9av/hccHAUTw2OXkOkIH7vUImdBc66pKrNlD+FeiCYYK4T1/kiIXL2XZQGJwFJJplCdgKGWcyaLUluivLGtNznQa2mX8cz12fLzqjqiwNvD7Y3FTj5bnK84MEVsHh4FqBohnfXhPYqBk+i7xgEKHmK5DguIlLiCgTXEQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(4744005)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?pqovtCSbfBFCmcEQAdonsmzmrZNicOPh79n2d72G7mnhuZHVWP56ScDxtVOC?=
 =?us-ascii?Q?ujxFz5rmxJF9NJYC8CxKtGzGOI+bSioSYGPIbutnD/6srHR51W/0oLGJZOlp?=
 =?us-ascii?Q?8+D9fMbEjsSz0Q58SHoEdfcahoEgxBFmZP8tZxJWXdntii1Gsf578/NcJXHc?=
 =?us-ascii?Q?V7fBv4CcP5CibbNaporB18hUp7CaS0mJ2vrANswCbfPfxI/Hc2ysv3DRssE5?=
 =?us-ascii?Q?jM8aF7pNJCIikcXto1FNQCmA7ErVQ7Ng+oDYxUMB6J6qA3OjTjeCYoDGqw5o?=
 =?us-ascii?Q?XRl5SFMuXKhztaf/RMyUDxEplYJw7/pWYDRV8mFmEPbG7vVxxndqcFCG84UG?=
 =?us-ascii?Q?euGtsFdhxshKykgyILNzVifaa+IDBNbxbO6qXN1QiJ69HeZC6Ub2p6vJzOxh?=
 =?us-ascii?Q?zRr3ZHJjICNq0gAJ7luinBKs1CltlTpJxpSF1WVDGnNxgXMkfhnJPuAJzOBn?=
 =?us-ascii?Q?8XeBJ4kofo10JtZDxG+L9nqrIsT4RIzOxTAwcsb1SYxrpSo0563A+qsU/VPt?=
 =?us-ascii?Q?d8efs3lFkFrCGey8FlZ6HhrxootufYMuvAddR0xq3u9tHZOxecMv4zvuYPaT?=
 =?us-ascii?Q?v3kR+ln2HrK0hWWUjIrFsjQ8QMxNPbkSQFFCSIkIZJc7o+UKdmEZMArtoEQ2?=
 =?us-ascii?Q?rET/Fy+zm+tpfed0xKe/IoTnxwL3zG2nxYjr0kruTjkoZ1QC0M0yZpaQgHAG?=
 =?us-ascii?Q?IdWHTI/1xLD6bGBDmiuEloB+kWlIiVwuWXcLh4dAJhortOWJA2x2sNyd/1id?=
 =?us-ascii?Q?50Wfzb1wVxJCb9BPa4GX7FHBT/D0YQyTMv96P5gEGC+4L/F5ZbNWgYj+pvDT?=
 =?us-ascii?Q?I+nSs5Fe2yE0usbzMkvO0r/Zt1smfHcEpM8ADPEaRXt2XEsJS0trvPLsgY1F?=
 =?us-ascii?Q?EDZ80XYAJmSBGMDj8PD0LPga7XELkRX/0bLFDxaGE3CST7O6PilhtExl5+/8?=
 =?us-ascii?Q?3hElLr+PAxDSNPOEnBHuxhYqZt6TEOEYc+D5iHwmB4z9rwlzRmXHDeKzyq/A?=
 =?us-ascii?Q?q4Lu0L6RPOpbJJVmz0Ws5fWy3iDGqBu5SShxyhUJ1uaZH2MgjL7FLMfOHfzk?=
 =?us-ascii?Q?QjNkoHVoO8qMyrCtUaiMb3bwC8ZT79xqW1kuqejjCxNO4fKzAxRvdI1Q+aAn?=
 =?us-ascii?Q?T9Uoo6MGbbWoKJC06CU1QrE06C8303LWI1Yig7iH3iMCf6kc6ta1R2KaYJtr?=
 =?us-ascii?Q?CMSSVLsfqQOXinxu5FczI6Ncp9R55w9kyiBIFsxMTea9zdsuwEvdOUaVRkC3?=
 =?us-ascii?Q?GFtqps0i8QKLQDUWTrYbT8dr5mH2e+jjyZIsu62MyP3e4amHO70LAtEiQijG?=
 =?us-ascii?Q?Xya3vBSr+JOt3UvkP7eVcgIGwZYEsIPQVd8tVM1iz/Z132mlL3Jh7I0B6ED/?=
 =?us-ascii?Q?yCuFzdGF0myZUeQsqRVREay8Hz4gpIiM0xC5Z7zEYaZuwXTAAcwFE9GPICpO?=
 =?us-ascii?Q?qhW2x9gZH4WvbpVLkzTkJBWTcbUmCOathOOkN0gT6t9UGRF3Wl6jEqdh4xTZ?=
 =?us-ascii?Q?fHjx+icWvfCuU/h/pgGCRnMtVrD1LQL+D5n1PJPFwqvLljtjQwnVGM2gqQbj?=
 =?us-ascii?Q?g5xvqFtP8RZim8xOnw6QTzi2GIgK/o9GQ+YCYDlTyiff+b2iPIPUtrJJ0vV0?=
 =?us-ascii?Q?tQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b10df25a-5a78-4033-8df5-08db22326436
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:23.1655
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iC0WweSwWomtrM3IN7zBGXTK3raeLOOSuaI9ev/zT27ScJj7ZEHYbyrEt3CCGR4JPfHGUaEofnbIFmp9plP12w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: ZmD2SJ4dbtgLpnKwXnRRHlKG-tAz7_Zg
X-Proofpoint-GUID: ZmD2SJ4dbtgLpnKwXnRRHlKG-tAz7_Zg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 mlxlogscore=535
 suspectscore=0 malwarescore=0 priorityscore=1501 clxscore=1011
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59385

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .gitignore | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..c01df45
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,7 @@
+*.pyc
+*.pyo
+/*.patch
+*.swp
+*.orig
+*.rej
+*~
-- 
2.25.1


