Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FD8CCA47F
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 13:44:49 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web08.9332.1655559880163913598
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qQnqLjZn;
 spf=pass (domain: gmail.com, ip: 209.85.214.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id d5so6033647plo.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=yxLlLcKbvBZEKQebBVoSzHe1D9E6CBq0UpJ/4ijBfgE=;
        b=qQnqLjZn1HkxFDvYsecipWQMprEH7gAz/570vAV6+isdQxQBOPjckrSTM3q3aNMmQI
         ycR81fiq0tZbpbFx9KB4TnBM+j8QrhRbSRHFq0FsiS0hzkmI6Swoanmt7BKcOgw0HKD7
         1PxmTiZtFJ6XfeA0Tjs1k8MngrPf65ZC8K7ypxBaJTIFDm11bdcLD865qLXwQFBNc7aL
         M6Qt3D4rB4fxbegd6Y3ehD9Ib/1xgG4OMRfokeazeXzlKD6pbHzhy7gCutKJMUKCR4iJ
         mSNsjGRQ1E4qWbeDxCXVkldhPl7Zb/+FY9eSrJv5/1kfSPRX+CBWn7uc0F3UHgfonOkS
         jkAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yxLlLcKbvBZEKQebBVoSzHe1D9E6CBq0UpJ/4ijBfgE=;
        b=f8ZwOFrIgn2FUy9W7JP/u+yp6jW+0qtzDtv2axKvtviEgyXm1DdYqQROb7ln8mp0ar
         evNVKgtbOFHkCj3lJwhv2FzzLZrfI2RvNCphBz9lTElD3UIDgVUenQp8rw9eO9rdQbUw
         iRQHTCbXBmchCoJEQioJZzIhNmvMX4lt5OuDdfmmotnkbvwWMHRXdpoBR/hO0pM4m0TO
         MiccFHqUhVKtY7mosAzczHUfNQR5xipTPYKj5IhbHGla8+sobAbSJCEf50v7BLHLo+la
         0DOEKMW5IH5jQhKUL69uFANjB+sX0b4QmnohI5aq24IZLsjccIuIrmb3cbjTvOmbhmEt
         8O0A==
X-Gm-Message-State: AJIora9qU69s2/SvyX+mv+7PAWqbJaz/c+XRyu77k2Sj1EBQ5JFXVk6n
	qX9YKjIWR7QVwdg0iEO5kdi3r8nCSAU=
X-Google-Smtp-Source: 
 AGRyM1uN2+mlxO1r26ePqF0qVKSSr56+IjXs6WiBNGm4x92NvEstVJeXWvDSPVfuF/2r/Jf47ZOIpQ==
X-Received: by 2002:a17:903:234f:b0:16a:30f:4a85 with SMTP id
 c15-20020a170903234f00b0016a030f4a85mr9190061plh.89.1655559879245;
        Sat, 18 Jun 2022 06:44:39 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b704:2c1c:4bb5:cab1])
        by smtp.gmail.com with ESMTPSA id
 o26-20020a63921a000000b00408a3724b38sm5689880pgd.76.2022.06.18.06.44.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 06:44:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/9] smack-test: more py3 covertion
Date: Sat, 18 Jun 2022 06:44:28 -0700
Message-Id: <20220618134435.2370878-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618134435.2370878-1-akuster808@gmail.com>
References: <20220618134435.2370878-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 13:44:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57344

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
2.25.1


