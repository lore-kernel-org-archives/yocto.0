Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BBD9C6FD1C
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:46 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.44270.1678540419622537554
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=nCYSVXwY;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDA5ri022348;
	Sat, 11 Mar 2023 13:13:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=EWg4Q9o9GWrIjW1MtwsGUAWD9Ko6ruHb4kQ9VwcoIKA=;
 b=nCYSVXwYxF9wLOVRg9AwEOz5/3Y7X7Xs54MIVBf8xrQzHaWs/zFPT9TqWn16QTPPmGx8
 pM2vWACtFjqDQ1uyB+fX2zVviJlQnaTSBnt5eEPwo6AlFNxLVXFVBoqvtf6d8TaK+fNz
 bSfw1rWVzd/KJa5Cr8qY2s8xHdYg9VdqMCxlUUf0pCOrIdq7RXAl5tpast45n1QTLXjx
 /V6Wi0gAZYcsdy89ZwTZk9Z6Fzj6ifvZOxcWo+ijLzAIJe3G8OsiDFVGd+CstuAP1nW4
 zdvEia0APVbUCb+enPjA76JyBhM/vMgZoKg5yzhLh+jNRvHOiHA/NK3f8aYK1ZLbJzUN Fw== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8ev2gdrb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 13:13:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mb06MZP3kDXlRuDFa6rUX6j2IEqUNp3rT1NIcTnmedMde5x4jgk94fmyFMlLd/85g3vgTVodc6TkRFpQKXor7/odYL4khl1eIIWnfSup2GIh26BhzGmqoTHzBvd/F8/8tjJzwvaZC5WlvTpduWJP9Wi25uzeb9zBf6Aj8GH0lcCQAvKfBi3Rjm3zY4vaU78PJlcnRQOGnZ94d7Pb2vosTzyn7TL5D3lznyczgp+adUS1QeaecCjJNNhZwrz+kJ1+fw0pQu/fMp3onqJnO5x9miD6no1ajgp2OajCV6yHh+xyifeERCQPiyy8bP6psXKDmuzYtqLCgV0V569CEJEF9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EWg4Q9o9GWrIjW1MtwsGUAWD9Ko6ruHb4kQ9VwcoIKA=;
 b=SQsiBUF5qkrJJctDJRwMJvTTrw7YWDzBBQ/KEU+Gr3np9aQagJjdnVqI8q4O7pUX/cHPRVCXDlxDU5EchanYJAwjNlQI6PhCLRIXXELcoegVfTyYNctPjqVirjCriWDcf4KsdEPvjrfk6gj3CIlhzga+8h1HnBJZfQp9pTcdDlUevoXGvCVRYXXT/SzD8JPq5ZX9VJ5Aznix6O3nH59va3T/jMbFwPDEWjKyBQKoFFXtB5IEToCcFht/WSZMkYhXKYZvN2bwZ236DmVGJpkieg+fo9Bw7srrhUMvzIGtEQlYmgJSpg7+68Pisa8XgQQ34QnnkyCShdkvpIhzTSWhhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:36 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:36 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 08/17] checkpolicy: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:12:59 +0800
