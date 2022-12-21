Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B76C4167B
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 03:57:00 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.11048.1671595016013669764
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Dec 2022 19:56:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=KX6tKL80;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=9354952c09=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BL3hGan024926;
	Tue, 20 Dec 2022 19:56:55 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=J/i0kFRvCtGJcm31rLqACVSNV/LS4xu6AbZBGWSwN0M=;
 b=KX6tKL80sNs+8inOO6PwE4cT3J3mx9XnyxU8wqIgSTWletmJkPrFcL2wm3Hw058JUMfs
 HQUlSaL+rf7OWgloAMHNifLU0DAMCv6vfV18mRL1lKGWhPMLklOwAU8GcblUb3dgau7k
 E76Lj4WxWJMJTmtV00dIDbycogXhzTvtdWvqrcL/pg/qgubftFg1XUHubm0BqCGnF0aG
 U3Civa10GlPPuPFzlqpkkMnfOesUjlvodkPkykdyJlWaFEf9uh0vFC0c3WSC6on0cgXH
 gue63Hd6oe7dXpVTQucaQeOPM8jSrI0UAgMsK2PatRstNjJ47graLKn9FF8v6+ZoHyza 6A== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3mh9x8tsdw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Dec 2022 19:56:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LGsJi0667Z9Z9WXWxb2FFSku7W7Q0IDslT+4MvvyX3OnD1sEfZ2JOTuzdENHLgYcEU+wLZlBwIJb5cKY/BbBbsS7SkBIDcqFJVTb1vL4VJfmQvRpX8Jb80pgA7iV0PG7ertcpfCeejACHa8JtmNH5EoXIpJO6qnSpz+3Xl6kqYxSiqrKhSmL4hX4nCMlfSf4NrtGW0mMB7oIudKBpcPk9C+iGtPLnS2yqZ0EjfCzU2CcAQvWmN2+YgEFZvkYEfQjZoyCrQqlYebTz5Sf/ZJF96JqEepGxli65ICPrw+ovs5ebViFZ5Vx+06+k7UrL313ZTRGbFD+B9PYERUBGoxI4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/i0kFRvCtGJcm31rLqACVSNV/LS4xu6AbZBGWSwN0M=;
 b=IDBcIEoCs/9tANZZXvJXUnxxXz4yEE9h8KRJIDnE8mFbinOaPqkVTJ2MFS+O2g+LHZ4N+qByjNNrMj7DYF9vRDk8N1+/PM1iRwltfAyQSyFgeTUrAO4Z639rSibES+Xs60mmaSbIHYKd49gPcecLTNL5abIt2aq+Xt13zXMxapKRMBrMGxgJfIgwLkBntGCNp6RDDnAJRV37/mMhkoyjLtVev9T8TY+5xcoF7GJq7nEtt8B1pHx+8tFb9dFbna3Lts5DuoZ0QNdPnWhm9KRVC51hN03nr9txI15mRwPXjY0ZGSLIhJgXsjGTJmJOCYoCEN1GVZMe2JO1KG867Bp0xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 21 Dec
 2022 03:56:51 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf%7]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 03:56:51 +0000
