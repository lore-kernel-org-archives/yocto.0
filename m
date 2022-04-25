Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72658C54EFD
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.7])
 by mx.groups.io with SMTP id smtpd.web10.26689.1650873625220789883
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=xHtxL82+;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.7,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.18.106_.trendmicro.com (unknown [172.21.182.42])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 3FD17100022F5
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:23 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873621.646000
X-TM-MAIL-UUID: 67331029-592d-4d51-ba4b-ecbc11936600
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (unknown
 [104.47.18.106])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 9DFE210002181
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SxVvTQoWwDEto0wp+Clna/t/E0RLRfDaPgSdW6WmdddXlu2UqBpV8v3IHmYr5KJTqWY0sNIc+HgNFaDGIkNKNZuQ34VsSF/zo39T1Qt+CefZLRFyYBkNvL7t42ZsNvj0CEPUCTKm3/BEODt4HclsThrn+8GFQHTSqQMHKS+DXMWMjJfqnKsReVMSd9Rd3Uc/IgJhAXEoiA4Nzc4XS5GHkisfFQ4SpgaIaXWLUZgwYUFs1h2jN+6P1ibRU6eBIfCP7yyiXs0SAxAWf6QnTcEGCUmKU+eQKL1eU0tbgoxkklYmXENopcu9cdUhysgtV/iD6aSfu8OC3hYQN5Up4u49mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90J5/kXnD3pPG6MbwHCxv/ucmZZsGgUsRwXSbImZ5ro=;
 b=OMvzr2+08ToqqiH2Tj1OdlNTnVAsMxY5EFG5bmpN0Miq0yvrVGkgLh00xp4zGK7Z9zYkGamWNkDw7fJuNJebbg6vSEgusxXPyeI/VwIhfwb4IHFHZJ7v/SEQqdeLAvuK5uCtXI7mzvYqwBF7zpw7Qr93kPlTKOvwqkvxMYxUCNbBcD3doTVUhn6woYKYNQQWRDY4GoLW2RtktiDlc54/JTR7FNWOdTcGNaDVGtFw+fPQrzHeVMWJy0p0LOH7Vxv3Hpd1Nf5Ewfbj3HBkruu9oRR7hSa3g8z3Blk2b/XLVCFuBa02L3Vgp7D7IfmMsr/AXfbFs+S5Lw8rby8q5VVjkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 217.66.60.4) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=opensynergy.com; dmarc=pass (p=none sp=none pct=100)
 action=none header.from=opensynergy.com; dkim=none (message not signed);
 arc=none
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 217.66.60.4)
 smtp.mailfrom=opensynergy.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=opensynergy.com;
