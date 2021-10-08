Return-Path: <liwei.song@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB639C433EF
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 07:32:35 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.5819.1633678354994931338
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 00:32:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=bvre9TTN;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=59158e485e=liwei.song@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 1987Fa42023325;
	Fri, 8 Oct 2021 00:32:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to : cc :
 subject : date : message-id : content-type : mime-version; s=PPS06212021;
 bh=KZbq9n4ruUa3jxvCgtRJalzVDpxIRnXyODz+1JbNxEk=;
 b=bvre9TTN7PI1SAOvd2oyFKxbthya/l5SewHCUe0GXXxXGjpxthDWq4nord6hTnDMMNMO
 MEpafnAEINqqHKjrnYv9okdPkg8t2LysqJ+3+Oj3G56DsIHPtEm1CZ5QsFXQnfWSCj7n
 vQCoLV8SpKAP0PiJg4OFvQQJirmDzzAAZziJ5BAisPnGglZuaH4wP/wGnbkKC20lUOHY
 g+SkqQEJHk0uOxG1D+Iehgh+6jcyLFqwRq5w/6JrNuBZMOe/PuX2z6ppHT9DNmnQ1Y80
 mMHSdR6mTsJ2CkKbg6zjwlvJD+TxcRXB2EN/1pX9jTRp7R3lFndVdcL6j6PRVIlmH0gn nA==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bj8urrb91-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 08 Oct 2021 00:32:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FfO0hKsxeG9+JifpXh5Y56VB9i07zHdHxiB2jWtUsxw6mUGBhFStQYkCN1NR/cH6foHiGKmjApc1IE8cuUgl1jxOjkWQX+lUJwMNvuHBq6mxyaHmyTqSJhpTkRuMqMeJRu3INvE1HRayt/zgyRivxufXhiwMogU1RzWXCpHaycLxWclrsKUpS53ZqkRdtSLddK93WrEgLxwFxz3e8R+lLjOx8SxjSqcdGLW16LC7kkVjaFP0flz2yTtUCgJKbHPT1O953wfQmPDeji0OCR707QjP4o4VSXEMeAloe8JPS1RZHE8vt5aqowCvGRZ7nGhkUV+u1WSExMHt7Y81J1sUYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KZbq9n4ruUa3jxvCgtRJalzVDpxIRnXyODz+1JbNxEk=;
 b=QCTlAOuyad+QeLolgW72IOj5gztPVpcEmN4MoZBhNAx0g9I1JXBuhuR9FXp/jRrrSNZc8t+rkomQM5jt1LyEAicf+LgQjKscDqM8n6Ul3+I1Q/IcbYy2y59KRVCFzEJWsUDv7s4MpddYAq3knlD9WcETZAUWWu9qUPizijR+WcHXy2B2a90g41BEKBDzh14j1fhf/x/gd8sDEpnhQVBoR9KbQZQpe6eJlPfRuKzrlSnrBcQwfxm3GOXPAKOsvthH6tYjhhXg7Yx/ZzXY52MhmbnVgzDNFHiUiHGxGseVyyIvDpdXra+lE9pQotSz6yrgtKe+iTOJVg8+cARBHEW8OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM4PR11MB5310.namprd11.prod.outlook.com (2603:10b6:5:391::19)
 by DM8PR11MB5717.namprd11.prod.outlook.com (2603:10b6:8:30::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4587.18; Fri, 8 Oct 2021 07:32:31 +0000
Received: from DM4PR11MB5310.namprd11.prod.outlook.com
 ([fe80::70bb:93b4:42d0:4fb8]) by DM4PR11MB5310.namprd11.prod.outlook.com
 ([fe80::70bb:93b4:42d0:4fb8%7]) with mapi id 15.20.4587.022; Fri, 8 Oct 2021
 07:32:31 +0000
From: Liwei Song <liwei.song@windriver.com>
To: meta-security <yocto@lists.yoctoproject.org>,
        ArminKuster <akuster808@gmail.com>
Cc: liwei.song@windriver.com
Subject: [meta-security][PATCH] recipes-security/chipsec: platform security
 assessment framework
Date: Fri,  8 Oct 2021 15:32:17 +0800
Message-Id: <20211008073217.2605-1-liwei.song@windriver.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: HK2PR02CA0195.apcprd02.prod.outlook.com
 (2603:1096:201:21::31) To DM4PR11MB5310.namprd11.prod.outlook.com
 (2603:10b6:5:391::19)
MIME-Version: 1.0
Received: from pek-lpggp3.wrs.com (60.247.85.82) by
 HK2PR02CA0195.apcprd02.prod.outlook.com (2603:1096:201:21::31) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.21 via Frontend
 Transport; Fri, 8 Oct 2021 07:32:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bac7beae-7142-4a4e-c47b-08d98a2dc96a
X-MS-TrafficTypeDiagnostic: DM8PR11MB5717:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM8PR11MB5717000F728DDCD5E7E5436B9EB29@DM8PR11MB5717.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dTWbUhYOXFM3TFN+m/7c7sJHkmhqtmqMnDFjH/IjC8EyXsB3XujgxVVcz3N8eg+6SQQ22Eo2j/2XDk+0IX7oTQ2QkJ7H7ff3MSoKfGf/T3q5WfKxoTQNH/Jai6cNFYbcbwZuzHaaSfl4dvQ+32U7p4ZPR3ONZjW5ZKKGLQpIWtjUfwMHDy07Ub9+O4t3liszTMt+KoDLvLFuxlGNO0S/7byi2yr0w478k7jj+sk92NgldSC8UMOz2UmVjBUwf1vdnEaQnwhLXNHgkY9KrldTc5GJxRJn3I9vxTo56yChdpUkBzH9eAQv7FM9J/y6KeGCtN2CIGcmkxAO3V6Car/vWNARzrVqQ7MD9PMnW3YCnSdtDchcaskrZlTg7M1e8KTLA+IZaXaLuDqA/nb46ygV8GaU8Nmt5ABM8UbgJmkJuZt1gvVj1+pMOHRcSsT3hd7B1efni9aPeNE2W3OVMdRb2G32PCJUV4G/QhzO1C7+AeJINeIn/zJCbl2dGgfYPKX1bwc85tALTHQsVxi5K3QvxUe6wYYKI6AIBb4bfvB1ib5PaiRoTnprFyULQBfJ2sys9b2M9FeGV/gM3Cyn/Sl000XuaCYgcepejhQpcy5kbgIfmxUvAhe7NrXuoKSjh37cLzYFSy+BG2n7jtTHH7o3Cc7MJlWM8UE/XDuEguBZc36wfEEVSIRuXNZWFypnH6OUbWW5+kkIZhLzxLH1aAtxYA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR11MB5310.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6506007)(44832011)(86362001)(26005)(8936002)(2616005)(956004)(66946007)(316002)(110136005)(66556008)(66476007)(15650500001)(6666004)(6486002)(508600001)(6512007)(52116002)(107886003)(1076003)(8676002)(83380400001)(36756003)(38100700002)(186003)(5660300002)(38350700002)(2906002)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?QtrkSN2LjjTwHrkYVbWB6rcmxNsDLetJa0qcA4SDYGszaM0GHDgZ3nmcfWcW?=
 =?us-ascii?Q?SCTPODMBZj7dlOsKDDV2i4ZlHW46lTThHmGymqyiJkHz7C5RjS/8hl1FDQ9f?=
 =?us-ascii?Q?il+EZ26qMryzmf2Cu6vaqtaUW9RUGxOKShR0/zSTH996t0EjOxZLAJg+EGsI?=
 =?us-ascii?Q?yO6/qd2km3b+E+PX8KS3Eu/1ZSE2NkitKi+g1yJV0StSrRQ2+krUeuN/6coh?=
 =?us-ascii?Q?MmeDIZQlsRpdPJfy/p2biTyq5qGtrQwKimwyljHatmx/kI1poYCf2Z6uzswd?=
 =?us-ascii?Q?9W/+OKc4dCNeKtyj5Dy6wHr0jYaXyVbjDMdoi6kTLGDwezwLVeGWEFvVKiCQ?=
 =?us-ascii?Q?2QCMHfPpQMN0v1VCMKD0+LhqrfN7/ihuJ9IdneN+eTkzLt/jvTzMCA9lWGJM?=
 =?us-ascii?Q?HLT+opongaSzWjCrwaC8LAWJV+ibwl8Ov+8I5FzwLPfHb8rHF6SCpjbPUZA9?=
 =?us-ascii?Q?MM0zCc3i2Iq6QiUYcc+8RSCq/EBlxe8IIYH0v76jQyC3Y2AJd/IqTSo5+mdF?=
 =?us-ascii?Q?ME77kRoLBFHm/Hor32tVQcBjN8IGVkTSZei3MHiDMa1HsleI40ARXgb0rhR0?=
 =?us-ascii?Q?lK/t9YPskj4MaNzeY1RQsJ6bokKVTo6C8j9TtILF923G5v63obRi3FFJHG0F?=
 =?us-ascii?Q?YT+9kgXwQioDjtG0hJFcMO/Y9v0F5C0LGiab6i44vM5iAp0WEVA40T3G1QNV?=
 =?us-ascii?Q?WfokDZSx5Rw+unEpCfbLuCE0fwEYHvtQO4tMcQQnF6baxUbch+ozF6TdLQkv?=
 =?us-ascii?Q?c6pNCQaW209pUkizVIzjuW1lMih0drJ2gzZl7ffRltNkCbPTIQf8J54AGaNa?=
 =?us-ascii?Q?Nm+8iU5XN3UFz6A8puNuhg1L5hbZb50I02eAChFPX9yU1cpv3wCasG+5Okfu?=
 =?us-ascii?Q?jrDxUzdaQVHYzg3EdiUaS47vXqbzEnKMPIbRXHrQYfuK6R+HisYurCxNowyl?=
 =?us-ascii?Q?rJ4m01WEoUonp3Ct+BiO3xlscU8qEue1PSxVGJefVntfPfQ2W7D3wpSUYVac?=
 =?us-ascii?Q?7WzkqVfjSRqvDWYv5Bm+E1FC9kdcT42GFPhSrPwWj+2XTOaGsD6H/mbydtcj?=
 =?us-ascii?Q?OUzP6sASsluap3igNPicpvP9EmUE7Zr/1WQ3Krf/OUOd9fc/OZlEi3Efhxzs?=
 =?us-ascii?Q?yMFU776Ch3WUf84iMxb9Mog0vbyby3galZqJte69V7yuj2OQjt/dteZW5R7/?=
 =?us-ascii?Q?D/xJqlRgFiwQnZfCIesOUvzROAwRyMvntfhRJXQN5WYNp15SL1iO7c4PGGti?=
 =?us-ascii?Q?V16cs7efJnYb6OSt91E8iYr9YS1hgHdtxyCBj2ctgIrJPuojjxwo1QZiWuBF?=
 =?us-ascii?Q?q/0h+1cRvpz97xcldxtFXyaL?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 bac7beae-7142-4a4e-c47b-08d98a2dc96a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5310.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2021 07:32:30.8269
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 mMTMKMKCoTYfFFXxq7O/Jaco0sWGbaRUyW44vSntFFfT/9v/qVr3j3qKQlx9a0r1JvSuW0AC4h6J3BpDUfgZ8NF/FdzoX4ZZ6Q8fDZ+aDws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5717
X-Proofpoint-GUID: rrxsD5-sMv9OkfggVe3MSj4w8aX6Y9pe
X-Proofpoint-ORIG-GUID: rrxsD5-sMv9OkfggVe3MSj4w8aX6Y9pe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-08_02,2021-10-07_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 lowpriorityscore=0 spamscore=0 suspectscore=0 adultscore=0 clxscore=1011
 malwarescore=0 mlxlogscore=999 bulkscore=0 impostorscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110080044
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 07:32:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54991

