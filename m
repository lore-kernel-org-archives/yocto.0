Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4828.1594359894260159081
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jul 2020 22:44:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=OBSTZ/xK;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: 140.211.169.56, mailfrom: tero.kinnunen@vaisala.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4C89E01E3D; Thu,  9 Jul 2020 22:44:53 -0700 (PDT)
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
	*      [40.107.6.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60087.outbound.protection.outlook.com [40.107.6.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B06FE01E3B
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2020 22:44:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mPfo2VHkwARPOP6rEo5rBphc0iaGbT8wJvnP52cX2Qdq3dNmpc3utHPpxpApDDZgIpAidb/3eMBi2tjmz+t6RtoT+rATiaaFuTAx+Do1KtBBpEHNDa5tgQbhKtTGtWBFbM1RG8epEOyvzVXQ0wfnsxcnQML6pN4ssfrMUNjITxVs0vr7BbP54lb9xONL/MYEOvm0MZP9J8onw7XPQEHCdiJ+5DdX7ZG1hftgrTqrN/Pc0mwtIMduU7o/bdGY51XiEM065rNqqK4lpDUXkJHdueDRenpbaSJa2lqIyIgG94+/KWD3THPU7E9RSS4Nieve5cOVaihmQYiZq6LQcWCvuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=An0cVbjJ0Na/vtxs6Mr2A6XUKvEuBI0LS6UNt00LpqE=;
 b=brevLPMdowsCt9NkzevQ1OAb0q+PLYFq25wNeU3lLUyga68HDqkXGdOse5lJTWs9t6hqnCPv4iCfsgZIJ7M/6bpnVhAErcpc164fQDEVIz4nwQrHituEvxqpG7pHZJj1rngqPspwWnD4eAz78W/vRT4hL5DjM6JfHs7j9XaVWgAkNr/9fpF+YqG7x5CvybtlGrWjP7ljBdtjQLcV4QT/18Pj9dBlcfdHWNKT3fC6Y3ZXboZaVzfnWpeRYmq9rmYGYmZ3XsW9y7e5F46Q+QmwEFMGol45p6vGNDOnMREnAvmNJZPmutZEs2ET8J2noKJ5OGgZ5TRqbvF0sTNYVQMV/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=An0cVbjJ0Na/vtxs6Mr2A6XUKvEuBI0LS6UNt00LpqE=;
 b=OBSTZ/xK10G+18mxRDsTOSR4cV56gSvI7OomIUfG9WA8XIl+172LsvJbzEFuCw6R6W7JeSKcDQ87VrfBJ/cvwxyuz0q/z4WK5rtgTToU5zvBqadRZNLOPo8ijqgoGQpxUQGeZRGBvoHqMGulgO4nnb3xO3dzeMjefW94+XYO6MQ=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from DB7PR06MB5479.eurprd06.prod.outlook.com (2603:10a6:10:2b::16)
 by DB7PR06MB4967.eurprd06.prod.outlook.com (2603:10a6:10:5f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 05:44:49 +0000
Received: from DB7PR06MB5479.eurprd06.prod.outlook.com
 ([fe80::5cb9:755d:f8c5:8e38]) by DB7PR06MB5479.eurprd06.prod.outlook.com
 ([fe80::5cb9:755d:f8c5:8e38%5]) with mapi id 15.20.3174.023; Fri, 10 Jul 2020
 05:44:49 +0000
From: "Tero Kinnunen" <tero.kinnunen@vaisala.com>
To: yocto@yoctoproject.org
Cc: anibal.limon@linaro.org,
	Tero Kinnunen <tero.kinnunen@vaisala.com>
Subject: [ptest-runner][PATCH v2] Fix inappropriate ioctl when detaching tty
Date: Fri, 10 Jul 2020 08:44:32 +0300
Message-Id: <20200710054432.557157-1-tero.kinnunen@vaisala.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: HE1P190CA0026.EURP190.PROD.OUTLOOK.COM (2603:10a6:7:52::15)
 To DB7PR06MB5479.eurprd06.prod.outlook.com (2603:10a6:10:2b::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ubuntu.localdomain (193.143.230.131) by HE1P190CA0026.EURP190.PROD.OUTLOOK.COM (2603:10a6:7:52::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.21 via Frontend Transport; Fri, 10 Jul 2020 05:44:48 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a6e9f3ae-2616-42b3-6c3e-08d824945c21
X-MS-TrafficTypeDiagnostic: DB7PR06MB4967:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DB7PR06MB4967317DE0C2131980625F00E4650@DB7PR06MB4967.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:327;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	u9+Sk/p6ClTDd2h5PdDae3J5FeK3qLjfFJv1JzcLEufm8hmH7WqfyzbBF/gX2fB7tTEWGW4OnnBnzzS94x1vvIilAq+h8rlwy/j1f2ePg9B66WoRVXJnFZtcTpoX87NOd3Z6oU6dpo9SeoK87+XZhNJSO5OKb0qVPeUdwRl6DJgSFh3/XILPxXQJTkhDw5QweiAKQSVoina/DS5cg8HmwyKzl3iGGs8eDH1M36+GZPp68fTzVCz/JpXYtjiUzKeT1jml01bLPmic3ZWPlWayNe0YRWHXG2HSCe8RDGi7STwoFLTv7sretdbroZ+rpQDI
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR06MB5479.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(39850400004)(376002)(136003)(366004)(346002)(6666004)(8676002)(86362001)(83380400001)(1076003)(36756003)(44832011)(5660300002)(956004)(2616005)(6916009)(66556008)(66476007)(478600001)(6512007)(2906002)(16526019)(4326008)(186003)(316002)(6486002)(26005)(6506007)(107886003)(52116002)(66946007)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	RdPIshUG5+rUIgD+4zrwM0OUfC7j0H0i9rsy43Zh35eNk3TtcQfdtLXgsFsmF1lZIRBoUS9qD8f+ARGT00sL0etI73nIvCaFxCtZZ6DnhsiR1Kz/zLM15J/1wxjf9dleAMR+BOlgBXTsDO7xyXFaT+0Vh0FZMT/vBta7AICev3iwmp4MncVgKiQe+vh+7S2Oi11Li4IaAcq5nPGXRSTMTSra/CKDL1cCQpPbvUySMQIUh3+ZGLFOcMo2qGkyQLNCJKh6dpM86J03LUdFaLgJTdOZ2Ac1F+hhws7VpnvoFTCe9jApv0qV5iA3IH/t5Tus9638brdEmE9F3Tq+H8NZfNTXVPVLK9IqcJSUAR2aX9EBLx/r/tcM3ZKB5XYb8sk1DqHfabABFCMuVjIrA3M1c568L8K8rMsu9soCKvz1fNi/SOd5xzTPn4BsDk2IhBzlYWIpd8d38eo6lXMk29pjomFRtuB6az0aYB2iXqWnKs7k6A+UdOkWLTKNXSPij4Se
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6e9f3ae-2616-42b3-6c3e-08d824945c21
X-MS-Exchange-CrossTenant-AuthSource: DB7PR06MB5479.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2020 05:44:49.4288
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u8VjzbHlmLez68ev2qMRWRX524nRxHQexpgYfUPkSZ2Ta0xOl94SxTn2izucHY/raLjfIMM/vLg3855E9O20GW3VIehRRgiJkiFct78gbNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR06MB4967
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Fixes error

    ERROR: Unable to detach from controlling tty, Inappropriate ioctl for=
 device

when running multiple ptests

    ptest-runner a b

or when invoked over ssh single command, like

    $ ssh localhost ptest-runner

For ssh case, fd 0 is not a tty. (isatty(0) is false).
When running multiple ptests, deattach for parent needs to be
done only once.

Signed-off-by: Tero Kinnunen <tero.kinnunen@vaisala.com>
---
 utils.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/utils.c b/utils.c
index a8ba190..a4e190e 100644
--- a/utils.c
+++ b/utils.c
@@ -437,6 +437,9 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 			break;
 		}
 		fprintf(fp, "START: %s\n", progname);
+		if (isatty(0) && ioctl(0, TIOCNOTTY) =3D=3D -1) {
+			fprintf(fp, "ERROR: Unable to detach from controlling tty, %s\n", str=
error(errno));
+		}
 		PTEST_LIST_ITERATE_START(head, p)
 			char *ptest_dir =3D strdup(p->run_ptest);
 			if (ptest_dir =3D=3D NULL) {
@@ -444,9 +447,6 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 				break;
 			}
 			dirname(ptest_dir);
-			if (ioctl(0, TIOCNOTTY) =3D=3D -1) {
-				fprintf(fp, "ERROR: Unable to detach from controlling tty, %s\n", st=
rerror(errno));
-			}
=20
 			if ((pgid =3D getpgid(0)) =3D=3D -1) {
 				fprintf(fp, "ERROR: getpgid() failed, %s\n", strerror(errno));
--=20
2.25.1

