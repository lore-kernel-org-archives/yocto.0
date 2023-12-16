Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFC6EC41535
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:20 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.11929.1702714931095415173
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=UouJsFzi;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG7e3oT028577;
	Sat, 16 Dec 2023 00:22:09 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=5CWdc9ForRYrLvMVxUg0H3Oj0Wn6qrcBTPEU2WKDMKY=; b=
	UouJsFziXbLNoiWqGD6qMxW0XWCccT2tlEbNq3xTEUDF5QTNJhnJi7dTe2zMfwUB
	FR0by+6FYqZnSZ8paTbbsQSUleakfkKpsbhJ/HW+FeerJUFVs6LNf8hWv0Mv6WZO
	nnOCtfzp9r03dChxAofNllZm7YYhAUFvqEYl5JpY2ZK8RUjsLVj7cfRu0dyqXBX6
	/MlFbA5f3Caas8gP0yKOLctihwgY1OChGuTloh5lqJxY7sWF7s6zJ5S+/0q+edyg
	8w8sftIVTbnGsG5Bj3LsmgJ7iTyeHOUS61mcCHwqG8PmrpbA35l9CX3GhHus9LoA
	QxYyJSO4kt62LLD5yIHedA==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3uyr7dje3h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 00:22:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aCttIWCyNVRkCDT9ebarJcx2GMVfZZWP9a6qOqsYFdc3o8vh0USm8qcSBeXdx6tSWeaDXaIAsnHqBstCZ57iKJrMgRd9Od+bVo/GWzLUoQoRq+SEw3+dMZ1oDVlgTGsSifLb3E3kz6a075N+JXJ/srKNye53Eec42mhW4fCEIyGZVg1VBQQl1FqgLwHJoMOhh3zW5KmPBtL08PHTG4x9bei2V762ZGKEJrDp9WcV9OhLQWGzscSw3VPGEFs4byBedXNTtzh5DExza1XE6km6+WwukpAT9QiyFwS+c+Xf+SHNrEtWlH5tHeR54Sp6SCMKzYAtQ4u+rLlASGb4OJKRNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5CWdc9ForRYrLvMVxUg0H3Oj0Wn6qrcBTPEU2WKDMKY=;
 b=QYDxZgRQkYusyYNDUjalMwYRgwyxl1ePYt28F1EqWZabnsSrLdF2XGdJCbXPvxyfxz7/7wgCDWTePDUyRUv3cCaRA9jJVq9NwNxyYGQrjFQ2C+5AZldoAVbjO7RNMG5fFaamNg3zc1VeyVUTDQVRf5olMqa8PxzL0Yykd/w+1quosIkKxVvubsRG0GfoTIcRW4zIKYQhyKci8SI3/O3FEwc06/1FRf7erJs0Yh1kWWWXl7LM2zn4SRNXCFMk10IrI5gQZbWBFwRpVEzfdBbFUyefdS8wutXYBXHxJqci1xPTfiobfhnFiMNLtfbvEDTfIu29QjqgRjRr/2sdI2BloQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:08 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:08 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 07/15] policycoreutils: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:34 +0800
