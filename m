Received: from NAM02-CY1-obe.outbound.protection.outlook.com (NAM02-CY1-obe.outbound.protection.outlook.com [40.107.76.45])
 by mx.groups.io with SMTP id smtpd.web08.5926.1614675145261825213
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 00:52:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=QyoEB2il;
 spf=pass (domain: windriver.com, ip: 40.107.76.45, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DYN22njMm+mEKlGcatGRviuVlyxqTBemYCY0mHa8B/fghH1L+xJ+/bUGTtSkRCQO25w2e9JJs74sz0hP2xUV0kUmYx0T5hphlssSM+4F+w7VMx0cB7cZFwLJ09zexWzawpZUoRDtQ01CNLTLSu/RQbd//KYlAHMfpVgtJjFeNaYUOOifm9fCCYfNLH6LwEh+dhwyor+A1JFNSGS7O3CAy14x85zf/ANCncfyRaeYyWDxZ8aLnjDMOED0OTPYKvJmplJn/OM2rdlO/8GrODMFrPHqg16aj+5dn9typHPD0ih336YnxM8vooUfRfofbAYAFS8/kwjZl2m3px5tivCRsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1legQo7GArGkRUgJvNqDfeC5jk3mF8XNu4WvAdgM6SQ=;
 b=g7+lwXZcfnEp5jOhl1PP37mc+XpOqbWU1Ww0FT/gj4P9LVBpcPELx++rw07rcTBCQQuA39CSRrvU2RM+oToOcDG5gfG4btPVdOw4t1r+DaWeRbruCbkr2Ja4hVt330G3ikKvSO13ZJSsmFT8fxUY0TWAIYAyUNPKV1nvytgDsQ2ObD3dVUHz2M868yV2GLCH1k5fkTKvDyJS/f0Do5cPiZrSDgVt7XRzwixrMS8cGCOBdDtnqrFMhQrDpITm+nQK4ByTziVi1M53RbWE4OBRZhnOAJGWKXWtLwIau2hK7+ezg64BKRLlp2xEWJbROncIa6yIta6Gy0+OuXZ1vTgNUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1legQo7GArGkRUgJvNqDfeC5jk3mF8XNu4WvAdgM6SQ=;
 b=QyoEB2ilLO0Pl3b+FcvXGa/24QEfIOC6QpcHvQ4xbKv5LAiwRb/nhBt6yE8qQ//DAw3O7KT7vNwHXAv0yTiMt1chZk9StbxD+pyzcJ5dXafD/gq3zzbgTJTC5ga2ib6DX3qoo11B5j0fOSa0yIHy1TO11O6pfALSKhz5wWS1LaU=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2352.namprd11.prod.outlook.com (2603:10b6:300:7e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.26; Tue, 2 Mar
 2021 08:52:23 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3890.023; Tue, 2 Mar 2021
 08:52:23 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 2/7] parted: remove bbappend
