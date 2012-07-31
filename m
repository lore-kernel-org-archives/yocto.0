Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02CFEE0027B
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 13:36:00 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1894332eek.35
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 13:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=Xr4YnCebN8hYsYCoJPwelKQm7cda+DH1NdJxqPP1n7s=;
	b=PvdCk4FEFz4EIxQMUzIivXsDAAgq/mI5AeBbIs7gKqNRFhXwj9oh1mRtwjrug3MrbJ
	EkLvPvNrYQO6SP2LkR+a4njiABvfiWi3/NxQv5Ihmllw5/JylkVuOM4uPnCgYnRhNVjM
	dBv/6yvZYqDGNiTw6LYyw+4Z1fjUysuJjrpFB9hFn63utwfHRqs2esItfHTOpO886Dbx
	LyOqo3iDQPJqw5JJIdPvNPsfHbpCWMtzzR7iOAnS5qTXk/IiDJ3nDjyQLj5RIS25uelr
	4KOHbaV4O/eVf8fU+zgrXVQAleQsqvOZut0vu08q3m73ik666vnhruW+00vnFDz8YGJC
	jJRg==
Received: by 10.14.178.134 with SMTP id f6mr19858923eem.2.1343766960062;
	Tue, 31 Jul 2012 13:36:00 -0700 (PDT)
Received: from localhost.localdomain (095-097-098-131.static.chello.nl.
	[95.97.98.131])
	by mx.google.com with ESMTPS id 8sm3115077eeg.16.2012.07.31.13.35.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 31 Jul 2012 13:35:59 -0700 (PDT)
From: sidebranch.openembedded@gmail.com
To: yocto@yoctoproject.org
Date: Tue, 31 Jul 2012 22:35:58 +0200
Message-Id: <1343766958-5092-1-git-send-email-sidebranch.openembedded@gmail.com>
X-Mailer: git-send-email 1.7.0.4
Cc: Leon Woestenberg <leon@sidebranch.com>
Subject: [for denzil] kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 31 Jul 2012 20:36:01 -0000

From: Leon Woestenberg <leon@sidebranch.com>

Linux 2.6.x kernels did not (all) have the bounds.h file, so copy
only iff exists.

(See OE-Core 02ac0d1b65389e1779d5f95047f761d7a82ef7a4)

Signed-off-by: Leon Woestenberg <leon@sidebranch.com>
---
 meta/classes/kernel.bbclass |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index c21ab96..5f6ff66 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -183,6 +183,11 @@ kernel_do_install() {
 		cp arch/powerpc/lib/crtsavres.o $kerneldir/arch/powerpc/lib/crtsavres.o
 	fi
 
+	# Necessary for building modules like compat-wireless.
+	if [ -f include/generated/bounds.h ]; then
+		cp include/generated/bounds.h $kerneldir/include/generated/bounds.h
+	fi
+
 	# Remove the following binaries which cause strip errors
 	# during do_package for cross-compiled platforms
 	bin_files="arch/powerpc/boot/addnote arch/powerpc/boot/hack-coff \
-- 
1.7.0.4


