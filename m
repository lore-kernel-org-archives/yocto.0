Received: from NAM04-CO1-obe.outbound.protection.outlook.com (NAM04-CO1-obe.outbound.protection.outlook.com [40.107.69.43])
 by mx.groups.io with SMTP id smtpd.web11.8827.1619074586450936157
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 23:56:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ocFPMelL;
 spf=pass (domain: windriver.com, ip: 40.107.69.43, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=giPxOXKs0sfS+DhD2o61YqfThptvCQGuWbHbRUg4xVOP5DPzHHNsLcfnp8PGa3u3du2GQSKscCQ01SiXpDxcp5rJxDFoLPU8uJFBbKSw0KZvaSPNsKyN0JOOyncF0tVNjif6jvLNysRtxSoK/zywOqMeGqzjmAzG+ZmjvZHOOnd/wV/c4t3fQbYFvLPn+ZnH1PKe3gkILzw7WOT7rbVMcu+hkvRMS0QmkUOVSn5OiWcFGVMWKGYezNUE7cs8XgfZ/4INAClqQmScKeUST+xWSt0gxJtB0Tgnbc0vgG6aIftTNprDlg9KZHnmZTTHkpn1b/4NVAYBG/Kwgnt67MAezg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=id7WUemuZm93qhhUbp/uacjJ88WEHOVFStScuvn9xeU=;
 b=nKbfLw4KGvK3wqNN+bnA+/ASN2pZfIXtVDVoyCtkOpAxXlspi6LdkG+wLS41GiHqRdKiMbsnjdhjGjjXgaLJAbXyE48qHBjLLAZsfZJPMwAgvHc2uAV79YOp5k9XTEcBO7jMbeuEK1XDQBlkex12FCOpCwgf5u5KHXDfpSD4HeFUxB/YUCJmIi+WNCwRhkVsv+uI612hQBZkyuRr2VT37fJXXa9Fw9T5iexOKLq89GpLDalsLLF8cBBtwyqImkNp6HihFBDkgmvm3i00Rp/eE1GhY73ho93ZELwfnfIdx6nUTddgy6Q/XwuyrBTQYh5RUWplQ67+IRrMiPymL8mKiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=id7WUemuZm93qhhUbp/uacjJ88WEHOVFStScuvn9xeU=;
 b=ocFPMelLZNDL3MKdccjAfCYVoESdDP5GTP9muJkY3ysHhGmwtxdY+5eiw7f22o46Nm8MU80euzmvKDw/sxNv3dAxK5ezVLLF/YGZ2HFbqPYneB+tAMfmcVzpGxdwDVZ5CJ7y6Kh6kmo3BlY9bW1sRm0pbWebPl4/WYAEmt7DmqA=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Thu, 22 Apr
 2021 06:56:25 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::55fe:763e:6961:7bbf%4]) with mapi id 15.20.4065.021; Thu, 22 Apr 2021
 06:56:25 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	jason.wessel@windriver.com,
	mark.hatle@kernel.crashing.org
