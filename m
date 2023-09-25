Return-Path: <john.klug@multitech.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF25CE7A89
	for <webhook@archiver.kernel.org>; Mon, 25 Sep 2023 04:55:18 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.97])
 by mx.groups.io with SMTP id smtpd.web10.54609.1695617716128839190
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Sep 2023 21:55:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@multitech.com header.s=selector1 header.b=HxtuWjtu;
 dkim=pass header.i=@multitech.com header.s=selector1 header.b=HxtuWjtu;
 dkim=pass header.i=@mail-dkim-us-east-2.prod.hydra.sophos.com header.s=v1 header.b=mljyzz+1;
 spf=pass (domain: multitech.com, ip: 40.107.243.97, mailfrom: john.klug@multitech.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+TTpiJse173bx0J/vLE7m4KhkF/KV1WQqlK8LeBuUo0=;
 b=HxtuWjtuuwT6+5k0Qa/eppTqcNJYGCjBslewhS9/pjQC9ZcRaqcf77n60pdiSZXOJWUqFVjSFcMWcePsAgKv148cwZe5JdHzD0liFfeMfFCUkO8sluwLD5HPRIAPNMsrf61XowjDnzgO8tNDUmj4gTJA8YrYk2hbA6PV2KmUWAs=
Received: from CH2PR17CA0010.namprd17.prod.outlook.com (2603:10b6:610:53::20)
 by BN0PR13MB4614.namprd13.prod.outlook.com (2603:10b6:408:12c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 25 Sep
 2023 04:55:12 +0000
Received: from DS3PEPF000099DE.namprd04.prod.outlook.com
 (2603:10b6:610:53:cafe::dc) by CH2PR17CA0010.outlook.office365.com
 (2603:10b6:610:53::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.35 via Frontend
 Transport; Mon, 25 Sep 2023 04:55:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 103.246.251.224)
 smtp.mailfrom=multitech.com; dkim=pass (signature was verified)
 header.d=multitech.com;dmarc=bestguesspass action=none
 header.from=multitech.com;
Received-SPF: Pass (protection.outlook.com: domain of multitech.com designates
 103.246.251.224 as permitted sender) receiver=protection.outlook.com;
 client-ip=103.246.251.224; helo=mfod-use2.prod.hydra.sophos.com; pr=C
Received: from mfod-use2.prod.hydra.sophos.com (103.246.251.224) by
 DS3PEPF000099DE.mail.protection.outlook.com (10.167.17.200) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.14 via Frontend Transport; Mon, 25 Sep 2023 04:55:12 +0000
Received: from ip-172-21-0-135.us-east-2.compute.internal (ip-172-21-0-135.us-east-2.compute.internal [127.0.0.1])
	by mfod-use2.prod.hydra.sophos.com (Postfix) with ESMTP id 4Rv9Xv48KWzWf15
	for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 04:55:11 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: 9c825762c9fe4a03adf791ee98957a5b
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2175.outbound.protection.outlook.com [104.47.59.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-us-east-2.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4Rv9Xs6sJNzgY8J
 for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 04:55:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R30S6Mi7kQJLF9wVL9INO7jDVVzRRW9X3AP0+OPRZv3ZddOIO9R0tsQY9c2QG9tq9v/E3jqc+QH9HMIqzVAzUO9noiSG4ETSmcUAYsQroWHWaCJaa1ZN+zYZFn1CfF5L017dGK2XPjeJuJu9pN66TvWHjEfYxeJnNRwqqcIu6uiiFO4ucBIXOdRtQdolTORR4hfpyOWdD6u6gqzQOuLN+nWZA2XGLkho3ul6dPvLwIaOupdAUlklNEBLzz7sVRAQncvdsKwNDyMslTdgSMYQY79GM5bjH9PklRN2pF9Ob885MEtvW1TTGPoAo7BrRnKCsdbSMVx28FH4RS4nD2MvkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+TTpiJse173bx0J/vLE7m4KhkF/KV1WQqlK8LeBuUo0=;
 b=cFmyLQX2X9Aup5ofAAMu/k04mvSDnXxJ3GmBe+TzrpEr7WWuWwecu26vOkXfUeJehlAMjRQnJSTPO/8E3mHesl/sMQerqCLwEa9z84aTfgltiGwkSgRnCOK4tuVHftVvV4AYT+m6Y1qXtahrpFtJHcaONuGEJ2bM7p7NstIxjqE1fDzEaemhfIPn6fFk1vCHEOadPEX1ttysn8dFZOaEiaT1H5wJxyGufHobJxwYeWFqAHyTvK7vN36aY7sEfBZJUanUQ7DGXdozSjxLtM8Pe6MCqrJ0lEPbe5HHy3w6GXVnlNNxYEOXiasOKMw/Z14foCDfraeLPVTWZlkPArblnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=multitech.com; dmarc=pass action=none
 header.from=multitech.com; dkim=pass header.d=multitech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+TTpiJse173bx0J/vLE7m4KhkF/KV1WQqlK8LeBuUo0=;
 b=HxtuWjtuuwT6+5k0Qa/eppTqcNJYGCjBslewhS9/pjQC9ZcRaqcf77n60pdiSZXOJWUqFVjSFcMWcePsAgKv148cwZe5JdHzD0liFfeMfFCUkO8sluwLD5HPRIAPNMsrf61XowjDnzgO8tNDUmj4gTJA8YrYk2hbA6PV2KmUWAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1695617707; 
 s=v1; d=mail-dkim-us-east-2.prod.hydra.sophos.com;
 h=Content-Type:Date:Subject:To:From;
 bh=+TTpiJse173bx0J/vLE7m4KhkF/KV1WQqlK8LeBuUo0=;
 b=mljyzz+13Xb5q/YGq8jo3wf4AFfJpTk8y//ck9dfGMGzFZ8vbESfDjhAgzalwTL3
 FD3B6rw2NxUXzD1Vbi50GoGysUfPZTqlvGGAdNJP6mxyLs4AcIsEt5RrbClCNoysikE
 1zsUlRyQtz61XaYb1KbEGFPuiI8HkJB9rTTxRpJIKgEwq+VtdZd5R6DknMqwlxgvApF
 j6rdbY6lwj3jleGJO1mFpBBgQVw/nEqVezKDFotJKDZjP42HnrUOudhX+NlZKBfNStH
 cdw//59t5DoD9R/OSX3EdlHnmXXdk+7vFKHrCVnFTJR1ZMnrYCnovPgW8GtN8p19TWO
 yMCwwhfRbQ==
Received: from CO3PR13MB5799.namprd13.prod.outlook.com (2603:10b6:303:174::19)
 by BLAPR13MB4722.namprd13.prod.outlook.com (2603:10b6:208:333::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 25 Sep
 2023 04:55:07 +0000
Received: from CO3PR13MB5799.namprd13.prod.outlook.com
 ([fe80::9601:44bd:83b4:d6ef]) by CO3PR13MB5799.namprd13.prod.outlook.com
 ([fe80::9601:44bd:83b4:d6ef%3]) with mapi id 15.20.6813.018; Mon, 25 Sep 2023
 04:55:07 +0000
From: John Klug <John.Klug@multitech.com>
To: "\"yocto@lists.yoctoproject.org\"" <yocto@lists.yoctoproject.org>
Subject: bbappend not working for recipe with git in name
Thread-Topic: bbappend not working for recipe with git in name
Thread-Index: AQHZ72pkHk0omTzx7kCXl6TUBVDQOA==
Date: Mon, 25 Sep 2023 04:55:07 +0000
Message-ID: <CO3PR13MB57996BD3F7D1ACA647B214D3FEFCA@CO3PR13MB5799.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=multitech.com;
x-ms-traffictypediagnostic: 
	CO3PR13MB5799:EE_|BLAPR13MB4722:EE_|DS3PEPF000099DE:EE_|BN0PR13MB4614:EE_
X-MS-Office365-Filtering-Correlation-Id: f1919661-0b69-4708-ec49-08dbbd8399d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 VKLp10IwirfC+751axc/071J3FlW1LihNGw8QMzH9jJhJSdYglfbqjutb0W6EjOnyolaWbxaqyFvz+ixYxRwBbELkPwB49IdMAmCyv1gJbNyWxbVq7EetOfpfAgiqLThONtVYHSEAfiVD1eM0O5JqAUOuA9wVeYXQLxEriSE3l9gkU/g9f2qYyHai4mVDGr1C2t8D8B0kYmVbdYBzkk5VJGgltGEGzP40XGwUSc+UUn6YwTznOuFrAFW/agpuzeSbsMn2ZgqrcxPEPRMpvRu3xNxOkDOFjc6GK5AIAFKxsgvBYiptTIWdqZFci0OyztENccMz+NleR3I1iB6A4xOM6SDx/Lkk7n34qUeLhqyBgDu91AcgSz4G6SdN9QE1biRua8ot4lOy/6yC0NSEkgFPOFe4n1SN17usYbmMpUbAgyaSR/NPBLjTrRcq907Wl1l3DsfBsp4kfiSXnz+r8JZo2AhMjmZor2tKKC6Q1vdQ/fGvfWbySmIRNQaAwDCQQFjYHrUV1qMxfTpVzj2GI0HdWhPDs91Usc28sPD1RbzNajJ/8GlCU10pzqQNDP0S05gRxTwP19Su5H8v9s/phdaTrIbzit2k2lHWpBbNJoSpt3LIdyVkugGZjRuaFSHiCdEEQvbHqzCWxjWNbLsKKSrDXbfUiyKnaFMiL+naCdDa5Nn4v1BWHJuy1PPQJ1PGMdh
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:CO3PR13MB5799.namprd13.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39830400003)(136003)(396003)(346002)(366004)(230922051799003)(186009)(1800799009)(451199024)(7696005)(6506007)(9686003)(122000001)(38100700002)(38070700005)(86362001)(33656002)(55016003)(83380400001)(8936002)(41300700001)(316002)(6916009)(8676002)(64756008)(66946007)(66446008)(66476007)(66556008)(5660300002)(52536014)(76116006)(91956017)(4744005)(2906002)(71200400001)(478600001)(491001);
 DIR:OUT; SFP:1102; 
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR13MB4722
X-Sophos-Email: [us-east-2] Antispam-Engine: 5.1.3,
 AntispamData: 2023.9.25.43616
X-LASED-SpamProbability: 0.079439
X-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000, BODY_SIZE_1000_LESS 0.000000,
 BODY_SIZE_2000_LESS 0.000000, BODY_SIZE_5000_LESS 0.000000,
 BODY_SIZE_7000_LESS 0.000000, BODY_SIZE_700_799 0.000000,
 CTE_QUOTED_PRINTABLE 0.000000, DKIM_ALIGNS 0.000000, DKIM_SIGNATURE 0.000000,
 HTML_00_01 0.050000, HTML_00_10 0.050000, NO_CTA_FOUND 0.000000,
 NO_CTA_URI_FOUND 0.000000, NO_FUR_HEADER 0.000000, NO_URI_FOUND 0.000000,
 NO_URI_HTTPS 0.000000, OUTBOUND 0.000000, OUTBOUND_SOPHOS 0.000000,
 __ARCAUTH_DKIM_PASSED 0.000000, __ARCAUTH_DMARC_PASSED 0.000000,
 __ARCAUTH_PASSED 0.000000, __ARC_SEAL_MICROSOFT 0.000000,
 __ARC_SIGNATURE_MICROSOFT 0.000000, __BODY_NO_MAILTO 0.000000,
 __BULK_NEGATE 0.000000, __CT 0.000000, __CTE 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DKIM_ALIGNS_1 0.000000, __DKIM_ALIGNS_2 0.000000,
 __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_FROM 0.000000, __HAS_MSGID 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IMP_FROM_NOTSELF 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TENANT_VIPS 0.000000, __JSON_HAS_TRACKING_ID 0.000000,
 __MIME_BOUND_CHARSET 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MSGID_32_64_CAPS 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
 __OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __SANE_MSGID 0.000000,
 __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR2 0.000000, __SUBJ_ALPHA_END 0.000000,
 __SUBJ_ALPHA_START 0.000000, __TO_MALFORMED_2 0.000000, __TO_NO_NAME 0.000000,
 __URI_NO_MAILTO 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 9a83988cf2a348e9b1362d50e30768ce
X-Sophos-MH-Mail-Info-Key: NFJ2OVh2NDhLV3pXZjE1LTE3Mi4yMS4wLjEzNQ==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DS3PEPF000099DE.namprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b2790102-64f6-4eaf-602a-08dbbd8396d6
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	21QN09L/Yb6/U+HE7Ta6XN9My2qS41bgThSJCP9LRVwOT5+TNNmgWZI7Jn7BTJ2an/KJhkU5kTuCBmHgPAZDKpRjxUZ4tdu12UuqE4eZIzzyrfAqzT31//K12KvuniVCiE9dZAMjMTIP6/e3FC86/VFUU0IF1zUhyMH/IkX+Lrc5kY5qwZazHNFvf05X5K8XlA5ogeIwWVewGeLeSgdK3jghi3Q6Y+WLtg+VhH/u/KJoayvRrkGopmrZVp5aW6DzD5081ASJ71ouKRKUU0zHWepVeraKFT8zamPUb1XtQPblKBlY/pBckUnt+DuaN3hxrX2snqCoG+wu4J1jouScgE8VeMod3jkWXFKDlqkjJaIqItl7edipg4jbxtrnaaElvtGi8c9usyU+OSCj5gL9T4BTHV8iFxrzzMCgOui6do55LbJ8SRx2o4JW6xZCBaDAM25hDw+dwTqvk6CJxOexT94M9x1kMHd57v7QMVFyg1BmEqOFXPdMXMgPdJnpfF92h0f22GNdBGlQ2kg3pL4OA8XWF8A9WFNqyn5mesROew9wlON9Qk0wTwhenWGEMOCYIcPkHGeUA1DeiMHG3HdLl9EsHQD+0UjZOS2KLBpIi+Z+aMsb+v4rRG/GtaFVAeA0/slVqL7EOEdY7kw6RDV4ZeeSHhXqUYrpqsTntTjiS8QP5g9k7rv8ueeGzx7GYKz6SORaqfcAy25moWaiyiOTsxGZMSzgL5ORgMO1fJxmmMMpC7DeqjlMq3s9HFhSZwGuuRtsaPby1ZYrRV6HRaOFXQ==
X-Forefront-Antispam-Report: 
	CIP:103.246.251.224;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-use2.prod.hydra.sophos.com;PTR:mfod-use2.prod.hydra.sophos.com;CAT:NONE;SFS:(13230031)(376002)(346002)(136003)(396003)(39840400004)(230922051799003)(451199024)(1800799009)(82310400011)(186009)(36840700001)(46966006)(6916009)(316002)(41300700001)(9686003)(33656002)(26005)(7696005)(6506007)(478600001)(83380400001)(356005)(7596003)(7636003)(86362001)(47076005)(336012)(36860700001)(70586007)(70206006)(40480700001)(55016003)(2906002)(4744005)(8676002)(52536014)(8936002)(5660300002)(491001);DIR:OUT;SFP:1102;
X-OriginatorOrg: multitech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2023 04:55:12.1146
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f1919661-0b69-4708-ec49-08dbbd8399d8
X-MS-Exchange-CrossTenant-Id: f802e804-804f-4d1e-b625-870b4d57fd00
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f802e804-804f-4d1e-b625-870b4d57fd00;Ip=[103.246.251.224];Helo=[mfod-use2.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DS3PEPF000099DE.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR13MB4614
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 04:55:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61096

bitbake-layers show-appends reports:=0A=
=0A=
  Summary: There were 3 WARNING messages.=0A=
  =3D=3D=3D Matched appended recipes =3D=3D=3D=0A=
  kernel-module-nxp89xx_git.bb:=0A=
=A0   /home/jklug/mlinux-kirk2/layers/meta-multitech-nxp/recipes-kernel/ker=
nel-module-nxp89xx/kernel-module-nxp89xx_%.bbappend=0A=
  WARNING: kernel-module-nxp89xx.bb: missing append for preferred version=
=0A=
=0A=
I have tried _git instead of _%.=0A=
=0A=
I have also tried 1.0, since bitbake -e reports:=0A=
=0A=
  PV=3D"1.0"=0A=
=0A=
What should I be doing?=A0 Nothing in the bbappend does anything, unless I =
make it invalid, then I get an error.=0A=
=0A=
SRCREV is set in this recipe as a hash.=0A=
=0A=
=0A=
John Klug=

