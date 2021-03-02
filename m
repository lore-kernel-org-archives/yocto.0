Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web12.6099.1614675156084576918
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 00:52:36 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=MQI686ym;
 spf=softfail (domain: windriver.com, ip: <nil>, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nK3Cl4pG1+rVRJbVm7hKo6/pKJ6pNUk/2XkVbD5acmuV1SjfpoQ1l5z/KcVJR/aDaHssbHlvipaQ7ckqQComvbcdgjSsNjpEZiwfQonMblOFOGP/Su7FWEzrec+ZYzLWsyO/Oa8+THIV9CWvAS/qKAis74dGbMbezp52VwbVvVvbepjBIun55w4MxSlUwS+4cgN9MrtQW0w2izsHUGmUSvmt6RmP7fDXNYoLKy7evwfciKtJbhqdD2+Zmi6KGnarwImKMEAYEa4QzSWYEVmUdusgkXHZky1AyyspDD/cxzEG0EnOS5CvxkulIt1/xuvZTRtEzn7b18vLUWGeLoNseg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q/+u+1fJ7MS3xfEa9qgOdUlTOgBPRuARUk451cdtoQk=;
 b=Se5ZKbg187SMTmNNcRo42TF0s+TsphnGK5SyqeEsv12KEPEnIfNTjHUkvAdCHvjMAJskNZbJYmOf9ekBQQGXqHcUWYyYONvtFiu5b6K4bx7tFGJBQHQnSpopNX8FoyaN302LsZaX8LvwQWLPVAeGL2a9DYGhGRi/O0RrVcPZ7SMgIeBrLZOoLqkinC6iiL187XelfZfv9lSqHnrWPotm9JzOMYD1RjYaTgshWAVmmOrMmCjw5uw0jT8IPt84AlHKhjDM/tJ/CTe+4/koTuV5KtV3R/d1JFJioT/pJLVFVkAbj2o9/Hw1auZkVolwkR/ecy/z9/cVWOJv8GNaqPY4nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q/+u+1fJ7MS3xfEa9qgOdUlTOgBPRuARUk451cdtoQk=;
 b=MQI686ymkSNEA97gl6dHD/fp6Zrtcx+DrxXhCesml3tsuTvH9HwqHM75UcdMuTtDGzPa1YUVGCB52S9Y0hYea/TyNhjpSXwUUcI/zyBdUM3YX3jAtHdw1ZBePEZngJ9k4hc2VDI3MrYBB+b4pdGM8FjZZ1nFDta6ukpLTAZD4m8=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4804.namprd11.prod.outlook.com (2603:10b6:303:6f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Tue, 2 Mar
 2021 08:52:30 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3890.023; Tue, 2 Mar 2021
 08:52:30 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 5/7] packagegroup-core-selinux: add auditd
Date: Tue,  2 Mar 2021 16:52:04 +0800
Message-ID: <20210302085206.56794-6-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210302085206.56794-1-yi.zhao@windriver.com>
References: <20210302085206.56794-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.8 via Frontend Transport; Tue, 2 Mar 2021 08:52:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 47dd0b2a-ed06-4281-4377-08d8dd5882cf
X-MS-TrafficTypeDiagnostic: CO1PR11MB4804:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB480410826B2BE9C9A3E65633F9999@CO1PR11MB4804.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:983;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Eujyn3jVAZbDSsAw+Twk4Cwv2L9qKRA4cETTE6Gz6Fwh7FX5rE0+DTRwpSU0aDjak5CSaw2Gdm+qAGr2B40qhh9+HAaIAbgrKaVBF7elh3zuMcT+NkvLJ14vGRIoA3tnWbumOGvDiMzekpQLHCni4F8K2U9hzUqbosZrSme3YZno4IR/JT4aTeATWG/qI55/VXgYnc6797jZn6ePLQ77XpAt+enbPQGasfPYN4C5/J9vOrOPi7UKfsVb9RzQvT20ghJOig7EfMLVmLO0CtP+E/zfCcgAID0sArFUrBTQT9CeskWgRNq7KtwO47MDuW4rygWZaX8uUvvkZsxCpoJIj9xDrGm+FoxUwtVVcJKNs7lBRSzp3rKUY0Tsoi6chUHrN/POFtqPaP4S0IlOk4BoYPPaiyGlF5Jlj3HNu6Au/bxsVUerQeyv+IERQLTmwfdWFeyVblcx5kq6hVrs9VJ0w+ygV61FYkN+QvdkAwcx0qj04ZZ+jojYd/iAWs74nP6J1Lv43Qo2ZIoYuNZQS7bg5A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(366004)(136003)(39850400004)(376002)(66946007)(83380400001)(6506007)(2906002)(66476007)(66556008)(8676002)(186003)(6666004)(4744005)(956004)(478600001)(316002)(1076003)(2616005)(16526019)(5660300002)(86362001)(6512007)(6486002)(8936002)(36756003)(52116002)(44832011)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?vrkuXr80rr6LanTUDJeeDXQSvs7L+Mcett4mNbzgKniStzD/Pp5VxX4Jc2+9?=
 =?us-ascii?Q?6m1R0z5VpjDIqQKOPQHXOmI/NxJmL/JT6Yf9b9et7kGdkUz8stuRzaVB7IK+?=
 =?us-ascii?Q?NYEXReCcJR1gm2qjfBmoC4QX5HfxCVyGFMO2kaL3899++0exRQ3nHgVdGAuz?=
 =?us-ascii?Q?caeqRGydQAYfAmqjfU1eDRY1AeNpqnMJlyyrmzGINDLqxbAEvUpw2jK7G9Gp?=
 =?us-ascii?Q?/X10+VFoW+ioDyDlHzH+tNYEie5mzRsbwgLsrg4N67tpE2VaGKJHqx7PhA1V?=
 =?us-ascii?Q?tOLQLdpUXngUIvMMYsNeg1EmfSKpTA5B7jd1gOpg1skievbYpgN2lop6W134?=
 =?us-ascii?Q?p8MKnqixqR2ipwTS0Mygm0rf+L2wXpN8K6IbeUb8Ua16ij+7w6h0oA0p7wpB?=
 =?us-ascii?Q?YxumfPa0xG1S5mpjzmDtTPo3vU+A7yFk6dcn16w7ddztzxtfon4Xry4Obff5?=
 =?us-ascii?Q?888qUFoM8YNOUMC/gwWyCsKBonmbUiWFeAN+4qZ/VXjidCapiWeZGwXzfcOE?=
 =?us-ascii?Q?I1bbbe2SwM7A/WDYFU1b9Ze6QWs0YF+FQxlD7mG87T4RkJ+nGxpgyqkvm1By?=
 =?us-ascii?Q?4wJ3BIhRB2mOXv05uBaX3D+GOCtacPHlOdIm8QoNVPy0j83ozS7XWDbXh06U?=
 =?us-ascii?Q?0Il4pZ+T2Y8TYa4mQKMSucfZP8tmbJ3I/BRVzhtyGFQN7LZfcPhQdRrscZaj?=
 =?us-ascii?Q?sbkeRAaTBhs6ii2srfX3yD0AIk4LptCwsSBflgeuvAr30XhEiGfSdkCKdHhU?=
 =?us-ascii?Q?Nqsyc7TQoY0YUjiVHxsMWkptJcHJ8nCBSiAm9WNqTpsjOgp/4q3mkS11RXlT?=
 =?us-ascii?Q?YfSBXp7UNzmIaPc2kiGGoWVYV5LS9aaoBWcn3wcbr9uD+YUk/wB8uoPqusDM?=
 =?us-ascii?Q?hH3agWVdbCtZhA2uQH79sjQTjllHNBET9ofKgghlN2heMcdVVKTDLAnep0e6?=
 =?us-ascii?Q?vPO1Ez/MbuoYdsbU+ryRcHfML8EwLIJEXMFPdZZk739KWl5PzBd2m7IqZ3Ri?=
 =?us-ascii?Q?+rHm3Lro0Isk030q6L/T0h1oQjZcGJNaMmRIsN9of303kiyRD1HrBhY1WeCV?=
 =?us-ascii?Q?I81csje01Z+xmfQM/IOsUiZzOJR9r0OGFwl1Nf9//3qB42bXxYH2hxDdmvrD?=
 =?us-ascii?Q?W5JuZt6vCsAHALb1PT1e57Ku10oRjGovz36ePxGA8kOR+nYVCnd9CJSMTLeW?=
 =?us-ascii?Q?OC4OztzlCY/h1e5ne0pobgOp9c7+lZ5dlCwdQsq28zffZIkQ0xVGt8+DSW8S?=
 =?us-ascii?Q?QNGNa+qAu5hyy+pv/yjOUARXM0FlrXWsLGrwadOugWWVTvwmFh8ZGq1Kysry?=
 =?us-ascii?Q?HbsBIThp2W3KFXQ1kiTraqnE?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47dd0b2a-ed06-4281-4377-08d8dd5882cf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 08:52:29.9823
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wJSYx9g/T0GE7BNku8e5fuAxQO4kBLaDpKHdMnksB7mL3WvUBxX/aMwXm6h8Hu0uxJzkjemqZmej7iHYxssE9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4804
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Install auditd which will help the users debug and eliminate the audit
logs on screen.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/packagegroups/packagegroup-core-selinux.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/=
recipes-security/packagegroups/packagegroup-core-selinux.bb
index a4cf1b8..568aaac 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -24,4 +24,5 @@ RDEPENDS_${PN} =3D " \
 	selinux-labeldev \
 	refpolicy \
 	coreutils \
+	auditd \
 	"
--=20
2.25.1

