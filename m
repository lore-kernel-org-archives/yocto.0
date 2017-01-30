Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C3C1E00A08; Mon, 30 Jan 2017 00:45:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E423E009C9
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:28 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 75so31005340pgf.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=U2cCSFmob1BgU//Ru+wl0VE6jOyvM5MfZqwXHZV/nCY=;
	b=NC30hTtBgm1eF4iLc24OMsMFWxRpzjfL+8r7fWGNy6fB+yTnm0AnOyj8RDmKlShgyF
	l3YdzfAPMdkF1n/+6y0vJJ5meMMxUO2HLg9mlFDCuarMZ047ULwtWNHVqxnDtFek1dFY
	czd7SP4KrNDCGjrNxymckRquvHhkHFds7OvOi5SSG6N6MDx69JjFWsDNp3F8pP0RSzKf
	sgMTWNI8Nh6q8wjMHC5lbaqZLuQyAOLVwXm4KdKKk75X6VjIU7L99tyyCVDun58dhHPT
	J9TUeWWFDweu/1NzLSfd/SctILFN+ojLJm97/NDNwhTktHWDx4HERIXbWOIwVSYmFf3a
	vetg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=U2cCSFmob1BgU//Ru+wl0VE6jOyvM5MfZqwXHZV/nCY=;
	b=bcL87PATunsn2FDxhSW2pCSh8aULVwaFKjXtWA5qO3YiX7FMKM6sCNLZkALd09yik9
	uY0ZTlodSjZBpDepoHAIaJjdsrqDRiLlgQ5AZ5C5EoBqyA7BK9oA0YgLsZXEMgiBNgne
	aay5b1KWrUEjFjPIitw0+KmlVKMaAD4Pw2jJCoVpg6hMT3oos4BLXBFXk3Ran12dFwbf
	weo+yv1MsnLSjiU7IxnhvEaT+qFp5WTWpYcSY7RX02i6Un6445zv3eqnzg6XmqEhRQUu
	26E7u0lpKeSonWxEcVs53JQLAMfqwGE2DItbZ15zllaxeVqwNGEfCc8NSfkDoC4TWQhx
	aFBQ==
X-Gm-Message-State: AIkVDXIDA7KHx1U3216hK2XcuOaMDHglMtOhbhlSK36QBWFxrOschpqflgINkiIdGx1n9w==
X-Received: by 10.98.204.83 with SMTP id a80mr21962232pfg.114.1485765928750;
	Mon, 30 Jan 2017 00:45:28 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	n79sm30232302pfj.31.2017.01.30.00.45.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:28 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-15-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 15/19] libgpg-error: Handle packaging .exe files
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:40 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Handle packaging gpg-error.exe in the -dev package.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-support/libgpg-error/libgpg-error_%.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 recipes-support/libgpg-error/libgpg-error_%.bbappend

diff --git a/recipes-support/libgpg-error/libgpg-error_%.bbappend b/recipes-support/libgpg-error/libgpg-error_%.bbappend
new file mode 100644
index 0000000000..8fcfa78225
--- /dev/null
+++ b/recipes-support/libgpg-error/libgpg-error_%.bbappend
@@ -0,0 +1,3 @@
+
+FILES_${PN}-dev_append_mingw32 = " ${bindir}/gpg-error.exe"
+
-- 
2.11.0