From: Robert Yang <liezhi.yang@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: tim.orling@konsulko.com
Subject: [PATCH 2/3] recipeparse.py: Checkout deplayerbranch before parsing
Date: Tue, 20 Dec 2022 19:56:41 -0800
Message-Id: <20221221035642.113852-2-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221221035642.113852-1-liezhi.yang@windriver.com>
References: <20221221035642.113852-1-liezhi.yang@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0073.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::14) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2789:EE_|PH0PR11MB5013:EE_
X-MS-Office365-Filtering-Correlation-Id: 333d50c6-7f9d-4182-9e70-08dae3076412
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WpKYj2ghDuKA1OeTH5lVolnRnjSaBnq/bxtmNitYjT4IuyhDjZMpyIznXUA9n4CbV0gXitb3Ejq1AUIR4X+CBPh5w/Hs8SjIcKlpQlJ9A4LDhc2C2WXZBGU5Vmin8YgL2PQeOAS0nLKGC4yUH6FiIrvOVxr3Sn2f1LYZAwBbGj5nUuLI6g7TFIFPg1Qo8gLRYr9/Oy8gZRv1hywYd2xebHT5PNXNxS8gfLccpDMHtAEMpkuNBNZHu2l0keZg8CDAxn/A6t767SJ/ypnRDWpCZJ1rB0iLjDdwcYxufoiI/I8/Vep0hhBQL4Mlns05+YtcHsRVlyHE1GHLDa2RcAuLCoc9P4skXYDn5LVBmkI7v13EJELT9niXsGBtrZnYrnvE0iH/VS6VpocCj4cw0uHji16In3eR6cD0xfbg54kRGYWMq6fqO8cCkXcXNbnihkoD3TG2Aqqbyxkc75xNQcy1DU+mjhgYeiRVU77MkDAQQ0g2pQsdcFrwlsOn7dsmgS0EQL4JHPg5UbN5rTVtTGckZg5UEJTgPe++6uXx8YzSP/Osv4gplwLDaF1p8vobeWxZrNZfPTyrFRXwB0RMmyT4Vtf970RymiuymA/AYYYd45RcaFt0CFQxlbGH/0d/+v0EuHKp5ES8W9doaRqA4/nYOMjPcZe9A/bZlM/bQ7ajgSjPYoK2VUugq3cgp6SLhmfOsRZ30rPt9QazJYXwU4Q+jQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39850400004)(376002)(136003)(366004)(396003)(451199015)(52116002)(6506007)(478600001)(6486002)(26005)(6666004)(6916009)(2906002)(66946007)(2616005)(36756003)(186003)(316002)(8936002)(41300700001)(6512007)(8676002)(83380400001)(66556008)(66476007)(5660300002)(38100700002)(38350700002)(4326008)(86362001)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ZlEdF40AIPWGRYrlu46UIdil6tH4UkfkSmwEcymZj6TkRjVZVZJ5xWyrvMqH?=
 =?us-ascii?Q?ne7eLcjuhKS8MIHdiYkV7HCyHSsI3c/8o8G1g49M5JAbUvcZGpG/gM/z2j29?=
 =?us-ascii?Q?zrTCVqAzTIzmN3Mst87M5d+oSMdUF5GWigCQANb2dj/jL3OW0duXpfkUYT0I?=
 =?us-ascii?Q?pINtn+GltBxbFnplB8VYBZ/V/BmV/0S2KQ7ToJpw3h64v5rMpgmvbU+VsEeH?=
 =?us-ascii?Q?Gk4j84jhRpMDQmd08U9GE28ejI4Pd203XmY4iRqlh9mt+0GA2H4KdubMfgKd?=
 =?us-ascii?Q?Wnk6oENDJpjRXLz2ALK+/p8NLnQVQN1qZy2xnPZXL10LwoZZYTrYAXW+uy09?=
 =?us-ascii?Q?fGlwkXRdc8rBxEXmfnLda4S+5+FFNMoxtGxCec4sRfrLmT3Nl584NTNHIX9y?=
 =?us-ascii?Q?es7AXjR+SmiUbtm3o3heQTgalRYOrtBSU0EeCMO8LrzbkG8kelF+gFHPB5x9?=
 =?us-ascii?Q?9MpINh7KuDQ+2mm5TRiFk7AYvmuwjUr6uHOGhpV5/832R/CCxjOCju9JUvSH?=
 =?us-ascii?Q?uL/quIDI5tFfovdFijY6pqfOALjjSrOpTybI2WeRm7tYucq/iy+P7FPNyZxv?=
 =?us-ascii?Q?YYlFleGuZJXlo98xQ8EaonWslKPKMxhKuAQXOHxutZxVk99CnscCt/85cNxs?=
 =?us-ascii?Q?Y27RJbW2ZkqrgB1X8iUninvOQIavc8gqshNZXWe6hj7n/o7O7LpIWUnAYpUj?=
 =?us-ascii?Q?60eA4ojEbo8IOlW8rtw1GiuXRJUMNcndv9uRbwiUreTlK9hkYPizF6Qiyaju?=
 =?us-ascii?Q?qFH4QPY2x6xLX9qtzakkHKNHVreoM/kusacq76jlBBjIZmeRDUWa6buthqmP?=
 =?us-ascii?Q?zRHjQCKPbO6pe6zvvz3SH91x936JxwqHLQm9qMPhVInnPDlHvXU0jqfCK6FB?=
 =?us-ascii?Q?Q3Va345kFEkzhE6v0JOM9Dsm/19UnYjEGIe++j8toMkmOQLTMI1vtBQ7yY3V?=
 =?us-ascii?Q?+bmaE9uHZMfEVEPMefziAFSBKmm0Dvv4H8czSDhJpH8BnTMmPf17Li21pt49?=
 =?us-ascii?Q?2xZKpKBp0atA2+Yo/PCO7GuqYEjbAFvnXfOWWIrBQe8Ra6HJ+lA6u3akb93X?=
 =?us-ascii?Q?yVKeuxCOvaFVia2OwewA0re/I4e8/o2Whg+/BELZy6xssLtukhBmrrBfm0Dr?=
 =?us-ascii?Q?GDsP3pIShFegeD1mOcriyYnOWOXilnSEBoZdt/ObKRAbz5rrdx3J+FwdIR1J?=
 =?us-ascii?Q?vbNIL1oYapIrX/U6WM2Q2Vi+LmQ2++EhCMjETeTmtuIrj1Mj2gAVsoqdJUbH?=
 =?us-ascii?Q?IZKpdPVS5Q92OelLAR+zsRZr9oorrvkUeQWfqVWyBqhmUK0WIvcCX90IXEmR?=
 =?us-ascii?Q?huWelhHvMfmcPsQrP3q/g8YlYjuNQN9+QREGXpQXOytEm3+bqs/I2Yq35XVz?=
 =?us-ascii?Q?WRrGY323hglU+u2P6+KjIki7TYGYteOsRos0AqYpAkd8aI6pUEsnNhc+A1SS?=
 =?us-ascii?Q?gCSFvmdajC9NWGwzUQJkL5Bpt6Oz8bLFHeQB5ZU8OvlAxTi4c5SBYhGqmd/n?=
 =?us-ascii?Q?Z+LmyLEkt2Glbe2FG6XTSt6SifyYrhN9kXwB4BXq37jLE/QxuD2TNyIacj7C?=
 =?us-ascii?Q?Gr2Vm+VecT0JgC5HJilsFOD9ZN3fZC6s41Oll4+vD+IBS/smcTZftN/Ydees?=
 =?us-ascii?Q?3g=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 333d50c6-7f9d-4182-9e70-08dae3076412
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2022 03:56:51.1283
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dB8iqo6XF+LgX3LNqNYkjyktXgG01DnIRjfeYCYN78nyLCbTJiBzG41Dej0hyjQGtcvRHq4NCdWb/nXLgM6YG0yG+ZU4QsyTMrgdPXAc2MQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
X-Proofpoint-GUID: 4HU4SMJrqyB0PLorbwdckhjCyIc5LA80
X-Proofpoint-ORIG-GUID: 4HU4SMJrqyB0PLorbwdckhjCyIc5LA80
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-21_01,2022-12-20_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 mlxlogscore=707 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2212210026
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 03:57:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58846

Fixed:
$ ./update.py -b hardknott,master

ERROR: Variable PREMIRRORS_append contains an operation using the old override syntax. Please convert this layer/metadata before attempting to use with a newer bitbake.

This is because it doesn't checkout master branch when parse it, this patch
fixed the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/recipeparse.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 6202745..6f2da0a 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -124,6 +124,7 @@ def setup_layer(config_data, fetchdir, layerdir, layer, layerbranch, logger):
                 logger.warning('Recommends %s of layer %s does not have branch record for branch %s - ignoring' % (dep.dependency.name, layer.name, layerbranch.branch.name))
                 continue
         deplayerdir = os.path.join(deprepodir, deplayerbranch.vcs_subdir)
+        utils.checkout_layer_branch(deplayerbranch, deprepodir, logger)
         utils.parse_layer_conf(deplayerdir, config_data_copy)
     config_data_copy.delVar('LAYERDIR')
     return config_data_copy
-- 
2.37.1


