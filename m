Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CD46C7EE23
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 06:19:31 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.52464.1686550770907695702
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Jun 2023 23:19:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=USMxQkB+;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=55275451c1=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35C6JUeb026129
	for <yocto@lists.yoctoproject.org>; Sun, 11 Jun 2023 23:19:30 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=Q/3HWv2t50qk/7Oy7dtUuTeimvN48nh4coXjNkZMdUM=;
 b=USMxQkB+sofH5U/YgSVoYQX+WD9KABe3o0+vkE6y5Zc0fg9WkvMmKpqTMBzC483Q7nbv
 D1HRPnn7hzQ+5xnh9Bd7TNMZ2ED28YTaIqqlGF0SK1BRRUhB+5KkQqSe6WsFyciuruiQ
 SxvaubHXQuyxcxWLbq7IeK/pfCNR/UCz4sqwafMiVbYK0uNKe78Agkc/icmJOBByo4kI
 WliMgKdMkG6YCNd/755mKEEcXr2j9Wpcrh2OVBtCaxW4eGnRVHO5xy3/uETcBbUlvXVX
 zD92j1JAAey3NbQunhDen50/5Hw45TWwDCN7WcPpN2jqe6hhOVEFoHD/XYiub7++s0k7 vg== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r4mf315hm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sun, 11 Jun 2023 23:19:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DDphYtP7w90LGKUjyKfDem3uWwKX4XBtorYmwH9Dz+mGGN7f5jN4heDgWLaeDm9IK890An/MetHA2S5lnQ6OLBU9MIEIuTgLdh4mlVRJPuCdhNX75VePFkTCvHkb00pKuLRGLfZproY6nyT1w/5MPZNiImLFYr0f67v3BQEWnKTbt+KKu1KadS9y1q4AJExHmpJKFZ6aelglXD8GWOF5yphcJssjmqTsJzwkGCvP/Q1eWtVQ7uvpMzbrjTae3LkSieJTtELKf9H0lLRORbbAL/YqIZCpu0s+7Zh+5JFiO55/gWuj63v27dBtOCr2wZk/mzrQlQNt6R57zde7FSLMjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q/3HWv2t50qk/7Oy7dtUuTeimvN48nh4coXjNkZMdUM=;
 b=AwKOqeT5+zDZbyquUJ+cYefr69H/ZFCiruWPIYCuuasqOYPjIJL+y57SUELnuQu1KXirjAO/S1DU4lti/CxmLwDzQbyjel2VU1um52OZsKX+HI+mrpekqyVVCj3SPQqyROakzrvYwpCZJtfE3vo+sXONOrSJr2GB1jSIaMPtjmgmwpi75Bi8V5qhC3/i8RL56iooDygU4H0PfMS3MPDqWr3ljKTD6Akaj4jEpkaPMquhB1ynXW1NP0TzzlqDwMCos3Yr4YTEk2Y9Xdsk+qk6XG2QboRXm6PdptynYB1ktubu4WMU2uWAPXAgBuHRnsNGxr05MUzxgkUpkw805fhNIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by CH0PR11MB5347.namprd11.prod.outlook.com (2603:10b6:610:ba::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.44; Mon, 12 Jun
 2023 06:19:25 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::b504:c7a0:9ce8:6f17]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::b504:c7a0:9ce8:6f17%3]) with mapi id 15.20.6455.037; Mon, 12 Jun 2023
 06:19:25 +0000
