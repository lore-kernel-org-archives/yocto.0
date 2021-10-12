Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81E7C4332F
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 07:01:02 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.10112.1634022060947418970
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 00:01:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=DQeqgXrU;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5919fa73df=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19C6uHe2032472;
	Tue, 12 Oct 2021 00:00:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=phaZ3E5yps467noU9NJy0VHrbPW9RtQL+53fHsa51jM=;
 b=DQeqgXrULewjNaYvPv3Dnd4HQKkhS3KC3q9/Xv/m9jdhG1i1JT3B7McpbEMtAOFYu/gI
 81pDKPUjZhbG7Se5nbYVaXQJ/gx3fNQXDKJZkDqnecF5PfQ8oPloHzQDg2qj956mtZ/a
 61wko5gJaIec3VfwCBRcYhrX1PZ7c2CVhbT9+iagoKXWigIxY2ZSW3FRTKGeQnfvMto3
 l1viO1rVUTjCd3Scol2Gi5lUAExJld51AOCbu1GIp/SL5CZNzeZwBEAdn9tnLPk+HRd/
 27bCvX1QDQerdwGakMieJyJt1MhyxEpt+T9m0dj/MMuAqRPHr0WHmWtsENJs8llvpuaV mg==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bmy72g7ea-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Oct 2021 00:00:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UzT9uqaMcYi7ZWrbYkcse51Ypqm5nDDTP+cXdMZZHplffnK3yGRKf95Xb86tPVdhYFouswY/1qCh6MDI2T/5djyhbvVyIgXIkclEJCFEy8EfVBbHI4j1mO2230WwDRxrI0Fmk1iyBaUL8fEa/IcjPgbf6O5p+FlXHbCSAGIxmHiUWgmepnkRpow+G2PVj/i8Rv/52XX4ZprOu3DIFZYM780E0xB4hCJgdiXBgbmLzvAotf1iwnv9ObFnwnYvOOfQtp5CRJs5M8+I+gOeuA399soiC/z1hOVnsSf75fNOV89Rbv2+o5AXtL/aY3RbM/bAvhDQG6JVsk0FquP6GVndYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=phaZ3E5yps467noU9NJy0VHrbPW9RtQL+53fHsa51jM=;
 b=b8asr/9SdBLdDo/EF8HV7mzEZEtK69G4aowQa1Xz5flNNErVG+TIXbWv1oHfNpbU1BjsYJgdHBe1GgL4+sD4wGhYapKf5npr4NX2MYdOcHNevR+4ct2SLR+Vofy/8lC2LUAByTlo03Vla8W7YqHNPndEPQWefaoKpVDC7kY/TeC7HQN/1LQlMOsogjsCF2Oilie+c8lWCPveM5RyK2z4EUoiV58KerB9BSde+YngqaFdlGazIIuStY2r+DPsFpk8JKtoJu5SDnSq15vfAHRDtRyDUvCztkTfsSAkDsdfXO0Mol/ygWilg1LFGQ7VPvuCsDi5DrIw+4OYOYOgEkCKHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2239.namprd11.prod.outlook.com (2603:10b6:301:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Tue, 12 Oct
 2021 07:00:50 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 07:00:50 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 3/4] selinux-python: add RDEPENDES on
 audit-python
