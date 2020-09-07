Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web11.2109.1599499086976420909
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 10:18:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=MOe8XQvw;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k3P+sG7Te00SVLgaDzXIyu3ScypQ5tZrtervW2pLrIB3jG599TMmxqsmHSJgsDaK6Jr9qIoi/1oNl3kUHpcVzLZijfpkuuIjTCVkengoTrmf6ioTSR+EfPGEtEe42A4kqFMBBpiujlS7dXB26GFH6X0JKevycyZPKAGTVbACORquOb9MvM/b4gd2yaACXHpOSpkd/iE5eU8g0iu2tklnJVvv7y/SMPhslrWG+7grPaqCU6dk+o2RXXuJaeWCutRJmOfEm0b5gIhVIPWlDHzcvf+g6Cg/ZU7wy1Ln6zwMXAePsWresJrT0vACz9zmARn+d5/yby/huv/lDdxPW57Pdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ru1nkWsAZdUe0a4/8grYEI7akiv6D8+nCbROTVRCdg=;
 b=lnhMNf38B0IxR35q+5MxX+rezVHpjgrVpD/glZZErfLW5ucxkiLGlTYxK5fe5sJWetjBZ6pK+RlyfQIsRNG5+UJtkfPEsGAIJcstHQfkE9sabeM03k7/8wouH2eYCtBqfzCGgIKHDRHMhrOwb0bP1J7SLdLGdryTHdVguiLG4THKLpFMnquP8Uk9hAvlZdXoVQ/+9VZd8kVkOk/o5bwLFOUIjKLwxxQT7cOfqUDj0sc9v7cZ+jKFl4fx1ncF07JEDcNpBuxKqg8VyIgGAT7I08Tus6QIEV4tOJnwt0wzIn/ulnDuSIsfN+14hai8IVchinEGdfbDGGk6k9KUW99zaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ru1nkWsAZdUe0a4/8grYEI7akiv6D8+nCbROTVRCdg=;
 b=MOe8XQvwm/r0+lrrnl8TFqA10JMhmkt1PUN14B/z2tanRUh9wH8Hg69KHoxG4c8koGXCydCUONYNnjASKRMq5XqGY7ekWYlqTuMzZkQ/T38QJGqlpbCd+9MpajQ8yPwfRNDpcK48BAigw7RiztGvKlFUuCoarEgrCAKfwuNBRZA=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM5PR0601MB2404.eurprd06.prod.outlook.com (2603:10a6:203:6f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 17:18:01 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 17:18:01 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	bgolaszewski@baylibre.com,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH 6/6] linux-yocto(-dev): Add dm-verity fragment as needed
