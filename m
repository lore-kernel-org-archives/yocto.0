Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.11439.1594106522720949081
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 00:22:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=HRywJIA6;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: 140.211.169.56, mailfrom: tero.kinnunen@vaisala.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93876E01E16; Tue,  7 Jul 2020 00:22:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,MSGID_FROM_MTA_HEADER,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [40.107.6.77 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60077.outbound.protection.outlook.com [40.107.6.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1829E01E14
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2020 00:22:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3DgXzQMQkli/2w1qXA1WVfqxJP770m1GhApPKV1lF9k/B225vLYEspbQBQJ9q9BEf0hzJMfaiwdeYDRbxOUjAt1rGLDCw/4QJ1g/nRp0Stk5H9KKcLIPo+SUbKkiLpZSJGMoW8fMg+SVjFmALhUxxjpHQtFNUhis5TW65MGYIEuFCC4Bc+T+cE5Ws8Qhv3dHgu3tmxnaApRUN4Sg4b+xQsfqrqF9/Nx/6n00zxTDyBDPW5sAwfF8Q7rhISmUbyTw/mpfAtmaPJIqneRxLPaHigh7PRMJXXaOJyjiasJy+vG4qtv+raXkAvMODU9Zx4ZhsvPP/d1zN1hnRphlI8b1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LGo2FkxeI9AElXj+irltmN0YPzD3NeIPERV6KQfWryw=;
 b=bPP3+y3CXencFla/7VCHLDp7SJacofpSfXK/BjUjYCp+rSnIkvkkuqkzfLegHCFNDn5vbrz4lQIdSW9yYbg9xo4kzI4ZN0oZYrJ85J18lHU+uBiHfskVmeXubT2ji6W8REm53K5D8H1b3+7xQB0LG+Aw9vPxWvX1PjbIfNFFeEcKZ3PqGn52QsHRIevcT/4EZT5mDWxnZd+f+B68tu8jLS8dL05jlGONLvIs29Fvjbf2F2WZjwgII24CjESlxAL2HRbwcdoAkRGC+hDIO6pk2P9ZoSRXfx1k54RwU0WLEMoDzOwPlEIAQxbgvlne5TvyzeVlqzxRulI9vnNnis8bBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LGo2FkxeI9AElXj+irltmN0YPzD3NeIPERV6KQfWryw=;
 b=HRywJIA6zk4CSExPFDFb3jIgDnEjX56h1IB+ERw44wBZC0J68TauJ3rartJfy5e27cIA4YC9F29P10JD9WaizNgYUauP/x96FQ0b+IRBjYKEZRrQYSjo7azYSED0wSr9LGgNcsrbkWefEGgNDskUIsU4RGKWFGNVs9fSaZoLhhk=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from DB7PR06MB5479.eurprd06.prod.outlook.com (2603:10a6:10:2b::16)
 by DBAPR06MB6709.eurprd06.prod.outlook.com (2603:10a6:10:189::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.24; Tue, 7 Jul
 2020 07:21:58 +0000
Received: from DB7PR06MB5479.eurprd06.prod.outlook.com
 ([fe80::5cb9:755d:f8c5:8e38]) by DB7PR06MB5479.eurprd06.prod.outlook.com
 ([fe80::5cb9:755d:f8c5:8e38%5]) with mapi id 15.20.3153.029; Tue, 7 Jul 2020
 07:21:58 +0000
From: "Tero Kinnunen" <tero.kinnunen@vaisala.com>
To: yocto@yoctoproject.org
Cc: anibal.limon@linaro.org,
	Tero Kinnunen <tero.kinnunen@vaisala.com>
Subject: [ptest-runner][PATCH] Fix inappropriate ioctl when detaching tty
Date: Tue,  7 Jul 2020 10:21:40 +0300
Message-Id: <20200707072140.152639-1-tero.kinnunen@vaisala.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: HE1PR07CA0017.eurprd07.prod.outlook.com
 (2603:10a6:7:67::27) To DB7PR06MB5479.eurprd06.prod.outlook.com
 (2603:10a6:10:2b::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.localdomain (193.143.230.131) by HE1PR07CA0017.eurprd07.prod.outlook.com (2603:10a6:7:67::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.9 via Frontend Transport; Tue, 7 Jul 2020 07:21:58 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56df39a3-fefd-4f13-a656-08d822466f62
X-MS-TrafficTypeDiagnostic: DBAPR06MB6709:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DBAPR06MB6709342098D44416E5AC8AC7E4660@DBAPR06MB6709.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 0457F11EAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VtMbscyFbtWjNTgUpdbBMPDyfjctrnDITvr/ykB0F5LbW4zRVMYhlKEpUF0yXJMh+ah9s6EsyOKgNW8uBKE/yKu3OvUh2iX5tTRD+3hiZNy/bofEnQTzERcF7YswIYb8cJMJILo5iQ2kCftGsRs/d4NuBsDiNwWysuMQajOZtMfWHRy+rGpSqHImKWg8aeXTBejJ+wtxYvbCCIOWpUSjdLygLhxAiZAHRm2aDIYXwGicSFgRXTJ5ChAo6A/t47jvOKudIjaGDW+6wpwwxkJsWqCJHGPzNhKZjf0DHJnCx1ATYk3puJ8DBnw0z6DzF8F6
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR06MB5479.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(39850400004)(366004)(136003)(376002)(346002)(316002)(6512007)(86362001)(8676002)(26005)(83380400001)(956004)(6506007)(2616005)(6916009)(5660300002)(36756003)(2906002)(66476007)(16526019)(6666004)(66556008)(6486002)(44832011)(478600001)(66946007)(107886003)(4326008)(186003)(1076003)(52116002)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	TteWj20uHaym3FcLdsU/uPP/wEC5sYyHsvEQyhBvQYka98hEdLoRpXvRBoM0OWSO26kVLR9OHGT7gor5R+zu39lbj/9rsNZu0vSJfQpAJGa0+Ayg7exgSTikm4LYsmRMfxp2cKG3LEnkOnRgVHHg7Qtz50kJ5AMBLTnKx4QV34GyfaBG3citPEUFc8qDFcdTbTiHLpRwFdEelnU0uteNWiQPgDajboIfqlFR31TotS/SmNRJnpgqubDbc8j2JadCYg5/cL03Q8Kb+/inYXO6U2SWs7czZC6uCRBychOm9DH7HX++Pd2PSogAWlv2YB9/fa8ticr3cmBtK00Oxfjffp7Qm3b92I5MpjDmARBhRh1VR8f71btMbRoOSQlCwCIvdazV7qsqPQ5XHyDrriliSbzGOh+XGiOncWdeyqO28NczoQxIt5gE1ZNq3x3zcvOTOn4HZrEdBrDz54M1SkPRxZLpZSsZeYMxlAg36k6Y380=
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56df39a3-fefd-4f13-a656-08d822466f62
X-MS-Exchange-CrossTenant-AuthSource: DB7PR06MB5479.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2020 07:21:58.7095
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YUChnFrBzCc0pXbN0lcJDFErsicIIm3ZzaNeAWUCCGLoLZERchh63DSfdYIp/EHlcH6uRLbPiKO5jsNSoxRjQ10USII6x51MVvvxQOyW0hw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR06MB6709
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Fixes error

    ERROR: Unable to detach from controlling tty, Inappropriate ioctl for=
 device

when running multiple ptests

    ptest-runner a b

or when invoked over ssh single command, like

    $ ssh localhost ptest-runner a

For ssh case, fd 0 is not a tty. (isatty(0) is false).
When running multiple ptests, deattach for parent needs to be
done only once. On subsequent calls, if deattach fails,
according to man 4 tty

    it is obviously not attached to a terminal and does not
    need to detach itself.

Detach was not necessary, skip the error message.

Signed-off-by: Tero Kinnunen <tero.kinnunen@vaisala.com>
---
 utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/utils.c b/utils.c
index a8ba190..35ef551 100644
--- a/utils.c
+++ b/utils.c
@@ -444,7 +444,7 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 				break;
 			}
 			dirname(ptest_dir);
-			if (ioctl(0, TIOCNOTTY) =3D=3D -1) {
+			if (ioctl(0, TIOCNOTTY) =3D=3D -1 && errno !=3D ENOTTY) {
 				fprintf(fp, "ERROR: Unable to detach from controlling tty, %s\n", st=
rerror(errno));
 			}
=20
--=20
2.25.1

