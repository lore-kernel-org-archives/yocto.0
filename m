Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05E1EE49B2
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 15:22:27 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.14429.1692804142371449664
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 08:22:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=SuQZMcvu;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=7599c7e7ca=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37NCj2Wx018309;
	Wed, 23 Aug 2023 08:22:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=oBmUe5WZuYgg3syIL/
	/sPIacZhOqQ+reN+K51ZnaeYI=; b=SuQZMcvumERePnxeSkqQuDLbHXjah/7w6s
	+9m2Qm2RPiN6aT9DxheFLwRlFQA5lRl+SugSZjSE9XIBrUBkZKX5JODNVQab2HQ9
	K+KGC6BaIRJXwXopygdRwX5BWMp/iQXyCD2+8XKlOXgYx+Dm1hZXYeS9EdNdjnOy
	aG3+4d3gzc/uMZOIIoZxrMcQeLArW5sM+1kZSuYsBl7A4NX3wk3LkMq5O1ZYGlEI
	Gx15Z+6ThmtDnKvJQongGd9qMGNCIcJJ2Wrwixmj5iNfbM+6MszI1SznuFmvrfHk
	4ESa3IWJHRV4U0QFso+x+fdOhm5xVsFmD11rlEaJe707CLkkunyg==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3sn20dgwgp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 23 Aug 2023 08:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kfHswhpaSnoR/SxeywExepC4DRLbpcWc0oaKKtuHN1lU1tCtI1O4G156+D2SxGvPRQ0aryVzASyf40kCzVBhzJWQEHWqJh7a5eVXEvd+tLMC8Aq4j93sqrrOUKfxa4qqbhEftCx/xGvfaHGye4oMUjVhpvx++0ur24I6+HbtG7U3CAMX6upYL9YdTL3L2d6DWPJw+1OOX8HGNSxiSxeYPLv/oWVMJjtOafro0KfF3S2JA3Nzp9BtF8vtS1Ohx/lJhKid5+G76OtHMifSJ+YVok75qIfWCzN95ZQuu5mQVmexFbIbXIFnxLhr/rIBWgdIciILCdswoVlj6M+tdmxoSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oBmUe5WZuYgg3syIL//sPIacZhOqQ+reN+K51ZnaeYI=;
 b=kPA+uESlfFinL6kdYjygFZNDowWobv3+tMoGLw8jehNNNIC9vvtG5vl/tHnRQnfzXL5aDl0sbVExQRhqABtUEVQ6oHSpNCLPSO3F1Ai9SOSHctg3THYswiBO4K95v+YQBTAyeHkaCbeLsiRzrixSZ5fpQFkjpkgiMuETJH+IO8uwQnzSUcno1hdVg/gmD59yzPIeirB+/QK5Ff2GRuEcBn5pxNEXA8PDBLtqhSK8psKYeZs+3bXaWHycQc4VPrcEptz19UkjfxVeQkMfmF3VnQwoMRs7KDzZuoiVv8hgOzYYInWU2PFedaEAPibTP2O3CgCADjIgCfNfDqE0E3nTcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 15:22:19 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306%2]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 15:22:19 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 1/3] selinux-python: add python3-distro and binutils to RDEPENDS