Add chipsec, tools to dump and analyzing hardware, system firmware
components, like PCH register, ioport or iomem configuration space.

Signed-off-by: Liwei Song <liwei.song@windriver.com>
---
 recipes-security/chipsec/chipsec_git.bb | 35 +++++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 recipes-security/chipsec/chipsec_git.bb

diff --git a/recipes-security/chipsec/chipsec_git.bb b/recipes-security/chipsec/chipsec_git.bb
new file mode 100644
index 000000000000..3339dc142107
--- /dev/null
+++ b/recipes-security/chipsec/chipsec_git.bb
@@ -0,0 +1,35 @@
+SUMMARY = "CHIPSEC: Platform Security Assessment Framework"
+
+DESCRIPTION = "CHIPSEC is a framework for analyzing the security \
+               of PC platforms including hardware, system firmware \
+               (BIOS/UEFI), and platform components."
+
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=bc2d1f9b427be5fb63f6af9da56f7c5d"
+
+SRC_URI = "git://github.com/chipsec/chipsec.git;branch=master \
+          "
+
+SRCREV = "b2a61684826dc8b9f622a844a40efea579cd7e7d"
+
+COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
+
+S = "${WORKDIR}/git"
+EXTRA_OEMAKE = "CC='${CC}' LDFLAGS='${LDFLAGS}' CFLAGS='${CFLAGS}'"
+
+DEPENDS = "virtual/kernel nasm-native python3-setuptools-native"
+RDEPENDS:${PN} += "python3 python3-modules"
+
+inherit module distutils3
+
+do_compile:append() {
+	cd ${S}/drivers/linux
+	oe_runmake  KSRC=${STAGING_KERNEL_BUILDDIR}
+}
+
+do_install:append() {
+	install -m 0644 ${S}/drivers/linux/chipsec.ko ${D}${PYTHON_SITEPACKAGES_DIR}/chipsec/helper/linux
+}
+
+FILES:${PN} += "${exec_prefix} \
+"
-- 
2.17.1


