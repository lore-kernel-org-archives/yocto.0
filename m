Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E78C8C4828D
	for <webhook@archiver.kernel.org>; Tue,  6 Feb 2024 06:46:33 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.16344.1707201990356838842
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Feb 2024 22:46:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=V0F7dd93;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2766dece61=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4164pDis021776
	for <yocto@lists.yoctoproject.org>; Mon, 5 Feb 2024 22:46:29 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=sNR7rlEHkYfYC4lnKi
	+3dTytycWZfJXo36jBNssukVA=; b=V0F7dd93p4Qtb4OSOITWRlT/QAvHBKGpXH
	+McSsjoI/4/yv64Ia+nfL4AZFynz6/mbGzSCmc6aqlOfs6Z4Ycbo809+sU5/PJmW
	DNWNsf8ehok6PRfymtkyDWMnNWri+l0omtCwlWr0WJrxH7F0jaxvcU2HBgxr/dor
	8e18I2lT+tBlZaNI5FrkHTrZL8mbjwNqeqzTKY5pP5BeYkl2Z1XVB2YgJwO3ZqBY
	WHx1IQ0Mi6fBsxhsl1GGNwy5ZGCt7i9S3fBH6/xQvTKpTnH3KKKZNHBlcqf/mDhg
	xHKtMnLGG6piGY8R09+3ozQ0QMshr8+pRdj29yv6bcBoEsHNKUBw==
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2041.outbound.protection.outlook.com [104.47.74.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w1nvm2b30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 22:46:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BO7D/SUjUtQi3zbAZv8Z6/MsbqPjGG9wGmzJMExGz5imCsKHOaca/JyIkG2ocx+xqZPMHQVu+alqYFo/oRwi6PwctxDUXOUJdJ3onJXo1mgAobGbGh/eNs5OcBb4F4OsjRnnJtI5jIulyLA0SSayljuJf5XgGOFh+t/vrHNDfgZp3IRoMIihF4qp+amPxofgZWgy0Bx1RP/5waw/V2YNsIt7r2g5L1yUN6ia8vqyQGE3c3Xs5qEQptKyG3xYs0ODxsNKhehvPKyjLEcASzTR/aR/cj8SWB6XLhQrbz15d3qU/PwHV1A3n7nmyUQFa5GcyuhCBapY0U1maN/C6Xb8Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sNR7rlEHkYfYC4lnKi+3dTytycWZfJXo36jBNssukVA=;
 b=L1mVKIyXb35jwNa3XzfZ7O68rFIwqzez1LtWWXvxE/18vyfGJT68xWlOMnreZtBkt5Ui5tB/1vnPevl/830UFxf7qF7BG6ylzFpzZhVqc3nYrZBCIdz9lFklvRRU34mq1lbfMKVLzO7kwinUkcCDqYpP/Yokz+cRSVLbmewtR5+7R7HmsrRmZqdOmaDRx1FX7i8qfNbG7xegb7PSYfFlQUrsOqkJIn2NArv6WITinPHOH/W/F2kObSyYYQJqj4SiHGeI2ATephu6645lOJTlcf/TupFRyj62R+3R7MmcnrejBHAbphIaLWix62edCYaS9vDfm9LWxoh6s3xfb5ZsdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by IA1PR11MB7810.namprd11.prod.outlook.com (2603:10b6:208:3f3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 06:46:27 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b%7]) with mapi id 15.20.7249.032; Tue, 6 Feb 2024
 06:46:27 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] openscap: fix build with python 3.12
