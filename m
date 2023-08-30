Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D7A5C6FA8F
	for <webhook@archiver.kernel.org>; Wed, 30 Aug 2023 14:39:23 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.15730.1693406355937713070
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Aug 2023 07:39:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=roGWEphe;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=7606527421=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37UBwU5O013537
	for <yocto@lists.yoctoproject.org>; Wed, 30 Aug 2023 14:39:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=E05Vh1NegqeMJh9w0i
	Vl1lkR+CO1MsUZFvkHDSIR1SI=; b=roGWEphe9M+JQ6XXhVnlCGYqK+7l1CZVzE
	jRWZJsa18Ob/KPlFJOlHwWD8sIbTx7LzgNPPZziRHcvL29nuAKL8/FxaZdChdxk7
	XMxD2tTohP8FMHq5XcUaiFl3xZwmJkbM6AOe/qDqjqOshrae89UPsnUxR9Qd0Jmt
	NMpZeuMI5+0v8cy0+n7uoTizqh3w6QEK23ih3eN7uQ+3K8zbKP08zGJKOfhgyASN
	NRib5mF+MXoKbg3hsGBY42A8uHu0I8LwNJHwqAxMROjU/axk7d0TN6SwLu3Xj1qY
	y07WlOdel0WV41AA//klvKIAQMmxTua2GOBakUq1TFJCD4lI3PEw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3sq6kwkuq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 30 Aug 2023 14:39:14 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kQDucDZ2KgXLM0xQ4Ts10MQkkOneX5oXgq8XuozWue+N1Ea0phlY3yijWEqctW5KIoWCUgn2s2aTiftoIQnI0YtT6E1o5/Ojf6Tw77YmxaPoRZmZbXareZABaLR0BZqDi/PcOu1zRJYXIN8jWnyifR9rDEVb1y2D57yV9eToEo+pM4eis7oIIvLiWk5sr2F4p31Uvb8/szVwHiCNAXgakd5BdW9Fjr2Fe3OGoJc/vEFX5gV+5NSUYiBMvhWOyVOOw+LqaiUJp1TuSNZj+bOI4nahKwIOCmqR4bp2oiGyUPKE/DeGHLP6VRl1emMdEoh7L0HmxUHzCcGRil40OXtQsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E05Vh1NegqeMJh9w0iVl1lkR+CO1MsUZFvkHDSIR1SI=;
 b=SjbD7LqIYCFEikMlvofK/9FxKtu/y9DkNv0Dw9coqQDl3tRapWwPpwt44T/IAg03ZY3b/yws7VkUYCVE1mMG7hIKKeE89rpVnlEbArGXCyyfgu4z+mg+VXOu7r1V9ao79n9QcuqLLYZ5q6UKLsdlpa+rR7BEhHKcV3e56Qg0+83kqm38BZfaCP/6eSti0+5Z+EdIJ+Pyjiy7Im8OJGZqVBfYv6uzoQbAlY/u6zJf5+A7i2G8BePKRTarxAi0DtJSmJhMfOapc+67U8zJ8Elq5BSPBk/plBH3kHVfcN4PvUF0oFBBljmgaKYKmMzI8XmXLhRbX14vXTJMiDsb8s3IEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH0PR11MB7446.namprd11.prod.outlook.com (2603:10b6:510:26d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Wed, 30 Aug
 2023 14:39:13 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306%2]) with mapi id 15.20.6699.035; Wed, 30 Aug 2023
 14:39:13 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: pass the correct cpe/schemas/xsl paths to oscap
Date: Wed, 30 Aug 2023 22:38:59 +0800
Message-Id: <20230830143859.3033735-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0065.apcprd02.prod.outlook.com
 (2603:1096:4:54::29) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH0PR11MB7446:EE_
