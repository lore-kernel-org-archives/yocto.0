Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=HptXoM3K;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dSbVelQcEshfsjmdVp+/tas+HWGKu5DPW5nUfGEHM6bmavF+eHggtKCFlaI82/e2qpvQbsvcc0iW0SJoik0/owJk/1fLveG71Tz6N7zeS+Lyq9GaH7fDlnhY8sVoyVs+lBomWE4xTK39aVadHaAjpXizjgPhukfU0rNWzMzQz2bMmj1GJMLqjbGRb4DbtpNY3wfcETmeqxC2O1jebieNRErh32X16rbVM3idNBO7vqwBfP8KkEMtcL6LLXNkNYDxhlcMKzlkf9ctjKC2prXFwPc9jyc5XlS4irJRmgcqMp3n/W8SU50U3f/rTQ6c6yEARpW6vrCDE1xMy4PLVh99qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YNSBwFt20Y+aMUYidBZKBGn0CxD2CIHh8ov1kCTAH2I=;
 b=hg/ePz4RWbpZvNlF4zWVFMVK6fnEOetUlSC3taU1TifATPusCB3EIaDzA3ilYmUCnbogXEj4dvQzv1I7YArO9o5ifWt06LbjQphgKfLUeeGtl5+8rO9b+UKnBPPQTSmyNg+bDTcQ5Dn4SoBzrYaSXRAMWBCVb4vZ/bF1fpoE+q3DIJkgiosoZrqsXRvbTChepBUthIUpzBwVYzbc+R4JDUEp2Q+klOrv6/VmgXUN9OlDXrbn0VX2RRtr7CwPj3INBinvFzvZoHlTHDUG4LleKl2U/m1PMKXvzyFAvRC06n1zgViySFGYoyjKxEUxsTXG30KusDnd0MAYy5xVGmJVVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YNSBwFt20Y+aMUYidBZKBGn0CxD2CIHh8ov1kCTAH2I=;
 b=HptXoM3KwmtypQ8KCOcdbQBG6w/XoZn5oVRw2z4D/N7ZJorvZyxwwpaSVYQ5xnv3Yt8P3l7FvGCCrYLrnxhuEfvy+GadimONDLjTalJ1A/9gAbAeiAqga269Hkh4dCpoLKD7JhYmDpesu3yadAZUsJhapmKpefhupKskROTL9vs=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:25 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:25 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 02/12] dm-verity-img.bbclass: Reorder parse-time check
Date: Thu, 10 Sep 2020 16:17:49 +0000
Message-ID: <20200910161759.87958-3-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:25 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 85addf29-3468-4557-34ce-08d855a5252f
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB592525EC0F477ECA0608EF9D81270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	M4WttH7U7q/BIrqJeDp4BzIaixkamxy5xBNi8gdfFU4SxSHDWn7main1ZN6ZX9XgA+7pYjHp4pVjGCgjCctbDRk2GTlMNNVrlJJoLZHCYbUWiXRSBqMONCi25GakgOOJ6MXlLzkMh4LvoujQnHhKhn4PHO3xHeB8aNVD0ii0XN5rfd+DUEUvAvGa/trkwFxUSuVH4ghSUHMwJXJy98lzWCQ9PpEJPW+kgulwthYHQM1jxEj52BesGJR1EAfmJ3xxWZvXU4SZpQ3WyEBex1odcsE4HpShryxsJh986fDIMkdNCODojc7fRVcR9bfLLhHC6zZQ0j3VCM2KPg0JacVBFg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	jboXPbcOALpx30NAymkpqpBxQYlufbdsJY5JdZKg92CEGDpw5SPzvR7CbpPf2rTaMpCC7jRd1PEO6IDqrQuGVJJ9VqkyKhFXSr7ZDonR4Hw1kPj6zGwTTflhDvplGTWIw0B4iANf86JNekoq/IXJQ3vv3L/dkM0XXFf1dEnl4b83VghLq+T9zOF5LtFMT4uY05hN+hw6NsDratPqjkzRgYt7K2ZaElLN4R+W7QCL2rk0tttAs03BSM3SSRKy108pcvmHjhrTTaLJosdyE2roUjld8Ic+DLBWieQsH6GBQC1gLb3wYbqJieeNsNtXAVrbGmAEtcsDw/O7O2Ejmjx2sXrxRCmGc8JAFEVbgkJPW38V2MLEQy8CTGtEAjSoXCdja52JrRLNXwoDAjwQmPKt+eG4pyN5qlWpIxM68+nnLjyNak6W5T4MRdVPCRVvUe4hpwdlmZuoxsOob02jQ1djLM97m4WTMPNpfw6hb3N6NT5s0TmcUcmwMji0z/eFCmjN5csFCmUU5RhunZOLxKVEw3Lm0rlkAo7wWtCUfkq5p8+MHoy4crKJPgqxhY/fydGfwvq2ZxAJlPMQsBc9MMOX9BcmDVXeKns5NKtdBYr/EoHdXbmdrXzr9TyDRnuwbT/TJEOErGvzQ9kTvjfMsTTGLQ==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85addf29-3468-4557-34ce-08d855a5252f
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:25.6639
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dJMObx5pCuUpGlebNSeU/1ILg3FcPiQe2VFTBHAgOn+/Y/W0oK6VE7bcnYB8j/xINPM9VJcEdixCC7jBr4G1jQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Relocate checking if DM_VERITY_IMAGE and DM_VERITY_IMAGE_TYPE are
defined as non-empty strings before DM_VERITY_IMAGE vs. PN
comparison is performed. By doing so we start seeing following kind
of bitbake parse-time console warnings in case either DM_VERITY_IMAGE
or DM_VERITY_IMAGE_TYPE is not set, when 'dm-verity-img' is defined
in IMAGE_CLASSES:

  WARNING: .../meta/recipes-core/images/core-image-minimal.bb: dm-verity-im=
g class inherited but not used
  WARNING: .../meta-openembedded/meta-oe/recipes-core/images/meta-oe-ptest-=
image.bb: dm-verity-img class inherited but not used

whereas before this change this warning was printed only once, when
image pointed by <DM_VERITY_IMAGE> was parsed (and recipe with that
name could be found in BBFILES mask scipe), and DM_VERITY_IMAGE_TYPE
was not set.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 classes/dm-verity-img.bbclass | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 6faed5b6..6ad0f75f 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -68,13 +68,13 @@ python __anonymous() {
     image_fstypes =3D d.getVar('IMAGE_FSTYPES')
     pn =3D d.getVar('PN')
=20
-    if verity_image !=3D pn:
-        return # This doesn't concern this image
-
     if not verity_image or not verity_type:
         bb.warn('dm-verity-img class inherited but not used')
         return
=20
+    if verity_image !=3D pn:
+        return # This doesn't concern this image
+
     if len(verity_type.split()) is not 1:
         bb.fatal('DM_VERITY_IMAGE_TYPE must contain exactly one type')
=20
--=20
2.20.1