Date: Mon,  7 Sep 2020 17:17:37 +0000
Message-ID: <20200907171737.108284-7-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200907171737.108284-1-niko.mauno@vaisala.com>
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0502CA0006.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::16) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0502CA0006.eurprd05.prod.outlook.com (2603:10a6:3:e3::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 17:18:01 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 23ba5a34-6f82-46dc-1606-08d85351f94f
X-MS-TrafficTypeDiagnostic: AM5PR0601MB2404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM5PR0601MB24040FF167B020D7956A3EE581280@AM5PR0601MB2404.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:326;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lPCHGiJVqPL0vhfEOoTuWWXUyGnImQpvc3q2vaVnTZCN3b8nwXbQeY1PJuSkn87Ak7Wu5xbvLAFhTKgW1GOJPzQRYe16TFSLj8/crIQLTjnjhmkmtj8Ag3/x5Xkm/rb0urdADXwUIYnT8lUAK1ncfa5y+zpEWTt/Y/FEaRq/lXryNSmKmfMpCm2epHv7CLsngn1Wj0eRpPzVv987f0iwXcTkEoWtHTQ6Qay6xBxwZQerNGQsZwH6ijdd0rSjjtHo9Enhq3LxHNmo644Z6Rqvi51jOdc9U5E42ADQUvJr7qYIfMm5bHhbGx42ZI+QcErMrwgtoPTjeLWFWuYkTJuBrw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(376002)(346002)(136003)(36756003)(1076003)(66946007)(6916009)(107886003)(6666004)(66556008)(2906002)(86362001)(66476007)(956004)(8936002)(478600001)(5660300002)(6486002)(52116002)(7696005)(16526019)(4326008)(26005)(44832011)(2616005)(8676002)(186003)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	+IaWRQCXeFpMiQLnLNsHafrpO0RufjtSIUFqSiRXeKeN3VXWZj+k1t53wegVln3VGuXiLHdKYi3fwQ6bAzfdKujNuH4rmF+Yc/KqI+5/vdaJnYDHkGiRP/GHhTJNHrEGXgttxsbomh8KlopaiUg5JLX8qdTmYOXhTxh/nJBKDbLrXE8WYcwnAa8HTJM9yg0L1dtrH6kmj8w4nsOLRK39xac1BAlVCOnahlAlN9rUSxDvXx0hkNiOyHwKlqln//EThUShC0E64T3a79Y3aUBD4C06XTojAUU0CHBn+GyopIqIWmCYo0Cpv2WEU12uSOqmD9mNUhAbH7MtH8e3ztRb646Ad9DKBaTinIFJdECN/Od/P3OrPHVvkXNVL4USuxXB5sIntWlTR0amw4XjPY5YqTKTUd+SFM597N20uZLBg/ZotzjOX4KcRFI3hcRdOFhqLdhQC4qYHKwC+6QlBeAsxaeigDkh0bBm1Vw5ys364CnJx+y6T45euZEUAUW7j/pyylT6RsVVJTnnqXrDZn6vvodZE8T1v3J8EtdE9ZwGb2eUGBukM20lNuB2x1xHe7bqC6+Ss8hp7GOxxVmvukvQdMo9VMqAhv2ghoqtW9AtbGtg1VP1ZjP4LJRfkN0J8XSb4Blch1XCgU1j5sRSOaOOtQ==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23ba5a34-6f82-46dc-1606-08d85351f94f
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 17:18:01.4630
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nksqo1P2DclSVQ4DrtIrgmZi9K701kq7rm8QYmklZ6au67cNGQilLNfv1hmhB4TddngqXfruWYzLm/e4fTRVyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2404
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Add checks that include dm-verity specific kernel config fragment
when dm-verity-img.bbclass is used.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 recipes-kernel/linux/linux-yocto-dev.bbappend | 1 +
 recipes-kernel/linux/linux-yocto_5.%.bbappend | 1 +
 2 files changed, 2 insertions(+)

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel=
/linux/linux-yocto-dev.bbappend
index 39d4e6f5..fa536d09 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,2 +1,3 @@
 KERNEL_FEATURES_append =3D " ${@bb.utils.contains("DISTRO_FEATURES", "appa=
rmor", " features/apparmor/apparmor.scc", "" ,d)}"
 KERNEL_FEATURES_append =3D " ${@bb.utils.contains("DISTRO_FEATURES", "smac=
k", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES_append =3D " ${@bb.utils.contains("IMAGE_CLASSES", "dm-ver=
ity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
diff --git a/recipes-kernel/linux/linux-yocto_5.%.bbappend b/recipes-kernel=
/linux/linux-yocto_5.%.bbappend
index 39d4e6f5..fa536d09 100644
--- a/recipes-kernel/linux/linux-yocto_5.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_5.%.bbappend
@@ -1,2 +1,3 @@
 KERNEL_FEATURES_append =3D " ${@bb.utils.contains("DISTRO_FEATURES", "appa=
rmor", " features/apparmor/apparmor.scc", "" ,d)}"
 KERNEL_FEATURES_append =3D " ${@bb.utils.contains("DISTRO_FEATURES", "smac=
k", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES_append =3D " ${@bb.utils.contains("IMAGE_CLASSES", "dm-ver=
ity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
--=20
2.20.1