Subject: [meta-openssl102-fips][PATCH 2/6] openssh: refresh patches to 8.4p1
Date: Thu, 22 Apr 2021 14:56:05 +0800
Message-ID: <20210422065609.143415-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210422065609.143415-1-yi.zhao@windriver.com>
References: <20210422065609.143415-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BY3PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:a03:255::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BY3PR10CA0023.namprd10.prod.outlook.com (2603:10b6:a03:255::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Thu, 22 Apr 2021 06:56:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ba43bf52-80c7-44bd-3f50-08d9055bbe21
X-MS-TrafficTypeDiagnostic: MWHPR11MB1789:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1789F32FF1DB2DFB36657966F9469@MWHPR11MB1789.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:773;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	CQCpcYqg609fRgQTSNkDi1dMDLVvYHNPZydcp/FuMPCinuXp1gZEFl529ZJfOmuuzTVMxkM+AZQ0jerrNovPVXAkJgxGz5J9jDMBelkS9Q7lr8vF3wpbYbbmeiD+2s7resaqLBRQc9rEJIU2O4+6EGAuvPNx2sX6WjtJP2CTRlX/WR5khqu5cUWq5p0ye9LVWzRFySBUKMY4UZPEiuP2bxg9evvKxiHY+V6Z5o66z2c6TesdQHzvHXbH5F/p6u62ApTgnUdnndlBfN5hTuxCWhpwho5QTD4/STF22MidOLKlZWUZkZsbr9jLte+FwYjyY49qwFZjBkHU21qMTXo0AuRw9MWkm6iZwS+kq+BT55u84mbx1kVEE3UvBw/tX517JRLvCKANSMQIjGNDHlOkoXOX798wejiLkewrYOQs59L3+JDOwMmhbWlvr7TD617aTGEBOe7NW/S1cQGFy8EeJExit5cKS7AKfgIGmHCbgB1V5O6uYWIvAAfU9C0uOGh2XTlXrtbIhWJsXZ/uZHFKMQPywrXi6G3+CN+HJMRSAsWUzAVFNUJ7XpJ8OuBNJLJbyTF0a3D2o/esraHjL07p3jqBIxsMFvvhtO7UF6fcFEMObPAXSRm+Tt7ufoIZPaq1JTgVOnlTrBIkBdLTOwpz031DBpsDPnHZg1ggNeGE8kGJnlU8WCyZAdAoz5qFta373SE3i8k7zs/mzp2ELYrOtRxpPOfBDehVTNROytKBiHA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(366004)(39850400004)(346002)(376002)(86362001)(26005)(38100700002)(6512007)(66556008)(5660300002)(2906002)(66476007)(186003)(6666004)(38350700002)(83380400001)(316002)(52116002)(956004)(966005)(36756003)(6506007)(53546011)(8676002)(30864003)(478600001)(66946007)(2616005)(8936002)(44832011)(16526019)(1076003)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?F7pNIgBTKy4yG/PGppHuYPXTAP3yU++3mmEAZ91A40hHgm9MiVs1AcF5nvnx?=
 =?us-ascii?Q?/9NIctKEIVyECyYW799NqppFWSQzbvuJv1NRBof8Fwe2EB+58gQpWyr/S4jt?=
 =?us-ascii?Q?WJzHCGeoAejx5nf2wzaaJj2XyOIguaiWG71E1cRDOQMo/HgmDsvAKwONDha4?=
 =?us-ascii?Q?L2XPCIPDX4bvhj47lXP7hl0O+7s+7rzL75MHapZedjJXD4LyaXafEvA6aPuX?=
 =?us-ascii?Q?VJz4VMG90AoagC4NLIGpcFicBblU6RpZ9kcAUvqP1RNGUKp46SfZxPTR7umR?=
 =?us-ascii?Q?n2/KoQMM7ug50ednAS58cY7qJAXAyjj+QEIdef56+REHTQ0EuTIbWySvpjuh?=
 =?us-ascii?Q?Rt8PmfFSmHq8SRewZIdwYv0c6OVIiI+VhpjdOvEE0lcmbOVGuUpxoGBRhyMv?=
 =?us-ascii?Q?4vufpZ14W/WVx5QdNoluvR+OA0LSswG46JC2L3LKp/bJj1eJ7hVnG52A3Ijs?=
 =?us-ascii?Q?9AD8bYAQ8RulptHjkz7sVmqDzurnLAWxF33//Lu9+MMR3O7vLQtXj3jtyE0A?=
 =?us-ascii?Q?z6kfyZpc0gRdYJscT/KLW1ku54iRrEsgTtg+GuKhAs5dNLd1+30G9d44EgIL?=
 =?us-ascii?Q?yK9FNZUlESkYZ48AEsQeAsh+UsJ0I3LDrmV89gDybxHx+6oM2a+724yjKdWi?=
 =?us-ascii?Q?cd1pmxAXh/12FcjhNTMCcGu4lSCRzAUVVrbh8aMuMYIXt2gTlkuV9Vb40tZy?=
 =?us-ascii?Q?sPtYSP4MYsuudu0XCNFrYeVGBvHXWihIpSkIeLKNXI4MTk+khPrFFG+LnvKi?=
 =?us-ascii?Q?90JTqnt5fGvKBzgq8r0/xdYN6BU3r1Z+Hoi54gaq6+Wu4jr2cSQ3YOmZqs/E?=
 =?us-ascii?Q?FkurUYdDs5J0DaF6Fn3sWbxYH87f7fhpwByoTf3lTh3yc319VJJZqcivzOgV?=
 =?us-ascii?Q?yMi+a1gLA00tbMgequrYfFZLUCualGmt2gJCsm7qx2TLzOdItW/FEOwx/pM2?=
 =?us-ascii?Q?igd/SajSQx2fC9OnwNKG3aOkZiUqTgTkkepZlHOS56Q6xQdn+zJe+G3Yps47?=
 =?us-ascii?Q?KYUm/VKfUNFoTaFOxZA0mZj4yGg2hkhFVek42yvPYp7Cuk1Y/bGYzlrA8Ax7?=
 =?us-ascii?Q?Xl+eqLEfNjXS82sU16hEzucpcofe7AGaH0V+TKvK6N0AHQLqAbKw/rnbistn?=
 =?us-ascii?Q?mQecuFcAPGzXmvJPCX6JgFYCO5k7bM0tMJTw++NusPAogDXOay7VxNGcMG6E?=
 =?us-ascii?Q?5KjTUN8AWyBElOcKlAtp4tIi5AYzulbFy3DvXxAV4B/J546dckjzzCnrAwMa?=
 =?us-ascii?Q?vqOV35MOmeMvk2GQliK91RycmsNL1+wIPpegHIwMhc38wl4xFRbtUBNSxEuU?=
 =?us-ascii?Q?MFvLny2arhNXMmnLdg8uksoh?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba43bf52-80c7-44bd-3f50-08d9055bbe21
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2021 06:56:25.2203
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z0hFDOfvU6hP2KQv2d3Ofcag8jkTpPDM8hG78PYeh3SxV6qpv8TgSBHW+seVl2l8j8D5LDnU4QgS4JJB/25SQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1789
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Refresh patches to openssh-8.4p1.
Reference:
http://pkgs.fedoraproject.org/cgit/rpms/openssh.git/plain/openssh-7.7p1-fip=
s.patch
(commit: fbd5f1bee2e2cdc7b1b47f4604b8347d8c3ed63f)

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../0001-conditional-enable-fips-mode.patch   |  40 ++---
 ...ps.patch =3D> 0001-openssh-8.4p1-fips.patch} | 159 +++++++-----------
 recipes-connectivity/openssh/openssh_fips.inc |   2 +-
 3 files changed, 80 insertions(+), 121 deletions(-)
 rename recipes-connectivity/openssh/openssh/{0001-openssh-8.2p1-fips.patch=
 =3D> 0001-openssh-8.4p1-fips.patch} (75%)

