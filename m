Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.65254.1629348444520721815
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=eZYMT3Vm;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4lME8012347;
	Wed, 18 Aug 2021 21:47:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=fhL9/+9JJmqPAVphmC8df6wYjiIiZoO9v93V0a4q1TM=;
 b=eZYMT3VmSCCC3l9IEJuvkbJS58nJOzz/OYxh7f55YNenHKpySDEeAxNsCWyGIByFlSOH
 VZgUUC9ZESJWXSXVo3Fcp+FIDG/9SsjNVrUgIS5zMrfdjrHXasQ7kiX/DyZg9YahPmGz
 4m11vQz/TmV70nc6WLYXLzjkyKG+lpfqmBSQTR0VX9w4PE/ig4tcyKBRSwV+W7a+qsiL
 0rwoV14I1btZnkj+tHnK577w6VlFkemblDpI2Cx08v9nLBNSXh/TdrHm+tw4rac3+hpW
 Yzi3ocGIJ8YP2Tjy0SnneiOlrJOiuW6p3sY40oW+xNQDGW4ncZf+qPB27g5c5bez3m/5 lA== 
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2040.outbound.protection.outlook.com [104.47.51.40])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ah20t0mdn-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Aug 2021 21:47:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K3GwNeB1eXWa4mwzi/Ewn18O4s2YSnclMIwDbt+7cwkDf17wwnoH/VyQ35V67Vo6y6aY26JNJNoXx7Kx0EisYJWqbpqc/WzaF8PCdcCDDRF1/Mp75wW0pYZDMZkJdL820yxMroRcGuZUjm8A7hUwL3s1rwS4KNVIEIolbxk6dW4nka+wSXX9c4yrePkkXAOpCfNDPFwGu1tnICcbLuTy4IYj0w2SCbS6gQsCIUVeLof/JPOYRfD5tGHjvUfCdyCKcspxr3eTL8uQp0RI1Ba3FmHFpH18qzf/d/IXOQN4w0qhfQSMLmntRgEhQaOql891uSFFBQV32q2xUyvb180VYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fhL9/+9JJmqPAVphmC8df6wYjiIiZoO9v93V0a4q1TM=;
 b=MZ74LNgvueoQ1wJBh1zWiYgwYeL3BDvuevfhARV8+Y0wNmeJuYnRBJYtGlvkFDLLbaNWJCntgG27HaOnfFFH0Ke2730U3shj4Ums750ffP+dJOlPQjREerlFghMOCboE4HlwPOW4GTWNX7zOctUFnsrb13QaBkwHEMWiUdgUbFFNYRFghYETTOg9obt/N+NInK59W0MqQJ45jL4/E5DMJXTM0RZOLqwA/1/eDxS+gYQvyjP0O+RTvMzX7910TI868tn7MhKYbXnGu70S9zv1BPTJWbfZlxKVlJD+osOB6Gl6/tj2FBQfDyVVcrnxVm/0k45EBaO4z1PPsT9L2UvQyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1309.namprd11.prod.outlook.com (2603:10b6:300:20::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16; Thu, 19 Aug
 2021 04:47:21 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:21 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 02/12] libpcre: drop bbappend
