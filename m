Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56876C4332F
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 07:34:05 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.9156.1638948844365375474
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 23:34:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=CZ3Z+QQ1;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=7976a6fcf6=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1B87Tj9e030204;
	Wed, 8 Dec 2021 07:34:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=phaZ3E5yps467noU9NJy0VHrbPW9RtQL+53fHsa51jM=;
 b=CZ3Z+QQ1JfSEQg7c9mi7FdTfS3UdTld3pBrQEukapsknUsb2KZn/KdGErbM9bq+IN9qn
 ksRVEGl+RdBrfxt25/po66JrqgKbbLyJ0Y7xo/5AmOIkwIycAGQLHOsrMzJJdCyyVR57
 dUW8dNY/urdKXWi+KsBCpKpx/xoMoG5sWiWVCh4/yUGomwDXW1vA/zEoPZLOh+pzq5we
 v5a8nmP1nXQn1XAH0li8cn1+f/tMSJ9w255JS68Ew7Wzno/8yXDXSGvfXs9wKRimqxLa
 ZsLvJOUZR+uea74FcXyU4NG9TfW2Uj3ABr3BbbCTX4KXm0w3uy9tIzebYWUnmncQW/RZ Dg==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2107.outbound.protection.outlook.com [104.47.70.107])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ctba60hnr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Dec 2021 07:34:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M44WY7uINlPv5dDvBr04LSYFchfwlgixbe+KRkWnfxdj/LIm8SQQ5K2LIkGCB1O1mqyRv6Y8sK8HwRjAYQvxXzPg7AzT80Npy934NDCALyn6Q/H0Ot9caDgb4/VgCC8mWGzn0txD8zaJlYJkeZOc0798aExGmFpDYaYJLcbXEYpGlVvUvNzcSzW3QRx0gQbJ9p48+cUMueQNmz6YziYpOfuBraZP1KEocQh6SRvVUlEx6nCqmdMNWPIeCgiPATskX9O9lE3qvO8r8Is77qrimh7O9B572nnNS+wvt1fsKIP0nF7n5jLCjM4z5OtNEi/hoTeomaZE+GjCZ6UyGMaiZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=phaZ3E5yps467noU9NJy0VHrbPW9RtQL+53fHsa51jM=;
 b=e6QsocQb844AScoipXmJD5Tdhnam+L88QBDaCrvwT6CUHhWOJieGCElXIKf1ebg2JRV28q9x8uxaFIjQWlPOf/MvASgPMuJ/UB52MYolvjRl5YLoEkKZXLw4cf0ka3zBJQO/lqklzjI2QWlosNWvKcsSgaFvDaRHPaU0Cd1wlV7Yx16RC3XVZSR0CN+Lnyb08SHBgABF9SqUKbYxW4IxQkqWUeVVgH0MNkZTd6P+DON5OZIpbF60RrF5RgfzswzIoglXcC4j1XvpmrWn4NHgqWq38TuDBwuB8CTva1pt7dQjvXSNBkQr12FV48BOOVAOrh8LrP0bn/M2boNETHkr1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1535.namprd11.prod.outlook.com (2603:10b6:301:d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Wed, 8 Dec
 2021 07:33:58 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%6]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 07:33:58 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 1/3] selinux-python: add RDEPENDES on
 audit-python
Date: Wed,  8 Dec 2021 15:33:43 +0800
Message-Id: <20211208073345.38198-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR04CA0086.apcprd04.prod.outlook.com
 (2603:1096:202:15::30) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK2PR04CA0086.apcprd04.prod.outlook.com (2603:1096:202:15::30) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.17 via Frontend
 Transport; Wed, 8 Dec 2021 07:33:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65dc0c07-d4d1-4c8e-b50e-08d9ba1d18e5
