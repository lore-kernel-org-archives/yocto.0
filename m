Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F37AE00E03; Thu,  8 Dec 2016 02:40:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f196.google.com (mail-wj0-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF4C2E00D3F
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 02:40:25 -0800 (PST)
Received: by mail-wj0-f196.google.com with SMTP id xy5so53799676wjc.1
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2016 02:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=/pSlKl5oqfinaWR2fMh87qcKWLy4nyOgcHiaGjZpO4Q=;
	b=UkrhdwTou8EGTXcpYJcO4QYqFPUIm3I5qafPFBSsf9MFzv/EVBG2MhagUBN/btn3tJ
	tn/f5z+quPxOVt2M1zmKX6jWL4JWguvjdNgFpWr4mxSUng1u9vz0b2JNR1/ZcB5GBp2O
	Zm2vNa9nejMECfTuJzTryJgMB98mmBrMGNf/jPALLLRg0/bb/bqmrs9CLiOqxvt70xWb
	Ep1nTR7ZZeGsr4qrfrFKJItnBpYi2qg/d+AOm01kPT8rZqb08Bx3VzFQIuB9kXXF8KAN
	Y4c57SrpXg1b8tWpRsNHWC9BbuLOgwyLMvh7ZFk5K3dKmWO82ZgE6lxCaAP9cwT7KTu8
	qraA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=/pSlKl5oqfinaWR2fMh87qcKWLy4nyOgcHiaGjZpO4Q=;
	b=GQBtxkOWYm9r8rbpBHB2+oW+6/y4SqHPTVbVul88aED1orJ5K73Ob8gGCRPPlVNxpj
	uzP0LM7C6l4Le6tvaP85XTidIRroRwQfnyIl/noqV9Rk41ve9R9JAnvWnOf51Pv0r+F/
	Oa0eKAzYxfFEpo5mz/alxzlY68A2n9pbSWpshUQ/O0PBmg8J92js+OmVkRwQRKagAuYD
	Z8PZHBYLSIvkI1Nx0F2JwtCwSljBfnykkqmPlA8956UoYtBL+yPhd34hdl6D3zXIXXWU
	EN/40T0qw4PoF+pQjVFqdBjWvzpQ7U/8YVdsmmU12GEn+9050qursFuGa8bg7J9u2OzI
	tJ9Q==
X-Gm-Message-State: AKaTC01Xjf9i9VkyJj2lNAZLE+N2G3fFR6HTYhVjYHpl/IgH7JDDhjfZA07W4tsy3rgMNA==
X-Received: by 10.194.54.99 with SMTP id i3mr63729660wjp.86.1481193623880;
	Thu, 08 Dec 2016 02:40:23 -0800 (PST)
Received: from mueller-a-nb-linux.zera.local
	(ip-109-90-226-171.hsi11.unitymediagroup.de. [109.90.226.171])
	by smtp.googlemail.com with ESMTPSA id
	g73sm14519005wme.16.2016.12.08.02.40.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Dec 2016 02:40:23 -0800 (PST)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Dec 2016 11:40:12 +0100
Message-Id: <1481193612-18179-1-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: remove version hack
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
X-List-Received-Date: Thu, 08 Dec 2016 10:40:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

* no more required (version > 3.17 | > 4.3.x | > 4.4.5)
* causes error with rt kernel

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 classes/linux-raspberrypi-base.bbclass | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
index 3a6e33d..dc2330a 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -14,21 +14,6 @@ def get_dts(d, ver=None):
         from the kernel staging '''
         ver = get_kernelversion_file(staging_dir)
 
-    if ver is not None:
-        min_ver = ver.split('.', 3)
-    else:
-        return dts
-
-    # Always turn off device tree support for kernel's < 3.18
-    try:
-        if int(min_ver[0]) >= 4:
-            if (int(min_ver[1]) < 4) or (int(min_ver[1]) == 4 and int(min_ver[2]) < 6):
-                dts = ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.dtb', x)) for x in dts.split()])
-        elif int(min_ver[1]) < 18:
-            dts = ""
-    except IndexError:
-        min_ver = None
-
     return dts
 
 
-- 
2.7.4


