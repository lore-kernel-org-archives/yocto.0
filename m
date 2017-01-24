Return-Path: <freesilicon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0515E004D2; Tue, 24 Jan 2017 01:04:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (freesilicon[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 010EAE003DB
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 01:04:21 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id r126so33072773wmr.3
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 01:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=iyhP+SOCk4jwRwzfHVws79J4vKOvii352swXnMH+1Cw=;
	b=jkucrSQy7UyrXu1x/42o3ifpIFiDcm+a34STGZea/iKAkcKaIJf6bkaGZEKWgxdgI4
	a1Wg6brOB6mWa8hLT7dC4ts7kJpVTa2j2GJQJYY2ZFzo2vpx5dQCFWrVrH1r/WB7l5K+
	t5VRTagSoN1/weuSvBIfaOd0V96A37E7iWCj9Wvch1McPhpOyWDWiGDgaAnnmQ3MMLpG
	U3FWuKo2gFn6/9zBoL/7JqzUEuF48RD7nEBQ5Efu/8jAOQqj4T5qUnthVewuJBLBd8VC
	W89r6aopNJe+xOOTNnLDedDlzr3J8Qkd1mSOvLcKcNEEADKcXdxomp3c0CSZBEsk6Pvn
	HUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=iyhP+SOCk4jwRwzfHVws79J4vKOvii352swXnMH+1Cw=;
	b=ltJ6n2AtFgEIePYrD/nEFA8sN6C/7gZ9JamWnBYDxuiksRJtSXZ0rj21tYNutd1iKv
	rnZO9xcKn3/WvkI3h25FkxhVz7fuh90MCPAMlg1bA3+9NHnG9TJZWq5YKTDafJ/fz7Lj
	4XgiPCoeFmX4F5xYU6ZMFDUS8nW9Uu5sBIlJooNdxGTUEr3X8kmqWHorTC+eODdRbl7s
	dWhU16u0kh8Dj6sbaAs/Hxqp0LwcKje68tSHNdr//aQjPI4HqkqHZxeuZcZPTEmWc482
	LG3QVXWg/rzAOA8D2ZoGQ88KKvJ41AaIrQwl4i+LybZurvMOj5Qlm0b7MtlTZZJo3EgW
	8PdQ==
X-Gm-Message-State: AIkVDXIOdfPvELrRVYiOzXfiYWy9UrY1RGLq5CUMvUn0PlD0ROaaCfN60I+X0OhXqgpc4g==
X-Received: by 10.28.140.130 with SMTP id o124mr18241933wmd.48.1485248660544; 
	Tue, 24 Jan 2017 01:04:20 -0800 (PST)
Received: from localhost.localdomain ([185.47.80.46])
	by smtp.gmail.com with ESMTPSA id q12sm8334453wmd.8.2017.01.24.01.04.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 24 Jan 2017 01:04:20 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Jan 2017 10:03:31 +0100
Message-Id: <20170124090331.11228-2-freesilicon@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170124090331.11228-1-freesilicon@gmail.com>
References: <20170124090331.11228-1-freesilicon@gmail.com>
X-Mailman-Approved-At: Tue, 24 Jan 2017 07:16:41 -0800
Subject: [PATCH 1/1] ref-manual: New SSHD_CONFIG variable description
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
X-List-Received-Date: Tue, 24 Jan 2017 09:04:23 -0000

Add description for the SSHD_CONFIG variable which is used to select the
package to use as provider for sshd-config.

Signed-off-by: David Vincent <freesilicon@gmail.com>
---
 documentation/ref-manual/ref-variables.xml | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 6e15e65f54..803f0da980 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -12511,6 +12511,27 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-SSHD_CONFIG'><glossterm>SSHD_CONFIG</glossterm>
+            <info>
+                SSHD_CONFIG[doc] = "The package used to provide OpenSSH sshd configuration.
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+                    When selecting "ssh-server-openssh" in
+                    <link linkend='var-IMAGE_FEATURES'><filename>IMAGE_FEATURES</filename></link>,
+                    specifies which package should be used as provider for
+                    <filename>sshd-config</filename>.
+                </para>
+
+                <note>
+                    This defaults to <filename>openssh-sshd-config</filename>.
+                    If "read-only-rootfs" is also specified in
+                    <link linkend='var-IMAGE_FEATURES'><filename>IMAGE_FEATURES</filename></link>,
+                    it defaults to <filename>openssh-sshd-config-readonly</filename>
+                </note>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-SSTATE_DIR'><glossterm>SSTATE_DIR</glossterm>
             <info>
                 SSTATE_DIR[doc] = "The directory for the shared state cache."
-- 
2.11.0


