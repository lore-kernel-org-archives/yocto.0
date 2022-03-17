Return-Path: <harshaldhruvkumar.gohel@philips.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97890C433F5
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 08:16:36 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.135])
 by mx.groups.io with SMTP id smtpd.web09.7848.1647504995253089795
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 01:16:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@philips.onmicrosoft.com
 header.s=selector2-philips-onmicrosoft-com header.b=EvSg6J42;
 spf=pass (domain: code1.emi.philips.com, ip: 40.107.20.135,
 mailfrom: harshalgohel@code1.emi.philips.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wp1wDltlw1QruCIAKm+Wtw/0mkxLqH35zvdmR/jtEcrGfP1jfcmpF5FRdKFij0Y5gKJsTAuPXld6CaXzgNaXNc00ndJl8NTWk8tM2h8K+EFDFLCLHAp+vsoErAdJrK/hDD2Bwb2ELxBlQCjEO9pHzlKg3++5UOFhSf5YP0x46/4Cn6sx/nnbAettQo7zRqftO/1nYIzBJvRtfnctVHWajVKrLsiFz57rOI6ZbxunMyKS32lf3yBBgkL9UcHFRkg4uH3C5J2/7Dov9AMOSps2wzltUftuXxUkZQZoRgnR/KRfCJmb7IwHTW6hJTPV1Bdyxoj93WQmHrnVr7rvvV1N7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FlGI4xcDGMJ/aBB2QSHoiCWYa0o6Jy0PAzGkFc9J/ek=;
 b=IDlA2L69LkxDFHsqEa2S94FPvpKO27SnVzxe6dOGDFwrmACQJe2tCxLIt+JFufwn4ow7oBYmw4BdfyQnGEjECSVt2Xj1G2ArePSJ728bStJ1vf+8B032Il2hsjt4iYf/s+4SKO+X4gO67w/HzM1XCXFjyKr7eAfoRnvHPGzr3stc4jImqcSJmGWzrBeXVmmXFNRjWilKcARgu8KouloAnB/+X5xASouLnMYsP9vAnS32iRUjChPWDzcGFtF160Ajkp2T6JxWHmPu+pDw/fO9UVENV1OvoNSdR11c3fS1JdVoriDzElJROnWzmfJbNeplXdQTsDvri9ld6j/hxWE2aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 18.136.170.117) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=code1.emi.philips.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=code1.emi.philips.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Philips.onmicrosoft.com; s=selector2-Philips-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FlGI4xcDGMJ/aBB2QSHoiCWYa0o6Jy0PAzGkFc9J/ek=;
 b=EvSg6J42fpXVy1i0nvKIOC2/tnvo2JL8UFsTCEaFggKNc3n/Kt+lbrghGSo5K7iV1C8/2i7BASsTXsAuOz2TAuc9klMBPqG6/zjf0D+aIaAReHIfjoxbpNZvGK1NAo8KMrF06vxhhycbOlA4dYbEsCmSFOHQk2drqpx+9wwLc1w=
Received: from DB3PR06CA0020.eurprd06.prod.outlook.com (2603:10a6:8:1::33) by
 VI1P122MB0190.EURP122.PROD.OUTLOOK.COM (2603:10a6:802:9a::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5061.29; Thu, 17 Mar 2022 08:16:31 +0000
Received: from DB5EUR01FT107.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:8:1:cafe::52) by DB3PR06CA0020.outlook.office365.com
 (2603:10a6:8:1::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14 via Frontend
 Transport; Thu, 17 Mar 2022 08:16:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 18.136.170.117)
 smtp.mailfrom=code1.emi.philips.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=code1.emi.philips.com;
Received-SPF: Pass (protection.outlook.com: domain of code1.emi.philips.com
 designates 18.136.170.117 as permitted sender)
 receiver=protection.outlook.com; client-ip=18.136.170.117;
 helo=ext-asp1.smtp.philips.com;
Received: from ext-asp1.smtp.philips.com (18.136.170.117) by
 DB5EUR01FT107.mail.protection.outlook.com (10.152.5.69) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.10 via Frontend Transport; Thu, 17 Mar 2022 08:16:30 +0000
Received: from smtprelay-asp1.philips.com ([161.92.84.252])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by ext-asp1.smtp.philips.com with ESMTP
	id Ul5HngUDWcz85Ul5pnhaTg; Thu, 17 Mar 2022 08:02:45 +0000
