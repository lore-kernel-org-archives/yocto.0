Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2503.1581986832940134221
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 16:47:13 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@nio365.onmicrosoft.com header.s=selector2-nio365-onmicrosoft-com header.b=HWQMLlIs;
 spf=softfail (domain: ni.com, ip: 140.211.169.56, mailfrom: prvs=5316563c24=alex.stewart@ni.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B72AE01486; Mon, 17 Feb 2020 16:47:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
X-Greylist: delayed 2938 seconds by postgrey-1.32 at yocto-www; Mon, 17 Feb 2020 16:47:11 PST
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA7FEE00C82
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 16:47:11 -0800 (PST)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01HNt0wQ015104;
	Mon, 17 Feb 2020 17:58:11 -0600
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-00010702.pphosted.com with ESMTP id 2y6dj7p625-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 17 Feb 2020 17:58:11 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k90n9EMSxcJDzH4g01AIfreJGxGGHk/r9M3BrsSPmcdHmtwGgeZT32ezwAFls1cdszwx+KBaP+vmLEs3M+dG80nJw/Y7gywDLkdRwKlEACihgQzKPov2Rh6q7yx0hYe9eJ1Z1V2+EFsjNgs/tyO7zQ+GN4BQ+qrU01Z9vwt0cBIvNsggvzKEMF4aNhClxj3iPTT7i+x9Ruf8lmrYMWJ80rvVCEtQGAvn70l4vBX+Rd/QnUflH0uIiJgEqnO9Yt1A85/2znpSv4YhV80sL8CIuznWXoGkFa28jvQgT05YI+0zdFOBOF99pKKXWVNVEI+9I3lyi1bSRLw8XCYJB/Ul/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zbmtE18HA+TCoXWIHJknPmRTjdB1CKNVt7ZcHY44/j8=;
 b=f5Dhh06Eyvbm5BPHKWm4QLPa2Oxo5Q/xt1Oj9am341UQIlpSGbRD8A6udSj2hvSDtXegynerpxuHmuL5uQrdEV79iKvriXgHUBR/ht3mpWXJ+1D4lgmD2HQ4qI72OEeIuc5f6Vlk5B+GSBwz3akqkv8ueIKAo0Sv2QOjsRJtT+MlW74kcgdapHGCZdERxLQFkoXzNh2bvMK+ET7jFby2pfB0/4OigLpU/yN29CGQZfEi0yAmDSONyd7gcH2rM1jjhT8WOzTL6ydXCpdS3ToP4fmb4siT5yqz/g5xQLLZYuiFimDIzm0Q6CilLtOGS8h/S0MT1b+zGUh8Iqw8Vn+8gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zbmtE18HA+TCoXWIHJknPmRTjdB1CKNVt7ZcHY44/j8=;
 b=HWQMLlIskLPROPTMwqt1//j1lyETdbgC1gpBRRLBn1buNoO2qjvXydJdHhzcXdjmAhQaIuIw3/CTiPLplozuDe6Brm1dCHLTAs1t3rQni+XnpUpi9DT97P49sRGLo+5nDUEUbv8i7J42L6sOnrFlmMPBhnq89nt1NjjgQxfeNHg=
Received: from DM5PR04MB1068.namprd04.prod.outlook.com (10.174.242.30) by
 DM5PR04MB0893.namprd04.prod.outlook.com (10.174.240.34) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.31; Mon, 17 Feb 2020 23:58:09 +0000
Received: from DM5PR04MB1068.namprd04.prod.outlook.com
 ([fe80::74b1:8067:305b:993]) by DM5PR04MB1068.namprd04.prod.outlook.com
 ([fe80::74b1:8067:305b:993%2]) with mapi id 15.20.2729.032; Mon, 17 Feb 2020
 23:58:09 +0000
From: "Alex Stewart" <alex.stewart@ni.com>
To: opkg-devel@googlegroups.com, yocto@yoctoproject.org
Cc: Alex Stewart <alex.stewart@ni.com>
Subject: [opkg-utils PATCH] Makefile: add opkg-feed to UTILS
Date: Mon, 17 Feb 2020 17:57:34 -0600
Message-Id: <20200217235734.1012734-1-alex.stewart@ni.com>
X-Mailer: git-send-email 2.25.0
X-ClientProxiedBy: SN6PR05CA0031.namprd05.prod.outlook.com
 (2603:10b6:805:de::44) To DM5PR04MB1068.namprd04.prod.outlook.com
 (2603:10b6:4:44::30)
MIME-Version: 1.0
Received: from rtosams.amer.corp.natinst.com (130.164.62.193) by SN6PR05CA0031.namprd05.prod.outlook.com (2603:10b6:805:de::44) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.6 via Frontend Transport; Mon, 17 Feb 2020 23:58:08 +0000
X-Mailer: git-send-email 2.25.0
X-Originating-IP: [130.164.62.193]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d290fe47-82c9-45ef-26bb-08d7b4053d18
X-MS-TrafficTypeDiagnostic: DM5PR04MB0893:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR04MB0893A6AAA93BABD41CAF2649FE160@DM5PR04MB0893.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2089;
X-Forefront-PRVS: 0316567485
X-Forefront-Antispam-Report: 
	SFV:NSPM;SFS:(10019020)(376002)(39860400002)(396003)(136003)(346002)(366004)(189003)(199004)(316002)(66946007)(1076003)(66556008)(52116002)(4744005)(4326008)(6666004)(6506007)(26005)(66476007)(16526019)(186003)(36756003)(44832011)(5660300002)(6512007)(86362001)(81156014)(81166006)(8676002)(2906002)(478600001)(956004)(6486002)(8936002)(2616005);DIR:OUT;SFP:1102;SCL:1;SRVR:DM5PR04MB0893;H:DM5PR04MB1068.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: ni.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZM373cpAIlTv5xiccTTH7SLY5sqoDfb0ajaQCZGotVJ28QAACmlR6aNE1auTxfsNuNg49hEX4h29SgGi1/rNTWmUj4BCsZjkIfVoi+t24k/8BH+Wc6ELeBIyaoUj2zmHY1QDxY3QcXfhIt/79TwYui+sJnGGiYl+GkZWKXlinaqTvfR6ErVKwWSh1vqqnhalRiE4PiMfLbvHNYpWzC+U3BKbfvF9Q3bNL8uO1iroEUXxOpthxMB8vcqM2YArTUAXvHnO+oQMYF04vtepWdQsloyV+9IBlHeqMPXF6jBxYMR4mV8YNc+6hlpLOZW8ixJYsYAi2u2IxHYjE+pap7X2oO/3/4Y4IBN60PWMF7ikQmYEaukzM6A7kdkMxz0BbrCpVI25OA81GA2gMIX8rWAnYQRGpNXw/IeOwzX3TMvgKr3dZeTJaXuMdEndvi6/N7CH
X-MS-Exchange-AntiSpam-MessageData: 
	hODBrYO5gqgrcyUA0QoRttP9WO8tZJxrwwShwB01plsMDsAGqTxBsZXuEDnL08bZNpTu4g+CBLunfpghmWkJW/6EglTU6agwJ+ieM+lcKNWMCDweyJcWE9SfS5Ufi7zi9W0XQwmp4CccDidByXtQOQ==
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d290fe47-82c9-45ef-26bb-08d7b4053d18
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 23:58:09.0942
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lprIhyT/r14YvU9NxuHM/NXw0CB3quM7w05PmcSnr5d1Te5J5HJbVb2//6z+vmfxrUsCHmND0/DRZbHWZTUX2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR04MB0893
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-17_14:2020-02-17,2020-02-17 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy score=30
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 clxscore=1011
 priorityscore=1501 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 bulkscore=0 impostorscore=0 spamscore=0 classifier=spam adjust=30
 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002170197
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

* Add the opkg-feed script to UTILS so that it is installed with a `make
  install`.

* Clean up the UTILS variable declaration to be a little more diffable.

Signed-off-by: Alex Stewart <alex.stewart@ni.com>
---
 Makefile | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 817a8c1..4049654 100644
--- a/Makefile
+++ b/Makefile
@@ -1,6 +1,17 @@
-UTILS =3D opkg-build opkg-unbuild opkg-make-index opkg.py opkg-list-fiel=
ds \
-	arfile.py opkg-buildpackage opkg-diff opkg-extract-file opkg-show-deps =
\
-	opkg-compare-indexes update-alternatives
+UTILS =3D \
+	arfile.py \
+	opkg-build \
+	opkg-buildpackage \
+	opkg-compare-indexes \
+	opkg-diff \
+	opkg-extract-file \
+	opkg-feed \
+	opkg-list-fields \
+	opkg-make-index \
+	opkg-show-deps \
+	opkg-unbuild \
+	opkg.py \
+	update-alternatives
=20
 MANPAGES =3D opkg-build.1
=20
--=20
2.25.0

