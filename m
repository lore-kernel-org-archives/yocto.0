Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD429C10DCE
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 08:43:51 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.16040.1702025030003466567
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 00:43:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=jfMDWNfr;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=0706306392=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3B88JilJ021876;
	Fri, 8 Dec 2023 00:43:48 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=aOyVS2XaWs/zKR0smf
	slf9KSpMUKeOp9TsrLQe7LP1Y=; b=jfMDWNfrQ6CnQ/XNVKR67lFI/PpyW4jPeo
	dUfqCA1B92gbxZ39RgNsyNfCJfn/mDEEzlo3gWE2Ypir50OVjmt0vpyryOB0PuzL
	QQqzr6bc8xxMgejrmCEHmA9BxEWlxKXN485jqidX/ZN+MywH1OkQtqT3N7D5Te6Q
	Rn5NPqSw5QK5Ns7Cxz3K2tE5ST4c5G/IeS6jw4mxTJXVcV3HGjuKWFzkIQ6SnENS
	y7/zSTbVsldyTqz1SJVdyllCW5qXiJc6NX7HF0FX+Seb/mEVmz0K83YEEAyuAXo4
	SqFsWx4uIQxsXsbLq1gUQwB81/2eLHNpJ4Le6OCgggYCjZ2FhdNg==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3utd2r2ks6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 08 Dec 2023 00:43:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bn2RkzbU17rbFyETD4nxiBs8UBS2qTGGIENN1cA2ATZZN+2PGlxnX1P10DP6vUjregXiQlwtBMQFOk96pViwIFxM/3Pfmqco7d6N1aMGCDGMRqgwBsLhQW1iWGwk21KiJ2JHSpWhuYGxpgvkM8qcIBuZeMsC1O4zPAETcLi33PqWxzM7nqmGPaD2PLhjbagk3eFNqtftEP1L51sHMTp7T50ADAGrvBf5JZTP1kP4xzDEkrSDeogL6nSv6sN92memWBODSP0O45dJjB3AusschntsEo2SvD9VjxsWVXJuGFxPG/CkogAW0N1rKEQLSMK6blaLvBlWU5yXDcEhjphg/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aOyVS2XaWs/zKR0smfslf9KSpMUKeOp9TsrLQe7LP1Y=;
 b=OMBPJD6j6W3i5GywKstP2Z4qwNn78F4ni5O1iQaLfv30hzb+A9PrjFpsJH4mW5TC4KLNxiSXAeirbRom8sNTO64vbFcDrFpB0rLehHZ7rqOyAB9yloAOMl2mtvbf9H2jN31+Zq/R12uBT+dr7jQnayvY3CX93Hnw6tV9vE7xr0AlBbDhKSwFKHVxeZC3L8XRufsK2WZFeK1ocMVXv4fBc54vUJpRNxgxj9Wms5WI4CbuFAB+woKL6E9bm2xwCIJ71gV4f9v+dvzJsrwCgGhQfeFFZF5WZHRyLR3p860iZTQZNFdQhIpVSlujv8CYkCRXykcMPFvLhx8TQimPFaOxgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 08:43:44 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 08:43:44 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 1/2] refpolicy: update to latest git rev
