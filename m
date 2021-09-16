Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web08.466.1631796385613699019
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 05:46:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qKpLzdsK;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id w29so9282329wra.8
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 05:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qdCpYSh/EN7n8oXU+lnAwr7UFuVKRIGzom05mwL02no=;
        b=qKpLzdsKSZWIh+2Ibl4zzL9RuUwPLUnU8wMmgkzNKV6wAiULVKfz705yLF/nwFNcuU
         TCG0C9ESeE5/+qCs5hYJvyvIZRizp4Fd1n063AIkJR39qqT+JaU1tbJ0bZ6+cTJ/9TFm
         FmzkRkrTnsyljXCvRPeO0limF92gukcTrKzpVLQ12tAOxjiAt8SzAcl6F3KXbWSShoau
         pxgci0fKw0E9wOtfM3C3/WDlJEEzdXEtI5JdL7Kw7NwdXzq6UDjTj7bQtV+UN/k5q5vM
         5MiPcvAkDhpz4ZR9JQB7w3KFP+0ocwjEZc5WC/jG3tXBi/WQ0gmQPb02RsEvq111xUW6
         FRAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qdCpYSh/EN7n8oXU+lnAwr7UFuVKRIGzom05mwL02no=;
        b=tTASrYHGxF4lN0R5jQiSZaRWaXNFm6Bg3DKMhqRPIZ3yOYlSzXbLqympBvPIOqWxps
         MoahfIoQzVNb9bTVfzL4LJAQsTr+pEW76moqs+ubeEzcDqBmSF6n+sNNluK9EoAfLsir
         xPl6yXCdd6NHTSb6Ym0EL/Xv7ME5moguiLehq2B0Z/E3vwXVDEYR9gmV+oU9t1pz7P7p
         a0zPMCgELapqpJ3DU58+i+JSOGq9IxjM5KnQhFa647peWtyVrwFmaNVjaoFSja5N6n4I
         /dyz+R/hw/vD6Oc3qtIyZkYvuoFSElV62cB1tCuaf5oPNJu/niXT6B6LnsWyipUgYXo8
         VeHg==
X-Gm-Message-State: AOAM533cT/+oOEPNoBFBEZR0nILceeeu2v/aSer5o69u8FiRuwfav6eE
	1bI1VEWiYQSCOpS0QQF1khBr8YBMklw=
X-Google-Smtp-Source: ABdhPJxOVB35J47kTUfik9p92X2/q7pumtYCrUg9uaU1gUW9CeS30N8E31+nVU9VabHJ3WtAfupA2A==
X-Received: by 2002:adf:eb4b:: with SMTP id u11mr5971893wrn.327.1631796384276;
        Thu, 16 Sep 2021 05:46:24 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from alex-lx-laptop.tec.linutronix.de (b2b-109-90-143-202.unitymedia.biz. [109.90.143.202])
        by smtp.gmail.com with ESMTPSA id l19sm3162383wrc.16.2021.09.16.05.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 05:46:23 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org,
	anibal.limon@linaro.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [ptest-runner][PATCH 3/3] utils.c: add system data collection when a test gets stuck.
Date: Thu, 16 Sep 2021 14:46:17 +0200
Message-Id: <20210916124617.72791-3-alex@linutronix.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210916124617.72791-1-alex@linutronix.de>
References: <20210916124617.72791-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently, ptest-runner simply kills the offending test without further ado,
which is not at all helpful when trying to figure out why it happens
(especially if such hangs are intermittent and rare). There's now a script
that gets executed before killing the test, so ideas on what to have in it
are welcome.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 Makefile                         |  2 +-
 ptest-runner-collect-system-data |  5 +++++
 utils.c                          | 24 ++++++++++++++++++++++++
 3 files changed, 30 insertions(+), 1 deletion(-)
 create mode 100755 ptest-runner-collect-system-data

diff --git a/Makefile b/Makefile
index a6372de..168cf5a 100644
--- a/Makefile
+++ b/Makefile
@@ -43,7 +43,7 @@ $(TEST_EXECUTABLE): $(TEST_OBJECTS)
 	$(CC) $(LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC) $(TEST_LDFLAGS)
 
 check: $(TEST_EXECUTABLE)
-	./$(TEST_EXECUTABLE) -d $(TEST_DATA)
+	PATH=.:$(PATH) ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
 
 .c.o:
 	$(CC) $(CFLAGS) -c $< -o $@
diff --git a/ptest-runner-collect-system-data b/ptest-runner-collect-system-data
new file mode 100755
index 0000000..5bfeaf3
--- /dev/null
+++ b/ptest-runner-collect-system-data
@@ -0,0 +1,5 @@
+#!/bin/sh
+# Other ideas on what to do when a ptest gets stuck welcome.
+pstree -a -l
+df
+free
diff --git a/utils.c b/utils.c
index 58c3aa1..a67ac11 100644
--- a/utils.c
+++ b/utils.c
@@ -281,6 +281,27 @@ close_fds(void)
    	}
 }
 
+static void
+collect_system_state(FILE* fout)
+{
+	char *cmd = "ptest-runner-collect-system-data";
+
+	char buf[1024];
+	FILE *fp;
+
+	if ((fp = popen(cmd, "r")) == NULL) {
+		fprintf(fout, "Error opening pipe!\n");
+	}
+
+	while (fgets(buf, 1024, fp) != NULL) {
+		fprintf(fout, "%s", buf);
+	}
+
+	if(pclose(fp))  {
+		fprintf(fout, "Command not found or exited with error status\n");
+	}
+}
+
 static void *
 read_child(void *arg)
 {
@@ -313,6 +334,9 @@ read_child(void *arg)
 			}
 
 		} else if (r == 0) {
+			// no output from the test after a timeout; the test is stuck, so collect
+			// as much data from the system as possible and kill the test
+			collect_system_state(_child_reader.fps[0]);
 			_child_reader.timeouted = 1;
 			kill(-_child_reader.pid, SIGKILL);
                 }
-- 
2.33.0

