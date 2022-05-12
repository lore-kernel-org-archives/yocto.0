Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16766C433EF
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 04:35:30 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.563.1652330122745137023
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 21:35:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=F5N7fBj0;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=2131c09abf=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 24C4Vb76006064;
	Wed, 11 May 2022 21:35:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=iUVqh2au2N0WvNlxyK/BBg22kBveWoTH4aLo2mSvKsY=;
 b=F5N7fBj0k1agu27C43JsHCeJIqwD2hVF1GK6xh/TMLAsRsbsUAPqCLS+ybfHSUFt/ksp
 swBTHs8mGo8BuXUAnmPQzgI6aEyM93Oisq9NOVv22+Y8HYnXbnj4hV3MSy6pi6ZlpD1/
 lnjx+gAqulvq7LBoNVblUItiY2RmUUY24Lz4KdOtI6z+M9/jJYsepoxO+aej4OfN+Xnh
 S8wxHyAD010g4NPgP8bii4p44jrBjhHiSSUYdwfhSehZt6aaP0Zzf+ZNeOf4gxIBVVso
 2263crIRAb50itRyTXlT6+NSlriqAbJdxNS/PDmQCvp0PZ/8umIFl2f4Pqjx55Fq34XS Yg==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3fxde5jy5h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 May 2022 21:35:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XHUriEJAsfndb8t5w9vTc807ZJhx/mkJ59QogEu/7jYen4laVHE+S49Tn2nsgKbpYFb4Ba7bhhDLyXPaQ5chGDS/Nr0s/FiVnqAcdNKYv3Bl2siDW27qqQzmjApJX0ad4ROfAqf+nWdYQMPyvtYqYoioM9K0zpAxaKoXhHlmXMRmxjReW0wHc7MHmBSPMWhqnUQ5d1zmt6zUF/ZU8EQ/na91tqWxKFdOkOvy6HH99RYaHfRtq5vWnjZ+D/jik3Qj96HHe4AeYIb5ySgXYklwlggWwoeov5LVzPrS4lSvIDChA5dOOa2mJjBMx43DfDsa9gB9RmGKxL/pIUpLV9r3mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iUVqh2au2N0WvNlxyK/BBg22kBveWoTH4aLo2mSvKsY=;
 b=NAT1QNb13hi+8xAoxWYtwwsYMF1q8bTYdqnvK0pK+rh7uIejLYuIM9OYm9QJHtatcovSVfVgffRsvf7RU84e3yY6rTp32AksnmxAqvEjng7qw0A140UhMcRmnmwGntEjzdw11kbyKSW0hFP5BoT5yVoMU1WmImpXMvA4KkzJ1cf92PayzQF6khWU5268xEafgobJzgCeNUmZf9L4e6ummKo5cwlbTRtIBwivXtF21gMnq1qLBDmhY9MXFPKRaUuL1pra9pDqMF2LS+n13+GOuIFcRhT4m0QdN8mPolWrUdneShLlfrfTegB4XX2+dW9Vr06stiw8/ufmrerX9tgnmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM6PR11MB2889.namprd11.prod.outlook.com (2603:10b6:5:72::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23; Thu, 12 May
 2022 04:35:18 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::5424:a286:7b98:903]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::5424:a286:7b98:903%4]) with mapi id 15.20.5227.023; Thu, 12 May 2022
 04:35:18 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH] selinux-python: add RDEPENDES on
 python3-multiprocessing