Date: Tue,  6 Feb 2024 14:46:15 +0800
Message-Id: <20240206064615.490068-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0022.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::14) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|IA1PR11MB7810:EE_
X-MS-Office365-Filtering-Correlation-Id: cca81dde-1111-41d6-3821-08dc26df578b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Pos863udiAQyHlN5V7jG3vMgsK5hwzSExN5iLFLEa+fL3CsDU+yJ2dWhA/VSw6nDQQ32UYag7p/NhetnMHc7ErvHAy8f5Bwx81ApokTakHdw8WgdyXpEwQboDI5YkupHMOxUxtfbmaU6gKOMW0I4Hcq/AoWcznXExkbSnnxxWzY5/UtM+GORNblOgXoFQ5Fsb2d9LQuWwFN5LTuG4yAPdx8kyhlJVqNQa0zILPRWvHEU9T5BtStRffQ8GJYUhP5ebe48R+GlBYlAy73248K1tD2MHf0wK35fOE59VsQAJiFQWg0l7u/Vjvzn+az/QlaII1nhvj+OqzFc92WMc4CGWEoCFzshV4OtYsGETK2QLk/gxCy/dMf4nPQSgtvXhWAmtdJyBN17v7qFnJXnvcZgh2waqWpEUWZQx+jk6lXLgsKPhnw5ZInDv82kqNHaUKAqZMt6pC5meEHG9N9VPgWEXf4CSW5+ssxQJ5zZ8yNl+idmJHWOnFRI1GOcFKsY05fW09+d3tys/5D9pYJQrAKvgtdVv5bdoVteRz+9UZE9yyGvoDKlDh1eVDUsHt6PlKqkKMPPwJDprc30kMb+fFQ5z24ybpKyWcEdVGO10tZ9y58=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(136003)(396003)(366004)(376002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38100700002)(6506007)(6666004)(52116002)(83380400001)(86362001)(26005)(1076003)(2616005)(41300700001)(316002)(8676002)(8936002)(36756003)(6512007)(2906002)(478600001)(6486002)(5660300002)(6916009)(66476007)(66946007)(66556008)(19627235002)(44832011)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?A9TCiG8V26KVV0znD25kVZyvQbsLc04aF+SvH3ooD6rPc1UE28Kihynqk8yC?=
 =?us-ascii?Q?Jt4pqliS1Ej184KYnSGj8IkRV3cZlVf+U8/VjAKCD+fdcHsxRWfwB9GYNGuX?=
 =?us-ascii?Q?OL7mVfUpwBsAFEzfmDzlBEta5FhZbyHOG+/XQXS2mKLTj4T3lbd6NS7Z09fV?=
 =?us-ascii?Q?lGHXxxRARg1292jioEG0nbGgUcvs6mjCRwC/0DiHdh/8cycbQp1rSNO/gk3S?=
 =?us-ascii?Q?D4QcFi562lwukY9ysFCIVX/6t2a44eKKai0mI6gpbgGkuvHdbecdXhWasaB7?=
 =?us-ascii?Q?cq+eYvg+qxN+stY0VsOgOep4onRajcXanmySQmdupiTwAmV1pBh0bk3QXi7q?=
 =?us-ascii?Q?+DrYsOuSYjZbO44LodZmYh7MKBIqSNKaaaF9XyaZyfg26QoCw863q/LHwGWe?=
 =?us-ascii?Q?r1bVoxf6f10xmJ++fJu9aH628GOFXYPs8sg6/Uw1TMa4hVr2w+ucvZSwMC+F?=
 =?us-ascii?Q?51cFkrjP3Pir3gc7btJNxoLxl7BQO3PxYhfQtui5z4QM7JVt60KqBEVec4HZ?=
 =?us-ascii?Q?9w66Le5pJxwZ1xwN/Mvt5mGp0Hn/LjwunLtv3VbtStdq4nB/qdoDrmenwBdY?=
 =?us-ascii?Q?qDZXhydj0PBjPnSn2UmmEt2nU/N8Bml3zMxrT7Mhbqsme1ESwpijD+Xj7MLD?=
 =?us-ascii?Q?oBYnQbC9CFF/V0gGFtKSxi1wlQJoikhM1Qa9Jw7qPqKbwxMdlLifTe/aUrFf?=
 =?us-ascii?Q?LY31W1wVBfvkTel9tVyL0gNJOR5PbDzxiWrEIJrisDAJRUaT0hsIY0xHN+FM?=
 =?us-ascii?Q?fX6eB5GaxwQKotKhmJ7/TNbyP4gepANlBtoFnzvxXVkKYj7N1/AsWJ9DJc8b?=
 =?us-ascii?Q?7sznMe8uVInifXjGkfWWVC9vuTbWNN9MneBxJ8j71fuHe1GPnnFpfYLVmB3j?=
 =?us-ascii?Q?pRgyd0yokp4+FCPwGUPWhGnBt5kw6SGSxqnK8l5L9zrOLp5cYJlHxBjcZ2kS?=
 =?us-ascii?Q?/Av3x8oF4VXE18ngXSg/5wboqkkHEGGa24FohvLYa7P96t031vD8Kd6hd6gm?=
 =?us-ascii?Q?ICtZStrsDlgf0ZJ1X7k7fwUNPRjhtyqCnmniFYUYuS/S0tI7pRuerinyi0pw?=
 =?us-ascii?Q?ziGCEo+jqgdglyrSerfqcQIOnpaNAto86Bj0xQ707arHkjl17UdWZHjHPrZn?=
 =?us-ascii?Q?IWBQS3IxcoZlWxGSwWMTaPxZ0Ac5EbWXIXWrbZXV/MQnUXoaZJ6baivCx13e?=
 =?us-ascii?Q?RGMSd9IUF+w0iRFTZzy/8W/6SRv3o5XADM9SDYdVi7NIYf2Sj78Jg3LNC53M?=
 =?us-ascii?Q?6muoh/oXQcuwXtWzJ1wGjy6r/ww0IfUDsYTqx07OkFAVyipXC00s13GRb04s?=
 =?us-ascii?Q?imiC5y3WRTQ0sXJELtyXcI0ZA43Y6RpgFj4JoH3qKdCnbKrNTo7kShVb9u/5?=
 =?us-ascii?Q?nAtpYH0ildvwAphm/Wn0VUTmBgVJ0816WKpPdIEvEY6gl1TDXIbuEwwkC58c?=
 =?us-ascii?Q?Kbe8vykNhGQNy3TtTEaRX34NDAD1QV3B4TXbiyDxtkDo+B3B0jP8vG1kE5xP?=
 =?us-ascii?Q?wYjVif4tf0RMdrgKKKi9Q5AE8i1WKKLOqCcx+aKNQykMlBeelO/6f30EvS4j?=
 =?us-ascii?Q?bKnsvL84mAEFLfxL4s1F94i8/Q0ZZF3qNiiz45su?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cca81dde-1111-41d6-3821-08dc26df578b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2024 06:46:26.9497
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 37FeNsm5t/2Rb47W8NkFrVzxf0sfHH00n1TBeiawm+SyNOBpthfErURzzS8BAobvkdhVr5LMYmCYE6z6lhyWbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7810
X-Proofpoint-GUID: 0fL94YPuLVp6ZMApP9w-ZvcjBpgYiQeX
X-Proofpoint-ORIG-GUID: 0fL94YPuLVp6ZMApP9w-ZvcjBpgYiQeX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-05_18,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015 impostorscore=0
 priorityscore=1501 spamscore=0 phishscore=0 adultscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402060046
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Feb 2024 06:46:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62403

