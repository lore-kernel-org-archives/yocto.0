Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB0A7E009B9; Mon, 30 Jan 2017 00:46:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A97BDE009FD
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:43 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 75so31005742pgf.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=DerqQ5ZZnGBCrO6VoOj+uI7kawZ9dXIimdNOH1IGiwo=;
	b=fWcfAwra0M6HG1z1fbWLNQHhFpzzcZDsJFemAAYjmwSMIGocdhdbsONRZp75ntBBZO
	Yx6ZFBwvlbsLh90Z509AAxBI1A60lQSzSO51c2rYciH0i0u+Nuz30WfYpUU4mX9efcDx
	85JshheN0TKooAHZmyCQGK0cFSbeGzCswC+udDc2zz3IukkQQfSKlAGuAJN4HWEn0OQC
	qVOAnad7uT/hGnFH1FuDQ5PaJrmi5ZNUWNOxYWAL4Gqa06IuSq7rLGlj+v3ftwVSiXIE
	gkl4sJbyNVigMh28TwJBjRMCcGETeMfFyQ5HcBZxr8lOwpOGOSoIjzgrdXjNBSm/carC
	g/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=DerqQ5ZZnGBCrO6VoOj+uI7kawZ9dXIimdNOH1IGiwo=;
	b=MPWd1Z11757B+wAqFQLf6i14ZkF1KpozIQWRth9iMtqD7ep5lTnSM8VDtodzSQrFth
	CxeimoWfYQtraJdV/3yUBc6WRzF/GHZofGjWJXhu7P+VyODS33dJ6md7zB661DjqU0wW
	nK1cgvzN2hwXgd4qYVVczuMOGvvLOwaEXF0rA/FSY7WMCklIJf2VctI2cz/nRmavKjaS
	Q9tnKHro6bremD56y0xcyP+T/dOHzGnJnWQAdHmZiKcKAmnusjwlGzZyCj7I27m1pL+z
	FkjAO7R8qTKSRYF3eN3dio+buuv2KI3UHLXG+vnAXg8wMy+5YZO773XUQBncv89rFaB1
	RZGg==
X-Gm-Message-State: AIkVDXIGc194AANNdx5+iAJ3oYMbku6X5glwILogiqUzoqq5b9xDrmVNTaRaLbnGt7N5ow==
X-Received: by 10.99.155.18 with SMTP id r18mr22366828pgd.193.1485765943259;
	Mon, 30 Jan 2017 00:45:43 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	e189sm30203500pfg.64.2017.01.30.00.45.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:42 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-18-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 18/19] libgcrypt: Disable 'capabilities' for mingw32
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
X-List-Received-Date: Mon, 30 Jan 2017 08:46:02 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

libcap does not support mingw32, so disable 'capabilities' support for
the mingw32 targets.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-support/libgcrypt/libgcrypt_%.bbappend | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-support/libgcrypt/libgcrypt_%.bbappend b/recipes-support/libgcrypt/libgcrypt_%.bbappend
index 631cbabb3e..50dca097fb 100644
--- a/recipes-support/libgcrypt/libgcrypt_%.bbappend
+++ b/recipes-support/libgcrypt/libgcrypt_%.bbappend
@@ -1,4 +1,7 @@
 
+# libcap does not support mingw32
+PACKAGECONFIG_remove_mingw32 = "capabilities"
+
 FILES_${PN}-dev_append_mingw32 = " \
 		${libdir}/*.def \
 		${bindir}/hmac256.exe \
-- 
2.11.0