Date: Thu, 12 May 2022 12:35:05 +0800
Message-Id: <20220512043505.3831375-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0099.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:3::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6d33037-c7f2-477a-dc27-08da33d0d0e6
X-MS-TrafficTypeDiagnostic: DM6PR11MB2889:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB2889DA3D006C2CECCCD3652AF9CB9@DM6PR11MB2889.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qCLrPS278e6uxUPhwCfGCjzb17Fv37qYHQJP9vrqLZqGAX3o8DwHJo7Nig9mDQZ3hr/solROyofxKiOrP0mw0bHarwQ/9tqT+A+Y9HNZy8igu28jj28oCX3PK/LwMV1RRSWOIoIpPKPaf6yPfJsAmunUdV6IAh2ewpSMROs960xOKmCx4Tb/WPw/hMY7FYwGQygxzj2qJfoHv5B63gdi/CKDp1F2JaQU32isg7nxZUe3Q1THFEJ1gzw3uuIw36Jh4IkZhcEv/iQoyaC8WiSZcTIkEWMeiC2nIi+EEsl2sAc0Ot0j4lvUV4x3nffIDODx7lbOzQrrR2jfVusWws8Ua0cEkoSgCmW/bVPhkrSOIOPQFfKrVmL01JNsTtfs8K9mnyTaIorUX9fRnCTW6gd5BgM6M/vpK4bx3fnIyLemQPsfOsGJ+XPDWypLUUfgqfpdDy3n1r264uF9rmO4MXCcM1NVlPFgYiO2AhIiX0FAmkgJJLxcOIpR619uNtwrdIXR8Yk2gzNmaZ/dPj5Yh4phLwx99DA2lFFXt6JEbTsTOqsiAz6qdFa57DIdMpPGTyGTfJgOXofvT1+gqEzCrM14O8+pWdue4h3Mb4h9Y89o96GQKK/iJwDF+uIy9eGR11xnlEdcJtW0wxCYq553w5M7T3MH+Ei7EDwXwQ/b5fACI2gKBMp8f6/AxnZVuAt+cZMKN+USTSLvwAAhNOO9tLdbIQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(36756003)(86362001)(6506007)(1076003)(38350700002)(8936002)(2616005)(52116002)(38100700002)(316002)(66556008)(66476007)(66946007)(8676002)(6666004)(2906002)(83380400001)(508600001)(6486002)(44832011)(4744005)(5660300002)(6512007)(26005)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?/nhusgQlP9p9XK1+lSxqTeN/EBkvziOEpsj9iKHn71p8U+P3w+OFX3J1BTRZ?=
 =?us-ascii?Q?HlJZ9+YgE+WbRN/ogXEdxgs1zUeidAHzyh4HxOw3whhiMFI7ZpJGuzkzznz2?=
 =?us-ascii?Q?U98sGNXt/kno/VX8LhdcsyG+ymAobiAlq2b4ZR2Obe+mwCpgbm5+Ze4MH4N2?=
 =?us-ascii?Q?JARINexpKGX85DNAHHp5QEO+TWo6HvrOs6f96SG3zcmCqr+obiypceW553tt?=
 =?us-ascii?Q?Fcae4bl+FzleEYFEP/L3s98pHCZo8fVzczAIUNg5KavQUt3gWD1mv2QqdPP8?=
 =?us-ascii?Q?ndyLt1MvM0MZQuY5vIqtzBM8zR5TgqGLqgStSlbo3qrHgoEc902Z60Ayn03D?=
 =?us-ascii?Q?H2+vGohci6WRoQzd4/9lkskvyTmDp+Yle42fI3a2AoTCufj6fuMq81z01Tlv?=
 =?us-ascii?Q?6aoi7dnKHXql2OJdvkvuU+rcpgEWlpBN7/nE23IfC/vIJzh13Ae9XpXT9o44?=
 =?us-ascii?Q?eNuTaIUOeja//2F/qYmi87wtdwGY7MZXhRpuyKnI+QeCVOSIsekj1BkuYo8W?=
 =?us-ascii?Q?0HS3k7Y5o7K40Gmqm7ayDeOp8P8yA5gJ23VD/Td4OR2l1gxsVV6Ma8avQGZb?=
 =?us-ascii?Q?7rK2s+rpwiIaK4KUmPWZpmXggR7fybpNo1w3ZLMKfjdW4mjZHXFTEi6IPPg0?=
 =?us-ascii?Q?ZqrnSFPuqqKn5vxj5bSyGIYW7YO9rV3Y8z6p851sWDxGKl3mx/Kdfpvi7zbX?=
 =?us-ascii?Q?8phzYgjnWrg9eNA/1zkvz3YKVtFwE5vDzo4r5YreoMZl4fPKObUA/rv86VRE?=
 =?us-ascii?Q?RQ2sOc6FEHXc4bMpLZT9N1Z3vRK49zThpoLAGX/JpnPqd6rSiMOGulZlIDMj?=
 =?us-ascii?Q?uy00mUPPBSj8HGi8J0Z8bjUjh8woAqEg+Ym3J7H/lQQws3ongfFszjmU7d3k?=
 =?us-ascii?Q?avSa8nedjf2WPnU3d/8aLF4WS0J6+dj5M4VilYYR8RBfzBwWODsUxtgY9m/d?=
 =?us-ascii?Q?tuoq27UsHBKfga2JP0jw4NMvu92bIwHydlEigWxTIVSb+6pXAb9t08s3xMTj?=
 =?us-ascii?Q?jlWnXNKMT9eA6kHWXGXO+c/QZyUqDtvWcuwKy47+bwLNDQmWc+PZzxZbxGsA?=
 =?us-ascii?Q?x4JIh4OGa/Slaaozh4tzh9R1FUwACa9heav9moYNfXkVL6Q3+JS8m2qEdC+k?=
 =?us-ascii?Q?iwKmeRCYkauogXK6eeUiI2DHXp1wZ4RXpRZLgPElrplSTUhWjiW8iZyxw03R?=
 =?us-ascii?Q?1yArAvJM5mEzkj6SbB0Z0MvD46QY0+jDRA7zVMQ7HssCp1SojqZfYEmgs+am?=
 =?us-ascii?Q?MmPq4Dst9Oophy4KjPrAsQyPor3OwiCfLYglrktMiPExgWm69MmSVJVH3+vs?=
 =?us-ascii?Q?ay0MPPPLlOo/0Ge0O4PAtZJIKE5i9HF0y2JjR6A4p/RRajqKoxJNnLWdHhvF?=
 =?us-ascii?Q?5AIwAS46xjc37/fnW3++QAxRya6HMNrJZs6ovYn4gY9aG+p7MkLbRqFhFhoE?=
 =?us-ascii?Q?zTg1WazmOGRavXtBdPSZp8uBqbqWdLvnlwMRXNLrxBn6Jy6A58NKV182eq8a?=
 =?us-ascii?Q?IYNFjbZf1fv0cPdJW6+tvfZf6A75+h2MZTncuRzAGt1oVQkJPPCAEXZZkZnI?=
 =?us-ascii?Q?NCHos8NxuLIdDXRJu4x1kTxULYIlJADvuEVnsr7CcRqFgOgCVc/YvFBdzOid?=
 =?us-ascii?Q?uSDFv1wAhbRa4xSCVLkl3SUUvBeShxrwOHjCcPpkeKhGSpZR3cP+V4suirAk?=
 =?us-ascii?Q?Gi3X9FWyhJYCAYKjHbZ7qISdq12trFIZxkY01bkj+UN1RP2uIONSACtDsLX2?=
 =?us-ascii?Q?QgT7ZRL+4ABKGWhBhXysUa6TeKFz1P0=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b6d33037-c7f2-477a-dc27-08da33d0d0e6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2022 04:35:17.9694
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 NfWkZUBxcPWc+5m4ABqD83QZtBYnSRRqwgi9UZMQIdh/bDrfacKVkpYWwOOALoKXmMfMvT4zNZb5g1JhAdu6zQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2889
X-Proofpoint-GUID: piUQB0Hlx_EV8YSxo0t44eS1RR6MA-rg
X-Proofpoint-ORIG-GUID: piUQB0Hlx_EV8YSxo0t44eS1RR6MA-rg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-11_07,2022-05-11_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 phishscore=0 mlxscore=0 malwarescore=0 clxscore=1011 bulkscore=0
 mlxlogscore=945 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205120021
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 04:35:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57061

Add RDEPENDS on python3-multiprocessing for selinux-python-sepolicy to
fix runtime error:

$ sepolicy
Traceback (most recent call last):
  File "/usr/bin/sepolicy", line 28, in <module>
    from multiprocessing import Pool
ModuleNotFoundError: No module named 'multiprocessing'

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python_3.3.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/selinux-python_3.3.bb b/recipes-security/selinux/selinux-python_3.3.bb
index 1bf1f63..8f76718 100644
--- a/recipes-security/selinux/selinux-python_3.3.bb
+++ b/recipes-security/selinux/selinux-python_3.3.bb
@@ -57,6 +57,7 @@ RDEPENDS:${BPN}-sepolicy += "\
         python3-core \
         python3-codecs \
         python3-syslog \
+        python3-multiprocessing \
         ${BPN} \
 "
 RDEPENDS:${BPN}-sepolgen-ifgen += "\
-- 
2.25.1


