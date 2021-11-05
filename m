Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F88C433EF
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 06:11:59 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.1991.1636092718939122355
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Nov 2021 23:11:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=qxLIennd;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=69438ba20e=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1A567Ls8023066;
	Fri, 5 Nov 2021 06:11:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=kKqU77vd5ql+W1LZ8hYUAh+PybXye/HlWJucfKAS9Ac=;
 b=qxLIenndANFzjSoPehWZDpupVUNN2HG3oF8tXzPIiOmyV9vEPL/Zt8koOA+SF3K484+P
 glQF0koRVWg7vpkR8e5DP6c+cfqFNU7W8r9cJVkhPJtQVqoS14DAw5SjXtEbc6WIX1O3
 u/OCSWauVaqcrlV3dGlDab+VnzwWyPogMKCA8Gpa/Ozc+pHqZh3czKsihqqB0sH/4Yao
 J2wHNGgCgOjCY7P6eQOW3f0GxlmBG1ck54Rsq707aGTJ7GTZnuEgxwtI6gVtfJTnNgK/
 C7xdzpjX/p6xeHwP+yoljvh/GMA8BLFQ/ID3PKPQEHuR7xpB25yIM0lZ8pI4fJWjucIr uA==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3c4t3s0621-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Nov 2021 06:11:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F3FT6pywyBXgNjtO4iErAkGff3r5pENtQSGOFtgtzCdPdJbWDgS0pqiqdykLvS4dNV8CVzrHIBpddG4IyyBBIRkjclrkEyEyoFm5Vp8OrSokKTXYDQRm5VdNcoGTCdnvYChreJF1VzTxjiR9/GG2GQQvsTRolS2GPEWenpauc4M9G3Pu52qd6TPwG40uJVpOgQCmOMvPVbpTLCqvJ/q5j+2sPjT56N3gQYEgaTsb98su1p8u1upRlLUEB52j0tgPc6cMyZhNP9UBS9+EgKqq4o9DoCoj8h0u1T6tmcVBSNigrgqCHqcwA06We5RMeXlsmhWTSni0fpkx2Q4go0sOVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kKqU77vd5ql+W1LZ8hYUAh+PybXye/HlWJucfKAS9Ac=;
 b=FlKZx/aU84Y9RMe+nmYmhyTaDAXh1FROYeMmXw52x1oN00Q6lfMcx2hQaCrDRZ8iw9HMYNgmIE7hZuHVXd/LTOT65YpbytSWojf7nmmSSLMDt6izBmO/6nRzkLC3Gx2W8CX8UywunjTjWrKiAp6twpNkEkqeUlytKPlVUdJZyNxc6CnuLiBQmtpL2NgzzxSTM9M+s0XzLhdU23JB9hsZuVp8LHR7ll9kDrEDvhWYzjFj0QXuacgahttbrd4BTSb/DXzaPeV/CYQMA1csSh0t/H3+FEXmAFID1rnFA7XhNemZIfXtLH6bwEnVbQn4mu6N+SRohDr8g86FdcLEmJbwBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4947.namprd11.prod.outlook.com (2603:10b6:303:99::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Fri, 5 Nov
 2021 06:11:56 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4669.013; Fri, 5 Nov 2021
 06:11:56 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 2/2] bind: remove volatile file
