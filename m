Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1661AE009CF; Wed, 18 Jan 2017 17:52:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.49 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0641BE009CA
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 17:52:39 -0800 (PST)
Received: by mail-pg0-f49.google.com with SMTP id 14so9264302pgg.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 17:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=WTnVAIL+CwvvnTBwiCY3GB+LfdQNojU+512nme6yTuE=;
	b=r6VAzqdLtYgbURI0AMUMYx9wOwQ0JH+P+n6AoJCli7uI02B1C8bo8Y0UhbecC+qeAD
	y9v0gxVe90QCdiCmvK4Y/dR+f/yaFb3sg+G/IME2ujfhw+AQAIdsAN5QKTkuh38eh2rE
	mg/Ur3L12JmZuwoqejzgdoKrTfIALsKdD5b3Onfsivbd+QLAvtU98COGmpgH3sSYj8IP
	6p8cGmAA7lYHrLkqxf4xZEXANqTaj0bVslTL1BOJEEW5GGLmizpz9dqRlTDoykyWiHRz
	14X1hU0M0Hv5irSw7VFXUWjZUbPDZ1RdIEYo4nWoztkuNAtoTH1oUa+K2LL1HforVtRB
	l7XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=WTnVAIL+CwvvnTBwiCY3GB+LfdQNojU+512nme6yTuE=;
	b=HXuiZsjn2e3JEjjVytdmwwRmm9gxMqEpfD5ZPF3tQJEqoAtwXGpjy9hNRLswkXNJQA
	yyS9Fr5k+D82XKAvR8/jMNgZKa1cF7KNB/oAc3nQ0458UDl1j1vJnq6HWEDk/xTqS/Zr
	MfcS2FrU3ybrMtPqhJNtadobULR6FHLfxRJbMnBLXtOsmBjlxmYvMJo8enz2fQ7nvU+6
	4N6cEtygj9VjfJR3CP2+SllOKnOwFcTwMKChCRao+PSMKVr9uI3uyYmjq3L+dhzBdbXB
	cuB5q3mB4XexWNGoH3x51wpBLN0zv9IogmDYKTZ+73JgYWo2+xCOhlduAgtdkovwiW5y
	EjlA==
X-Gm-Message-State: AIkVDXJw9Y3lmNEjdY30ifWq3b64XZxotJvJY0snmYvpfRYiFQTzmgVuZUwSgV3s4LnqGD8k
X-Received: by 10.99.226.3 with SMTP id q3mr7483560pgh.37.1484790757993;
	Wed, 18 Jan 2017 17:52:37 -0800 (PST)
Received: from raltherr-linux.svl.corp.google.com ([100.123.242.49])
	by smtp.gmail.com with ESMTPSA id 64sm3575198pfz.48.2017.01.18.17.52.37
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 18 Jan 2017 17:52:37 -0800 (PST)
From: Rick Altherr <raltherr@google.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Jan 2017 17:52:36 -0800
Message-Id: <20170119015236.6498-1-raltherr@google.com>
X-Mailer: git-send-email 2.11.0.483.g087da7b7c-goog
Subject: [PATCH 1/1] kernel-fitimage: Let U-Boot select ramdisk load/entry address
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
X-List-Received-Date: Thu, 19 Jan 2017 01:52:43 -0000

If the ramdisk load and entry parameters are omitted in the FIT image
specification, U-Boot will determine if the ramdisk needs to be
relocated and will automatically allocate a location in RAM if so.

Change-Id: I0717c2ab04d13e58c2b91a829063c2d0fb6eaf34
Signed-off-by: Rick Altherr <raltherr@google.com>
---
 meta/classes/kernel-fitimage.bbclass | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta/classes/kernel-fitimage.bbclass b/meta/classes/kernel-fitimage.bbclass
index 2934b3a31a..ee721d1fff 100644
--- a/meta/classes/kernel-fitimage.bbclass
+++ b/meta/classes/kernel-fitimage.bbclass
@@ -187,8 +187,6 @@ fitimage_emit_section_ramdisk() {
                         arch = "${UBOOT_ARCH}";
                         os = "linux";
                         compression = "none";
-                        load = <${UBOOT_RD_LOADADDRESS}>;
-                        entry = <${UBOOT_RD_ENTRYPOINT}>;
                         hash@1 {
                                 algo = "${ramdisk_csum}";
                         };
-- 
2.11.0.483.g087da7b7c-goog