diff --git a/recipes-connectivity/openssh/openssh/0001-conditional-enable-f=
ips-mode.patch b/recipes-connectivity/openssh/openssh/0001-conditional-enab=
le-fips-mode.patch
index 942fda6..17c5967 100644
--- a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mod=
e.patch
+++ b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mod=
e.patch
@@ -1,4 +1,4 @@
-From ef6490841a73b4f71ca35e09328c6a8b0ad9dba9 Mon Sep 17 00:00:00 2001
+From 571b24129e3c3a84e38a59a32aa61fa40e04e1e2 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 13:03:23 +0800
 Subject: [PATCH] conditional enable fips mode
@@ -44,10 +44,10 @@ index 06566d3..a10566d 100644
  	sanitise_stdfd();
 =20
 diff --git a/sftp-server.c b/sftp-server.c
-index 359204f..346255a 100644
+index 55386fa..8c1634e 100644
 --- a/sftp-server.c
 +++ b/sftp-server.c
-@@ -1576,6 +1576,7 @@ sftp_server_main(int argc, char **argv, struct passw=
d *user_pw)
+@@ -1577,6 +1577,7 @@ sftp_server_main(int argc, char **argv, struct passw=
d *user_pw)
  	extern char *optarg;
  	extern char *__progname;
 =20
@@ -56,7 +56,7 @@ index 359204f..346255a 100644
  	log_init(__progname, log_level, log_facility, log_stderr);
 =20
 diff --git a/sftp.c b/sftp.c
-index ff14d3c..a633200 100644
+index c88c861..171bc56 100644
 --- a/sftp.c
 +++ b/sftp.c
 @@ -2390,6 +2390,7 @@ main(int argc, char **argv)
@@ -68,10 +68,10 @@ index ff14d3c..a633200 100644
  	sanitise_stdfd();
  	msetlocale();
 diff --git a/ssh-add.c b/ssh-add.c
-index 8057eb1..19f3da2 100644
+index 936dc21..b7ac2d2 100644
 --- a/ssh-add.c
 +++ b/ssh-add.c
-@@ -628,6 +628,7 @@ main(int argc, char **argv)
+@@ -671,6 +671,7 @@ main(int argc, char **argv)
  	SyslogFacility log_facility =3D SYSLOG_FACILITY_AUTH;
  	LogLevel log_level =3D SYSLOG_LEVEL_INFO;
 =20
@@ -80,10 +80,10 @@ index 8057eb1..19f3da2 100644
  	sanitise_stdfd();
 =20
 diff --git a/ssh-agent.c b/ssh-agent.c
-index 7eb6f0d..1409044 100644
+index e1fd1f3..da49b57 100644
 --- a/ssh-agent.c
 +++ b/ssh-agent.c