Date: Fri,  5 Nov 2021 14:11:44 +0800
Message-Id: <20211105061144.562179-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211105061144.562179-1-yi.zhao@windriver.com>
References: <20211105061144.562179-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR0401CA0010.apcprd04.prod.outlook.com
 (2603:1096:202:2::20) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK2PR0401CA0010.apcprd04.prod.outlook.com (2603:1096:202:2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11 via Frontend
 Transport; Fri, 5 Nov 2021 06:11:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 72d4ddcf-59fd-4324-1f45-08d9a0232b79
X-MS-TrafficTypeDiagnostic: CO1PR11MB4947:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB49478CEFE0B8ECADF10ECDC9F98E9@CO1PR11MB4947.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:519;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	n+Q5J2vSuvtTdLjp8vNc4rFcJpnmC3MIJ5deJW0pMYzOHg4jhNvkE857YQDKYdxna8z0hxnKqc1tsREA7zbZT4Y7CllsEc+v0ysMjApegVRrOcGRtfrwU0jkcmfLFkGFH/VgosDjML+onGz3LKpNqfPW+WHkRCgnler5dcezJyfzRCCdLurhuR6rjAHYD/UpWGmyVw1XcIv9EzpwxbMG0PrV5IZw4DMfh6D+xa2I2xmoJZP9h7BGjRWSVZPuhy/cTFOp40rRb2jJkI1gh/Jfn2rjHY6NPvZUgp5/zVuS/gd6S+At98VxUIr4VY7uKJ/VaklfxAFtn+kSM+AIE/7ysX9uWunD/3o6Rj51SEfCvG4tMm+adC8Z8b+2MaaBzVDNDfYm0W4lxod0EF7u/8WVL6EQdtVMhlwweuCuoa5xhHnWElLGxEEwrAyOaiHUFagIo7gPlsaqEdMwjoKfcLJmhsnG58DflFIEYu1pM1o/4iqEuKcFcSaRq+M0z6+1gYH2dNUawSOQ7RVn24KK0+HwygolWg0V5hgmYRAWoUBnP9Xe1DSLeTD2MmkHBcY22gm9mHcJz4HlsJUEcKpqn9sndCOe0DlbOv4HmwnKyvUUwp7wSltN31YeWEBY05fqkPlPWanXWWf7SD3yFz2n6Hx4i2PWO/QliiKk5ATlyyrgddiKDrcnJdigfO6ulKCqhZ8NgF9QgQ/cXbAwe7mAX+zhtA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(956004)(44832011)(66556008)(86362001)(66476007)(26005)(186003)(8936002)(316002)(8676002)(2616005)(1076003)(83380400001)(36756003)(38100700002)(38350700002)(508600001)(2906002)(6666004)(66946007)(52116002)(6512007)(6506007)(5660300002)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ybcQAsm9sfl4jNrTWo9sA0I5VAC1sIOBQ+6BWLDVOe6EnLvriRvjb9MKIDxi?=
 =?us-ascii?Q?l//rYaRVUDUIsneIVNeSMuGwqA1qEErwbqEgcPj6bnw5a17t5xpRf4hs3grr?=
 =?us-ascii?Q?fHKZ3OJp/31cNOFhpffUx4CrJAJ2H9L0NGHz6WNvxtgHqe96U9O1oqmcmBIG?=
 =?us-ascii?Q?MhtU5EMmYuzGE2dIjPKiYmxcnpwV/0Mju4BhiRCxupeoVhJWdUl29UK8iZZW?=
 =?us-ascii?Q?ws2/3t+sJNeJNoHSJdFv9pTGlSKsaOEvEA+yA9DWm1GADBf+Mz097WAY/DoU?=
 =?us-ascii?Q?ptprj71wktUGPvFYGjJDzNfOz7IV/F0TwZlqk6rwjjPmbL8gmPjvXfkeyaSZ?=
 =?us-ascii?Q?IrBmY3F6lzRO+icNEioF6YcKni76Gedrvsf+opAUzWqy2kIhnW76I32jgPE5?=
 =?us-ascii?Q?Lhk0phzzrDeXUlFywka6KXKVu/g3Q59fwOiAu8Pa3CllQOgEwvl7lzQFj2Ss?=
 =?us-ascii?Q?q7WRM0qeMM5fN/5Lf/bEMLXz+JxCA4Q4LrBGU/H2B1TPbZ+j1+Mu61I+BSer?=
 =?us-ascii?Q?g1L8qSz+GVbWtp2lpu415zOgTmyEu293La1LFw21oKm/MywgwwiHMVa7PPFm?=
 =?us-ascii?Q?pVUpJ2EYzb8UUluTtV3a/Nd4UVmSN0j7U1oeZVVuRY34m5mk8OMeS1n/lsL7?=
 =?us-ascii?Q?qfDlJ+1AaDcwUeGkp6dQFkmqk9Qv8ezKLfI4uYHPi/ZkA86TQr+vddbxauZe?=
 =?us-ascii?Q?iHr+zad2hx7LIKJ6q04mSn4pOk4P5f/VHq57BoNhoYD4QnkOxCY0kbdXBP9z?=
 =?us-ascii?Q?OOdWGbIdyROSB4ipqbee7a0pbemD9Y8f9EF0RLHutQW28ImPwcjxcA9CuhkE?=
 =?us-ascii?Q?jxTnWAyjDZUBiahwedXPvlDvrJQJHjOu/LfAo2SVoAG29C3CxTpbd/sa+8xi?=
 =?us-ascii?Q?vqQN9XvUhP7F9gZt958FLr4f9S6Q5JWDgN+nUx2dNFe5GQL2bd1bKKy7zGb6?=
 =?us-ascii?Q?QX0OQ3RS58aONzkskK0VNVC2xmdswjwJAQ0IUybVjNFneMkWbuyTbYHA4WAy?=
 =?us-ascii?Q?YysfaJR7BOsHQA/NGm7Vtm5TrXiZn5cRM1cFZ8DTWBP3ALZe7eyodvrECdM0?=
 =?us-ascii?Q?8UYe/0ABTEpd6Kx/UJmt/RADx17CzUXSdCvw0NYpP+RpaX2VA9MUJFVCX2DA?=
 =?us-ascii?Q?Wy/sTceQTnbicEzuv7TiQe91DWZYTaVjPTcglafudSL6qmdIdQ+HI8zzO+/N?=
 =?us-ascii?Q?vCY0DXVB91Ae9XVhKFs8aY+88o757TyNyXfRpLforLxgh6q6jLwLtGlmUJui?=
 =?us-ascii?Q?UFrIDlJfq/iv8f0iCTBTzwGJJLRQc6dgSq5A0t0ZZURa3zGphl+vkYx5J9lU?=
 =?us-ascii?Q?B0rP6KxZxDuNnPUagRRa1+vPv2zVjd9rc+bdZFcn87tUi4w7l4KmkRi0v7Tc?=
 =?us-ascii?Q?vyitYjm4DeD6hrwgttZzXD/1TQH24nVr0tFBu4lyoganC2bU8W19qQS7UCwL?=
 =?us-ascii?Q?haciylVH1drDW46QykTjsgX8pEFF0BDwOrUVDwMLex4YyffwagUpqUsadicE?=
 =?us-ascii?Q?Jeuf/hbpqlbhEVSRNKBlz+CETYHPVXSeETeH8me4Mzgm1ybrj3tdOWmTVnNG?=
 =?us-ascii?Q?JsXyO65xam0jDOjDigSNUHJXgkWBppRJOJsTJiwK2J7g+mTBa0pC0VXhtCiZ?=
 =?us-ascii?Q?LCkUcHaPzmHC2VWXUTg71Fw=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 72d4ddcf-59fd-4324-1f45-08d9a0232b79
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2021 06:11:56.5225
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 3RpxfakCyi9AW5kDX0yn1Wf6MZm2yZ2fFHr20CPmafQl84x7PZVLQ2Fc/hvIR9byaSLGRIURsYMcj0eGgnZCzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4947
X-Proofpoint-ORIG-GUID: 9YtnlB_44uxrSISAKGiLJ4ROhy4DJVOi
X-Proofpoint-GUID: 9YtnlB_44uxrSISAKGiLJ4ROhy4DJVOi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-05_01,2021-11-03_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=764 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111050033
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 06:11:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55244

This file is not needed anymore as bind daemon will create them by
itself.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-connectivity/bind/bind_selinux.inc        | 7 -------
 recipes-connectivity/bind/files/volatiles.04_bind | 4 ----
 2 files changed, 11 deletions(-)
 delete mode 100644 recipes-connectivity/bind/files/volatiles.04_bind

diff --git a/recipes-connectivity/bind/bind_selinux.inc b/recipes-connectivity/bind/bind_selinux.inc
index aa11005..948a377 100644
--- a/recipes-connectivity/bind/bind_selinux.inc
+++ b/recipes-connectivity/bind/bind_selinux.inc
@@ -1,11 +1,4 @@
-FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
-
-SRC_URI += "file://volatiles.04_bind"
-
 do_install:append() {
-	install -d ${D}${sysconfdir}/default/volatiles
-	install -m 0644 ${WORKDIR}/volatiles.04_bind ${D}${sysconfdir}/default/volatiles/04_bind
-
 	sed -i '/^\s*\/usr\/sbin\/rndc-confgen/a\
 	    [ -x /sbin/restorecon ] && /sbin/restorecon -F /etc/bind/rndc.key' ${D}${sysconfdir}/init.d/bind
 }
diff --git a/recipes-connectivity/bind/files/volatiles.04_bind b/recipes-connectivity/bind/files/volatiles.04_bind
deleted file mode 100644
index c6a8151..0000000
--- a/recipes-connectivity/bind/files/volatiles.04_bind
+++ /dev/null
@@ -1,4 +0,0 @@
-# <type> <owner> <group> <mode> <path> <linksource>
-d root root 0755 /var/run/named none
-d root root 0755 /var/run/bind/run none
-d root root 0755 /var/cache/bind none
-- 
2.25.1


