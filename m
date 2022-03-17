Return-Path: <harshaldhruvkumar.gohel@philips.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4036C433EF
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 08:16:36 +0000 (UTC)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (EUR02-AM5-obe.outbound.protection.outlook.com [40.107.0.95])
 by mx.groups.io with SMTP id smtpd.web10.7584.1647504995254024721
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 01:16:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@philips.onmicrosoft.com
 header.s=selector2-philips-onmicrosoft-com header.b=HXgOH4JJ;
 spf=pass (domain: code1.emi.philips.com, ip: 40.107.0.95,
 mailfrom: harshalgohel@code1.emi.philips.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mPSj73t+IZ2Vjsr6jrZIzExumIyj2059bICqmToaKihVWaLGhzbaTi76eVY+a5UtCWZL9tPWc8U1lS2Ut2DSqWGxYQrkHsuW9XhA9nJamIKqeqFDmlCcmJWqWmi0z/ovfcajKWxjAkzknLLD2tmN13cx5VOFmXgrUR9G4bmdp3fGEysGmd+esJY8zYIAV+hSkA20Pm8ydT+lWePZX2/DQ+QyJvaC2CfC6M+DFBEG78mAs8SO88nOkoDyjamN7Qp13/t+nXGqzIitU8Wtk3hHms/1BRjtKi3EWYUJULNMOuRA6EM8B15Odxug+LajdrkOrL/je0qjO3CzJcz0Y0D8yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xh6is8ILXXMuQr7rwsVzH/QqpiACJr/TpgBcBQ751+Y=;
 b=FnbhNmzi2QdHOaBamObb3E9XK8+7kcICCpZPnfdLYtRgwlekLl86eUFhspWJDnpOnq+6H5xrGy3OGwFxMofOzfdsTpomnAqPgIN46XjOinPiVAdQImy+osZWc5Emz6D8rGY+VmJ/red4mUYHAKYYwG8swTxgR2NwV1VYavKGN8qAfcnAUyqUN/AWJAaGAD0vEo+uFZy8+M2bBRLuAfY5dAB31bZPFjcVUFLK7nqKABJLPAjHJxUHa0CWeEo0x8rSHy4SHjk4q38rFYfjRJeNbW4Si40rC/HOuDVXxYfrMBDvQr1Sj/YG2mX8Q92sOIwgwb+mVwLvAIeeG5mWZp4gXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 18.136.170.117) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=code1.emi.philips.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=code1.emi.philips.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Philips.onmicrosoft.com; s=selector2-Philips-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xh6is8ILXXMuQr7rwsVzH/QqpiACJr/TpgBcBQ751+Y=;
 b=HXgOH4JJYp83EbHVV3Iv/kGrwdnyeDRKUUaV0XujNCgdku8x6kO3g/p/2v07dak1G2P6V4KO+XAdkPFL9cAZkzBBOjLKkqwZPqnaoFJZp2Vcqc5JTKpw/1UKkAYxNDUSd0o697IJvuyzvcGNbwc0NhYhLXJ5T7dhWLSGtDDDWqM=
Received: from AM5PR1001CA0071.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::48) by AM0P122MB0146.EURP122.PROD.OUTLOOK.COM
 (2603:10a6:208:14c::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.30; Thu, 17 Mar
 2022 08:16:31 +0000
Received: from VE1EUR01FT021.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:206:15:cafe::b0) by AM5PR1001CA0071.outlook.office365.com
 (2603:10a6:206:15::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22 via Frontend
 Transport; Thu, 17 Mar 2022 08:16:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 18.136.170.117)
 smtp.mailfrom=code1.emi.philips.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=code1.emi.philips.com;
Received-SPF: Pass (protection.outlook.com: domain of code1.emi.philips.com
 designates 18.136.170.117 as permitted sender)
 receiver=protection.outlook.com; client-ip=18.136.170.117;
 helo=ext-asp1.smtp.philips.com;