Received-SPF: Pass (protection.outlook.com: domain of opensynergy.com
 designates 217.66.60.4 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.66.60.4; helo=SR-MAIL-03.open-synergy.com;
From: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
To: yocto@lists.yoctoproject.org
Cc: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
Subject: [psplash][RFC PATCH 02/14] Fix 'unused-result' warnings
Date: Mon, 25 Apr 2022 10:59:42 +0300
Message-Id: <20220425075954.10427-3-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 97f0de4e-590e-4e35-db23-08da2691a46e
X-MS-TrafficTypeDiagnostic: AM9PR04MB8684:EE_
X-Microsoft-Antispam-PRVS: 
	<AM9PR04MB8684468ECDCF67B3D1365806ECF89@AM9PR04MB8684.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	q8BV829HNNDcYLag+b9PNamZhGl5aTRhJ/V8kHqRFMh63L+rzijPGSbn7j6DI1C0Mmor1A0cp1vNDG0sC/n324bGDNpN/4NQ6m0HTN7RPuz28csbw9j45tQ7BEEKmxJfeOv9VpdeOCpQUO5NHnH3mW/MkiLudDCq1OQbwbN3wK3v/uyluQsccoH7MuPjmceXFRJIbBC6HJYgVTRxEbFKp484+0IZpLHG/q8I4I2uHQQ4lFyAIk7tT/kTyTfK5npm2ZZozutmVQ6KhQmaP42OQh35fBaccYCtSJYYM1utxBWuhjASfwLOUJMGpgUy5bvWBbVxYor232tK550kRYbMJuTKme8Wreg9lqFGn+DHvsa/e3uv07HFKjAqyFXxHWGT/i6drbEgjAhoHaKjv/uVhlQRe/4+6au/STr61RcF7XE60cHUJcpVE+d7P0/vjNwnpCuWouMjgknuzuUVjFP6VNpLSuonzXd0RGhICz0itRldPqyu4ojIQhASxrB9EBiCEKx8OGD/XEOZvg4MPja2c3/LL7ECtRyZ6tvuwuUsEWMKB/H3795UZcSu4Z4JPJ9fqmYj+WwU47z8fdHJR6PT3EcUPAHwe78dvhnDN7IGpibp0hCwKN8WYwqOWBWAqLgoEUOYtbYVvdvkfCbLyMo7r9pmrF6wDZwfMx+Yop95KraTgNu+TPEIjpyCRHpBxgLI
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(376002)(346002)(136003)(396003)(39830400003)(46966006)(36840700001)(83380400001)(8676002)(70586007)(4326008)(70206006)(2616005)(316002)(6916009)(86362001)(42186006)(186003)(1076003)(47076005)(336012)(508600001)(107886003)(81166007)(26005)(36860700001)(8936002)(5660300002)(40480700001)(44832011)(36756003)(2906002)(82310400005);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:19.6407
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 97f0de4e-590e-4e35-db23-08da2691a46e
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM6EUR05FT039.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8684
X-TM-AS-ERS: 104.47.18.106-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10-0.189500-4.000000
X-TMASE-MatchedRID: QxNw5Kr7aBfxUWwkULk0uancG1vVsfbQCZa9cSpBObnAuQ0xDMaXkH4q
	tYI9sRE/xRuqz2yp6boFURGsnD81bDwKObdstb0dCtzGvPCy/m6tOrovcQWGr9+tinHBPzXWDLb
	Bq7zk/lc/Aw0eUOPlqhzK5Uk364Hv74MThWsvfJgTMSg6oABUs7JEo6RFXaMBR6RHdVK85hWsHU
	lIAOKuuOgc6mX1lwNHkRoxEQkO3VF1H8bw68oiDwtuKBGekqUpbGVEmIfjf3u4pbD2Y4zp0dL1U
	sw8G5+oqrFYVfRv5U0IqcDENxkrxHwpkLs4Pfs+
X-TMASE-XGENCLOUD: 0471d38d-03bf-4391-b04f-862bf9b541fd-0-0-200-0
X-TM-Deliver-Signature: 9F5C26AF83533B7059DC3823774AE249
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873623;
	bh=TcrXXOXfg4+vr2Oh/xrw0CQC/Jodm0o/J8DUTFKvoyw=; l=3576;
	h=From:To:Date;
	b=xHtxL82+Cw9Q2pFeyE44irvpdEtHx0uhCeI2xp4uX+P/UNYz8WVnvgJh0U1DmrtUg
	 dh39lzhAh8Tx0CRIRK9OblxnhbcV9AEbtt/YNeBeDeKaBaNwRdH7qjDt3oTeFgYpv6
	 twFqftnO7lyuYwZgPz7CoiXSmIeleg9Na6t6bP+LgCcQ6MIyCWai/oiOMV9j+BIn5c
	 DUGrjpdBOnATmatJKML813kmgnDAHkTQd6vz6xqU9tttjROY4c0yCozm6I5mfF1adf
	 mNmTgIVStoobV16/KJ9A/biKdDfWlwfTzbU3CeW83jMZ3FYDgYYfV1yh40JzKVykRY
	 Cif2u5kYEZwuA==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56860

This fixes warnings such as:

    ignoring return value of 'chdir', declared with attribute warn_unused=
_result [-Wunused-result]

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-systemd.c | 36 +++++++++++++++++++++++++++++++++---
 psplash-write.c   | 23 ++++++++++++++++++-----
 psplash.c         |  5 ++++-
 3 files changed, 55 insertions(+), 9 deletions(-)

diff --git a/psplash-systemd.c b/psplash-systemd.c
index 840bd4e..dcf7e61 100644
--- a/psplash-systemd.c
+++ b/psplash-systemd.c
@@ -32,6 +32,7 @@ int get_progress(void)
 	int r;
 	char buffer[20];
 	int len;
+	ssize_t written;
=20
         /* Connect to the system bus */
 	r =3D sd_bus_new(&bus);
@@ -71,11 +72,36 @@ int get_progress(void)
 		current_progress =3D progress;
=20
 	len =3D snprintf(buffer, 20, "PROGRESS %d", (int)(current_progress * 10=
0));
-	write(pipe_fd, buffer, len + 1);
+	written =3D write(pipe_fd, buffer, len + 1);
+	if (written =3D=3D -1) {
+		/* EPIPE could mean that psplash detected boot complete sooner
+		then psplash-systemd and exited */
+		if (errno !=3D EPIPE) {
+			perror("write");
+			r =3D -1;
+			goto finish;
+		}
+	} else if (written < len + 1) {
+		fprintf(stderr, "Wrote %zd bytes, less then expected %d bytes\n",
+			written, len + 1);
+		r =3D -1;
+		goto finish;
+	}
=20
 	if (progress =3D=3D 1.0) {
 		printf("Systemd reported progress of 1.0, quit psplash.\n");
-		write(pipe_fd, "QUIT", 5);
+		written =3D write(pipe_fd, "QUIT", 5);
+		if (written =3D=3D -1) {
+			/* EPIPE could mean that psplash detected boot complete
+			sooner then psplash-systemd and exited */
+			if (errno !=3D EPIPE) {
+				perror("write");
+				r =3D -1;
+				goto finish;
+			}
+		} else if (written < 5)
+			fprintf(stderr, "Wrote %zd bytes, less then expected 5 bytes\n",
+				written);
 		r =3D -1;
 	}
=20
@@ -123,7 +149,11 @@ int main()
 	if (!rundir)
 		rundir =3D "/run";
=20
-	chdir(rundir);
+	r =3D chdir(rundir);
+	if (r < 0) {
+		perror("chdir");
+		goto finish;
+	}
=20
 	if ((pipe_fd =3D open (PSPLASH_FIFO,O_WRONLY|O_NONBLOCK)) =3D=3D -1) {
 		fprintf(stderr, "Error unable to open fifo");
diff --git a/psplash-write.c b/psplash-write.c
index eee0ea3..16b87e1 100644
--- a/psplash-write.c
+++ b/psplash-write.c
@@ -21,8 +21,10 @@
=20
 int main(int argc, char **argv)
 {
-  char *rundir;
-  int   pipe_fd;
+  char   *rundir;
+  int     pipe_fd;
+  size_t  count;
+  ssize_t written;
=20
   rundir =3D getenv("PSPLASH_FIFO_DIR");
=20
@@ -35,7 +37,10 @@ int main(int argc, char **argv)
       exit(-1);
     }
=20
-  chdir(rundir);
+  if (chdir(rundir)) {
+    perror("chdir");
+    exit(-1);
+  }
=20
   if ((pipe_fd =3D open (PSPLASH_FIFO,O_WRONLY|O_NONBLOCK)) =3D=3D -1)
     {
@@ -45,8 +50,16 @@ int main(int argc, char **argv)
       exit (-1);
     }
=20
-  write(pipe_fd, argv[1], strlen(argv[1])+1);
+  count =3D strlen(argv[1]) + 1;
+  written =3D write(pipe_fd, argv[1], count);
+  if (written =3D=3D -1) {
+    perror("write");
+    exit(-1);
+  } else if ((size_t)written < count) {
+    fprintf(stderr, "Wrote %zd bytes, less then expected %zu bytes\n",
+      written, count);
+    exit(-1);
+  }
=20
   return 0;
 }
-
diff --git a/psplash.c b/psplash.c
index 838ac13..62244ba 100644
--- a/psplash.c
+++ b/psplash.c
@@ -264,7 +264,10 @@ main (int argc, char** argv)
   if (!rundir)
     rundir =3D "/run";
=20
-  chdir(rundir);
+  if (chdir(rundir)) {
+    perror("chdir");
+    exit(-1);
+  }
=20
   if (mkfifo(PSPLASH_FIFO, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP))
     {
--=20
2.30.2


