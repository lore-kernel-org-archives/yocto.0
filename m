Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DDFBE00CD3; Sun,  8 Oct 2017 10:28:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF36E00CC1
	for <yocto@yoctoproject.org>; Sun,  8 Oct 2017 10:28:40 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id b85so1888752pfj.1
	for <yocto@yoctoproject.org>; Sun, 08 Oct 2017 10:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=5OtLDFWFAXD3CnVQ8RHvRTPofMqBDJrHbR/iyAO7G+M=;
	b=vEQwErkExb9ncLRSGWs7hxiNtj7920fAb/PM577qcLNbf4NGTw0lI95L4ZKufiS1FK
	okXGHaymhVI9wjx9SaFmWImCr5k0/zc9b5TQ9jBajJX1CrQPmCWuhm3E+2liZg0a89v1
	vY/QLDcoDlDJ0mSaKX17hSZB3Pgq86/sxxn4qxqNQmn49ZiSD31bwAhJx+CE6fh1VQP/
	LcXpuLKLdlRbLAFsC7jwhWEGZ/oba3S5yhWCSZSRoS/j/+LuBIqAi5eYfh2642jzKJ1F
	/FfWNch5fcpPEzipdCAFrjTS7CzSbRSTBn0zpjdN13WZKwTTX2/CXsbNy3alXhmFjd5s
	3PsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=5OtLDFWFAXD3CnVQ8RHvRTPofMqBDJrHbR/iyAO7G+M=;
	b=jJ/KHBalR4d+8NN1vLqj32ahZS/BbN0mwxCJoh1JaFiEkkS0o+0ieRJWsxqeVJIJlt
	ljV9i7hv1SdmoYs84AEzfuJjmwzlo7lxrsaZJRkypNnLhhtK/d9CQ0e3Qc7k4aGpRhiB
	HdH/F7sJPcp5t0PQqHRaLn68MBh7PQwxK44xE/S4bHepd2WkQVY6VcOPufmoRLKpFfWB
	F1ZjywZ02DFuy0j+ufLkT4pueBr/pKQlPaSntGF/onKpvscRegpzfL19HCidBdAm96tq
	xN8taW73T3Da+jge+9qlWwL3vyAaCbAp60InhRie84pyQj9UYv4f8Axtxikrs4uxdU1X
	vqwA==
X-Gm-Message-State: AMCzsaWOKpMlNekcFQdZzbY4mMYZRNT/BvR2VTMFAS9G03GZrENCBvWN
	Oyc0tGnwREhvfKFrA3bBXdk=
X-Google-Smtp-Source: AOwi7QCSDa0S43TeyPcp5L8kAi4UINyoh0xof3X4SATaayECGEw5L3Tc9ro48IFsOWLaAOXlOnAQSQ==
X-Received: by 10.98.33.67 with SMTP id h64mr7856338pfh.279.1507483720133;
	Sun, 08 Oct 2017 10:28:40 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:b4af:95f:9afa:62fc])
	by smtp.gmail.com with ESMTPSA id
	a81sm10563350pfe.32.2017.10.08.10.28.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 08 Oct 2017 10:28:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  8 Oct 2017 10:28:35 -0700
Message-Id: <1507483718-5452-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/4] pcr-extend: add new package
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
X-List-Received-Date: Sun, 08 Oct 2017 17:28:44 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb | 25 +++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb

diff --git a/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb b/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb
new file mode 100644
index 0000000..0cc4f63
--- /dev/null
+++ b/meta-tpm/recipes-tpm/pcr-extend/pcr-extend_git.bb
@@ -0,0 +1,25 @@
+SUMMARY = "Command line utility to extend hash of arbitrary data into a TPMs PCR."
+HOMEPAGE = "https://github.com/flihp/pcr-extend"
+SECTION = "security/tpm"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
+
+DEPENDS = "libtspi"
+
+PV = "0.1+git${SRCPV}"
+SRCREV = "c02ad8f628b3d99f6d4c087b402fe31a40ee6316"
+
+SRC_URI = "git://github.com/flihp/pcr-extend.git "
+
+inherit autotools
+
+S = "${WORKDIR}/git"
+
+do_compile() {
+    oe_runmake -C ${S}/src
+}
+
+do_install() {
+    install -d ${D}${bindir}
+    oe_runmake -C ${S}/src DESTDIR="${D}" install 
+}
-- 
2.7.4


