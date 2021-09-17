Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web08.12784.1631886053154348660
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 06:40:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cpndqaKV;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id w29so15247395wra.8
        for <yocto@lists.yoctoproject.org>; Fri, 17 Sep 2021 06:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JK7RYG1eaVv+RJIsk46uYE8Zp4yoU6hGcqTqdDPNvP8=;
        b=cpndqaKVzHPQwOyFH3t4wEBEvHoHgf7Evk6PKgEwPJNWEswRkljvTIxNcXwIwErykR
         Pek4DleGgOld7CYLU6UWXvCntxskEBTWQrrqV/BDYstpIgVFM7Rd7CsHStLORgHyrFse
         la5ygMMgFyAWp35kwFpM5Qw23IW2bH4jqH+uulaKPB4ZQSfHVYVhR1uoYcuyunf6SBtE
         m1z05u46/opuVC8mN+104+XOHSBOxENqleOHh6AEHp1tDReksULH11KQ4AnPyc0IIqdR
         bY9UGXxupayLqULiRWJy2qiSYWNuQ9GwR1RLbDqJ6QLBdJyc4sFCbupNQ/gBK8nTqR5l
         OSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JK7RYG1eaVv+RJIsk46uYE8Zp4yoU6hGcqTqdDPNvP8=;
        b=EtJnYr1CjgXmm9bxyVySVdJCIMlDimXrCAiQmhhuuG8nXF0dDbJ8ZdupNJXq7bgI5Z
         NmexLcPxM7nYQzP+UwZ/i8Sii+X/aU6rx3e0CNKVELwmf2iJj1e4n+ssScmFTf+2c88o
         DJs6qDrLMqECO1uptNGHOwajh4V8RXqtpOrofkR0kJ09/iCp31rBz7U5IPaEdFeh5ITW
         WYIIbRwu+uZKDzW8aStovNgMm1UXhBbzA2/tZzbNZOPE42hYveXrHZQITDcoig7fdA3l
         zOQCprpqP4+6uNpUloBv1BMAM2VMk5/8yLxkn2SKKTgZmhbm3F5L5icRyNeZtnOt+t6L
         1CZA==
X-Gm-Message-State: AOAM533lzq70M4EW1aBa48gBaccsRMA+pJWvykpsZs6R1DZtJMsvLZPf
	OSYYcPoyCFzZCj7SB6zmtqlw0zV/VQk=
X-Google-Smtp-Source: ABdhPJxC+e1dpvR9Q1wQ9259tam5L3gdlcQjzwQfM9vchNBqGhquEI1Qq08E+diI1282zk8W9r47qg==
X-Received: by 2002:a5d:54cf:: with SMTP id x15mr12580809wrv.27.1631886051475;
        Fri, 17 Sep 2021 06:40:51 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([46.183.103.17])
        by smtp.gmail.com with ESMTPSA id j23sm7317192wmo.14.2021.09.17.06.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Sep 2021 06:40:51 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [ptest-runner][PATCH 3/3] utils.c: add system data collection when a test gets stuck.
Date: Fri, 17 Sep 2021 15:40:42 +0200
Message-Id: <20210917134042.179202-3-alex@linutronix.de>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210917134042.179202-1-alex@linutronix.de>
References: <20210917134042.179202-1-alex@linutronix.de>
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
 ptest-runner-collect-system-data |  6 ++++++
 utils.c                          | 24 ++++++++++++++++++++++++
 3 files changed, 31 insertions(+), 1 deletion(-)
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
index 0000000..ba335da
--- /dev/null
+++ b/ptest-runner-collect-system-data
@@ -0,0 +1,6 @@
+#!/bin/sh
+# Other ideas on what to do when a ptest gets stuck welcome.
+dmesg
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

