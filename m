Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F430E7D24C
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 07:49:40 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.13942.1695714572604203084
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 00:49:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=W8z60e/n;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-9ae2cc4d17eso1016989866b.1
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 00:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695714571; x=1696319371; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CtjAX/P8d/jo/+6BAIrUMTyq4fqJ/4PC4WFAO706Y3o=;
        b=W8z60e/np/t8RdBKRs4RWm6Sa7SLYTyqtc8NR9G9o13dszBHJZnUnTBNYKRXs3PiFm
         kka0SfICFneLAHJ4SRJMAjUnvqRgI/JuShkA/fklsAWKS+sWq+TvYudnYKtQ7cobZWaP
         9q7glPqd4LA8Xgk7GqsHg+1WTdaxg42Bd4KJ/c5muyrpnaj2l6QHM0kqOcoUt0R/DoZx
         qCsk3UVvmFviNESFsK+UN/83Vt7qNpRsM7BVxNPd3VuJtBoyqHbhb16C5Q90EB/jjtaj
         pdmj1mzVSzpXDUHWCilUp46rKImjUq9elnMMrcuIboGgBJpsk8YX1VhyR8gJ9iAlcYtx
         hsmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695714571; x=1696319371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CtjAX/P8d/jo/+6BAIrUMTyq4fqJ/4PC4WFAO706Y3o=;
        b=Z2GWJ/xALlVSX1/YJZsmDHp8MUrqiTEvBuAVDJMo2TNWb/RCx0zbkDS9IexgNL24p+
         aL1TeJcPz3W9eGMf3EJ/hRLamQg+B8taY75DvHoL5t9hXnpprf2xyfWG2BM+ChlPP0QO
         Yu/z9CYfXl5q7Ay0YEMjt0YQVHRYZkteLH1jhKpHb/h6kFFKGnGt9kbTigV20OygYA2I
         javBtidaW2QuOoTYkyEAoSodr/RQhSMYv3LTCQSBDcVAVvXZiJN3EePe/wFALdgxWB4f
         1NwFefdL3ZK1CMSZjPwWXXo9+4avzPnLm0eplP5n2UqOysov7mtz7tNsLGACl6POg+sX
         4ZlQ==
X-Gm-Message-State: AOJu0YwLunJRrTZHzBZoxyBm83MouaNhWIGEnUZOOBA8gXn7Xt2ItTCM
	28SaGU2QGTo+/6BG7ZUkzKth8UgpnWQ=
X-Google-Smtp-Source: AGHT+IHvQ74WGW9M6UggvFk3L2Ltb/3ykDuC1orNIyoAUxE0ix3OmXi7dnoHblnEntZjWKRxOXZQLg==
X-Received: by 2002:a17:907:78d5:b0:9ae:729c:f647 with SMTP id kv21-20020a17090778d500b009ae729cf647mr6819169ejc.77.1695714570714;
        Tue, 26 Sep 2023 00:49:30 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id i4-20020a170906850400b00992a8a54f32sm7385150ejx.139.2023.09.26.00.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 00:49:30 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][kirkstone][PATCH 2/2] smack-test: more py3 covertion
Date: Tue, 26 Sep 2023 09:49:22 +0200
Message-ID: <20230926074922.2405-2-martin.jansa@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230926074922.2405-1-martin.jansa@gmail.com>
References: <20230926074922.2405-1-martin.jansa@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 07:49:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61118

From: Armin Kuster <akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/smack/smack-test/notroot.py              | 12 ++++++------
 .../smack/smack-test/smack_test_file_access.sh       | 10 +++++-----
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/recipes-mac/smack/smack-test/notroot.py b/recipes-mac/smack/smack-test/notroot.py
index f0eb0b5..89f83f4 100644
--- a/recipes-mac/smack/smack-test/notroot.py
+++ b/recipes-mac/smack/smack-test/notroot.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 #
 # Script used for running executables with custom labels, as well as custom uid/gid
 # Process label is changed by writing to /proc/self/attr/curent