Date: Tue, 12 Oct 2021 15:00:31 +0800
Message-Id: <20211012070032.124425-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211012070032.124425-1-yi.zhao@windriver.com>
References: <20211012070032.124425-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: YT3PR01CA0045.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:82::13) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 YT3PR01CA0045.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:82::13) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25 via Frontend
 Transport; Tue, 12 Oct 2021 07:00:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 40913e6b-f7ae-4a52-6448-08d98d4e05fe
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2239:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB2239542323479792390FCB46F9B69@MWHPR1101MB2239.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:404;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	V14CpD9ITlwSLv/WrEX8+8aOq30w8rQGdMCCKSE3/teChsYIV5qlG+gve5SPqDlk5xSX0GM4h1+COIwgNTCUBulDOm/HwFBwDWOROTQoIwS58NMZu44Bd/Veh4+ZLyI7OxkhbS2YAkMexJl57ArULLCBarXtIo574j4Ib0Ipvzmc2aXgz7pyNfX1m31zyFYDOw1bP0pblbLSJliQDFM+ZGBcVSPgdm8jqn38W2KZ7s5bTaIwzsp2b0+DMiJLV5npTyY6LuOOgKeFDxwDYVeJLZrr02XLLp+t5dQQHna8uCKxFbcsSLHgwKkflW47SDKCIkmBNWiviS9pyOhc4+4fkIdRzOmCMuS+Um6FyW9RSH1TqsvqPz0cYcgvjZydCbFL1GorHmrrAQrQHSGJL2udXZ1Q7WxIYlM1fkbGrkVmPXyX2Xs7f3WM8n2TSl3pZ/AOMVwZGotmn9haIwbxXluu7PhQju7gshc9lTgCggim/8ybWDuvAJDpCouHXO0vnpTGE1FLsSPsiG4jgE8WargeV2fSA1lZO5BwMTBzLZlXAZK4hmiYUFo+qb0O33i571pwuhb81+L36e7MenzIqDSHIG52MkjWD1U17z880+S/vxECjxGEx/jVG8ILtAe8cDNyLB6j90KjhMRirFo+kQLDrLfCMrrgWe37DHazmIcizKIWq30RHrsro432vt5rhPsU5Ex8a/oWYDjJ1mKUzwjYVg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2906002)(316002)(2616005)(6512007)(44832011)(956004)(6666004)(5660300002)(83380400001)(38350700002)(38100700002)(66556008)(6486002)(6506007)(86362001)(26005)(8676002)(1076003)(508600001)(66946007)(36756003)(8936002)(186003)(66476007)(52116002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?2AnxwfNxB4axin7Yt2poSCHpJnFoRCzsoVQrsvT4ZXxJUVAI8aSi3fHnHpek?=
 =?us-ascii?Q?igh0juhfIQFRz2iUjSgJjCZw9TttL75he5G6I3r1g9YPOFQtfdlqcxiWyJcr?=
 =?us-ascii?Q?PX6aFpuZy4exhNMqB10ssVx+o2+fCeIQqcLEPbY87Y2Cn/yoRm1u7ieO3Tqh?=
 =?us-ascii?Q?naLDTBTOyiXj03kidZrYjyCDxaWexQ9jhd4wO3kzE2kozSNFFW0RRkOoJb9j?=
 =?us-ascii?Q?bVavfW77Fpq/3OTn368zpohqNzbxQeg5e0k2LrqFSZdBKsAfSZ/3LGDNhxlD?=
 =?us-ascii?Q?RpTiOQV2Y46xY889TTuev1lNNqtfhGsPndYdCv3UF3K+O4HaO1kfcIUChH4S?=
 =?us-ascii?Q?LNtTOfQY6OLfpIRj9UppLDfWmyMbs3kMrAsQkOZ5F807ZV0ST7BbC15xtnhn?=
 =?us-ascii?Q?6xGKcws4Q279rj0gX55qVjf7XTFtlsLQw78TqoiHZmewQ27jaV/01MZS7Omn?=
 =?us-ascii?Q?oD4MTtxu2nXHtOQlzd4pX0rkUbz4eUgT1KN9dJKM8wviUWI0772Wl4tv9vpL?=
 =?us-ascii?Q?F7okNs6gqiWRtoOzNlbjTPsewhHTFO92C8r+H0dIwKle2xQoXpTPiWRIFO53?=
 =?us-ascii?Q?K/oB9kGW+g+8NUu29OMNu3ojP/1gl4oOH/6atjmFTHpAZDytXaRybKt/hIvN?=
 =?us-ascii?Q?OFkbwYv+XQIQ7WzNYk2sRpvSrodva4F/vakOZe2KjH1k2t+6AKIIKf8p6t9h?=
 =?us-ascii?Q?PFVcGTZ/+P0Q6FU4tXHLPoKG+v+SVTc0oWsCSUizCX2FIu6hja9f9yHHJamx?=
 =?us-ascii?Q?eNLsK4BNs8S7AuepxEW11vCZ6wtEtHQdjDcccGdD5PGDQnw1vH1AmLbF+CQ7?=
 =?us-ascii?Q?Am6I06SCqMKsNmJp+j3ANk2Jk5n7aJkHUzm8XpKIhBfmbEBaWOxT67xZjjBo?=
 =?us-ascii?Q?7jfeSy3AIJukGGcuSO/2LTFZpQi2ajiTf9xlHhLEfTFMLPZeyyoPBeJ8YmJ9?=
 =?us-ascii?Q?JTgRI3A7mqbmOfsDXA6WiKrZXHDVz7+WRSCDLFBCnfdY0w5HmlrbNEYU2oh6?=
 =?us-ascii?Q?HwBrxeMKRyzYG6RJ8GUbdbIFbHuz6El9Eud/1VUnWtyTOH+gZ2KpT0CTOc6v?=
 =?us-ascii?Q?3Du8gjlC40nm5z4aKrNfSMDs4QCT1H4kFQ05bSO6cWvoKCrOG8lpfwgg+mba?=
 =?us-ascii?Q?/EdYZpTrT842lUO8eYV9S3CxpZHoP4GlSyuzjtGYVCLPAVD7XSd/ZzuZIyev?=
 =?us-ascii?Q?GK0ykx0WxzHEoHPyv9uVz5a9IS9+pPmpGitrh592ZG8xwSKjL6/SB3rg6dsb?=
 =?us-ascii?Q?dDyzJk8rloczBNbCzvwypXnWj/cd5+BtLM9vDL8LzKBLpULifcREN/V1Nzwx?=
 =?us-ascii?Q?kaDog+m3l4Vl2mkLpcO3svQA?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 40913e6b-f7ae-4a52-6448-08d98d4e05fe
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2021 07:00:50.0843
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 aUfYqAtLMhD5OhY67Zzgxd6NgaHt7p+BCtiqTMT4Pz4iBwKFAeSEHK0WRnd0RHLmUzuYBXR5PC8qv5/025Z92g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2239
X-Proofpoint-ORIG-GUID: WFqjPJ7LN4ywmz97mKE6kZMOF1dn9n64
X-Proofpoint-GUID: WFqjPJ7LN4ywmz97mKE6kZMOF1dn9n64
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-12_01,2021-10-11_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110120038
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 07:01:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55033

Add RDEPENDS on audit-python for selinux-python-semanage.

Fixes:
$ semanage fcontext -a -t user_home_t "/web(/.*)?"
Traceback (most recent call last):
  File "/usr/sbin/semanage", line 975, in <module>
    do_parser()
  File "/usr/sbin/semanage", line 947, in do_parser
    args.func(args)
  File "/usr/sbin/semanage", line 329, in handleFcontext
    OBJECT.add(args.file_spec, args.type, args.ftype, args.range, args.seuser)
  File "/usr/lib/python3.9/site-packages/seobject.py", line 2485, in add
    self.__add(target, type, ftype, serange, seuser)
  File "/usr/lib/python3.9/site-packages/seobject.py", line 2481, in __add
    self.mylog.log_change("resrc=fcontext op=add %s ftype=%s tcontext=%s:%s:%s:%s"
      % (audit.audit_encode_nv_string("tglob", target, 0), ftype_to_audit[ftype],)
NameError: name 'audit' is not defined

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python_3.2.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/selinux-python_3.2.bb b/recipes-security/selinux/selinux-python_3.2.bb
index a954676..d130900 100644
--- a/recipes-security/selinux/selinux-python_3.2.bb
+++ b/recipes-security/selinux/selinux-python_3.2.bb
@@ -50,6 +50,7 @@ RDEPENDS:${BPN}-semanage += "\
         python3-xml \
         python3-misc \
         libselinux-python \
+        audit-python \
         ${BPN} \
 "
 RDEPENDS:${BPN}-sepolicy += "\
-- 
2.25.1