From: Qi.Chen@windriver.com
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] complicance/isafw: remove oeqa addpylib
Date: Sun, 11 Jun 2023 23:19:12 -0700
Message-Id: <20230612061912.1497597-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.40.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::37) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|CH0PR11MB5347:EE_
X-MS-Office365-Filtering-Correlation-Id: 20a58bc9-4524-4e90-552a-08db6b0cf842
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9dgHsCjWAtHlCKnEtfVY+1//epBNyrYXcfurbqHRJWpyTqlyoPjnxQtTU9WwAJCYrP4l4IhRRuW28+DBWuuVE7kCKHBx+825/MeqUAJwsCScyUKs2yZO2shejF0w8LFe5UCe10xJJ22bupRx9ONVnJxOzSutP/elgFdaN0bVF32ipDkdB+hSYX6YNy6RF64pK6AFY//qjECyVXF6v34jp9Ui9QJGxmc10skSn27v4xdaSDKIwggcU/Qceu73V+KGygb5UOeEQY0f+VGhb7cl6b5zkXADaHIxlOf0Ivhhn+1Ad9kBqk2WXKSJrXF7SrAw0urkPcjKNy44N1ps8mmXvWunee1U/UvkArShH/BTiNKdpYa7+8HaL54VBnOsdv52GgbnZE/GfwsVN9KgO9vDYBIONpL9t8XcYFHbfzwgcVwXXpyHHfMC0qHq8cl19zEgRt0pLjRiQfYZWXfyrKGRteWTlnYNsStSobFQ1cyCc8DH17qSewXTCg8BltS+w1TBp4Bz9mhuWWF4jE4j3I5dWlw4Qbos5XTNLg3ObpD8ZquGNszl5NhzLvh9SCecUOwHrhk/SNoPERWTA6PGmIAGgEMTPoGqSFkzg6s8s/vLyj+jMsfJjc1pTzMVDvnpC39j
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(39850400004)(346002)(366004)(396003)(376002)(451199021)(6666004)(52116002)(6486002)(478600001)(186003)(26005)(9686003)(6512007)(6506007)(1076003)(83380400001)(36756003)(2616005)(86362001)(38350700002)(38100700002)(6916009)(66556008)(66476007)(66946007)(316002)(8936002)(8676002)(15650500001)(5660300002)(41300700001)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?q4SjhRd+9VoXbBRHI4HuUzH7XMI6ckbnpSFjNOb3pniEX0p02tQbi3PiDlqV?=
 =?us-ascii?Q?XgSUG/aglKAIIQ+0Y39NIuxILoa9B5busH26zKg0fQ2pHkjzqf0Kc20HA02w?=
 =?us-ascii?Q?btZYiUD5mOnTCPVTKjsR+KczGxyqXkm2AA9po4UbrvsYA5tgwznNU6+WyzUE?=
 =?us-ascii?Q?yt1R9hEIK+RJIttFkca1X3H518LK4BCjiE8Q0ODF8WtStZ/6IDDYJFGylbZE?=
 =?us-ascii?Q?Cn3JYMD+u9jJP5+xTQvJfi9moWQrQxXryncOegXqv7FoC8rL4j+GrsJScu+/?=
 =?us-ascii?Q?uOACwdmG8kFPYSrGw17sPsYVvc7kx8jD66msuh4+FE5VRvRzQc4PktYzDcv/?=
 =?us-ascii?Q?bNHcRBtlprhdMWKzRFJNnKnvj64haCqltXStIKilKej1E46b458ilCWo4skN?=
 =?us-ascii?Q?Jnj3Nj2SWUSy8mdNNknD3nab8QE4ESZ27DLNnmHXNwhiPnU899ptQy+cMfXm?=
 =?us-ascii?Q?K6qs7UoNXmZ3pKx3LsSeye0rQFiFAKhClH3z208Itagf32prV5KijYIC6xLp?=
 =?us-ascii?Q?FfS20tXbScZ1LfPotf5qE4TzuT0eX0V57Ii0ZTEYm3QTLKzjWVQYi5r5ploQ?=
 =?us-ascii?Q?64ySrsqrtKvRBs5U0ZaNeTvscmGVsg7cXUKmjnKCdGrxBvbf6pYZuvEWDs0f?=
 =?us-ascii?Q?96DtPE4c8ErzThOubC36DdCYOPKU7oB4kfu8Q08JxrDgwQIvFHPobp18ERbj?=
 =?us-ascii?Q?NcbFZNSUzjY7FiJYncQx3a9fNjn1n2hyk/Xp0QnpvltsWUSZzQXz1Ql6ncn4?=
 =?us-ascii?Q?klfeOYphwdsCk8Q5ROQH+oYINrE1g5ZN91T/GU/1aRYtTKFvKn2bFp63rTor?=
 =?us-ascii?Q?e83E+s/ybXigybtrq7Dpl9EBu1O8I/tg0qv0zbl4vi9aq45XIRdcczWFV6+E?=
 =?us-ascii?Q?s1bdhOQ7XuX2ZmvzRJINFVZRkTduDvuo39dMXsCZZG3uAe3E96UwnHS9NH+/?=
 =?us-ascii?Q?UQ+1tY28A2kigEkehj/aytV33kY7RAvd4Azw6Gd++WpyepD25OocNYVWB525?=
 =?us-ascii?Q?TQ7rKfdSr5JeeKI2d32kjZNhhguVsEA3CsZOKkGaPSnnzupbboYJrz02yfN7?=
 =?us-ascii?Q?O9Oy3gak/d7Mq5ZGY7YeTBIdw2GdNU0bIM0CbbsrkKnEXSlY9wCKrvO/MLyI?=
 =?us-ascii?Q?ljJC+XON7VpXvBfkwmbhZ11cXnwp3oagvwewiVqncA/ERAt40jOvE4/4juEz?=
 =?us-ascii?Q?Dd4GAHkRtoRxCcxAHR5a0ofevJdbiTG5MRErdGSizvluQHQ9KXp6/Nnj05qu?=
 =?us-ascii?Q?oxfWvEmAD3q2ghdiEUS1mUvlGKpWp9F0aph6XQcZWXo1n8PHse2xgtFctlt8?=
 =?us-ascii?Q?dKjh1K0xW62T4srQud7bZpyz7g114WcDU7rDGcJUbrvx2uEO1+bkwJ0xTyJ4?=
 =?us-ascii?Q?BWxlyRs2uPKINpcatXWYlQX9QJH2kIVRUtIBGuphv60j+QFQMSYNqUhwEl1Q?=
 =?us-ascii?Q?igibjLn6ggpX++htOwgaFGstxTeOfIUjPya4Kte1DWWJeIl5sOKhrlinh8Gi?=
 =?us-ascii?Q?yotFt+2Ffh3nzShWrLQPTzcnrHdXDUieZ/R5hcllaQGDGsQHcxA+8fTTO4DR?=
 =?us-ascii?Q?6nqzXko197gAE3DHuP7gDbUvacLo517U1ph7iSkd8ol3p1hAb8+qydgeU5Ls?=
 =?us-ascii?Q?Bw=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a58bc9-4524-4e90-552a-08db6b0cf842
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2023 06:19:25.4009
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Pe1NjZe5k9EkXO5+mNbEe4ZnxMrqQ+a1AlV89xsh4H2c5eD1XarOGcU/M6k7loA60GUbVIKU+DhsTvsbRG6LA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5347
X-Proofpoint-ORIG-GUID: I47sBJhx7lQT1mmdvvWkYBVMQ0wWuTFU
X-Proofpoint-GUID: I47sBJhx7lQT1mmdvvWkYBVMQ0wWuTFU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-12_03,2023-06-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 clxscore=1011 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 impostorscore=0 mlxscore=0 mlxlogscore=575
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306120054
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 06:19:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60246

From: Chen Qi <Qi.Chen@windriver.com>

These two layers do not have oeqa lib modules. Remove these two
lines. Otherwise, `bitbake-layers add-layer <any_layer>' would fail
if either of these two layers are in BBLAYERS.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-security-compliance/conf/layer.conf | 2 --
 meta-security-isafw/conf/layer.conf      | 2 --
 2 files changed, 4 deletions(-)

diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index cb33c2c..82409a6 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -13,5 +13,3 @@ LAYERSERIES_COMPAT_scanners-layer = "mickledore"
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
 BBLAYERS_LAYERINDEX_NAME_scanners-layer = "meta-security-compliance"
-
-addpylib ${LAYERDIR}/lib oeqa
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index fca5868..550cced 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -15,5 +15,3 @@ LAYERVERSION_security-isafw = "1"
 LAYERDEPENDS_security-isafw = "core"
 
 LAYERSERIES_COMPAT_security-isafw = "mickledore"
-
-addpylib ${LAYERDIR}/lib oeqa
-- 
2.40.0


