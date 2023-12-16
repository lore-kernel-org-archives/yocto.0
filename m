Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDDC3C46CA2
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:20 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.12149.1702714940150959018
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=BTdhY7HJ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG84pcS013688;
	Sat, 16 Dec 2023 00:22:19 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=wOuO7DUMo6S57QbJoZmcOZ59fdhnDe463bOapEAGUW8=; b=
	BTdhY7HJBnPIkF4WMrV/X5jFyQRJYWkJZKYAnuOlakOHOejbvDfusufGi3OuMHEn
	228WYL+m0dV4LpomijD7U8n/lUsm6qOUdlkI2PtmQTYwv6VdeY5xz8wJTn+BNbsz
	C3iU1aR9gbUcfUPcNlNNKI4tUdIVws8zGum9P0D3Fdfw9zoT0tMY05oSbinVLq5S
	l/c7DpmrOtLrNnURctQRP3E1td23JchbYXfQ2u3+L6rEdkOrrhXE3mXxl3Nr3g5U
	2Ky/yjOP1xW5e2RF4UFOlghZssPWRjDihKkmWJjjLQhnsjadY5weiFNrZt8OxEWw
	6NbM9QxxF2tlmBxCudYduw==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v1824g0ar-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 00:22:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l2iK5DQ+INOzuTZ+Y0Fexiitnc1KulnMZglSW/pSn6ku0ud+n6IuGFiPUc2kl0u8GFAWMLwHDgPGQBJRhB0DiTcztsWKtY86TJftUFld+1JykxXn1b6+n3niLjgOddjYerZCvI5dWAiGe8MeCRw6eoFYYR6MsI62o7tmKuFSyPL/xs3dEot6+vLojrP/LHLWcAfRC8DXHm6zzo78D6gR9075s1c9lkk8Wq59ULxRxXWr2PDR6qm3KtzpHypU+l4eXSjzNolxlQobQ3IUNFQ0k9xJVs+/6mTb/Ovqed8lNuoVwQE46KfQVDqiq4fuNkQsBjpqKJG2yBE/VLczjscOiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wOuO7DUMo6S57QbJoZmcOZ59fdhnDe463bOapEAGUW8=;
 b=O2Kz3EMoT554PcSV/M5c/VLaewgDPBwyZrztPeNXejMVnWxD6w6tq6W8n/6BBIQHEV0oMy3RRGcH4xbjEX3pXikmejBz6v/nh0Po/zwkFHC8uQK9IftWdP5k3eGka9Ttg8ckrOT+3q3DRdX+LJiEOmILZtL4pkZRMn3rWWqiYDay54uCVsHnPSb8+IuZWKgNsF4fsxw98lxlNqes9wIDdn59y3aTFjNXLl6qZ1/ZUc6FbV5jv4dE4+Z13VH4sHl9Dvv6tRcxIV+mMLahtLWtO9JVFvtOe7pdXIO1RH4aJLNPZFGPr9Cps5EHIo1uiBlLmvYlpYQT/tTrX2TVXbeJjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:17 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:17 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 11/15] selinux-dbus: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:38 +0800
