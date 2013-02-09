Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 91487E0141C
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 14:11:26 -0800 (PST)
Received: by mail-ea0-f182.google.com with SMTP id a12so2129188eaa.27
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 14:11:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=6xCnNTBPrXYL073OkyH3+QIVuru0i5HOFIP0ux+K7NA=;
	b=gUkWAaBLVpAfCjKXeN+Vl4le+FDwgESv7KuhCw3AnfpLnIpoBIm+zWvDnlZKEKjdZr
	5DJNZJ2s7VT3fBWDkDLQaOqtgHoyY2lriq6XlDoI6RH/I+IZ6eVTFEmWEtB492/PcIrQ
	yRBdXrK1BforiUiAEj2NzqLeGKQVFn4MZvjJHw7nQgPu6cUIrsSSnK12DpdAgr2gNhuo
	FhLT/bk/5kqFNisydAQ9Sm4i0pL6iA1bRI8yMUPqEue3STVjCNRZCS2rYdgtQuLGNyEu
	IBnmzYCMQBHism7KqqMRCohFwAPZZnT6VFZq+eUA0ZlZiTHEM6plAKaHTr6XGtZcm0Xr
	Zrbg==
X-Received: by 10.14.193.131 with SMTP id k3mr31591372een.45.1360447884990;
	Sat, 09 Feb 2013 14:11:24 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com
	(5-13-217-124.residential.rdsnet.ro. [5.13.217.124])
	by mx.google.com with ESMTPS id z5sm16022941eep.16.2013.02.09.14.11.23
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 09 Feb 2013 14:11:24 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2013 00:11:07 +0200
Message-Id: <1360447871-10982-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQmuicql6t7wB+dw7Z+rFRwga6VWlXcxLrTEtxlMbF9Lv5h8dShlRqUzWgFCdnCco8Min6he
Subject: [meta-raspberrypi][PATCH 3/7] custom-licenses: Add directory to hold custom licenses
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
X-List-Received-Date: Sat, 09 Feb 2013 22:11:27 -0000

Add Broadcom license to this directory.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 files/custom-licenses/Broadcom |   25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 files/custom-licenses/Broadcom

diff --git a/files/custom-licenses/Broadcom b/files/custom-licenses/Broadcom
new file mode 100644
index 0000000..2582681
--- /dev/null
+++ b/files/custom-licenses/Broadcom
@@ -0,0 +1,25 @@
+Copyright (c) 2012, Broadcom Europe Ltd
+All rights reserved.
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of the copyright holder nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+
-- 
1.7.9.5