-@@ -1196,6 +1196,7 @@ main(int ac, char **av)
+@@ -1289,6 +1289,7 @@ main(int ac, char **av)
  	size_t npfd =3D 0;
  	u_int maxfds;
 =20
@@ -92,10 +92,10 @@ index 7eb6f0d..1409044 100644
  	sanitise_stdfd();
 =20
 diff --git a/ssh-keygen.c b/ssh-keygen.c
-index feafe73..9b832f6 100644
+index cb8e569..67c7d62 100644
 --- a/ssh-keygen.c
 +++ b/ssh-keygen.c
-@@ -3140,6 +3140,7 @@ main(int argc, char **argv)
+@@ -3184,6 +3184,7 @@ main(int argc, char **argv)
  	extern int optind;
  	extern char *optarg;
 =20
@@ -104,10 +104,10 @@ index feafe73..9b832f6 100644
  	sanitise_stdfd();
 =20
 diff --git a/ssh-keyscan.c b/ssh-keyscan.c
-index a5e6440..e56a9d1 100644
+index ca19042..c667f2c 100644
 --- a/ssh-keyscan.c
 +++ b/ssh-keyscan.c
-@@ -675,6 +675,7 @@ main(int argc, char **argv)
+@@ -667,6 +667,7 @@ main(int argc, char **argv)
  	extern int optind;
  	extern char *optarg;
 =20
@@ -116,7 +116,7 @@ index a5e6440..e56a9d1 100644
  	seed_rng();
  	TAILQ_INIT(&tq);
 diff --git a/ssh-keysign.c b/ssh-keysign.c
-index 3e3ea3e..4804c42 100644
+index 7991e0f..26a3bab 100644
 --- a/ssh-keysign.c
 +++ b/ssh-keysign.c
 @@ -173,6 +173,7 @@ main(int argc, char **argv)
@@ -128,7 +128,7 @@ index 3e3ea3e..4804c42 100644
  		fatal("%s: pledge: %s", __progname, strerror(errno));
 =20
 diff --git a/ssh-pkcs11-helper.c b/ssh-pkcs11-helper.c
-index 17220d6..1af0c2e 100644
+index d73e835..e508684 100644
 --- a/ssh-pkcs11-helper.c
 +++ b/ssh-pkcs11-helper.c
 @@ -332,6 +332,7 @@ main(int argc, char **argv)
@@ -140,22 +140,22 @@ index 17220d6..1af0c2e 100644
  	seed_rng();
  	TAILQ_INIT(&pkcs11_keylist);
 diff --git a/ssh.c b/ssh.c
-index 49331fc..06836dd 100644
+index aabd5d3..81393f1 100644
 --- a/ssh.c
 +++ b/ssh.c
-@@ -606,6 +606,7 @@ main(int ac, char **av)
- 	u_char conn_hash[SSH_DIGEST_MAX_LENGTH];
+@@ -660,6 +660,7 @@ main(int ac, char **av)
  	size_t n, len;
+ 	u_int j;
 =20
 +	ssh_enable_fips_mode();
  	/* Ensure that fds 0, 1 and 2 are open or directed to /dev/null */
  	sanitise_stdfd();
 =20
 diff --git a/sshd.c b/sshd.c
-index b86d682..304bf01 100644
+index 1f1fcc2..0f68419 100644
 --- a/sshd.c
 +++ b/sshd.c
-@@ -1514,6 +1514,7 @@ main(int ac, char **av)
+@@ -1553,6 +1553,7 @@ main(int ac, char **av)
  	Authctxt *authctxt;
  	struct connection_info *connection_info =3D NULL;
 =20
@@ -208,5 +208,5 @@ index abaf7ad..b3b1c8c 100644
  		__attribute__((__nonnull__ (2)));
 +void	ssh_enable_fips_mode(void);
 --=20
-2.7.4
+2.17.1
=20
diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.p=
atch b/recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.patch
similarity index 75%
rename from recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.pa=
tch
rename to recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.patc=
h
index c1de130..48c18b4 100644
--- a/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
+++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.patch
@@ -1,7 +1,7 @@
-From c51dd44e1c594ddeb3a27ae5d9be2899e4bf2ac6 Mon Sep 17 00:00:00 2001
+From 059b61a58b27c40fbb78b3930cdcf110ff717340 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 11:45:38 +0800
-Subject: [PATCH] openssh 8.2p1 fips
+Subject: [PATCH] openssh 8.4p1 fips
=20
 Port openssh-7.7p1-fips.patch from Fedora
 https://src.fedoraproject.org/rpms/openssh.git