@@ -9,8 +9,8 @@
 # """By  default,  each  user  in Debian GNU/Linux is given a corresponding group 
 # with the same name. """
 #
-# Usage: root@desk:~# python notroot.py <uid> <label> <full_path_to_executable> [arguments ..]
-# eg: python notroot.py 1000 User::Label /bin/ping -c 3 192.168.1.1
+# Usage: root@desk:~# python3 notroot.py <uid> <label> <full_path_to_executable> [arguments ..]
+# eg: python3 notroot.py 1000 User::Label /bin/ping -c 3 192.168.1.1
 #
 # Author: Alexandru Cornea <alexandru.cornea@intel.com>
 import os
@@ -28,6 +28,6 @@ try:
 	os.setuid(uid)	
 	os.execv(path,sys.argv)
 
-except Exception,e:
-	print e.message
-	sys.exit(1)
+except Exception as e:
+	print(e.strerror)
+	sys.exit(-1)
diff --git a/recipes-mac/smack/smack-test/smack_test_file_access.sh b/recipes-mac/smack/smack-test/smack_test_file_access.sh
index 5a0ce84..598f1df 100644
--- a/recipes-mac/smack/smack-test/smack_test_file_access.sh
+++ b/recipes-mac/smack/smack-test/smack_test_file_access.sh
@@ -8,7 +8,7 @@ CAT=`which cat`
 ECHO=`which echo`
 uid=1000
 initial_label=`cat /proc/self/attr/current`
-python $TMP/notroot.py $uid "TheOther" $ECHO 'TEST' > $test_file
+python3 $TMP/notroot.py $uid "TheOther" $ECHO 'TEST' > $test_file
 chsmack -a "TheOther" $test_file
 
 #        12345678901234567890123456789012345678901234567890123456
@@ -17,7 +17,7 @@ rule_ro="TheOne                  TheOther                r----"
 
 # Remove pre-existent rules for "TheOne TheOther <access>"
 echo -n "$delrule" > $SMACK_PATH/load
-python $TMP/notroot.py $uid "TheOne" $CAT $test_file 2>&1 1>/dev/null | grep -q "Permission denied" || RC=$?
+python3 $TMP/notroot.py $uid "TheOne" $CAT $test_file 2>&1 1>/dev/null | grep -q "Permission denied" || RC=$?
 if [ $RC -ne 0 ]; then
 	echo "Process with different label than the test file and no read access on it can read it"
 	exit $RC
@@ -25,7 +25,7 @@ fi
 
 # adding read access
 echo -n "$rule_ro" > $SMACK_PATH/load
-python $TMP/notroot.py $uid "TheOne" $CAT $test_file | grep -q "TEST" || RC=$?
+python3 $TMP/notroot.py $uid "TheOne" $CAT $test_file | grep -q "TEST" || RC=$?
 if [ $RC -ne 0 ]; then
 	echo "Process with different label than the test file but with read access on it cannot read it"
 	exit $RC
@@ -36,7 +36,7 @@ echo -n "$delrule" > $SMACK_PATH/load
 # changing label of test file to *
 # according to SMACK documentation, read access on a * object is always permitted
 chsmack -a '*' $test_file
-python $TMP/notroot.py $uid "TheOne" $CAT $test_file | grep -q "TEST" || RC=$?
+python3 $TMP/notroot.py $uid "TheOne" $CAT $test_file | grep -q "TEST" || RC=$?
 if [ $RC -ne 0 ]; then
 	echo  "Process cannot read file with * label"
 	exit $RC
@@ -45,7 +45,7 @@ fi
 # changing subject label to *
 # according to SMACK documentation, every access requested by a star labeled subject is rejected
 TOUCH=`which touch`
-python $TMP/notroot.py $uid '*' $TOUCH $TMP/test_file_2
+python3 $TMP/notroot.py $uid '*' $TOUCH $TMP/test_file_2
 ls -la $TMP/test_file_2 2>&1 | grep -q 'No such file or directory' || RC=$?
 if [ $RC -ne 0 ];then
 	echo "Process with label '*' should not have any access"
-- 
2.42.0