Received: from ext-asp1.smtp.philips.com (18.136.170.117) by
 VE1EUR01FT021.mail.protection.outlook.com (10.152.2.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.15 via Frontend Transport; Thu, 17 Mar 2022 08:16:30 +0000
Received: from smtprelay-asp1.philips.com ([161.92.84.252])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by ext-asp1.smtp.philips.com with ESMTP
	id Ul5HngUDVcz85Ul5onhaTf; Thu, 17 Mar 2022 08:02:44 +0000
Received: from localhost.localdomain ([161.85.17.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by smtprelay-asp1.philips.com with ESMTPA
	id UlItnVuqTpiPMUlJ8nARYS; Thu, 17 Mar 2022 08:16:30 +0000
X-CLAM-Verdict: legit
X-CLAM-Score: ??
X-CLAM-Description: ??
From: Harshal Gohel <harshalgohel@code1.emi.philips.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-openssl102-fips][dunfell][PATCH 1/2] conf: Make layer
 compatible with dunfell
Date: Thu, 17 Mar 2022 13:46:26 +0530
Message-ID: <20220317081627.82851-1-harshalgohel@code1.emi.philips.com>
X-Mailer: git-send-email 2.25.1
Reply-To: harshaldhruvkumar.gohel@philips.com
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: e203ef05-8cf2-48e9-497c-08da07ee717a
X-MS-TrafficTypeDiagnostic: AM0P122MB0146:EE_
X-Microsoft-Antispam-PRVS: 
	<AM0P122MB0146C096533C6683C95C603D9B129@AM0P122MB0146.EURP122.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Vv+g9IeU6+fAqTYc1QVF8Rng0E/muRV7mY/Lq6G0ZjTaTq7qg3hHybDevRQ2OHYOL2j+ThIbRyoqYE45vq2JRzKgxC2fLX86MP/MuDiCE8mnHZdDT7dvD+S4Pb3lVUB9hH1z9H3u+4k8Bn/J2M4IGHYj/bgvOIEEf3l+B/fzJ+b6fMcBHo2cI1SfyEFl02ygcTG6S0oHX6igdboMk1BsV2+QyiGiBS+P4HAnmya/gpeq7o4Q1CERVFQyvkxNTb9t3Q7vltlmD72Mm2sOb740Pc0ucXGT+tidr5874vNUuvBSt2hUwyUbLAlfLf0XHZXYHYLQAtdl7eWXW418fxHKE0EAUFcVkZ6uD9Lqj9FOQFuLrvl8Ng2MmIzS7KxhICtC5xP6HStVkzqV0WIIy3Fa51G6OdS+s7x1Bv4CC5srdXE0zNqufdNK9jVbkQ0mdpBNQ5ebvpVUlsB2TAFjSneOiL44QnZK+ukn0Pr46ByYgeN9x2MQmIW+2AEboLTou+t+0fIZn9qwLBk3qytpnyu6e6X6CEagIbSeuzDZ+S1adviSNBw9SGTXZ9/iWVKaRGoKtNP/MK/g7id4OeHR2fuD2F/cbRWiqx+IntYi/3uOcgsRgHVRpt/qOR2dn5js8Mlt49+58TRAheuG4EKjbs5f6C2fs4ZRLuFKfq+omkeb9gyU+u5pvbMnBtk7mA2iCYjGOlRHlLV3vZzFxwNEv5RsBw==
X-Forefront-Antispam-Report: 
	CIP:18.136.170.117;CTRY:SG;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:ext-asp1.smtp.philips.com;PTR:ec2-18-136-170-117.ap-southeast-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(46966006)(36840700001)(40470700004)(47076005)(6666004)(8936002)(36860700001)(5660300002)(2906002)(34020700004)(6916009)(4744005)(82960400001)(316002)(81166007)(356005)(83380400001)(336012)(82310400004)(2616005)(40460700003)(70206006)(70586007)(86362001)(1076003)(956004)(8676002)(186003)(26005)(508600001);DIR:OUT;SFP:1102;
X-OriginatorOrg: code1.emi.philips.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2022 08:16:30.8860
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e203ef05-8cf2-48e9-497c-08da07ee717a
X-MS-Exchange-CrossTenant-Id: 1a407a2d-7675-4d17-8692-b3ac285306e4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=1a407a2d-7675-4d17-8692-b3ac285306e4;Ip=[18.136.170.117];Helo=[ext-asp1.smtp.philips.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT021.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P122MB0146
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 08:16:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56472

From: Harshal Gohel <harshaldhruvkumar.gohel@philips.com>

Create branch "dunfell" from 634d497355f4169237b97a57a2f32486b0972167
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 892cf79..fe6d6db 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two-fips =3D "5"
=20
 LAYERVERSION_meta-openssl-one-zero-two-fips =3D "1"
=20
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D "zeus"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D "dunfell"
=20
 LAYERPATH_meta-openssl-one-zero-two-fips =3D "${LAYERDIR}"
=20
--=20
2.25.1