@@ -12,11 +12,17 @@ Upstream-Status: Inappropriate [oe specific]
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
=20
 Rebase to 8.2p1
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+
+Rebase to 8.4p1
+Port openssh-7.7p1-fips.patch from Fedora
+https://src.fedoraproject.org/rpms/openssh.git
+(commit: fbd5f1bee2e2cdc7b1b47f4604b8347d8c3ed63f)
+
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  Makefile.in              | 14 +++++++-------
  cipher-ctr.c             |  3 ++-
- clientloop.c             |  2 +-
  dh.c                     | 40 ++++++++++++++++++++++++++++++++++++++++
  dh.h                     |  1 +
  kex.c                    |  5 ++++-
@@ -27,21 +33,20 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  servconf.c               | 15 ++++++++++-----
  ssh-keygen.c             | 16 +++++++++++++++-
  ssh.c                    | 16 ++++++++++++++++
- sshconnect2.c            |  8 ++++++--
  sshd.c                   | 19 +++++++++++++++++++
  sshkey.c                 |  4 ++++
- 16 files changed, 178 insertions(+), 23 deletions(-)
+ 14 files changed, 171 insertions(+), 20 deletions(-)
=20
 diff --git a/Makefile.in b/Makefile.in
-index e754947..57f94f4 100644
+index acfb919..5b2c397 100644
 --- a/Makefile.in
 +++ b/Makefile.in
-@@ -206,25 +206,25 @@ libssh.a: $(LIBSSH_OBJS)
+@@ -204,25 +204,25 @@ libssh.a: $(LIBSSH_OBJS)
  	$(RANLIB) $@
 =20
  ssh$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHOBJS)