X-MS-TrafficTypeDiagnostic: MWHPR11MB1535:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1535BEC4498B7AE26572BDA2F96F9@MWHPR11MB1535.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:404;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	O3UAgpa00JvfDNFImXwJAwxBz91Zxje4iOyrQehhXYhkSePFrcppZ9bFd2h169GYajHu6qNPIrTUjVTpzb6osYqCHgun6tjMnOYFCeT6SqZOV8mp8IS4wie6D8IIJ2oJFkt5t0oe0kCV7HSb0OKLHIvKAM5NYAGUfAm2W6meavgTbzIjYrQeyx/f+w7qVhW01/gIlcXSR5/3FS43EcXpSg5vJy0G6bHDy7+7k3O6qgVmvkpQ6isKYsqYbBKjVt3iFbP2FWsbfDNb0soFp4BMOLtXLrEp/llrqG8kLkbQihYob6wHifMV4vAipsRVdh5jmrpjtyZ6463pyvVYvphXrAUbaDITXSm/OzswfBOBKArpMPWDQQWBLLMbig22Cq1eTHrSPpMcj9NwNTu0KJyD/hbNNAGHetwwy4L/e+oCfoZwGK/P58eQqIYp9aMzvRqra03HNhpBNddqpgi/E+c8S3YhBLTDVllILHMdEKiupLFGo90YG74setruk2r7HvtVjysyJtuyglMNE0zqCvCA72cVp+7IC2xs0sj+4fk0yEjY6174xIUcbs9HXBvy4TYHRn6W8ffb96LUl69hWaIMw78+n/XcaokJRlAvoAfIKAZE+8QGdw9BkR8rIdk0gAeZgpiAPjs5Gx1TAtL2aJxFlDljPkU9iBN9sGDN71dEMJadzPe0K5S77VSc26bFZVbeeVA4oT087f/5kqUZgwM/8g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38100700002)(38350700002)(8936002)(83380400001)(508600001)(6486002)(316002)(26005)(956004)(186003)(6512007)(5660300002)(1076003)(66946007)(2616005)(6506007)(36756003)(8676002)(6666004)(86362001)(44832011)(52116002)(2906002)(66476007)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?8lLlzSmJ/pXNBy8xxjnjHMtTVizS9RN9Li3E80txuJNBQDO1DmgE1+HkG4x4?=
 =?us-ascii?Q?Uf92KWJ7fLOhMWxd9kUnOK3fkFKZTESJBPHbKXXzdjX6+hy+2DVDVZ6qQ/JI?=
 =?us-ascii?Q?jTysfmm1cvUORTb4U0EYdLUpwevAERJsNn/lM+ff2fU6ZdOEFKPxJ44OsaPI?=
 =?us-ascii?Q?vmyoztvBzduQPUZNwygt4gT4OT/wqs/nYUTqau8Py1ij1kokw9+Lyc2K9heW?=
 =?us-ascii?Q?AdCdb+F4WhzqVrJLW/yi5X24eoInkrrcGUzow634dN8qITc71SlFcD23vpib?=
 =?us-ascii?Q?miVBUXvZyNAQ43wMfS43W7kclMn+UWTN33ohH7IpNUkbaSCv9Raawjkf2rvy?=
 =?us-ascii?Q?5lyvmNyvJ+maezrnmG5+CNFE12muoyS86BVhmTMTAVp26dZkGMcDtK3D5xna?=
 =?us-ascii?Q?xTxsS4/9j/Y7l2ukKIFYJn3wqGFEM3WeVj0Wuof2KzTcxcruzIgBsOMNskJ0?=
 =?us-ascii?Q?/oro4e+4fdL8AVrPHy7qr8mqu4wGS/FASfiSezk0jjxaWOHD+U3LU3nz7PPj?=
 =?us-ascii?Q?/OAuszwws1cbGc5BbrfveumJ+Z3kjWEmCWZrBm6Cicd9z5PdZBjIZqSzf+uC?=
 =?us-ascii?Q?YHrkuXmfOO3vv2HkEUvjWwpaiscPEy2ZdyWB8ug7wwRCNyUdJqcG8MF0cWV1?=
 =?us-ascii?Q?2PHL43oHrSX859BGlvJYwc5jx+SriZ4TnqLTXhgdpJEVjktBdxqlu1bpgj7t?=
 =?us-ascii?Q?jTv3bO7rZAMYIiPb844FOl/6e8wJ1beG+NX9CxjwKdAcjAril4KpjFXs+Slx?=
 =?us-ascii?Q?gJrW2BSjpSw4OBur4Eef2R/7Uw8hBiSIKLqjVbEXeCUOQR+eWxjycwGnfCbX?=
 =?us-ascii?Q?vgm3WMS9suhGKMNvtRw2wP4x05cV5qLOxRYWNgraR1nVHX0OD4Exgam1xnyD?=
 =?us-ascii?Q?PxoMpRmukaMX7nn58x8/yn/0Bpr2zYL8Lt1kHDndyler9vqurnNi34Gfr8iB?=
 =?us-ascii?Q?QF7E4NHMC7VlDofZH33pXGRo/GGoO8hjFRYs1uvFfHWDZJ2y/5BaMqGhCSXA?=
 =?us-ascii?Q?bptzZQ6931aL8ajOXFztbvbj2GSfvos3atH7eHYLXUbOXKYOUKfmxi5N7qXm?=
 =?us-ascii?Q?MAeuobH35hgyeTZiax9vjrbgJeDJk+Rewblp6vcvv7vYBHYFPcULQ5s5MtLj?=
 =?us-ascii?Q?SvZ0a7MBCAsGs9fFvjEgDLfu94F2Mm0GN1/y39DybBnDD61TTqG47L6Y1HaO?=
 =?us-ascii?Q?gUkeMV//j7zDaUGiqt+KoJJYUHbATjk/dHrSzmmTkIQ5KbxIOmCfjzRgVbSa?=
 =?us-ascii?Q?f/Q+n/qDbgWPRi2KOXrIASTAfAW6Ev2X4qOwSavIvIf46qlZAQ1kbcOHPus/?=
 =?us-ascii?Q?JilSZMUKWc3TQPX3/Kpod8UiFIMMbSkyWGnzIuLbSMmwwCfxXpf+NG4foo3U?=
 =?us-ascii?Q?oaqZ31f3QAwhc6TgV2yovVXG/cixSvWc3nQqVuo/dJjhB5KkaeIxUfGNEIy0?=
 =?us-ascii?Q?U9wpReew/ABNSbOrXcSszgg8BFw2Di3dKlvCB71S2FD/Z7zpPZjnu3H+bPtg?=
 =?us-ascii?Q?2n/MNGT49kOVm7YY5I009Z3Vfjb1IOOzavIADPxKLe+Nz36BpjgBapCghhPg?=
 =?us-ascii?Q?cblD7XzpOQJkvIZPCBmHQrpEeSVTwUPqu6NfPLBjwzKt1EBJPkZ1z3pYg4OP?=
 =?us-ascii?Q?ojSE1/fJqIQbha+t4Rtuips=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 65dc0c07-d4d1-4c8e-b50e-08d9ba1d18e5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2021 07:33:58.5544
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 YgQj1tM1dsHSkjoznf5SdwUjPumO3uNoWBZa71+Fc+tXmKehpksi0cV073R2STuhycaIDS5LyAopVc4rclQOcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1535
X-Proofpoint-GUID: F9kglKKs1B1bPkZWKrE9srGbNgyT19nM
X-Proofpoint-ORIG-GUID: F9kglKKs1B1bPkZWKrE9srGbNgyT19nM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-08_02,2021-12-06_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 phishscore=0 clxscore=1011 suspectscore=0 mlxlogscore=999 adultscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112080050
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 07:34:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55510

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