Date: Wed, 23 Aug 2023 23:22:04 +0800
Message-Id: <20230823152206.2932585-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR04CA0010.apcprd04.prod.outlook.com
 (2603:1096:4:197::11) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ce9f39f-6709-4c83-12a6-08dba3ecbd9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	boxpXlHScvsgHh+WYDs6YNzeahbBRLtkGSuDViwkyV9QPV3Z+T3sBuhVAsewjIDno8fr2Phqt8E9Q48ah7GsDoOPONmdOqgta7HODzsV+0KL4M0Z8hOl5N0G2vY9rCTJBYyVmSHS5al80N2ySOm8Mdt1ui9Vc90Gvr/7g32HIJGog9dEhr+Cc54cOZ9HFqaDD+Z/5XcwdHavf0ClaMrcht/XqrKSh6umt4J3JEa5+gCGH26PPdCtX71KeY+1EtmPAhwDI53SCG8ehd9md/MQFi7yYbK3GSgvZR1/GzjteBWGz26q0Ejx7y2lEQ3ch17y2VYOtOYRvVtW09vk0pLa9kP8XpP3ydvQZvQK4aEqYXC9GO9GdLCrbdPgWGbrvYGREG8vlNFNDH4m0XJRg4Wg1lfWH+CedpbJzRNKnLz9BW+x0vibhFED+uTy1qjJu49z3e7CIWLgjvjNE6iYFYiamp49I4QQ6eWMbt2A0wtOhIKSJ3wLNn5XUjd9ukRvHOn7vArmHkVtF6mzIcVZbhEzKuIToc+BNb52k9JAMyXdB1k2BYkMmmgHA8lhIz5uxZ3rLGauCusm/fNfBXVGHuoFaT26+wH1DmAhFs/KjU4Rc6JVLt2WNnzm7qFpCqlnplGz
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(376002)(346002)(366004)(396003)(136003)(451199024)(186009)(1800799009)(83380400001)(2906002)(316002)(6486002)(6506007)(66556008)(66476007)(52116002)(6666004)(66946007)(478600001)(86362001)(36756003)(44832011)(1076003)(5660300002)(26005)(2616005)(38100700002)(41300700001)(6512007)(38350700002)(8676002)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?FeaO4GVLwgJGpWfWldKxtLwpk6GeA/IrcsB5Gsb5pOofR3/LwYY7OlmSjUuH?=
 =?us-ascii?Q?erX6SpgFkkXA4w7k5iFlo7J7BQWbKEJnpjn9EA4EA2us/3YGZcSiZj4SoNaa?=
 =?us-ascii?Q?Vi9yAcs3lz5nuOMZcedMpdKfHGh3hcLW92cRnz5fVN0KaKzS+elVT8xztADc?=
 =?us-ascii?Q?O8K2WZv4mHD4ZTUeEDyswFjwU1tUPWYWVFJ54eizKNSL+2Qu9B3XUTOyb7rS?=
 =?us-ascii?Q?J8fnfpYNuac1vo25MTXuer3lvrVjimyouTf/vrTABvN81A9Gcmte35M4Bc4i?=
 =?us-ascii?Q?vnnSh6qXD9ftudvky6ZbIiZQDrYd8xi3ihrnEvmVRM65Qz8vdJB+5bcgrQFb?=
 =?us-ascii?Q?NGtSEZKt3wPeYxd6B/t0OABcOrjuHtqSCNBt374MZmu17iS72PvmNwzKIhRN?=
 =?us-ascii?Q?BY79cJ5LyCdMe8uWqUaP3ugpqU5L3OqP5TmLCotpqUjoikTV+1x+knp6rS2k?=
 =?us-ascii?Q?UHsVPH2fbW0xqHDo11zj9WMUGTe7aAB4FUQJ0TWTNuFKlaOkdVqCw9MiM+tO?=
 =?us-ascii?Q?BNk30vSnitR7OOdqf4nJSgyrFMOetdSuh2Ls3h26L4IR5X6NMrCwwR3mipFG?=
 =?us-ascii?Q?x2yV5OWSpZl/3Hcy8XNtVJu5c8btiK/Zocg3mtSWnHdbkQUllDm2CfsRgHE2?=
 =?us-ascii?Q?Vg96BcNz4efj6l8PORWuaS6Ki1jSLCsV4yRCa2Tx81FzAEjIN0/XEBKVZUVl?=
 =?us-ascii?Q?oMtn7D/ZeCx+mZjuhyFrBDX/lqd39WqomQbmSC66UvM61iMCg4h4YC3mW9YD?=
 =?us-ascii?Q?FWczg4naSNkcDHCPqMj7CJYFdhnEamPseFCHtrVaGPGANyThjRXApcjTgaSA?=
 =?us-ascii?Q?GKgZ8yyv/xg3jlSIIh7ROgcFj0wVX33n8zJ7hUwGjd8PRNHyxyJmlMixfBLo?=
 =?us-ascii?Q?6Mc/j0KHEtMkiGS3l5tmD6f1db8AVG0aVMzj4el/jbu/uYfcty4wfGZJ3pFc?=
 =?us-ascii?Q?AjknZ9ph3kk732m1WRwqIsXCpMMi3f67j6RR2JlrVvhPrz558RWDZHRD41gX?=
 =?us-ascii?Q?EOipxh/ARz+Yql4iYVBW5mqAUcI4rotCaLtx53Wop14Frn03kgQBVnJRL69w?=
 =?us-ascii?Q?Er8drSJPzsg5zIwUI9ySm3cC/rOdlBvep//ydvCjsUzjT3nsBxdh+aXxw+8e?=
 =?us-ascii?Q?Q6O7/XLvij19KtpYVQCZ/DB83GmIbzWhaF6AJ9laOhbZXf6VhMPHMvwg4fMD?=
 =?us-ascii?Q?7BN8344hJUEkT182PN2KBCUkPsR22K1J1k27CZFBNEfYYQVlMisRjIVTBmO1?=
 =?us-ascii?Q?l/n30bbfbU40txqJYgVcWxcsOw9aykM8ZbxPsYlqv/fl3Qfe3UY1qVnVakyg?=
 =?us-ascii?Q?o+TYbmYSn0cjNn1J3l5aVgWVWrNE0PeJp3f0aicI6yXcsPYu0VXJER2jLdaY?=
 =?us-ascii?Q?72THqgIbd8PUvH2spw3kNNc6YlE3aIrCYF5SyQHtSA5xEr+HOupVtzbfsKHW?=
 =?us-ascii?Q?VCpw6JIvEUaNgPEloKB2RMPqNrbH2ZM/QZTcOGvmPX+jOmuHKxsGfrLYjVCk?=
 =?us-ascii?Q?9s+9lTa/2IZJEwBXAW5L9AXiPYasyFZY4zfq9P/LSJFcSb0m57XcmYw0vueY?=
 =?us-ascii?Q?OGHXyu1nISC2lWS4ILjNRFkS5DvJZ10e0QkjX/g0?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ce9f39f-6709-4c83-12a6-08dba3ecbd9c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 15:22:19.4578
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zDNy0NyBw7t0+qZLhnZR6FJbvrYpTSKgZjmMsIXalpWcpap/K7Lc6d3zVk+6RrOQqKmkt3V2B0ns5TlCq2j4uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
X-Proofpoint-ORIG-GUID: rSyimuvoIXAeDqH3kB97VRVI1Q8DB5FL
X-Proofpoint-GUID: rSyimuvoIXAeDqH3kB97VRVI1Q8DB5FL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-23_09,2023-08-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 mlxlogscore=999 priorityscore=1501 spamscore=0 impostorscore=0
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2308230140
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 15:22:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60860

