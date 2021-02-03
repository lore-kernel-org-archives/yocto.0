Received: from NAM04-CO1-obe.outbound.protection.outlook.com (NAM04-CO1-obe.outbound.protection.outlook.com [40.107.69.88])
 by mx.groups.io with SMTP id smtpd.web08.595.1612395888763990918
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 15:44:49 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Ey7/lkR1;
 spf=pass (domain: windriver.com, ip: 40.107.69.88, mailfrom: yifan.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GD82xewUsKkTm7Vh+c6++6MyHHBzAJ4tDhz8Q3VCQGry6Fa35XgjEwTuGTFHILFb44pOPs1TuccP+8Y/g7SbguPFUD7IOomPKxvA89/F8U3UY8vdMR4K6FjHO3xJ7GzrVjvqNaWO/+j/7oC7WAfwq1dG4rPC40twJLhJMb01Z8pFIQOdE4gkuDl0DzmFWkBng9eGdcR36ZuzXDmcVkh0n4CqS2QYoLwu2YuRDiXDFn+lyqIe6bLbjUa/3nPcN2Jq009j+Zitm8/mvA0CBw4TX0P2UQurH4xNusGbIcuuepCG7HI5z04myUhv7CbK6msAolyhicMkV2oK7QlnMWluNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pCcFfaOnVuj8dStqv6T3EK+a9K8Y6iqgoHBW4Hl6jIU=;
 b=fUwo9b3E7knqhAB2FHn1h/H3pzvmitaM9Bw2MqQcMVVtKEVyWxOcHp/v0cS3d3OD1fHBQqkhL4YbPDQ/N1Ly0DQnpGGVV+QZLTcMUMlWnkwzL3jsOKNv+KggdZPj67VuBryYVQHdTtsDIOM+2nEVw5SW9GmGsMDn+rK0pm9FjiEBeGYOtH2Lo5m0Bn+ym33AwS5Q/ytKoN71uKkpZQadnBtG6GOp98WMyJrGLXGOklyfu2nOHJF3edshkqkY7UmshgC0h/ZEdh38sPI47OEHsvCoWQHZYwfMcRiOpfI3gGNTSkH28Po/AveFem/fVuO+TT5X6R2xYuyACn40/jPRjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pCcFfaOnVuj8dStqv6T3EK+a9K8Y6iqgoHBW4Hl6jIU=;
 b=Ey7/lkR1b84M4I7Jnzp/rrj4mTlIk5KXPH431aSY0kwPmwlOfwiqRMFOwcZcKkI0TQOk9Iv02aeQpS4o3b02vVRbDMogI2OrQd8taurYn3ED6P6lfrNtamL+IjlZRuwza4AOosRc7HWW6jXmkunJwTqNSWSMjv6WWYkvK+VdC+M=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.12; Wed, 3 Feb
 2021 23:44:47 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3%7]) with mapi id 15.20.3805.027; Wed, 3 Feb 2021
 23:44:47 +0000
From: "Yi Fan Yu" <yifan.yu@windriver.com>
To: randy.macleod@windriver.com,
	yocto@lists.yoctoproject.org