X-MS-Office365-Filtering-Correlation-Id: 17f2c9fd-a85e-4454-7f4f-08dba966e0e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ceXiU4xNJDpNjq4BbHNmVh5jdpfHb9IGIb4E8IoCrPYYVlKgvTlDfJDJYn70BAu8qRKUlms6ma2m4Kg7WpKgZrV/muqF+kVrGJj1QM/k9oQ1STD9T4OGGvthyma18MB6L1+OL1zAYKnGB2AYQpj2+nfyl8vR5jmGFn7BsOzXVdBn9QMwypA2eN0W1RY7Vuwnrsalk4Y6j0OvSZxi4k5vdS/1Qwj2h0Hcpfm4kKC4GP3EE4M/FtmD7tywolzjeEgbcH3ubkseY+vanIcewoFMYDh2jtMJrQ3SFdrjsBXAoPsPIYnzOs84gYxJUPegLSX4OYSuZGmA998arOSNQ35ADfmfHJB2+uJygmhhWtqEeLJ7Kk64gfsulXHOZ5CD48yx74HVS+SJNWZwuHYDjQswGg7l4huENTOEtWLA1W/Qu4PPa8r06SX6LnKhqZgKq0fYdlyO1CRAmZ1ISDFtrSOtmdI7ihoSqlQboVQLHAD3qwXHtfXzaex9KKknHqNfjGUDwzKtNxvbcYDLLF0639RWCSaVyR3hZHcbKcb3Yl07OgL9VIuMXI/LrSG6gKPT/U4OBm6iCm21CmIc6myOrmC65gnaQy1s8UkSqKFl1/Bh91DLufZllHUvcv6jeKJ2HXhF
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(346002)(136003)(39850400004)(366004)(1800799009)(186009)(451199024)(8936002)(6666004)(52116002)(66946007)(478600001)(6506007)(66556008)(66476007)(6486002)(316002)(38100700002)(41300700001)(38350700002)(6512007)(5660300002)(8676002)(44832011)(26005)(36756003)(1076003)(2906002)(83380400001)(2616005)(6916009)(15650500001)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?1akAmIp9RGwi6guV7R9ZYZCDx67CE8APHQgWBewWYm+YIWIXF6K0vAsClEy5?=
 =?us-ascii?Q?yalNjD05kIxDhCqS7EkPQvDcst8IQKhictkaY96LKjc3X7rhKim3iSLF4gZH?=
 =?us-ascii?Q?6+COSIasloARvI5IACyUMNoBcprZt2KI82Zfn6W3UIfhS/0Rrsade6WuEYHD?=
 =?us-ascii?Q?8LpT+wihSsw+GwbHsRq5gquQpmMi0zpElkQoDEsx6ucV7utyBsKf8fhT13Ie?=
 =?us-ascii?Q?mVQuvnKW5xmfCx2/6GfF1olWYhgJPG9IZEH/nSv111AFLzpKFdb5wc8Cj/v0?=
 =?us-ascii?Q?3ecRKrKOYZHBvFwACoCeHSie2WXNs6ZFfJAxBJ4hX1YLfV6xQmJMuzb9LP+l?=
 =?us-ascii?Q?YVNJxpijojjrNIOuCqzxcGyP7nCjmkIUp2JDXM4pR0IW6VsDy8YM1BcYBNov?=
 =?us-ascii?Q?X6wDcu6Z/wIsz5r17D/rY5WyOrmCT5zRP/giuroi/qthGGTubfp3ELnkvFJJ?=
 =?us-ascii?Q?LXB2AR1znCfBO5waemc45AV7HLB2L+1omTt3XZTy02CGQ4rHtbTcZlYdJpcp?=
 =?us-ascii?Q?CtsaWRlLxQf2Bkcm98ehtUTwLFDf91wilO/l3oVoMwY+uWpMiZ2QjaXWKzbF?=
 =?us-ascii?Q?iyCW+OAjmmgcGOm3g8g/+HF97ij2/Y6GVYdwt8PjXn+QL5hq5TecD5cWxthd?=
 =?us-ascii?Q?G81QkTnelp4kcSdPEyKwY947v4ggfh6d7lgjlUkocRJrrVXqR0fMgpPq/wK0?=
 =?us-ascii?Q?nOyHk3AopFqgzUO19QHm2NhRMRSsHFJNVQrXe7nMOmoWGanH24cPCXDE9dwO?=
 =?us-ascii?Q?NmZE6Ft2GfTh0W1nbQbgb2ADnuThG5LCSNhob+sq51NmvOLh+8i3NAcpp6gA?=
 =?us-ascii?Q?PH8R1VUDc9lKm7uK7FGIyiwXiXGCb1rFVZs7jYfmd4mjI4vaMKVadOdUXL27?=
 =?us-ascii?Q?dxBbduqUJ2LivW/UuUEIM0mLPrK+bncIIU4F/t073uOCKi0NyDk1c7h2azB5?=
 =?us-ascii?Q?GdZ6b6ilgJrh3F0kG54PFORfAJYNuxjJAH9RYTV5x2LJMvgzBcTQq+rn/tCo?=
 =?us-ascii?Q?fULcU36jucHMXg4dUYaxrl60OzuFZVUuPjWZllkAytzwVN1mbUFaXlsWcHRK?=
 =?us-ascii?Q?V35ecJct4x0GtUPtPipXx8T9ztOYNEerXpAhxkhOVOr4U5rhDDQsfiG87zhm?=
 =?us-ascii?Q?yA/rLcvzdALfBpbjCslrwkO7PkN2CYT+TLpHAWqb2wc6bMRZwRbKdw4NhoTy?=
 =?us-ascii?Q?D5XgYQl5OtDHfC2rcY3M2CTRNhmwcwEsoqcpf38h/xvJkbpiABxsxC1iDCFT?=
 =?us-ascii?Q?CjygLwz4/ijb/LZHhFD6PHOfcK2hBAEqN0TnYRLbHprBmCEvyoNRXoXBRGSW?=
 =?us-ascii?Q?THeYmlA5p8i0pWIF6NAuvqLOmOeZEwbptKjaJPmj1C0v6Ict+Xf0LDn4ATo6?=
 =?us-ascii?Q?DSOb3/OSN2RDqDTd5SXLjhA6q9GZLlcWZLDbljHygu+77jVL09Pt0cLmoK6c?=
 =?us-ascii?Q?tJCX9VlunlBbbCOqUKwcadZIHz/f55rPOSmzcnfddyqfjUALcHQcxc3MAQI9?=
 =?us-ascii?Q?fKskqoUYqTC1w/jRVmGmRy5NY22b4LdZR/hv1BHAMsQNs5xQ2cFc35FPqr3c?=
 =?us-ascii?Q?dZCKC5IODtIxnale/ruoe0CKJXwbQqxhfQG5yl57?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17f2c9fd-a85e-4454-7f4f-08dba966e0e0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2023 14:39:12.9401
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a5uagUZC2f6pZTNQnYqnFV6I03mwEUMcp914w5u4KOPUXYdlIh4nH9iScoC6+skLh6z56g9Pvnp8eHxiL2DUVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7446
X-Proofpoint-GUID: Ge8pR3QFXR7vNLryrjSDRcRrMUZjtZbc
X-Proofpoint-ORIG-GUID: Ge8pR3QFXR7vNLryrjSDRcRrMUZjtZbc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 mlxlogscore=606 priorityscore=1501 phishscore=0
 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2308300135
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Aug 2023 14:39:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60918