Add python3-distro and binutils to RDEPENDS for sepolicy to fix runtime
error:

$ sepolicy -h
Traceback (most recent call last):
  File "/usr/bin/sepolicy", line 690, in <module>
    gen_manpage_args(subparsers)
  File "/usr/bin/sepolicy", line 375, in gen_manpage_args
    man.add_argument("-o", "--os", dest="os", default=get_os_version(),

  File "/usr/lib/python3.11/site-packages/sepolicy/__init__.py", line 1245, in get_os_version
    import distro
ModuleNotFoundError: No module named 'distro'

$ sepolicy generate --init /usr/sbin/sshd
/bin/sh: line 1: nm: command not found

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python_3.5.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/selinux-python_3.5.bb b/recipes-security/selinux/selinux-python_3.5.bb
index 9ff63db..79125d0 100644
--- a/recipes-security/selinux/selinux-python_3.5.bb
+++ b/recipes-security/selinux/selinux-python_3.5.bb
@@ -54,8 +54,10 @@ RDEPENDS:${PN}-semanage = "\
         ${PN} \
 "
 RDEPENDS:${PN}-sepolicy = "\
+        binutils \
         python3-core \
         python3-codecs \
+        python3-distro \
         python3-syslog \
         python3-multiprocessing \
         ${PN} \
-- 
2.25.1