Date: Fri,  8 Dec 2023 16:43:32 +0800
Message-Id: <20231208084333.3788390-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYAPR01CA0106.jpnprd01.prod.outlook.com
 (2603:1096:404:2a::22) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: ed70e3b8-ec1e-4484-4865-08dbf7c9c8f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LYjbF8PMcE9C3CgCshxDa1XJ2K6fvuhaPcjycP9BWf57KBF0KVngK4OrYM2UiZcvwSef+VIgrxbogaGmi/h6/y+fDeicIveS41vYbNBflrLIea8wy9hHbvmvKSyBy6jS5Lp3lFqEIuAkhufPJqN0YUJ5esWccmD3wq5bFs4HsypPR2CdcNjMQUx5P4HNd3oxmq9Vy+7F284Jtk8qNTjNJKQkDao32QSd06Pf3Pgc74dNaG2imltihpPpFpDiBZlwaqWUELPEOEnrmpJnvq7PXNHLSRm7DsaxDhq3kgUVAV3C7gNeZKn/9DZrIYIxnVYFKRXD5O8eq/KgUmvBGoyLYK5Ag8Eh7E4hKOWpJkgzK16SkAF33hsBB7utDeiFrFoIgPN9HDdAvYb5g/adYUQ0/X6KWBd6FTduYC192eV0DOpEA8EnnJJNCOhOiAYGtCrhKTVYmQWFfF4fgFsI9p4kNSrMPAmRkh6EIriv/uK7417gD0nMvCvlCQeszH/oSRGSxRDhd3on2jMW/lf8PpN6b1rhDQZ9kqhD6fpymRrBWGlo2fd3iVDdcbdzsm+1CpTtr45cxsX7Uh+anG20qTlIFGOs0vGmZoJe+d+x3GUM5o8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(366004)(346002)(376002)(39850400004)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(86362001)(6666004)(66946007)(66476007)(52116002)(41300700001)(966005)(66556008)(316002)(6506007)(36756003)(38350700005)(1076003)(26005)(2616005)(6512007)(38100700002)(83380400001)(15650500001)(2906002)(8676002)(8936002)(478600001)(6486002)(44832011)(5660300002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0rO5oSZG208YT/EEwxLhZ0fOjdjyfuIyV3CI76Qv16MORTbLEzDXdSys+yyG?=
 =?us-ascii?Q?6/oSOm7cjdGtPcVD9RUqLpNs96E5Ev+vLtDyFlKNkEmle649tFtktaKU7Syv?=
 =?us-ascii?Q?vyKzr72i9Sfr6t/5y8FBIx0Ci1qNRKe3NagKPS6llQJirHFPTVf5bLzsMeH+?=
 =?us-ascii?Q?/9XmxNgLaJH099RWbo+4CnvLowqfMp9hn5taIEKC+FjRjTxxx0XiMdf7I8CT?=
 =?us-ascii?Q?VUs0IY5zA719i5Vf5rRHg6vSzgSK6Qr9qk4gWQ+tQOwBZesfpgdEfl3Fx5U+?=
 =?us-ascii?Q?Etjke6dyMyFiRB+RvqFTL7kHHt1CpaC67HVHWRydqL+faE7bc23fVi6tHelm?=
 =?us-ascii?Q?cYhs1t+3DNXky3CX6EzXUCk4BBSgU7tQKCT+NQkP+qKR0EUESyNc3slolQTp?=
 =?us-ascii?Q?jQoXhJcDhVS82jDFi41+qinjopy3BcN2Errb2lFGqNkzXjI0up7P5ZUUPkmM?=
 =?us-ascii?Q?CEFifjJgbpsVyXWv7ME/0w930xxoBLYj57mILwn/d2cmcu3DS0m9AgVE4UED?=
 =?us-ascii?Q?yGnB+WfG8+VCRxR16gtuLnYHeqLf9vYghOhdPdYEgyohILxEo7EVg1g93OSJ?=
 =?us-ascii?Q?Tj9Fs4grNEEIX/pWRLWgYosbNBX9wx9n9OYruEw/X9tkeTtLZSkYZxNB23it?=
 =?us-ascii?Q?kSkcpAFmzKSEmXZr4CD4UVTSC5FoeHp9usoKcYc7tG57g2cbn2XhFKPpOHsk?=
 =?us-ascii?Q?ycM4FwgO74UlyhGR2ien7vEcO7B4fwXSfJIKqe9SHUbs0LThtsYac9vNwweC?=
 =?us-ascii?Q?WuwNsthGUSNJPA44G4YLFjAR+rWn2gaah6dPuTPiAAVvYHG5NVakxTywAXdw?=
 =?us-ascii?Q?3RihsF3nXnHzRzpeRNPRSMDhgrkf/91FPo6zU66q1Wrw1O1shdrmABQhAfKj?=
 =?us-ascii?Q?phLAO0KQDW874+3TgcUVt4D16c94t9y5+KVTSXXf+vjri43a8R4ez34qsP+P?=
 =?us-ascii?Q?MdQnwevwSkE2vIGRAig+XzOCKGLfkLOCyb0fRiCm2KpafGMwBERCa65ANa/5?=
 =?us-ascii?Q?0bQLpi7QOOi8RgfkjN9cXd+5eWZa0ta3XvDoxUG2cnHjf5gq1hYwXWlJOGXu?=
 =?us-ascii?Q?3Mx1W8SvGGc6BfdAwwwdReQZrlWEJaB4zy3NFjl2EDZPHs8Egt2b9YtVlpl4?=
 =?us-ascii?Q?xMv8bhZivubZcr6uPIs8PO05FP0pfcrRYIfr/0VMLxvAII16SD0QrSysuhtY?=
 =?us-ascii?Q?bXVGOVhO61w+4Ikwvy/oaPGdI4ijeXwGkTV09gemnXI2Dy07NT4Bk8l0Mqd2?=
 =?us-ascii?Q?Lfk4EIC3vr13a/Sz6hFS+Rw1P8KL/ILL5hYOPW1ZbccKbCXzsFw/FXwrTsOy?=
 =?us-ascii?Q?H2XFgrBmxPvj0qkAMjFlb8dY5F4qnG2CcqFMoQV6fvSoxrrK/Cl8pw6j4FvG?=
 =?us-ascii?Q?Eh9ucT8MQpWY9eQxDpQBsDZ78/bevgqFOBnvItK34soc5JJtY+PDB9X18Cwu?=
 =?us-ascii?Q?/gBMcKAbmH2p9Ye1JRv5MjY3dgeXWa2duLrNVSlUkJUERtnr+z2dCGDSahPF?=
 =?us-ascii?Q?ljBzoO4KxCqda6mc8ru438MphPk9JxvNezh69K9hRD8O6dzrUdnV7mkg4PEU?=
 =?us-ascii?Q?21b5nHwGwA29uWALs86FYYzscYP0xtTYZjFvnhTN?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed70e3b8-ec1e-4484-4865-08dbf7c9c8f9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 08:43:43.7046
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nhlj+T0tlRexCAnnkPM84Xofldonp8XLEyFbtUI0mYgBvbZfKn2DGeMmo4m5MjQG3/lE3N90osn5mu6d0wRXmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
X-Proofpoint-ORIG-GUID: Xkv7TSESm6kKdeM8PxclbmbFqmxJpeJ_
X-Proofpoint-GUID: Xkv7TSESm6kKdeM8PxclbmbFqmxJpeJ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 priorityscore=1501 clxscore=1011 bulkscore=0 adultscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312080070
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 08:43:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61839

* 82b4448e1 Additional file context fix for:
* 65eed16b5 policy/modules/services/smartmon.te: make fstools optional
* 2e27be3c5 Let the certmonger module manage SSL Private Keys and CSR
            used for example by the HTTP and/or Mail Transport daemons.
* 912d3a687 Let the webadm role manage Private Keys and CSR for SSL
            Certificates used by the HTTP daemon.
* 5c9038ec9 Create new TLS Private Keys file contexts for the Apache
            HTTP server according to the default locations:
* b38583a79 The LDAP server only needs to read generic certificate
            files, not manage them.
* 100a853c0 rpm: fixes for dnf
* 8839a7137 Modify the gpg module so that gpg and the gpg_agent can
            manage gpg_runtime_t socket files.
* 780adb80a Simple patch for Brother printer drivers as described in:
	    https://etbe.coker.com.au/2023/10/22/brother-mfc-j4440dw-printer/

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/refpolicy/refpolicy_git.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index 1913ec8..d739522 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -2,7 +2,7 @@ PV = "2.20231002+git${SRCPV}"
 
 SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=main;name=refpolicy;destsuffix=refpolicy"
 
-SRCREV_refpolicy ?= "f3865abfc25a395c877a27074bd03c5fc22992dd"
+SRCREV_refpolicy ?= "d7d41288b162b8786de844bde6daac25e4485565"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-- 
2.25.1