--	$(LD) -o $@ $(SSHOBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(SSHLIBS) $(LI=
BS) $(GSSLIBS)
-+	$(LD) -o $@ $(SSHOBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(S=
SHLIBS) $(LIBS) $(GSSLIBS)
+-	$(LD) -o $@ $(SSHOBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(LIBS) $(GSSLI=
BS)
++	$(LD) -o $@ $(SSHOBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lfipscheck $(L=
IBS) $(GSSLIBS)
 =20
  sshd$(EXEEXT): libssh.a	$(LIBCOMPAT) $(SSHDOBJS)
 -	$(LD) -o $@ $(SSHDOBJS) $(LDFLAGS) -lssh -lopenbsd-compat $(SSHDLIBS) $(=
LIBS) $(GSSLIBS) $(K5LIBS)
@@ -68,7 +73,7 @@ index e754947..57f94f4 100644
 =20
  ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(P11HELPER_OBJS)
  	$(LD) -o $@ $(P11HELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -l=
openbsd-compat $(LIBS)
-@@ -233,7 +233,7 @@ ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELP=
ER_OBJS)
+@@ -231,7 +231,7 @@ ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELP=
ER_OBJS)
  	$(LD) -o $@ $(SKHELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lo=
penbsd-compat $(LIBS) $(LIBFIDO2)
 =20
  ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSCAN_OBJS)
@@ -91,19 +96,6 @@ index 32771f2..74fac3b 100644
  #endif
  	return (&aes_ctr);
  }
-diff --git a/clientloop.c b/clientloop.c
-index ebd0dbc..b3e0c19 100644
---- a/clientloop.c
-+++ b/clientloop.c
-@@ -2083,7 +2083,7 @@ static int
- key_accepted_by_hostkeyalgs(const struct sshkey *key)
- {
- 	const char *ktype =3D sshkey_ssh_name(key);
--	const char *hostkeyalgs =3D options.hostkeyalgorithms;
-+	const char *hostkeyalgs =3D (FIPS_mode() ? KEX_FIPS_PK_ALG : options.hos=
tkeyalgorithms);
-=20
- 	if (key =3D=3D NULL || key->type =3D=3D KEY_UNSPEC)
- 		return 0;
 diff --git a/dh.c b/dh.c
 index 7cb135d..306f1bc 100644
 --- a/dh.c
@@ -173,7 +165,7 @@ index 5d6df62..54c7aa2 100644
  u_int	 dh_estimate(int);
 =20
 diff --git a/kex.c b/kex.c
-index ce85f04..9cc14de 100644
+index aecb939..3d5d3b0 100644
 --- a/kex.c
 +++ b/kex.c
 @@ -163,7 +163,10 @@ kex_names_valid(const char *names)
@@ -265,36 +257,36 @@ index 5312e60..d0accae 100644
  #define	SSH_ALLOWED_CA_SIGALGS	\
  	"ecdsa-sha2-nistp256," \
 diff --git a/readconf.c b/readconf.c
-index f3cac6b..26b9a59 100644
+index 554efd7..16eda65 100644
 --- a/readconf.c
 +++ b/readconf.c
-@@ -2187,11 +2187,16 @@ fill_default_options(Options * options)
+@@ -2255,11 +2255,16 @@ fill_default_options(Options * options)
  	all_key =3D sshkey_alg_list(0, 0, 1, ',');
  	all_sig =3D sshkey_alg_list(0, 1, 1, ',');
  	/* remove unsupported algos from default lists */
--	def_cipher =3D match_filter_whitelist(KEX_CLIENT_ENCRYPT, all_cipher);
--	def_mac =3D match_filter_whitelist(KEX_CLIENT_MAC, all_mac);
--	def_kex =3D match_filter_whitelist(KEX_CLIENT_KEX, all_kex);
--	def_key =3D match_filter_whitelist(KEX_DEFAULT_PK_ALG, all_key);
--	def_sig =3D match_filter_whitelist(SSH_ALLOWED_CA_SIGALGS, all_sig);
-+	def_cipher =3D match_filter_whitelist((FIPS_mode() ?
+-	def_cipher =3D match_filter_allowlist(KEX_CLIENT_ENCRYPT, all_cipher);
+-	def_mac =3D match_filter_allowlist(KEX_CLIENT_MAC, all_mac);
+-	def_kex =3D match_filter_allowlist(KEX_CLIENT_KEX, all_kex);
+-	def_key =3D match_filter_allowlist(KEX_DEFAULT_PK_ALG, all_key);
+-	def_sig =3D match_filter_allowlist(SSH_ALLOWED_CA_SIGALGS, all_sig);
++	def_cipher =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_FIPS_ENCRYPT : KEX_CLIENT_ENCRYPT), all_cipher);
-+	def_mac =3D match_filter_whitelist((FIPS_mode() ?
++	def_mac =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_FIPS_MAC : KEX_CLIENT_MAC), all_mac);
-+	def_kex =3D match_filter_whitelist((FIPS_mode() ?
++	def_kex =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_DEFAULT_KEX_FIPS : KEX_CLIENT_KEX), all_kex);
-+	def_key =3D match_filter_whitelist((FIPS_mode() ?
++	def_key =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG), all_key);
-+	def_sig =3D match_filter_whitelist((FIPS_mode() ?
++	def_sig =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_FIPS_PK_ALG : SSH_ALLOWED_CA_SIGALGS), all_sig);
  #define ASSEMBLE(what, defaults, all) \
  	do { \
  		if ((r =3D kex_assemble_names(&options->what, \
 diff --git a/sandbox-seccomp-filter.c b/sandbox-seccomp-filter.c
-index f80981f..00702a7 100644
+index e0768c0..8971bba 100644
 --- a/sandbox-seccomp-filter.c
 +++ b/sandbox-seccomp-filter.c
-@@ -156,6 +156,9 @@ static const struct sock_filter preauth_insns[] =3D {
+@@ -157,6 +157,9 @@ static const struct sock_filter preauth_insns[] =3D {
  #ifdef __NR_open
  	SC_DENY(__NR_open, EACCES),
  #endif
@@ -305,33 +297,33 @@ index f80981f..00702a7 100644
  	SC_DENY(__NR_openat, EACCES),
  #endif
 diff --git a/servconf.c b/servconf.c
-index 70f5f73..815beaf 100644
+index f08e374..dbcee84 100644
 --- a/servconf.c
 +++ b/servconf.c
-@@ -212,11 +212,16 @@ assemble_algorithms(ServerOptions *o)
+@@ -213,11 +213,16 @@ assemble_algorithms(ServerOptions *o)
  	all_key =3D sshkey_alg_list(0, 0, 1, ',');
  	all_sig =3D sshkey_alg_list(0, 1, 1, ',');
  	/* remove unsupported algos from default lists */
--	def_cipher =3D match_filter_whitelist(KEX_SERVER_ENCRYPT, all_cipher);
--	def_mac =3D match_filter_whitelist(KEX_SERVER_MAC, all_mac);
--	def_kex =3D match_filter_whitelist(KEX_SERVER_KEX, all_kex);
--	def_key =3D match_filter_whitelist(KEX_DEFAULT_PK_ALG, all_key);
--	def_sig =3D match_filter_whitelist(SSH_ALLOWED_CA_SIGALGS, all_sig);
-+	def_cipher =3D match_filter_whitelist((FIPS_mode() ?
+-	def_cipher =3D match_filter_allowlist(KEX_SERVER_ENCRYPT, all_cipher);
+-	def_mac =3D match_filter_allowlist(KEX_SERVER_MAC, all_mac);
+-	def_kex =3D match_filter_allowlist(KEX_SERVER_KEX, all_kex);
+-	def_key =3D match_filter_allowlist(KEX_DEFAULT_PK_ALG, all_key);
+-	def_sig =3D match_filter_allowlist(SSH_ALLOWED_CA_SIGALGS, all_sig);
++	def_cipher =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_FIPS_ENCRYPT : KEX_SERVER_ENCRYPT), all_cipher);
-+	def_mac =3D match_filter_whitelist((FIPS_mode() ?
++	def_mac =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_FIPS_MAC : KEX_SERVER_MAC), all_mac);
-+	def_kex =3D match_filter_whitelist((FIPS_mode() ?
++	def_kex =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_DEFAULT_KEX_FIPS : KEX_SERVER_KEX), all_kex);
-+	def_key =3D match_filter_whitelist((FIPS_mode() ?
++	def_key =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_FIPS_PK_ALG : KEX_DEFAULT_PK_ALG), all_key);
-+	def_sig =3D match_filter_whitelist((FIPS_mode() ?
++	def_sig =3D match_filter_allowlist((FIPS_mode() ?
 +	    KEX_FIPS_PK_ALG : SSH_ALLOWED_CA_SIGALGS), all_sig);
  #define ASSEMBLE(what, defaults, all) \
  	do { \
  		if ((r =3D kex_assemble_names(&o->what, defaults, all)) !=3D 0) \
 diff --git a/ssh-keygen.c b/ssh-keygen.c
-index 0d6ed1f..feafe73 100644
+index a12b79a..cb8e569 100644
 --- a/ssh-keygen.c
 +++ b/ssh-keygen.c
 @@ -204,6 +204,12 @@ type_bits_valid(int type, const char *name, u_int32_t=
 *bitsp)
@@ -347,7 +339,7 @@ index 0d6ed1f..feafe73 100644
  	switch (type) {
  	case KEY_DSA:
  		if (*bitsp !=3D 1024)
-@@ -1088,9 +1094,17 @@ do_gen_all_hostkeys(struct passwd *pw)
+@@ -1094,9 +1100,17 @@ do_gen_all_hostkeys(struct passwd *pw)
  			first =3D 1;
  			printf("%s: generating new host keys: ", __progname);
  		}
@@ -364,10 +356,10 @@ index 0d6ed1f..feafe73 100644
  		fflush(stdout);
 -		type =3D sshkey_type_from_name(key_types[i].key_type);
  		if ((fd =3D mkstemp(prv_tmp)) =3D=3D -1) {
- 			error("Could not save your public key in %s: %s",
+ 			error("Could not save your private key in %s: %s",
  			    prv_tmp, strerror(errno));
 diff --git a/ssh.c b/ssh.c
-index 15aee56..49331fc 100644
+index f34ca0d..aabd5d3 100644
 --- a/ssh.c
 +++ b/ssh.c
 @@ -77,6 +77,8 @@
@@ -379,7 +371,7 @@ index 15aee56..49331fc 100644
  #include "openbsd-compat/openssl-compat.h"
  #include "openbsd-compat/sys-queue.h"
 =20
-@@ -608,6 +610,16 @@ main(int ac, char **av)
+@@ -662,6 +664,16 @@ main(int ac, char **av)
  	sanitise_stdfd();
 =20
  	__progname =3D ssh_get_progname(av[0]);
@@ -396,52 +388,19 @@ index 15aee56..49331fc 100644
 =20
  #ifndef HAVE_SETPROCTITLE
  	/* Prepare for later setproctitle emulation */
-@@ -622,6 +634,10 @@ main(int ac, char **av)
-=20
- 	seed_rng();
+@@ -1500,6 +1512,10 @@ main(int ac, char **av)
+ 		exit(0);
+ 	}
 =20
 +	if (FIPS_mode()) {
 +		logit("FIPS mode initialized");
 +	}
 +
- 	/*
- 	 * Discard other fds that are hanging around. These can cause problem
- 	 * with backgrounded ssh processes started by ControlPersist.
-diff --git a/sshconnect2.c b/sshconnect2.c
-index af00fb3..639fc51 100644
---- a/sshconnect2.c
-+++ b/sshconnect2.c
-@@ -44,6 +44,8 @@
- #include <vis.h>
- #endif
-=20
-+#include <openssl/crypto.h>
-+
- #include "openbsd-compat/sys-queue.h"
-=20
- #include "xmalloc.h"
-@@ -119,7 +121,8 @@ order_hostkeyalgs(char *host, struct sockaddr *hostadd=
r, u_short port)
- 	for (i =3D 0; i < options.num_system_hostfiles; i++)
- 		load_hostkeys(hostkeys, hostname, options.system_hostfiles[i]);
-=20
--	oavail =3D avail =3D xstrdup(options.hostkeyalgorithms);
-+	oavail =3D avail =3D xstrdup((FIPS_mode()
-+	    ? KEX_FIPS_PK_ALG : options.hostkeyalgorithms));
- 	maxlen =3D strlen(avail) + 1;
- 	first =3D xmalloc(maxlen);
- 	last =3D xmalloc(maxlen);
-@@ -179,7 +182,8 @@ ssh_kex2(struct ssh *ssh, char *host, struct sockaddr =
*hostaddr, u_short port)
- 	/* Expand or fill in HostkeyAlgorithms */
- 	all_key =3D sshkey_alg_list(0, 0, 1, ',');
- 	if (kex_assemble_names(&options.hostkeyalgorithms,
--	    kex_default_pk_alg(), all_key) !=3D 0)
-+	    (FIPS_mode() ? KEX_FIPS_PK_ALG : kex_default_pk_alg()),
-+	    all_key) !=3D 0)
- 		fatal("%s: kex_assemble_namelist", __func__);
- 	free(all_key);
-=20
+ 	/* Expand SecurityKeyProvider if it refers to an environment variable */
+ 	if (options.sk_provider !=3D NULL && *options.sk_provider =3D=3D '$' &&
+ 	    strlen(options.sk_provider) > 1) {
 diff --git a/sshd.c b/sshd.c
-index 5b9a0b5..b86d682 100644
+index 5af7986..1f1fcc2 100644
 --- a/sshd.c
 +++ b/sshd.c
 @@ -66,6 +66,7 @@
@@ -461,7 +420,7 @@ index 5b9a0b5..b86d682 100644
  #include "openbsd-compat/openssl-compat.h"
  #endif
 =20
-@@ -1516,6 +1519,18 @@ main(int ac, char **av)
+@@ -1555,6 +1558,18 @@ main(int ac, char **av)
  #endif
  	__progname =3D ssh_get_progname(av[0]);
 =20
@@ -480,7 +439,7 @@ index 5b9a0b5..b86d682 100644
  	/* Save argv. Duplicate so setproctitle emulation doesn't clobber it */
  	saved_argc =3D ac;
  	rexec_argc =3D ac;
-@@ -1990,6 +2005,10 @@ main(int ac, char **av)
+@@ -2039,6 +2054,10 @@ main(int ac, char **av)
  	/* Reinitialize the log (because of the fork above). */
  	log_init(__progname, options.log_level, options.log_facility, log_stderr=
);
 =20
@@ -492,7 +451,7 @@ index 5b9a0b5..b86d682 100644
  	   unmounted if desired. */
  	if (chdir("/") =3D=3D -1)
 diff --git a/sshkey.c b/sshkey.c
-index 57995ee..3fa4274 100644
+index ac451f1..4f72eab 100644
 --- a/sshkey.c
 +++ b/sshkey.c
 @@ -34,6 +34,7 @@
@@ -511,7 +470,7 @@ index 57995ee..3fa4274 100644
  #include "ssh-sk.h"
 =20
  #ifdef WITH_XMSS
-@@ -1597,6 +1599,8 @@ rsa_generate_private_key(u_int bits, RSA **rsap)
+@@ -1595,6 +1597,8 @@ rsa_generate_private_key(u_int bits, RSA **rsap)
  	}
  	if (!BN_set_word(f4, RSA_F4) ||
  	    !RSA_generate_key_ex(private, bits, f4, NULL)) {
@@ -521,5 +480,5 @@ index 57995ee..3fa4274 100644
  		goto out;
  	}
 --=20
-2.7.4
+2.17.1
=20
diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connec=
tivity/openssh/openssh_fips.inc
index c74532f..4fdb2aa 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -6,7 +6,7 @@ DEPENDS +=3D " \
 RRECOMMENDS_${PN}-sshd_remove =3D "rng-tools"
=20
 SRC_URI +=3D " \
-    file://0001-openssh-8.2p1-fips.patch \
+    file://0001-openssh-8.4p1-fips.patch \
     file://0001-conditional-enable-fips-mode.patch \
     file://openssh-6.6p1-ctr-cavstest.patch \
     file://openssh-6.7p1-kdf-cavs.patch \
--=20
2.25.1