Date: Tue,  2 Mar 2021 16:52:01 +0800
Message-ID: <20210302085206.56794-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210302085206.56794-1-yi.zhao@windriver.com>
References: <20210302085206.56794-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.8 via Frontend Transport; Tue, 2 Mar 2021 08:52:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ed2902c1-3c3a-479c-e9a8-08d8dd587f44
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2352:
X-MS-Exchange-MinimumUrlDomainAge: gnu.org#9230
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB2352ABD77847DEC1C3FA2F23F9999@MWHPR1101MB2352.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:120;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8jAPQlis8VM8GbPcfxZpNIqRRVMydCljHTSLL6qbJTGGnHke5NDvEEF9waBwR5guOshPjCQ/WXaNT6iO9dKlcRbHLwrAvb90ww06pAPNv7GZi/YgJtiykn3wCMICWuPzYz3ymz4OJKPFuV94nAou5sIaOQU8JyY50/+4PoQz6BPnfde3womjZBoVfeSZYRuBaHiUTtAeBCuygdFQpMEg3HS7i1DqN3IdV5DRUL/ruXf9S0nCRpJR5Q7gglXvj2Q6A+JIWe7VCWW3Z1Z055tbiGLR44h4p2lERU+cSLpQYY9uqpFCtJ3+4S9ipMHn5CAgyp7LaVACH3aRb9JRRSr57hYtUVCiJb8F8Ws5uj1i2jkMbaNXnU5XLxHbAb6axpl5Pz6ZTFZqhVsB0jwK7TBUU6wjKzPs1PwxOJjYWb3V5wb5SWwlsvb8yPuWDSaP4IDUyOyPUapNtftFFmeKwp0RVOOpX+rsz2lPR8ryytvavQwfeb+XEVriAq5zLGQSg6Kv71blf+O4q2KW961Qk7sCc1xeAc8QCdnPCj1p1FUS5R6Y716iwgKZhP1+w3y0vAFyTzanQTNg6ySb29kVRBwqNfNWjRCMSRvNt4kG+OCke1A=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(366004)(346002)(376002)(136003)(2616005)(36756003)(2906002)(8676002)(956004)(6666004)(966005)(316002)(44832011)(478600001)(6506007)(5660300002)(4744005)(6512007)(83380400001)(66476007)(52116002)(66556008)(66946007)(8936002)(186003)(16526019)(86362001)(1076003)(6486002)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?z59YgClckAWQ8u4FSKSqNc8k2tAA6A0HpsKXyhmqEJ9dAHz4rSpC02pFzMoN?=
 =?us-ascii?Q?UWl3aingGQ/yNYxjq6BreuF7ky35pGXDt6bcQgsEIIXF3mdo+JdN/9FBTxkI?=
 =?us-ascii?Q?zQIRvU6NAszoIZqLjdsGgWyNYIJl4lz8NQIcH8xl17yJql/buYaxktnbuG9K?=
 =?us-ascii?Q?FVVCdO48jpatTbKh0qVYnmWfbHdRvJ+rbxRSITgdd+WipQ1eql1K6a001viQ?=
 =?us-ascii?Q?GU72sDs8cg8/BuhZKW+jlSF6z/zteQB8dxNF3ARkLPc3ItzYi47pEYSJRCpl?=
 =?us-ascii?Q?3lw1j8vFOh+oBFZtrAuMil0cH42o8rRlv2g/E+sOI/MP/cfXSFFvl57stB8f?=
 =?us-ascii?Q?Hm3+GDRYCiGIyKrdTO0MP06eKuHMSgRGRHra/Vi3BJ51c5nESzDkC6oc4fqG?=
 =?us-ascii?Q?R2gp8hyO3OFNk8QS3f2/mGdB7wP/m6wc/cbX9iAmJncVTBCIJ1YPtGygimED?=
 =?us-ascii?Q?UxvhlSKrgp2reVBPToEviaAQbpYmQJyIOvngOQiZDeOzDBt0ZQhe3RpsXI5v?=
 =?us-ascii?Q?DHr4UfXNuYeiqK2B6CynwqcnolAAi3YZO3zXuG4c+K2TXuRknHijLarWwPko?=
 =?us-ascii?Q?p3BE+ptpHyc18aSho2xkqhSRBI2v7uQ7U9W5YaYxn/OiMS0mPXexghEOCwC/?=
 =?us-ascii?Q?iHibGoC753IILgp2+bw17gH3drfIuIEcLgXNZm26ZvPnUBA3fqjLfztunxXP?=
 =?us-ascii?Q?9W/h9EuzAY4CY6A0rV2AVC/IaO0nvvzuWsI1GSpTdys7a+sMVZ9XHMZU7/hS?=
 =?us-ascii?Q?nJuJhqywnbgjpM3PoB1+boyMw3roan5uAOIIpYg6UG1qN1+7UCcmZJs9v9F8?=
 =?us-ascii?Q?YlwWRaNoDlhIIRtxJO3R8UnqAHnBTw8/sZQ/Mc8wWAdv3ZlZ7K8W1JtIZ4yS?=
 =?us-ascii?Q?3Ww7j8RUYX01sVySENx7NaFbU6mz2gxcrv7XCUTpOEb4Dshjju2AEWTv7885?=
 =?us-ascii?Q?fMvf3gABJqJp6HJ5hMRm8asJ9rfNXFxoiga2QkjsDTfZvekffOzI3XVq3mMP?=
 =?us-ascii?Q?QSo+t74fkO4pbAEIrQCQTL5HS7+KNsTWcJFGvIQfa6vvHGB5eO9JBmoaMTiz?=
 =?us-ascii?Q?SmWUC4InHXGhpNK9ZqzoSU1iFrW+oPLE0ZdKiEMJu5CF26JfN5bnfRol2lm7?=
 =?us-ascii?Q?yuRERQK4B13mzYSbsVsQV1/wnNDaod9Zd1GeQBy9XmvAn1qRrLfr6OZ6eUo5?=
 =?us-ascii?Q?5MWWMeRDHsvHR6JMlqEfXkkod5MYkZZQ6woNyqgtVPPVzuKGAqeBPFMekMwZ?=
 =?us-ascii?Q?CsgrD+dZrzBfEJXEIWyK8izuT3j6+sDcR20DvEDElKAkBMQzyHTbsmQwnzep?=
 =?us-ascii?Q?V/d6Ezr1VmvT0zRuLItRw8m4?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed2902c1-3c3a-479c-e9a8-08d8dd587f44
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 08:52:23.8055
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6vn+izNWG+IfNDBycpzIvAYcJEikUyeKulH/fnnZpnSRYanbZznm047kXhHFqfOu6LBV82jRN4PxzxUA7IHPLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2352
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Remove bbappend since parted 3.4 has removed the enable_selinux
configure option[1].

Fixes:
QA Issue: parted: configure was passed unrecognised options: --enable-selin=
ux [unknown-configure-option]

[1] https://git.savannah.gnu.org/cgit/parted.git/commit/?id=3D059200d50beb2=
59c54469ae65f2d034af48ff849

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-extended/parted/parted_%.bbappend | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 recipes-extended/parted/parted_%.bbappend

diff --git a/recipes-extended/parted/parted_%.bbappend b/recipes-extended/p=
arted/parted_%.bbappend
deleted file mode 100644
index 74e22b3..0000000
--- a/recipes-extended/parted/parted_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux=
', '', d)}
--=20
2.25.1