Date: Thu, 19 Aug 2021 12:46:58 +0800
Message-Id: <20210819044708.105282-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8b2e2b5a-88b0-46cf-45b0-08d962cc6e5b
X-MS-TrafficTypeDiagnostic: MWHPR11MB1309:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1309A920199A80AB410563D1F9C09@MWHPR11MB1309.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9B25ypVC9Z8m1dkHOeoEElW5VuZ/6cjWwNPAnW5hBAuYe1Hl72Oyf8csPENJQVPTaGHhFnwOrv0fUmXctmfQpLFubRWvvcsx+BWz7gtn/05fiUJvBT+KyJER73iyx5nL7xqTlsoQ0tq0RDAGBRodx936jWRNzvm3/kzt2bTP2/Dx5umvtvzVVt09Y1kVVF4V6iuibtyTQN8pI95o6XnlnCH4N3LjoysVOk3Cpy8Sizy6aVZwPwl+Cy47mPlwXp7VF3chqq8O/z9+ITRhggDgjOQ7F6+oU0nzw9mj9pxyt8Vg/8Xv8zLad2cz3Ohs58MFxaou91LB3+LEm5TU2/h5NVjK3X60JG3TEylw3/VPYA/Jw97677c1gJJeo3hjttXFXzARuS+FgTmUw1RWYlL7/gmnJ5EX2v6QVPIejKlUeFFPjQST12S9u5NpwEPK7JvevuMnZfGh5C3d2cN7j+Z1QI5atNixD6kNMst3RXoJTHKrClTiJK5lzttGCELJYtD+wTcBdtbNWVLkYv8q6Q9RjElxK/XsPm/NS8vnsMZtrwdq2sZnn05cwj0nxdouzgiCZIYyv+X0yDGQPqrkn8zvGIAz6Mp2o4gOGC43jvuxasDH++rvfsAc0gWtuOIiy7I74wcoXSClSNYJzpxIYt5tc5GgS/7LrdGuHti74Ehs75GXXhiJCqDgobZ9storkuqsHwzExGigM7CwE0FGrTQRPQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(39850400004)(376002)(136003)(396003)(2616005)(8676002)(316002)(86362001)(52116002)(66476007)(478600001)(956004)(1076003)(26005)(83380400001)(6506007)(36756003)(6486002)(6512007)(5660300002)(8936002)(38350700002)(38100700002)(66556008)(66946007)(44832011)(186003)(2906002)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?dJfyczehlwBsxSdBZEXYOvj547ibhj1dYZxqL26gGc7NqVqijM8p4RWFkQDZ?=
 =?us-ascii?Q?IHHkRLOde4XNq4QC5ITRx0XqANy0VNfM3J3FiOrMOqrnnWpeloukAxOV4UvC?=
 =?us-ascii?Q?Td7SgwJQ0pFvY3jmmRMhfGfZYfVz+lsDaNVlWkB8DWH9IKgYLQbA2N9Yri6x?=
 =?us-ascii?Q?Golsu7CIdW3TwMIoPkjxQZtI8qMxI2Oi/VdmN6pM9wy+LiJ+oByN6+WMNGC8?=
 =?us-ascii?Q?gDhFoviinTMNfvSR6R3NAJNU0/iW/IJk0mD5JtZjvq30fnKts/yAQRhAC81p?=
 =?us-ascii?Q?FM9CFhmWadWgrKxfijwVY+Irs0XkCFa0kM0GAButcJKb28zxptCMdDiiR6fL?=
 =?us-ascii?Q?1QvcMcIMUTTrIEWJJya3ophf9PuFP1slHy+oysbcO7m6Om0MInDnkh/3GIX3?=
 =?us-ascii?Q?Ns+cCn2cv0+5LwEs+pJxllpBsgpx2PSSAsp5n9kKZXZpkjI3Uj82SsEe0xyJ?=
 =?us-ascii?Q?as9mr8Qb1wu5qyfUuvu+JnfEwIq4EwoKc/o9TSFPN8OHZusNLwDh3clSilnr?=
 =?us-ascii?Q?xv3I6W+kj0KnS2t7xpS1Y8Nmruzj5KfgTCSnfABm5P2PP7Ulkl26eM9uXW8m?=
 =?us-ascii?Q?Rb4+CSi5wT9APqyG3vBrpxswNikc4m/JBMuo+ZaYdlKnSe8Wm21B9MTL6s9I?=
 =?us-ascii?Q?WW4ThRYeMDpWsPavCePkWzz3SxKuD39+p94Mpe2YqSF7sDTtvQEEKZ70yCvo?=
 =?us-ascii?Q?Pfo1Q0kiSkFP6EvUky//URIMncQib7kdONv3vCrZVGNpFrsmf9bws5OBezqk?=
 =?us-ascii?Q?MbjzMd2rdiUJJatxMpVQKyvmdnLgNS+f5UW3+ly1Ji0ilQqrqdlx8dD5jQRO?=
 =?us-ascii?Q?6BNmmPjgVM+Vbg4Q1JoePX22soTUAhq71iy6llRSEp815FvDXf3kKDHAqfRV?=
 =?us-ascii?Q?q8F2UMsCW6dR4lfvuD0hEBtuv75Yqafi/NHIj4mCRfMX770HL07UKcb6j+Mi?=
 =?us-ascii?Q?yxSdKG+2fhtRRvAUZ8RyQ13NoHDZ8KAPOoPr9+odlBOuZhe2FUo1Zp0iVKhz?=
 =?us-ascii?Q?0wgFFqTNCHmqGdNjLlhXF2gS+bZMEolO9NTkCX28Wr2svtLWqytlBO28DIu9?=
 =?us-ascii?Q?g3tF3BfdDbMxPC+0nqgGwCt+f/egU0dEVWVzB1WzKaj2hrFZmfxv8TyW0HfZ?=
 =?us-ascii?Q?cy42vUOyWB4EGJXrll6IK6UCosIpo4VAXNBxRECezw8VKhO7SvOyS7jurhXr?=
 =?us-ascii?Q?DmwwiiOU24vzKfQB3TNEn3z2uG4hGul1eJPx7ZpaI903dmu/A4R95SHFWYNu?=
 =?us-ascii?Q?TESsR49wDN4p/+YBz7mJAroZHDNlTELiwT5jLZ/Gwa7bfZrX20ZRpRimagXS?=
 =?us-ascii?Q?h117KNFTeu2EpGwuby2xwUK7?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b2e2b5a-88b0-46cf-45b0-08d962cc6e5b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:21.5245
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JT6hsIyBkBeBAKE0PSQoymcNfPzhfMQ+2JNu2/Ejwp5LtjNwDuCZAS5fBMQzB6fFnX09YVVS4z7QNbV3AyNBRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1309
X-Proofpoint-GUID: 0ACnmMVbaw4F_EP6Tcy9ZfFtfcQRKa8K
X-Proofpoint-ORIG-GUID: 0ACnmMVbaw4F_EP6Tcy9ZfFtfcQRKa8K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=534 adultscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 spamscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This bbappend was added long time ago and it is useless now.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-support/libpcre/libpcre_%.bbappend  |  1 -
 recipes-support/libpcre/libpcre_selinux.inc | 18 ------------------
 2 files changed, 19 deletions(-)
 delete mode 100644 recipes-support/libpcre/libpcre_%.bbappend
 delete mode 100644 recipes-support/libpcre/libpcre_selinux.inc