Message-Id: <20231216082142.198501-11-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: ec1a1765-fdec-4c13-392a-08dbfe101d7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PUYQJQHM4t7d5rwSPMCKgNiOANSORhZvtTTRQRzm8p0wJjExVxb/yUi/bZR/VXF1erBQ7kwzPbR3L/HJAlG6H83Jf0aSURoi1lgMOnK8BpzLKU1WFdQkFnF7pqCTNUzn/efL/L0uWyEuVWlsA++M1G7TFLTw0bx7XXJ5WdZRbzYwxMKtSbqqDW7o/87c7ob1FDvhqe1zduazuSV0WWfMg18KCk4EjUklPPa5ZclgcWJuYgqGBBU1vC/0I1pgGOw+WYV5Nz7l4WbHbdPn6/Neuj0WFJWPh9GcayA1KZg143rorH2g90dN+PFTrSk/vJi9mZh9p2lTGwM+vbEkZh2wJPTToU82ho3/7E19Wx2G5bPJhg3sjPKX7fcCGXsuIQSzG79JCl4lJvBXSrYhVXVuTasx/kHI8bcgpYSVqm0KPmosJlU52j99BfVTtPuOCR//nvQZlLeYYBEzeyPaFqQ4gtfIScjUFB9krPfdhfIuNgSphiTtTmDALBdkeU5Zxc3VEc7ljrmxvlUxiP+hJIdoXmzif01T6yIBcabhnj/0Ih3xbhObSCLk6VE7jYQe/gs+Wb8vXYfKqf4ZM+dHdZSsJxDWT8eqPfhh1ejoQMskbFE5entdiazfRmx5W8UaYFqf
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?OjbkmQJ6JEWnF5P1Amv93whIyXaoOHa7EHlsV1hy5IK0Zi3yjyMuWOHg6PEC?=
 =?us-ascii?Q?VLHnTqrKRKECWMgoiBW6P6aI7clJXr2JqD9WdoyYkbxr90aO/GKkvoVEb3ED?=
 =?us-ascii?Q?Puq6YkDXl39zH1XPqHh12RfyJnwd2f+hTwuaB1e6d/ghm70zN9NqTyKOHUmX?=
 =?us-ascii?Q?d6ekE/QSyaSFgRI02Uo8fLokxeJxle1owrLV0NT30WIR5G4jIEjvk22pVRck?=
 =?us-ascii?Q?YqW2P4erxiKWoyJwSeJs0PZ1q9r0kQQV+WR6frcfqZi64w45ggk4MGQYOg3/?=
 =?us-ascii?Q?5M2l/Xb5LmpN9qN7onSG4LbE/NvPs5D+t9RAK6NOQ1VGEADzXnQEJZIdK+cA?=
 =?us-ascii?Q?hCrTfMMA73JQxHu2K3nZeTZv5S6gVgrla/hNkabX4eQRQuXJmZbXZ/WEBYHv?=
 =?us-ascii?Q?v4RZxAij8JYUIxapWwNiD61W7qrS6PBtEq2X/nlRxet5XK/qwbg2GREoSbjW?=
 =?us-ascii?Q?EMZQYyT5CD+G9ytPK2iF60CMHx4YxdwapsoL9hWgnXmSs8Ac3Fwxdctch3rq?=
 =?us-ascii?Q?5cjSDLEJxqfGo7a6w9aVQI6sSvtRbNmGSedS6i/SsUXghC8On5KYDiecCnnf?=
 =?us-ascii?Q?9gwm5aXJUNHlPaEre+no55ZQU9aElX+a69O/u5Hxg6GXrs0nG93dbRWxcvJT?=
 =?us-ascii?Q?MntNJH4znxL80mCzKSd2GvvixsMi5fDCi+pMmfDH4/8MHWSmC/tlWmCyPjTe?=
 =?us-ascii?Q?NtC4FR/os26cvHiz+mc6bxHGuVlvFUVPEHtDXU49Rbtx9OoZmLoimw1ooeyx?=
 =?us-ascii?Q?AQ0WXvmuGmTTv/lcDO7uFvMHcEFIxSH3b6rKoTbHE3n7iFu1heq1JvFRoFhI?=
 =?us-ascii?Q?Gkk5e0qVijmsPjtbPj+LV9BaSr9uK+toP1X/TjMIZRw+tAH5gC3bmJq1vwg7?=
 =?us-ascii?Q?7JYS9urWjYeFrfXeUQRdxMYl3RB630W28vRgLgZp1sAXOrt8m65qvLMPP2Vq?=
 =?us-ascii?Q?FqJzuNKtPqbOkkkngtRw3Y9WBwZfvcCAFb1K0FLrwXLgioialPDEhozwweNz?=
 =?us-ascii?Q?xMlJ5e24RSzWE/1H2ewKcmt0v/DwCVmciuSsQyDRc0VSHKY69YeKsZImboKU?=
 =?us-ascii?Q?nslAhtJldhqiasKwb/AfsFlz0QBgmQzAFw91Ktfx+DQmhC9w/1xFzhEjmVxz?=
 =?us-ascii?Q?+29H75FsSt123kV4sEb7uVrhHIoT4ggyR80pEe0FVcwr2OEGRCVz4u0n+S7E?=
 =?us-ascii?Q?GzaNqvSuE+YDQnXa+zhWw1fXcM0HYhOtkICoa8RrTStzlsJlDwfVRvc8T1K7?=
 =?us-ascii?Q?g0mJJ/S7akkqjNHTvO9K81o7mPCKo5PRuEbG05UzOcWKFbesTC9kcwbLtN3j?=
 =?us-ascii?Q?g09PUYEIjSgsDCAOwX6G5A17A/1a3X/PsmqUalshm9BDq3mz/+tD+gq90Hcx?=
 =?us-ascii?Q?33CweGqh/149aR+MDJRWINhL1CtHym2GIufpV06rnRssutNCo6xTIXhBhX/S?=
 =?us-ascii?Q?qw1wRTMnY82ULjXlwx6qcz3b5lLkBETE3UtkxeahZkGX+hU/yBA/JpCkn/fC?=
 =?us-ascii?Q?SwFX0SOxIUMVvuuBrMIPJgAjdC92IeKQ/r2uN8gDTIjSa9uq7dDIhVXxrxLv?=
 =?us-ascii?Q?vmGvOMwmylcxXYSfaFTSy6ra2nD7x5nOiUo7RASs?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec1a1765-fdec-4c13-392a-08dbfe101d7f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:17.4276
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Np7bwjMn6OJjbSudHnQQc4CWDn2k/98+2XYy2s5JHBdE/zjnNtw0iBJnd/9IGpOGSTSKYXOUsnEOmTg4wRPWMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: ICCxsVJfWgQODObzZWXKaXe0tnwzx1QP
X-Proofpoint-GUID: ICCxsVJfWgQODObzZWXKaXe0tnwzx1QP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 mlxscore=0 impostorscore=0 mlxlogscore=576 lowpriorityscore=0 bulkscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61937

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{selinux-dbus_3.5.bb => selinux-dbus_3.6.bb}          | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{selinux-dbus_3.5.bb => selinux-dbus_3.6.bb} (100%)

diff --git a/recipes-security/selinux/selinux-dbus_3.5.bb b/recipes-security/selinux/selinux-dbus_3.6.bb
similarity index 100%
rename from recipes-security/selinux/selinux-dbus_3.5.bb
rename to recipes-security/selinux/selinux-dbus_3.6.bb
-- 
2.25.1