Backport a patch to fix build with python 3.12:
$ bitbake openscap-native
Traceback (most recent call last):
  File "<string>", line 1, in <module>
ModuleNotFoundError: No module named 'distutils'
CMake Error at swig/python3/CMakeLists.txt:35 (install):
  install TARGETS given no LIBRARY DESTINATION for module target
  "_openscap_py".

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...e-distutils.sysconfig-with-sysconfig.patch | 57 +++++++++++++++++++
 recipes-compliance/openscap/openscap_1.3.9.bb |  4 +-
 2 files changed, 60 insertions(+), 1 deletion(-)
 create mode 100644 recipes-compliance/openscap/files/0001-Replace-distutils.sysconfig-with-sysconfig.patch

diff --git a/recipes-compliance/openscap/files/0001-Replace-distutils.sysconfig-with-sysconfig.patch b/recipes-compliance/openscap/files/0001-Replace-distutils.sysconfig-with-sysconfig.patch
new file mode 100644
index 0000000..f3f8cf7
--- /dev/null
+++ b/recipes-compliance/openscap/files/0001-Replace-distutils.sysconfig-with-sysconfig.patch
@@ -0,0 +1,57 @@
+From 9a8e01f8421f92f40b4cbff6cf055538e9a0b0ae Mon Sep 17 00:00:00 2001
+From: Evgeny Kolesnikov <ekolesni@redhat.com>
+Date: Thu, 25 Jan 2024 21:37:05 +0100
+Subject: [PATCH] Replace distutils.sysconfig with sysconfig
+
+Upstream-Status: Backport
+[https://github.com/OpenSCAP/openscap/commit/9a8e01f8421f92f40b4cbff6cf055538e9a0b0ae]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ docs/developer/developer.adoc | 2 +-
+ swig/python3/CMakeLists.txt   | 2 +-
+ utils/CMakeLists.txt          | 2 +-
+ 3 files changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/docs/developer/developer.adoc b/docs/developer/developer.adoc
+index 77c6d5161..e923069cc 100644
+--- a/docs/developer/developer.adoc
++++ b/docs/developer/developer.adoc
+@@ -113,7 +113,7 @@ On Ubuntu 18.04 and potentially other distro, the python3 dist-packages path is
+ If the following command:
+ 
+ ----
+-$ python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"
++$ python3 -c "import sysconfig; print(sysconfig.get_path('platlib'))"
+ ----
+ 
+ returns "/usr/local/lib/python3/dist-packages" instead of a path like
+diff --git a/swig/python3/CMakeLists.txt b/swig/python3/CMakeLists.txt
+index 2594cf000..5f301326c 100644
+--- a/swig/python3/CMakeLists.txt
++++ b/swig/python3/CMakeLists.txt
+@@ -26,7 +26,7 @@ add_custom_target(python3_compile ALL DEPENDS ${PYTHON_COMPILED_FILES})
+ 
+ if(NOT PYTHON_SITE_PACKAGES_INSTALL_DIR)
+ execute_process(COMMAND
+-	${PYTHON_EXECUTABLE} -c "from distutils.sysconfig import get_python_lib; print(get_python_lib(True, prefix='${CMAKE_INSTALL_PREFIX}'))"
++	${PYTHON_EXECUTABLE} -c "import sysconfig; print(sysconfig.get_path('platlib'))"
+ 	OUTPUT_VARIABLE PYTHON_SITE_PACKAGES_INSTALL_DIR
+ 	OUTPUT_STRIP_TRAILING_WHITESPACE
+ )
+diff --git a/utils/CMakeLists.txt b/utils/CMakeLists.txt
+index 93ce1f2a9..9347c2976 100644
+--- a/utils/CMakeLists.txt
++++ b/utils/CMakeLists.txt
+@@ -91,7 +91,7 @@ if(ENABLE_OSCAP_UTIL_DOCKER)
+ 
+ 	if(NOT PYTHON_SITE_PACKAGES_INSTALL_DIR)
+ 	execute_process(COMMAND
+-		${OSCAP_DOCKER_PYTHON} -c "from distutils.sysconfig import get_python_lib; print(get_python_lib(False, False, prefix='${CMAKE_INSTALL_PREFIX}'))"
++		${OSCAP_DOCKER_PYTHON} -c "import sysconfig; print(sysconfig.get_path('purelib'))"
+ 		OUTPUT_VARIABLE PYTHON_SITE_PACKAGES_INSTALL_DIR
+ 		OUTPUT_STRIP_TRAILING_WHITESPACE
+ 	)
+-- 
+2.25.1
+
diff --git a/recipes-compliance/openscap/openscap_1.3.9.bb b/recipes-compliance/openscap/openscap_1.3.9.bb
index 97261df..d956ff1 100644
--- a/recipes-compliance/openscap/openscap_1.3.9.bb
+++ b/recipes-compliance/openscap/openscap_1.3.9.bb
@@ -11,7 +11,9 @@ DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native
 
 #Jun 22th, 2023
 SRCREV = "9b3e7563575f7e5b419f8a09999b40f30e3e7c29"
-SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https"
+SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
+           file://0001-Replace-distutils.sysconfig-with-sysconfig.patch \
+          "
 
 S = "${WORKDIR}/git"
 
-- 
2.25.1