There is a build error when using openscap-native sstate cache mirror.
Steps to reproduce:
Create a new build project in build-1 directory.
$ bitbake openscap-native

Then remove all directories in build-1 directory except sstate-cache.
Use the sstate-cache directory as sstate mirror.

Create another new build project in build-2 directory.
Set SSATE_MIRRORS to point to the sstate-cache in build-1 directory.
$ bitbake scap-security-guide

Error message:
OpenSCAP Error: Schema file 'sds/1.3/scap-source-data-stream_1.3.xsd' not found in path
'/build-1/tmp-glibc/work-shared/openscap/oscap-build-artifacts/usr/share/openscap/schemas' when trying to validate
'/build-2/tmp-glibc/work/corei7-64-wrs-linux/scap-security-guide/0.1.67/build/ssg-openembedded-ds.xml'
[/build-1/tmp-glibc/work/x86_64-linux/openscap-native/1.3.8/git/src/source/validate.c:103]

The oscap command from openscap-native tries to find the schema files in
build-1 directory since these paths are hardcoded when building
openscap-native.

We need to pass the correct cpe/schemas/xsl paths to oscap to make sure
it can find the files in right location.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../scap-security-guide/scap-security-guide_0.1.67.bb        | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
index 988e48b..a972c24 100644
--- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
+++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
@@ -22,6 +22,11 @@ B = "${S}/build"
 
 inherit cmake pkgconfig python3native python3targetconfig ptest
 
+STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
+export OSCAP_CPE_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe"
+export OSCAP_SCHEMA_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas"
+export OSCAP_XSLT_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl"
+
 OECMAKE_GENERATOR = "Unix Makefiles"
 
 EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF -DSSG_PRODUCT_DEFAULT=OFF -DSSG_PRODUCT_OE=ON"
-- 
2.25.1