Received: from localhost.localdomain ([161.85.17.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by smtprelay-asp1.philips.com with ESMTPA
	id UlItnVuqTpiPMUlJ8nARYU; Thu, 17 Mar 2022 08:16:30 +0000
X-CLAM-Verdict: legit
X-CLAM-Score: ??
X-CLAM-Description: ??
From: Harshal Gohel <harshalgohel@code1.emi.philips.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-openssl102-fips][dunfell][PATCH 2/2] openssh: Adapt the patch
 for CVE-2020-14145 fix on poky/dunfell
Date: Thu, 17 Mar 2022 13:46:27 +0530
Message-ID: <20220317081627.82851-2-harshalgohel@code1.emi.philips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220317081627.82851-1-harshalgohel@code1.emi.philips.com>
References: <20220317081627.82851-1-harshalgohel@code1.emi.philips.com>
Reply-To: harshaldhruvkumar.gohel@philips.com
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 0f8c6200-da72-4a85-28da-08da07ee7174
X-MS-TrafficTypeDiagnostic: VI1P122MB0190:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1P122MB0190FD4DA1829158661542F69B129@VI1P122MB0190.EURP122.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TW1VH57gSVvZky5qoctHMNFs3zPyYeun1O2QSxwb9MZhZLoDY0nhhCvN1umt/AIu2Zno1n0kVkTNXU+CKG5x0F6TtDmnRd8AZIOhHjyqwHLvLC2cL9HHTibwTZnlU9/fsHBNmSfbY6fBwd0+aib3IVmVL/zh6zlndke7W3yDYQvjoC/YfIbLFgiGFgOrMUm/bwKUcXrZp9OOLhpBlj1ol8eUQR1bvJC6U/uTDTjwsLlu5aDWKS6+ejpYXhG2cM5dYRNA7/cSYIKyUMtKjTto+HE7DZQ5Fruy67TnPENNe3+kRkx6wUFn1v+GFR+CSJFfSmMqZ2HT1pdMKxKdRXQ1hM9/a6RkZhEz/AlUOb/Ga/bQYjAWfSihQJdBFoRgf7NGjLq/qpFLqRHdZy1OW85i43ixPZRsxdmgSVex8KBvaBgYlhqxxxH3Zpw+E5f5XoEXzgbfDZTwEpnhnP8vlUp7EszNI4s+ztEuXbZe5cCwlj+M7bncfrAQLFFj61FLzxp6hUQDCNBSIobqXH8QshuKLjO5Wy0VhHEhnFTwTSFMSGnGaCPODaCqlNMy7cVZBRhGqyDlLrB0QA4b2mve2wf5q7nAbNNQdZFg9GwOMZHn0wYYwIJXH8goeo0M16IYzGcxopMhfRlhVLRfDyZX2VoVT35bP2qNIMsDVs9Mfy7GmDtOtILCqOfV4DqH8I2QudTdbvuJFSie1y3qulsC/wZZZw==
X-Forefront-Antispam-Report: 
	CIP:18.136.170.117;CTRY:SG;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:ext-asp1.smtp.philips.com;PTR:ec2-18-136-170-117.ap-southeast-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(46966006)(36840700001)(40470700004)(1076003)(82310400004)(2906002)(186003)(26005)(956004)(2616005)(36860700001)(34020700004)(356005)(336012)(83380400001)(81166007)(47076005)(5660300002)(70206006)(70586007)(8936002)(82960400001)(508600001)(6916009)(316002)(40460700003)(86362001)(8676002)(6666004);DIR:OUT;SFP:1102;
X-OriginatorOrg: code1.emi.philips.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2022 08:16:30.8552
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0f8c6200-da72-4a85-28da-08da07ee7174
X-MS-Exchange-CrossTenant-Id: 1a407a2d-7675-4d17-8692-b3ac285306e4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=1a407a2d-7675-4d17-8692-b3ac285306e4;Ip=[18.136.170.117];Helo=[ext-asp1.smtp.philips.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT107.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P122MB0190
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 08:16:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56473

From: Harshal Gohel <harshaldhruvkumar.gohel@philips.com>

openssh-8.2p1-fips.patch does not apply after CVE-2020-14145 patch
introduced in (poky: f5882b194b58b6bbb06db511a2c3612f5d6430fd)

CVE-2020-14145 added comments and introduced new code in sshconnect2.c

This adaptation corrects diff offsets and replaces each occurance of
`options.hostkeyalgorithms` with the FIPS_mode() conditional just as in
original patch.
---
 .../openssh/0001-openssh-8.2p1-fips.patch     | 31 ++++++++++++++-----
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.p=
atch b/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
index c1de130..5b8814d 100644
--- a/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
+++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.2p1-fips.patch
@@ -27,10 +27,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  servconf.c               | 15 ++++++++++-----
  ssh-keygen.c             | 16 +++++++++++++++-
  ssh.c                    | 16 ++++++++++++++++
- sshconnect2.c            |  8 ++++++--
+ sshconnect2.c            | 14 ++++++++++----
  sshd.c                   | 19 +++++++++++++++++++
  sshkey.c                 |  4 ++++
- 16 files changed, 178 insertions(+), 23 deletions(-)
+ 16 files changed, 182 insertions(+), 25 deletions(-)
=20
 diff --git a/Makefile.in b/Makefile.in
 index e754947..57f94f4 100644
@@ -408,7 +408,7 @@ index 15aee56..49331fc 100644
  	 * Discard other fds that are hanging around. These can cause problem
  	 * with backgrounded ssh processes started by ControlPersist.
 diff --git a/sshconnect2.c b/sshconnect2.c
-index af00fb3..639fc51 100644
+index 5df94779..df3cd317 100644
 --- a/sshconnect2.c
 +++ b/sshconnect2.c
 @@ -44,6 +44,8 @@
@@ -420,17 +420,34 @@ index af00fb3..639fc51 100644
  #include "openbsd-compat/sys-queue.h"
 =20
  #include "xmalloc.h"
-@@ -119,7 +121,8 @@ order_hostkeyalgs(char *host, struct sockaddr *hostadd=
r, u_short port)
- 	for (i =3D 0; i < options.num_system_hostfiles; i++)
- 		load_hostkeys(hostkeys, hostname, options.system_hostfiles[i]);
+@@ -139,12 +141,14 @@ order_hostkeyalgs(char *host, struct sockaddr *hosta=
ddr, u_short port)
+ 	 * certificate type, as sshconnect.c will downgrade certs to
+ 	 * plain keys if necessary.
+ 	 */
+-	best =3D first_alg(options.hostkeyalgorithms);
++	best =3D first_alg(FIPS_mode()=20
++			? KEX_FIPS_PK_ALG : options.hostkeyalgorithms);
+ 	if (lookup_key_in_hostkeys_by_type(hostkeys,
+ 	    sshkey_type_plain(sshkey_type_from_name(best)), NULL)) {
+ 		debug3("%s: have matching best-preference key type %s, "
+ 		    "using HostkeyAlgorithms verbatim", __func__, best);
+-		ret =3D xstrdup(options.hostkeyalgorithms);
++		ret =3D xstrdup(FIPS_mode()
++				? KEX_FIPS_PK_ALG : options.hostkeyalgorithms);
+ 		goto out;
+ 	}
 =20
+@@ -152,7 +156,8 @@ order_hostkeyalgs(char *host, struct sockaddr *hostadd=
r, u_short port)
+ 	 * Otherwise, prefer the host key algorithms that match known keys
+ 	 * while keeping the ordering of HostkeyAlgorithms as much as possible.
+ 	 */
 -	oavail =3D avail =3D xstrdup(options.hostkeyalgorithms);
 +	oavail =3D avail =3D xstrdup((FIPS_mode()
 +	    ? KEX_FIPS_PK_ALG : options.hostkeyalgorithms));
  	maxlen =3D strlen(avail) + 1;
  	first =3D xmalloc(maxlen);
  	last =3D xmalloc(maxlen);
-@@ -179,7 +182,8 @@ ssh_kex2(struct ssh *ssh, char *host, struct sockaddr =
*hostaddr, u_short port)
+@@ -214,7 +219,8 @@ ssh_kex2(struct ssh *ssh, char *host, struct sockaddr =
*hostaddr, u_short port)
  	/* Expand or fill in HostkeyAlgorithms */
  	all_key =3D sshkey_alg_list(0, 0, 1, ',');
  	if (kex_assemble_names(&options.hostkeyalgorithms,
--=20
2.25.1