diff --git a/recipes-support/libpcre/libpcre_%.bbappend b/recipes-support/libpcre/libpcre_%.bbappend
deleted file mode 100644
index 7719d3b..0000000
--- a/recipes-support/libpcre/libpcre_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
diff --git a/recipes-support/libpcre/libpcre_selinux.inc b/recipes-support/libpcre/libpcre_selinux.inc
deleted file mode 100644
index 2da7073..0000000
--- a/recipes-support/libpcre/libpcre_selinux.inc
+++ /dev/null
@@ -1,18 +0,0 @@
-do_install:append () {
-	# This code creates libpcre for both the dev machine (SDK native)
-	# and for cross-compiling (machine arch). For Linux (SDK Linux native
-	# + all machine arch), symlinks to the .so files have to be created,
-	# but not for the Windows SDK native.
-	if [ ${TARGET_OS} != "mingw32" ]; then
-		if [ ! ${D}${libdir} -ef ${D}${base_libdir} -a -e ${D}${libdir}/libpcre.so ]; then
-			realsofile=`readlink ${D}${libdir}/libpcre.so`
-			mkdir -p ${D}/${base_libdir}/
-			mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
-			relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
-			ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so
-			ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so.1
-		fi
-	fi
-}
-
-FILES:${PN} += "${base_libdir}/libpcre.so.*"
-- 
2.25.1

