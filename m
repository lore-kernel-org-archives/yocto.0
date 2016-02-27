Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5C53E00DEB; Sat, 27 Feb 2016 07:27:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F4DBE00C58
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:19 -0800 (PST)
Received: by mail-qg0-f45.google.com with SMTP id d32so30900126qgd.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=Pj7e5Enxjky7MyUAP3uSe/r6SniFLjBcFqJ7fBqAgMY=;
	b=ulkNLNY6zMOf1AnomOiBeiy8arU76Lv0bvfhyeA93WNJJGSxvXfZvjy1QvCGfWBb93
	8s1HVc0OgCqt75KEreWZwRACxp1bCp14hBoWXebcrSvTbge2tQWxc0F1zIDNrI9AW4Pd
	Tx/qM7EfGnpbFg6GzC+sYdPsLJ6FiB+1Qd+YiCQfsNgEUnYk9F4PNYu5Nmk+E6ADEF03
	yX5yhwua9aZMTgPJgCn82hqcLRnz28lhFiv3zScIZXupoMtFzByW+BJQ2mIedKG6ykdp
	ZkTSWj8gW1AF3uinuRB7TJUaXb5tfmpyyzxa/fn/Rv7nfdfQyyovE/rs3ecXXQ2PQa0+
	fhVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=Pj7e5Enxjky7MyUAP3uSe/r6SniFLjBcFqJ7fBqAgMY=;
	b=HA5Uxb/jQTojpa+AyATww9yKrPuZpoMbpMdvld1JYXFZdLFA5Bgs0AjRE1kRuNLzv1
	teJC64KgE518cCPhv31OMAt52Zfnw8TMOdfAX0O7yWJ2TpFWMtzaJbIqHOk2WY5nxLJT
	qdSWQ8MF3Ovs7EMcdK+eZu1tSEg8apBYCCWHQcbW5RYhfgrD1Q/V9QmMS9JI6Urrn/xH
	3vqTxOQoFUw1rE/zShebckROEZAhQAxBFFVWlIRgrnadwhY8FbWhmRlRK1DH4OMAf2Ei
	kBYVv2lthB0aHLACQfQQVifaFZP2Exk3VCpicYTBr2Kqn7usBAWF9yDXa3XHIfSYY1Qk
	YJbw==
X-Gm-Message-State: AD7BkJLhN4DgEtRwWDe/5cxJyeaYIovAxT9odynCd436u0LDm5+bUsSBjVsjxgfEdai/Iw==
X-Received: by 10.140.148.83 with SMTP id 80mr9577121qhu.49.1456586839514;
	Sat, 27 Feb 2016 07:27:19 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:19 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:58 +0000
Message-Id: <4a620edab062f114ec0cc2535126c5cfb5bc7b19.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 19/23] rpi-config: Upgrade to tip of tree to get GPU_MEM_1024
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:29 -0000

Document it in README

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 README                                  | 2 ++
 recipes-bsp/bootfiles/rpi-config_git.bb | 5 ++++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 16ac1cb..efe885b 100644
--- a/README
+++ b/README
@@ -90,6 +90,8 @@ GPU_MEM_256 : GPU memory in megabyte for the 256MB Raspberry Pi. Ignored by the
               512MB RP. Overrides gpu_mem. Max 192. Default not set.
 GPU_MEM_512 : GPU memory in megabyte for the 512MB Raspberry Pi. Ignored by the
               256MB RP. Overrides gpu_mem. Max 448. Default not set.
+GPU_MEM_1024: GPU memory in megabyte for the 1024MB Raspberry Pi. Ignored by the
+              256MB/512MB RP. Overrides gpu_mem. Max 944. Default not set.
 
 2.C.Optional - Add purchased license codecs:
 ============================================
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index aa11b25..4cdffca 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRCREV = "5d2ca5f9bcb1b239c051e20c05a233fd79cf09d5"
+SRCREV = "648ffc470824c43eb0d16c485f4c24816b32cd6f"
 SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=git;branch=master \
           "
 
@@ -54,6 +54,9 @@ do_deploy() {
     if [ -n "${GPU_MEM_512}" ]; then
         sed -i '/#gpu_mem_512/ c\gpu_mem_512=${GPU_MEM_512}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+    if [ -n "${GPU_MEM_1024}" ]; then
+        sed -i '/#gpu_mem_1024/ c\gpu_mem_1024=${GPU_MEM_1024}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 
     # Video camera support
     if [ -n "${VIDEO_CAMERA}" ]; then
-- 
1.9.1