Subject: [yocto][ptest-runner][PATCH] util.c: remove the usage of pipe for parent/child communication
Date: Wed,  3 Feb 2021 18:44:10 -0500
Message-ID: <20210203234410.6742-1-yifan.yu@windriver.com>
X-Mailer: git-send-email 2.29.2
X-Originating-IP: [128.224.252.2]
X-ClientProxiedBy: YTXPR0101CA0050.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:1::27) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
Return-Path: yifan.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-lpggp3.wrs.com (128.224.252.2) by YTXPR0101CA0050.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00:1::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.17 via Frontend Transport; Wed, 3 Feb 2021 23:44:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 37d0c9c7-3410-4e95-d1a4-08d8c89db0ce
X-MS-TrafficTypeDiagnostic: SA2PR11MB5036:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB5036B8FECFB1984F5E6841D380B49@SA2PR11MB5036.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:227;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PcVW1xSdtD92Avo9SP/pXVK43xmc4OF3cBXvdo77lFLk+SKb63VGkQmfZzbeTo4tFDMs+7YJAIYCoMn/ZHEDWOnZOB6fK1aqlosHSrX36xBdARF8BuRiWkeA5q4V6/AcrsjmJBMQyL9NFD6EqHGY90MWBq9avrhbhOwZzh2GWDS/xdbM0oOCeid0FEpndxf+0kSaJfEHOLg1Uy+XbbsPg3CXhJq+52q7Bq/rDqJKhzVTlvvptUoig68FXI9lDiDYOLRnJuPVvBN9IHWQip6wajR/KUOTa6af3doGtUS7yUWPrVEkjfLe5axSri3WtP32G8xpwS+labf0BFPvxDw4WH+bkRkcwrjJgTFtjvyBjQiCXeNnNwP8qYDEXPC0+TS++R2SCs636Xc6yPHEys/xyfRGj3EfwcJb6ylho2lDCa5jeCg2JDTS0PWF7isUSKxpXZJimN9WoD0PlDm2sSmV8q1pVMRXbhy1TTVnlzzq4a618GEqakRWvGnGy5v9F3eoeWB6l/iMW32gEruq/bssgXk83BcNOfm4zqW58qqcatzVRZVj6G7q0mMQ2pSEs2mW
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(376002)(366004)(396003)(136003)(346002)(6486002)(6666004)(86362001)(186003)(6512007)(52116002)(26005)(8936002)(6506007)(66556008)(36756003)(2616005)(478600001)(1076003)(83380400001)(956004)(316002)(5660300002)(8676002)(2906002)(66476007)(66946007)(16526019)(21314003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?/jyDHZtYKhvIKFjqLh7tr5+ZXNvZ+lhmgB2VMK/VBSxwoHyZ79VSJXtuem3M?=
 =?us-ascii?Q?6qsx2C+AHJUMmboHcg4zyM1+flrQ2pR5YBYr3pAdLK30tHzG3vh/groyRqwa?=
 =?us-ascii?Q?woAo9mEx6AygsnYmtFVtlLNSKRAAYIK5qEbprx4eiyxcfNsgMjtxl6Ce44pY?=
 =?us-ascii?Q?BST83REsXb75cwQU7pH7iwemg+tfRXTHf6aFQuy9N4QGWPf57Yh7/O+iNXN3?=
 =?us-ascii?Q?pFwxPt8AdVRfU7oaC4CalIuENuXzjCUqqMVL7dAlwQeKqd83e0nkr2C3Qu8i?=
 =?us-ascii?Q?QoXJv6vTPuFgMHgZblAI/HdTOgBU3yTBY3SOIyks/IDMuxpVFopdw5xUwnGC?=
 =?us-ascii?Q?Xqmz0DCQepJQCODP3XkssvOJ3p9wFxGMWdUflAMTNa6GPWzhDh8CZF4Oc4Hs?=
 =?us-ascii?Q?5bkh3TZqaIiWvMt1Tc0i5onkYcMrImIbNha9L5T5AEak0VaGSgvsVDbmqH4x?=
 =?us-ascii?Q?Ojoyp3LAxWgRTCrusG+3jV5ft1SdcJglKfF+spxV2BYgupzBrvAIgrq5C/a1?=
 =?us-ascii?Q?Y6xZI7Fci4w+7S+8fs7Vw7bSFr90DtxCafVXXteNDUB6fthOOgtDXzlwTJCS?=
 =?us-ascii?Q?Ig0Lu9gGeLPIQ7F/7vNbcmWwWfwhY0WIZKBOmS3g2Zcp4J8EJL8zDQ4JZoiI?=
 =?us-ascii?Q?z9jaHWl3hqzBXRcP8kADl354R25oZJWwy83/vh6E7cgMrpJ5qxgXyhKKpYZE?=
 =?us-ascii?Q?zLWM3bz9CXRUryA5jVD/IBlGqRlwqVd5+7cbo+gzNhSfrSID2bbqLksSfHxx?=
 =?us-ascii?Q?j593jJtusqJU/cZD6y24dEaOaxR41VoXXlWpgUwerZxOFelkKYwsG/EjGban?=
 =?us-ascii?Q?h/49QqvC3BS5rhCpkvmhnKeLOxjGSHuzwo/NP9yuutARLvP73A+MHG/bThLu?=
 =?us-ascii?Q?2/imUGWeodmNYyNlo6/qNZo9JyHMvFblT02qZGAoE4REWAgWcynz6OQT+UF6?=
 =?us-ascii?Q?c4WxxYjJjWzoGIm+VchOumLNFVdXZVsYa1HfsWkD1uKHPg1p9ma+aS9xglme?=
 =?us-ascii?Q?1hDUxmd2i5xkwK6ycPdLcXABqrIyHLHeN6uje2ygOVlhdoF03DUWtuhuaaC6?=
 =?us-ascii?Q?1vqCzG/RplvOv8nCAI1rqxxvUF9QluGzbrDTImxGlGJiOO9L8hbEntkWbVbc?=
 =?us-ascii?Q?uZJWT9NZ7OI04FJE5/1GJKyX2pJYs0vKeK7MYneyIFPfMldNWE5jKsXPUeGC?=
 =?us-ascii?Q?olOQ/oLtAS/4EzhKhsulQBDu7SXhYkTp8iBZ8fP5JKAMsHA1Dqj8TGPPq3Y2?=
 =?us-ascii?Q?yAzoEA/Oo5YPEm53wHhUtqKLB0nfVsb+K+iAq7M+nOcuaBk5KfJXhFpYTyiG?=
 =?us-ascii?Q?xTpuSejnKFwFE5r5L7rIiMUI?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37d0c9c7-3410-4e95-d1a4-08d8c89db0ce
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2021 23:44:47.6193
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: shdamJqGK+h0kbVltYQjlgM1BL4WkBe9iyn0EMr+RRNWTWDW+re2z468fbtPPGorXTJjKFjsLlQ0/3TyyTC0dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

If the output of the testing script is very large,
the fwrite called by the parent in
wait_child would start blocking. That would slow down
the parent speed in clearing the pipe buffer.

This is an issue because the pipe is Non-Blocking.
so the child(ex: a bash script)
who was designed to output to what he thinks is a
is stdout, might error out due to EAGAIN (pipe full).

The proposed fix is to remove pipes and just let the child
write directly to stdout (same his parent)

This would mean that the parent no longer control the output
of the child.

Signed-off-by: Yi Fan Yu <yifan.yu@windriver.com>
---
 utils.c | 53 ++++++++---------------------------------------------
 1 file changed, 8 insertions(+), 45 deletions(-)

diff --git a/utils.c b/utils.c
index a4e190e..5d62ced 100644
--- a/utils.c
+++ b/utils.c
@@ -274,12 +274,14 @@ run_child(char *run_ptest, int fd_stdout, int fd_stde=
rr)
 	argv[0] =3D run_ptest;
 	argv[1] =3D NULL;
=20
+	/* since it isn't use by the child, close(fd_stderr) ? */
+	close(fd_stderr);
+
 	dup2(fd_stdout, STDOUT_FILENO);
 	// XXX: Redirect stderr to stdout to avoid buffer ordering problems.
 	dup2(fd_stdout, STDERR_FILENO);
=20
-	/* since it isn't use by the child, close(fd_stderr) ? */
-	close(fd_stderr); /* try using to see if this fixes bash run-read. rwm to=
do */
+
 	close_fds();
=20
 	execv(run_ptest, argv);
@@ -290,20 +292,13 @@ run_child(char *run_ptest, int fd_stdout, int fd_stde=
rr)
 static inline int
 wait_child(pid_t pid, int timeout, int *fds, FILE **fps, int *timeouted)
 {
-	struct pollfd pfds[2];
 	struct timespec sentinel;
 	clockid_t clock =3D CLOCK_MONOTONIC;
 	int looping =3D 1;
-	int r;
=20
 	int status =3D -1;
 	int waitflags;
=20
-	pfds[0].fd =3D fds[0];
-	pfds[0].events =3D POLLIN;
-	pfds[1].fd =3D fds[1];
-	pfds[1].events =3D POLLIN;
-
 	if (clock_gettime(clock, &sentinel) =3D=3D -1) {
 		clock =3D CLOCK_REALTIME;
 		clock_gettime(clock, &sentinel);
@@ -328,29 +323,10 @@ wait_child(pid_t pid, int timeout, int *fds, FILE **f=
ps, int *timeouted)
 		if (waitpid(pid, &status, waitflags) =3D=3D pid)
 			looping =3D 0;
=20
-		r =3D poll(pfds, 2, WAIT_CHILD_POLL_TIMEOUT_MS);
-		if (r > 0) {
-			char buf[WAIT_CHILD_BUF_MAX_SIZE];
-			ssize_t n;
-
-			if (pfds[0].revents !=3D 0) {
-				while ((n =3D read(fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
-					fwrite(buf, (size_t)n, 1, fps[0]);
-			}
-
-			if (pfds[1].revents !=3D 0) {
-				while ((n =3D read(fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0) {
-					fflush(fps[0]);
-					fwrite(buf, (size_t)n, 1, fps[1]);
-					fflush(fps[1]);
-				}
-			}
-
-			clock_gettime(clock, &sentinel);
-		}
-	}
+        }
=20
 	fflush(fps[0]);
+
 	return status;
 }
=20
@@ -412,8 +388,6 @@ run_ptests(struct ptest_list *head, const struct ptest_=
options opts,
 	char stime[GET_STIME_BUF_SIZE];
=20
 	pid_t child;
-	int pipefd_stdout[2];
-	int pipefd_stderr[2];
 	int timeouted;
 	time_t sttime, entime;
 	time_t duration;
@@ -428,14 +402,6 @@ run_ptests(struct ptest_list *head, const struct ptest=
_options opts,
=20
 	do
 	{
-		if ((rc =3D pipe2(pipefd_stdout, O_NONBLOCK)) =3D=3D -1)=20
-			break;
-
-		if ((rc =3D pipe2(pipefd_stderr, O_NONBLOCK)) =3D=3D -1) {
-			close(pipefd_stdout[0]);
-			close(pipefd_stdout[1]);
-			break;
-		}
 		fprintf(fp, "START: %s\n", progname);
 		if (isatty(0) && ioctl(0, TIOCNOTTY) =3D=3D -1) {
 			fprintf(fp, "ERROR: Unable to detach from controlling tty, %s\n", strer=
ror(errno));
@@ -474,11 +440,10 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,
 					fprintf(fp, "ERROR: Unable to attach to controlling tty, %s\n", strer=
ror(errno));
 				}
=20
-				run_child(p->run_ptest, pipefd_stdout[1], pipefd_stderr[1]);
+				run_child(p->run_ptest, STDOUT_FILENO, STDERR_FILENO);
=20
 			} else {
 				int status;
-				int fds[2]; fds[0] =3D pipefd_stdout[0]; fds[1] =3D pipefd_stderr[0];
 				FILE *fps[2]; fps[0] =3D fp; fps[1] =3D fp_stderr;
=20
 				if (setpgid(child, pgid) =3D=3D -1) {
@@ -489,7 +454,7 @@ run_ptests(struct ptest_list *head, const struct ptest_=
options opts,
 				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
 				fprintf(fp, "BEGIN: %s\n", ptest_dir);
=20
-				status =3D wait_child(child, opts.timeout, fds, fps, &timeouted);
+				status =3D wait_child(child, opts.timeout, NULL, fps, &timeouted);
 				entime =3D time(NULL);
 				duration =3D entime - sttime;
=20
@@ -510,8 +475,6 @@ run_ptests(struct ptest_list *head, const struct ptest_=
options opts,
 		PTEST_LIST_ITERATE_END
 		fprintf(fp, "STOP: %s\n", progname);
=20
-		close(pipefd_stdout[0]); close(pipefd_stdout[1]);
-		close(pipefd_stderr[0]); close(pipefd_stderr[1]);
 	} while (0);
=20
 	if (rc =3D=3D -1)=20
--=20
2.25.1

