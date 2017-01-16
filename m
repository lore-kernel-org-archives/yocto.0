Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 391D4E009EA; Mon, 16 Jan 2017 06:24:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7644BE00961
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:19 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id f144so14245408pfa.2
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=cyoMP6wJPlRYDD2ndLGO4XlzdE3+iwJrYHPql6hAtSg=;
	b=eRkMOY51a3bUiyQ9rUZ+qnirskp+xKfpUC30KLBSRAIB9F5aH+R6ANLPIgXkTPRbk/
	BipytM/aJVKiMt5gLWi0JFNChOvpdOniSYaw0nojEdmzMNZ9ovg+JIp69lWl6GvVGpnE
	LRZ7qx47q9Y4AURkgmSxXLfQv+iMch2NpO0PmISu/X2vdoSl5fFKKr6IXIOjporj7UbM
	5Stu0cgKtLSGVAD0enqHlAdbAweNQ31bgoo1EPKHQTDEbpP7gEx85aeN05QUqSn8zBGc
	b1ZofROnfEmjUVvcJOKRMbeXlcx0C7+deeKRjtLqhnnsCiIP/9it18C5KC5o8HR3D83D
	W3ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=cyoMP6wJPlRYDD2ndLGO4XlzdE3+iwJrYHPql6hAtSg=;
	b=T+jIniF8Xyo7mxZ+4cosOmAA/mA2VBTcN3rVKVAHvCcLPjRFdDVBBqo3J4krGjSzY/
	Rhka/0ZrgYvgYBRk7LAYfvcsXyy1WWJnjH+tXTd2fYhc81bLrH0XmDyrLxZ7rwZzV1LH
	a2VRltQboo1plossVi3zs9sS8FOviCHD6H3PGiiH7teZ/yoJQv+JP6MRvnafkHyqEzhW
	Fiz9STT+a3191euTgJ6vCKgXNwdAO7scYK/0AjgBClJR/2SIi4p+fr71EjlYPFfeW41v
	Q2uaouytiSvRSDfHwDcfHL+xEiIL67lQCdh+3e6r/8+0TdYY7cJU6/q9YkRDFr+I5ZJ2
	v1nQ==
X-Gm-Message-State: AIkVDXIltqNmaypmz/8J9dnbUa9jQRKyX4Dad5IT13sgsCkBJjHwfNSEfJrIuTIQvCiXVA==
X-Received: by 10.99.56.29 with SMTP id f29mr18085108pga.167.1484576659256;
	Mon, 16 Jan 2017 06:24:19 -0800 (PST)
Received: from [127.0.1.1] (CPE-58-165-45-185.lns1.lon.bigpond.net.au.
	[58.165.45.185]) by smtp.gmail.com with ESMTPSA id
	n79sm11074871pfj.31.2017.01.16.06.24.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jan 2017 06:24:18 -0800 (PST)
Date: Tue, 17 Jan 2017 00:23:41 +1000
Message-Id: <20170116142341.5400-4-nathan@nathanrossi.com>
In-Reply-To: <20170116142341.5400-0-nathan@nathanrossi.com>
References: <20170116142341.5400-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH 4/7] glib-2.0_%.bbappend: Prevent a bash dependency via bash-completion
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
X-List-Received-Date: Mon, 16 Jan 2017 14:24:33 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Prevent glib-2.0 depending on bash indirectly due to the RDEPEND on
bash-completion. The bash dependency is undesirable due to bash
depending on POSIX compatibility (fork, etc) which is not provided by
MinGW but instead MSYS or CYGWIN.

The glib-2.0 configure does not allow for disabling of bash-completion
output, so instead of disabling the bash-completion bbclass entirely
allow the output to be packaged but remove the
RDEPENDS_${PN}-bash-completion on bash-completion.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/glib-2.0/glib-2.0_%.bbappend | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index d0531d6f4c..2b9ec53182 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -1,2 +1,6 @@
 EXTRA_OECONF_mingw32 = "--enable-included-printf=yes ${CORECONF}"
 FILES_${PN}_append_mingw32 = " ${libdir}/charset.alias ${libdir}/gthread-2.0.def"
+
+# glib always provides bash-completion output, package the output but prevent
+# the dependency chain on bash (via bash-completion) for mingw32 targets only.
+RDEPENDS_${PN}-bash-completion_remove_mingw32 = "bash-completion"
-- 
2.11.0


