Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DAAFE00D89; Wed, 24 Jul 2019 04:23:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.66 listed in list.dnswl.org]
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36396E00D9F
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 04:23:32 -0700 (PDT)
Received: by mail-lf1-f66.google.com with SMTP id p197so31668739lfa.2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 04:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=Z0yfWretDFm73sCEl+EhEGjNOGjuPq2RQpV+bzxbYo0=;
	b=m+5u9u56kKp4js2rWCKLScCLqIi4bkFLI4EWdwE91kr6dyZ8QAQcbYQdoTwaO4BZJ3
	T02O3icuzkTxM/+6PTUbHs6Nha89Uls35xnBRpxsv2zNg12FpJU9RA2uExe0T4nLJhp5
	7PHRh2bro+qKa+n9SjCtdl8zbqRQxVQyKJFLiLqAt6pd3Dqwehz1DdrnXrGdkoWeFd9J
	IrwZhwso3zzAQgqxI3f/h6sYMhUzZqprD1+HtfqyU3LaINbnPqvlcwc/uEz8yFGkKDb4
	muC6FXRQr55vnZRkNOBWT0mHKNSacxFrdPvNC+tKNRSD4beenG6JdGokR3L45q+aJINY
	CTrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Z0yfWretDFm73sCEl+EhEGjNOGjuPq2RQpV+bzxbYo0=;
	b=mmNv0nYqxYEqnI4ZteWZLlOhbZos53Ja1fz54LoUaH3iLyfMqjjZJMohij1+fNeWfO
	PD2hM5+gxnzMZIDajLvt3ei+tSU+WHR6acXvQLHk1AG4UuGF4kuKaVscHvXU0s1sbd37
	/rTbwg85SWw562FVPw5cbzqrScvbw5E8s21h60/ZW7NprsLKk6GFFX7XeDlG1dXXVJ1w
	ZeVe4eZdubUTn4voTTFpbCFfozWBn0cBt6NE95lwmNTA/tnbltzHYABvA51Ni/cGweIP
	ajaOIQ1NGjCsBBQnJbPFThBPhR28PVgyrBlyNB/Kxz4yg//zeU3sABVn1IrexJQPDnnV
	0PMA==
X-Gm-Message-State: APjAAAVxoodeN7Nrz+Y3zxyJZ9DVEnyw56gC5Tl5ViTnAIhp6Qt8Nzni
	jWxGpb1CzQqRUJA1tAUjYnN4Zo9XtTY=
X-Google-Smtp-Source: APXvYqyMp8w8vt66f+mPpJkjetp4geuck6osyBJQwIASA5jOfz0+r8K0BdMQL4KXzmAn78vWzL91hg==
X-Received: by 2002:a05:6512:15a:: with SMTP id
	m26mr37188971lfo.71.1563967410955; 
	Wed, 24 Jul 2019 04:23:30 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id d7sm6982113lfa.86.2019.07.24.04.23.29
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 04:23:30 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
X-Google-Original-From: Dmitry Eremin-Solenikov
	<dmitry_eremin-solenikov@mentor.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 14:23:26 +0300
Message-Id: <20190724112326.960-3-dmitry_eremin-solenikov@mentor.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724112326.960-1-dmitry_eremin-solenikov@mentor.com>
References: <20190724112326.960-1-dmitry_eremin-solenikov@mentor.com>
MIME-Version: 1.0
Subject: [meta-integrity][PATCH 3/3] ima-evm-utils: refresh xattr patch
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
X-List-Received-Date: Wed, 24 Jul 2019 11:23:35 -0000
Content-Transfer-Encoding: 8bit

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 .../evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch  | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
index c0bdd9b496de..ffa65dfb00a1 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
@@ -23,9 +23,9 @@ diff --git a/src/evmctl.c b/src/evmctl.c
 index c54efbb..23cf54c 100644
 --- a/src/evmctl.c
 +++ b/src/evmctl.c
-@@ -56,6 +56,18 @@
- #include <ctype.h>
+@@ -57,6 +57,18 @@
  #include <termios.h>
+ #include <assert.h>
  
 +/*
 + * linux/xattr.h might be old to have this. Allow compilation on older
-- 
2.20.1


