Return-Path: <garbados@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C534EE00BAB; Wed,  9 Aug 2017 19:33:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (garbados[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 578DAE00B77
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 19:33:53 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id u185so7326458pgb.0
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 19:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=1EWb+YpI2lg196yn3ZyWWR98C8pZR39Sibno1Fr8XHo=;
	b=FA/hkCRc8cdyEKvi38cmfncMnQ9nZI+pwFb095lRCnrXw4Q6ojGBTpki8py2cz5qia
	wKIMWf9bEX6U+6lrC7eVCBMxmO9pLGVs7JNnPPvP4Rstk+LXiuAjhUMGszmN9p2t+RWf
	xyjxqdA5qWVcfglI++P1wkWP319qVKqN5tHPyIvzUzk6ECWmvzqtzbjA0sChzKyCPBRq
	iFuNxl0z7HRH59Aw4xOdRf+ie/LNIkCqQK0/KLOP6asDnEnNlgJl9vV7VgIC/9jA0hys
	h2ItyWSq1KHvrz2HFGAhi6KRscPgMBGTbVyMdGTduNZzuooG039QHxaAEXmRp/V0WOJ9
	bp4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=1EWb+YpI2lg196yn3ZyWWR98C8pZR39Sibno1Fr8XHo=;
	b=Jm4udyQ+bljHLgM7YZVnrTuv8je4ffBv5jNzsiFNDUvzgXccYqiHL5AzF+5vQ7d05c
	dnj4mh9mRM0wY71wadi/MucB8yT/CuowNO0CjJYmMKYZvXQirUcSIlQwygJovo4nRiYv
	6Q/fQbJTQLGp9C/uzvp7q2EJ0HcPkKtIZJBkO3MDXvNEV3g853rhQIw/NnpORpmyO5BY
	oFwcAbHJXFnZrlcB9YtXWk8MGt5k/0SNdas3IlC+DiAqVIp2PvzTvKUcknhOowVF98OT
	xFpoTc3WC+FzHr7s5x39hYwL/2wNlbJs1T82T4SphWAhddm+xw1olzt/0xb7DlMN7Nlx
	YLRg==
X-Gm-Message-State: AHYfb5i3NaLVjhfhJx+k+A4fbUazkIGhRJ72zSqcuZw2wgfyp0Svvnb1
	umwFsTkSe8j9rfIo
X-Received: by 10.84.130.9 with SMTP id 9mr11270044plc.388.1502332433268;
	Wed, 09 Aug 2017 19:33:53 -0700 (PDT)
Received: from deus.apple.sh.pie ([2601:1c2:303:6b0:9dbb:ee08:267b:1277])
	by smtp.gmail.com with ESMTPSA id
	l24sm4411313pgo.43.2017.08.09.19.33.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 09 Aug 2017 19:33:51 -0700 (PDT)
From: Diana Thayer <garbados@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  9 Aug 2017 19:33:07 -0700
Message-Id: <1502332387-11639-1-git-send-email-garbados@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [layerindex-web][PATCH] readme : add example development settings
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Aug 2017 02:33:54 -0000

Configuring a development environment for the project can be non-obvious.
This WIP patch updates the readme and includes example dev settings
in "dev_settings.py" which can be used (hopefully) in a general case
to get new contributors into a development environment quickly.

Signed-off-by: Diana Thayer <garbados@gmail.com>
---
 README          | 11 +++++++++++
 dev_settings.py | 22 ++++++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 dev_settings.py

diff --git a/README b/README
index 62f739d..d4da2c8 100644
--- a/README
+++ b/README
@@ -199,6 +199,17 @@ doesn't have the same name, so the update_classic_status.py script
 wouldn't be able to pick it up.
 
 
+Using Custom Settings
+---------------------
+
+You will need to modify settings.py to run layerindex-web in either development or production. As an example of development settings, you can use dev_settings.py. It uses SQLite3 as a database and a console backend for email, so that sent emails show up in your terminal rather than being sent anywhere.
+
+Then, to use these settings in with `manage.py`, do this:
+
+```bash
+python3 manage.py runserver --settings=dev_settings
+```
+
 
 Maintenance
 -----------
diff --git a/dev_settings.py b/dev_settings.py
new file mode 100644
index 0000000..cf04623
--- /dev/null
+++ b/dev_settings.py
@@ -0,0 +1,22 @@
+import os
+import hashlib
+import random
+from settings import *
+
+WORKDIR = os.path.dirname(os.path.realpath(__file__))
+
+SECRET_KEY = hashlib.md5(str(random.random()).format(10).encode('utf-8')).hexdigest()
+
+DEBUG = True
+TEMPLATE_DEBUG = DEBUG
+
+ADMINS = (
+    ('admin', 'admin@example.com'),
+)
+
+DATABASES['default']['ENGINE'] = 'django.db.backends.sqlite3'
+DATABASES['default']['NAME'] = os.sep.join([WORKDIR, 'layerindex-sql'])
+
+EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'
+
+LAYER_FETCH_DIR = os.sep.join([WORKDIR, "layers"])
-- 
2.7.4