Message-Id: <20231216082142.198501-7-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231216082142.198501-1-yi.zhao@windriver.com>
References: <20231216082142.198501-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:3:18::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CH3PR11MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a4e63ef-3fd3-49b0-376e-08dbfe101811
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/sW5tbFRQp+ncnXBc5VXIDXInabWuGGF+FPNqL++oxoWnXvI/L0nhACTsl1kXg12slR1ZWNy7Uk5H7DnFxdfo775wbTuiRHeMhfAbKBl2PIWFmfwIBpEvl/4QIXwXK5p/ykBz6OfLmyJrSEdMysgkoNp3mYe0AdA5z4GK5j2QJeJgrnstCFJ9Br2ASj7j6M3faHyIEvfvb6mvNvBOgBCAEC9EEy8dujJRQhF/PTwThafPYofTbwsEuKC7WCfJhzaa59sZuLGjY3hc1hQaSdL6DK/3GwEBpAUh4yNDge1ffgD4rUf70F5bEAXGyPm3sV+zZerqnZhY0sR5KRNwm87I+UULNo0JWc66D0YFSD/StsEbuWJbYkPx4Q+T4+bbJhsTNXC2WZGU31iBtS+oFtSSVAT7/eW4+yjSXP6IjITaeVjl6j5vAXWsbXm8EYt/51ZphWmIJq8R0jAY5UZLyIaptTKGNoaAj2V97bqGBlLDpGm48W5ee5LAP/XHwemoa/f5BnuBISqHOB5PyOCnVesRaOCfgRHefRMiBx74rXi213g9WYYDmMVYHVe46Qoh0lLEk2jtwDmXC+IdzdIrdPDMyd24RpnOno68jZr037tZAQV6uvGGBJj+roaR7UsUxZL
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ZHWKHjsZZKF6kEo20xVwUIF6O2IgnIf4j2NY6JAsvdxJAOooWMsANZ2g9AbZ?=
 =?us-ascii?Q?3TnvHYqEbcc5mZ3B43SOKnLDjX9qlFxY5f6jlgacr+Mr3vbuRontcNCedKiy?=
 =?us-ascii?Q?bgr0Eo2BrkKJ0wZYwcc4w+hNHD3sArHboX5rXM8H4etHczOhmCM+0TeTOpkw?=
 =?us-ascii?Q?xIKPD6xaiiHo4mRNiReobKv8lj1Q+mxSW/1CWbyPIrsWM7g7lgx9zJHXe4Ds?=
 =?us-ascii?Q?lv8DUj2xQoy0O3vs0Yg4zf8L6u0b0ufVzycvF2lq94cQw7MwfCR99e2Ggcrc?=
 =?us-ascii?Q?QIyuCCtun0YdPw0Yb+UAIgB4nC19ULlA+PTIYvW0xGRnD8Ft5H9+HkhsJOAj?=
 =?us-ascii?Q?Awqr56hoD1c7jNPm42y3mzmJjsBefEyQxjpFQdApj1DCZCXxh96Ce64J+Aoi?=
 =?us-ascii?Q?YQxvUeznaqb+20q8HCfNVzVK/sXc6Vg7xSDWSmgXX+ZKRNowKGi7OBzOZJ4Z?=
 =?us-ascii?Q?hAq7EpHeM964VDFV2+5xZPQhMQRmJrBWi+BcGpuQppm1TNguUhDXLfNbUPU1?=
 =?us-ascii?Q?ADq2nB6n+FCCefugcXxwTcDvncCReS8YbgXayJdnpNZ90OkqROQTQKP+KuxM?=
 =?us-ascii?Q?qFXmuYOCBdd3bmcGV5bDdtpkHOfK21fD0Ad7sSFlDzeDGwxF0eBqcTiNznaL?=
 =?us-ascii?Q?7q17dcDsKfhWx/ZtCITAh0Q8NrOaj6pvoXQ6rd15qyT9PJVcW1FyrnjiGe16?=
 =?us-ascii?Q?5B/P8k4ptyOj/Sj+aydthE899O5qNjmwil5fWpcsy9Bm1DU1chOuOAqapnx/?=
 =?us-ascii?Q?LI+GwhYxFvq5s9g/3UKF532T0TghgO0MCsNhSx3jShh3Rc/is8tACOLCCeyN?=
 =?us-ascii?Q?LSHQGi30InthTlypgLzIsZmyDKT7fbee5AobQidXy6WMwDUxXGkUWM+dS9pV?=
 =?us-ascii?Q?sPFFmzFflnZSW88Fc4MMjHcdEspru/UogYaVfaOIdn7GGLnZXsxhF+kvDxY+?=
 =?us-ascii?Q?B/zeWzhQrx33NpkUtbBXyg7W5FSjCJ05SSlXlK/ZpCKVgVElR+x0ivMXxh55?=
 =?us-ascii?Q?FdsUXNqGmtWSF6cAbPLvc80is7V1iile7fhh9kTghuRjO9thj3lI0E4vy7sF?=
 =?us-ascii?Q?OB446IQzzqB/qarYV3YZUHt3Da7lOsMvLXDDAElN4kfypUJGZqbfGuQroEap?=
 =?us-ascii?Q?h4tGxzPXtQqWiRqPUw2aBLBu9V81QIGo9Nlnu2YkKZQjyLA9seoZ6a5tHhb+?=
 =?us-ascii?Q?f9YbwmQO1exRwwswY7yKIBCSxx3dJ4I0o0P8sbsMTMvRtQmZmJxRN8oLSV9R?=
 =?us-ascii?Q?40AuddOBCWYpweiw60j5P17lQ4vOKFpVAjWwnW4f9hmz7+89CSpjoX+9iTlf?=
 =?us-ascii?Q?LbPmQIBwSa6f1e0S2prZ2PxKzsfTPa0jG/mGWgmKmAVKLMyfRNvye2msDpwb?=
 =?us-ascii?Q?CeKvPW5C8zm85QhORLtbHVqHi/4awm16Jqs6KYaC0DuOk/5u9viCAktIqHCO?=
 =?us-ascii?Q?2dthMV4q8ClkAlC2mqgevWkxGKlJ6F8Ye7xVNrya3LjEqznCiUpI/8Os5sAp?=
 =?us-ascii?Q?JL1y+1zZywsXTvjeGtzCEzjwBVH5MXJ5nzJyV1kd1pVAAmrs9W/R8lfOvuYr?=
 =?us-ascii?Q?OsGL77C2aLRuIrw5a12fILXOe23xrB5t4P6LkTiI?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a4e63ef-3fd3-49b0-376e-08dbfe101811
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:08.3138
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OAIGeOjdSP/d82/2KGrPBLj0wdLrSt6xa+d5JBZ+kM1NAk2qwV5UnzNgrcM6sDj3fpykFG8B1LxkS3jt3ZHDHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: 6qV2ZLyzt3gKf6X0WI8N5GdXyiCcHlkV
X-Proofpoint-GUID: 6qV2ZLyzt3gKf6X0WI8N5GdXyiCcHlkV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=576
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 mlxscore=0 bulkscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61933

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{policycoreutils_3.5.bb => policycoreutils_3.6.bb}    | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{policycoreutils_3.5.bb => policycoreutils_3.6.bb} (100%)

diff --git a/recipes-security/selinux/policycoreutils_3.5.bb b/recipes-security/selinux/policycoreutils_3.6.bb
similarity index 100%
rename from recipes-security/selinux/policycoreutils_3.5.bb
rename to recipes-security/selinux/policycoreutils_3.6.bb
-- 
2.25.1