Message-Id: <20230311131308.1337339-8-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 106084b3-a77d-4dc6-52cd-08db22326c5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4VYVS/7GRGHiTTkHUAoR47yZkuO75mZAcKiUvesNLWx3MIv8J3q20vc6tASoI+AHtlwuSBJXTXbcEDrw7LfN9YsYm/14Bu+QuxqoQhQ/v/GLpLIXGAAruL3vm/rplMNkXElmcxcdT88MgTi+6gdz+klpUIVpvFNgd48yGb8hDD7osF9ZYQHkdf4rPMAynOFnO231DqXvDlZplArToZ3a6jOMG4lEwuXBbS9Cr98mdP3BjuahwSL2vRXD5ga9rVC+iIO4hnA3LJyO4wPQAvmQsCh5xzpSqw65CckiRBmUa+DhEun4O8kL5Yg9CCQ4dfQkGSweRoRQ+pw/7iSx5B124MvfMtpmkEZUJsZ1ckpE9xQrsrg/sONmAcUZHkOl0BsxG4zibGWWfEZTxYurEJ3sJl5/SdXDZ0nVbMnwTbldIMUJXXwQ2LC578nP5KlF8dGzNEA4J9cBcOpJ/gcho62CasFEnR76tl2gwjDLHG5JNp1AOgyGtbpiUNixZr6cJBYhinLW3dX8mRgyDzSfpqIOeGGbB7fnndPH1BtYmkipgzKQdtCT5Kfqt6VdpDa+cc2YqDV6wJRK+b0lLBjjzcPQ2hcVaA4lKoCZPZzCv7q1EPAAK/VjAfv5yyS2YpvPedoVnn2PZa+wHF42HFpl8iJ50viEKPwWeDNysS3bvD0wNOHnYgqewSxHx6J9E2kfvJglWf28AM5L6b2jxz8r03jfrw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ujH58xFAKmJTbw/O16T+Hi8dZrr1EbuP9b3k8tmO1htRPfCwgG9+IALsR7kE?=
 =?us-ascii?Q?zYTXoeHYsN9PYnYCMz8+nS9NRaD5Wz7psU/fcUHhNWKcZ4ETWbG7fZPRlI9s?=
 =?us-ascii?Q?thl1C/S+jTXLWl7sQQmP2kRoYrcbwi47o6AvK2lLCT1G3mlZ+EzrujzPQcg9?=
 =?us-ascii?Q?XX7j2JLj8XJCyjYj7FN9X/hMoaZ4/iS11QHylCW82sNmDlCmtcPG0GUFU8EY?=
 =?us-ascii?Q?CZy2PpKnZQ6rzK88yMszLCMgmt0FGSk6X+zlGUm27Ze7rHyVBZ8ZqYMMMnfp?=
 =?us-ascii?Q?SorU+kueHazif/rWTX3g8HjcYNWqvlkBxgfUG8dT9op4y3SpAq+9mxjz08Tt?=
 =?us-ascii?Q?PAcoBTHi0aaEOg0CCOoYDZKZOG4lEbDCYzGRlP7Ni7Dil1UH2t/X+TdWcz9B?=
 =?us-ascii?Q?BUbCXsj00yOkBvXF79UyK6l1IE7a6dC4v4neC5TNkYTR9cfPmA/t812wOTN8?=
 =?us-ascii?Q?7VWve8g60iozlDNqjTHtfnK1NHvzBIR0LdGqZQWaDTKlhTAC81geI3GTSfSD?=
 =?us-ascii?Q?XMqxcbAO+TOIjCQ1WVMq9upE/Q8JbDq+mrEb8eXF7MTr6bA6Cn5UHiU/rajp?=
 =?us-ascii?Q?3b6QSrujNEWOdIn22U8uL8IN9TNp4cl357Gx5QJB/b0OI+PCXbW+exSYY/Ud?=
 =?us-ascii?Q?VtvXBmOQ42IEbqDj0dntrtCfvWSpT4vzQxdOQrwKkiTDnaY6WJ6UHJwCQY3k?=
 =?us-ascii?Q?POD4av23hIi2bA35pgAVLByFT4IsCkkTYN2/nOT3EgbH7F7rl/g1qhnkXHvA?=
 =?us-ascii?Q?2GxV+1/2eAVtM8ABzrEAX07SjFQg/q0xHEQLhBwmEWQ6A5akCxDYheeHKf+J?=
 =?us-ascii?Q?ioFBjMIZZoIr+SpCmXwFDApqOaS+z5B/pSmTkChReLRU9fFBLZgbTa49KWzH?=
 =?us-ascii?Q?inW9h53fpGDS9vaq+qwrWwnQuOUSnFCTk6ky7Md4VxW31tfRe/uLhUejvS/g?=
 =?us-ascii?Q?VCGZD8v/P4ud79E1wcFbPv2jZ/X/P4gSjWKkJ3q5tVA4GTCDNprE2kBvx/w4?=
 =?us-ascii?Q?eOTIWljwEMELgghahEw9NSqEw+lNrVzeC/Wc2xgTmkPkIKTcxU09iNUjaPOM?=
 =?us-ascii?Q?KHE05oVlXEo/i62GbdhBBSMFEeG/2Y9ugjeMQ2pEn9QR49tHshsQ4nydFJj9?=
 =?us-ascii?Q?ZOLAQuypJFXVh7T3NOmswNHdo09LIr00iBa0rmiD74BhmgN8fdgWSH4QCWXD?=
 =?us-ascii?Q?hpR/QgP/rbUPt8Znsupdnwz1JpmMyTgNljJCS9wDpAnsBGuSTJHUm9hvjZ0b?=
 =?us-ascii?Q?cmFNGbyXRuBUS+Lpxq9zvXqyVv7lEPU8XGoQeaAO2wfR4Ee2mpbjdrVyJa23?=
 =?us-ascii?Q?/F6Ye9z7rpoyIOHleFdH+2S6HQZOaGU7xhb3XxtydbAl/1zg2hljPr9QZ0Tx?=
 =?us-ascii?Q?d5lcfnEfvoOitW7VDYAvY6Q64+Kiy6KeEiXoxkRV2j+xKzinfOoNIZjNYwp/?=
 =?us-ascii?Q?ELWThpgD0clLW8zJfX8IQGOlu/Pm8Pu06XyyrVrSwOLyqBXh/wXMP75eg/P5?=
 =?us-ascii?Q?l/k/8v0WeJWVfZvtL3Tp6cq/bMa+JGnVK2hzCmNJwmZs3wbV2mqNRhESq7Uw?=
 =?us-ascii?Q?qpQZJpx7Bg0jivMFr34TWNtlQRzEMpHum3cUOriYeGxrfqdJVjeJVCsfiphl?=
 =?us-ascii?Q?oQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 106084b3-a77d-4dc6-52cd-08db22326c5a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:36.7294
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s/wbDFb4pohjOj3uZQBsMReatAxeevDHKK2CIxp1i6qTSo2fWtYsfxPmTRzQEpFh7+8wofYBst72Rsmd8+HvNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-GUID: KNqDQN2Fgr2IkaPk3t7YZC97r4Wxhtxy
X-Proofpoint-ORIG-GUID: KNqDQN2Fgr2IkaPk3t7YZC97r4Wxhtxy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 phishscore=0 mlxlogscore=607 clxscore=1015 mlxscore=0 adultscore=0
 spamscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59391

License-Update: Rename COPYING to LICENSE. No content changes.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{checkpolicy_3.4.bb => checkpolicy_3.5.bb}          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/selinux/{checkpolicy_3.4.bb => checkpolicy_3.5.bb} (91%)

diff --git a/recipes-security/selinux/checkpolicy_3.4.bb b/recipes-security/selinux/checkpolicy_3.5.bb
similarity index 91%
rename from recipes-security/selinux/checkpolicy_3.4.bb
rename to recipes-security/selinux/checkpolicy_3.5.bb
index 3df1bbb..60f506d 100644
--- a/recipes-security/selinux/checkpolicy_3.4.bb
+++ b/recipes-security/selinux/checkpolicy_3.5.bb
@@ -7,7 +7,7 @@ with low level details of the policy that have not been \
 encapsulated/abstracted by a proper shared library interface."
 SECTION = "base"
 LICENSE = "GPL-2.0-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-- 
2.25.1


