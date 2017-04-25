Return-Path: <olivier.sobrie@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21685E00AF0; Tue, 25 Apr 2017 02:10:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2534E00ADD
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 02:10:13 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id 6so10069871wrb.1
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 02:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id;
	bh=N5FCujBX4F79IwBQULjWqu40Hjngzwvnq4sGtL50reg=;
	b=k9ple8EdLA5Bioe++6ffBFzzEdUUkMpYc/vfJP4LHDX+y645Uhd3s8mY3VA7Lj2Yiq
	SfUSTbsoU2rC1HJo/Le9mIaM1SeW0IJIwNtE9Fjd3KyXsCvxCZTJLeb4CFuAZD6z1nFZ
	FjMkHXnBw0nuQmMHGLkV38bZVhjHp7XaA0K+64ERbOpexmmq2sHJr3ceXZbDxC7CVa36
	NZPCqzdqwDkI6le0EYpmo2SxkT7h+GjsMBqDXM1eMgLhqZhUDsHbja7QhadWy0ATTaMu
	N+dZGX8I7aMO8i/m3pMKPknV2HQq5oUh2azhZ/hslwZ7S9ZHSeaDKno4DrXLCyAcuHtz
	gXgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=N5FCujBX4F79IwBQULjWqu40Hjngzwvnq4sGtL50reg=;
	b=fMBiV0clfoEhc7S+/PBQ2TI0hFRwGxxADsD7s9A/LsqiCCg79l039CtJW9yfYPFHJE
	BNpWvZZ7oejvMKNspoIln/urqZsbMKU1kAw+a3RrVrVWqwq8vNRDPHdvJL/Qvbr2ZkWY
	LATFswVFBdSnz77+omMnLp1uFKTaKtrxOoI+L3fQbFZh0XsYYjRpJy+1KUL9ElR52Pcs
	kLSz9x54kbhzuRrlakBieM+Flj9AxOJPU/E/eW14oh/tStpMqnKPH0JwQz1lcj4+cX1M
	1zl5WR60MzLH8PECngIL3CxoqokvbECHJPbs3PTcOuef0x41RDy0uKrw41Ej+yZoLQeF
	KURg==
X-Gm-Message-State: AN3rC/4TGNl6lxGiqgP8Rj5GjOucVtrz38WbFYPZWQlgjoWfD39lssCS
	xPUV+tM8ok69zzur1M4=
X-Received: by 10.223.180.88 with SMTP id v24mr9031710wrd.171.1493111412056;
	Tue, 25 Apr 2017 02:10:12 -0700 (PDT)
Received: from localhost ([2a02:a03f:308a:7800:fcda:183d:f9b7:b5e])
	by smtp.gmail.com with ESMTPSA id
	y190sm2081543wmy.15.2017.04.25.02.10.10
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 25 Apr 2017 02:10:11 -0700 (PDT)
Sender: Olivier Sobrie <olivier.sobrie@gmail.com>
From: Olivier Sobrie <olivier@sobrie.be>
To: paul.eggleton@linux.intel.com,
	alexander.kanavin@linux.intel.com
Date: Tue, 25 Apr 2017 11:09:58 +0200
Message-Id: <20170425090958.11054-1-olivier@sobrie.be>
X-Mailer: git-send-email 2.12.2
Cc: yocto@yoctoproject.org
Subject: [PATCH] nativesdk-qt4-tools: fix build issues with libQtDBus and libQt3Support
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
X-List-Received-Date: Tue, 25 Apr 2017 09:10:17 -0000

The libQtDBus requires libQtXml at link time otherwise it fails with
the following error:

  x86_64-pokysdk-linux-g++ --sysroot=/home/build/dev/yocto/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux -Wl,-O1 -fno-exceptions -Wl,--no-undefined -Wl,-O1 -Wl,-rpath,/opt/poky-oso/2.2/sysroots/x86_64
  /home/build/dev/yocto/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-pokysdk-linux/gcc/x86_64-pokysdk-linux/6.2.0ld: cannot find -lQtXml
  collect2: error: ld returned 1 exit status
  make: *** [../../lib/libQtDBus.so.4.8.7] Error 1

The libQt3Support requires libQtGui and libQtNetwork at link time
otherwise it fails similarly with the following error:

  x86_64-pokysdk-linux-g++ --sysroot=/home/build/dev/yocto/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux -Wl,-O1 -fno-exceptions -Wl,--no-undefined -Wl,-O1 -Wl,-rpath,/opt/poky-oso/2.2/sysroots/x86_64
  /home/build/dev/yocto/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-pokysdk-linux/gcc/x86_64-pokysdk-linux/6.2.0/ld: cannot find -lQtGui
  /home/build/dev/yocto/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-pokysdk-linux/gcc/x86_64-pokysdk-linux/6.2.0/ld: cannot find -lQtNetwork
  collect2: error: ld returned 1 exit status
  make: *** [../../lib/libQt3Support.so.4.8.7] Error 1

This patch ensures that libQtXml is build before libQtDBus and that
both libQtGui and libQtNetwork are built before libQt3Support.

The build issues happen when building a SDK with the command
"bitbake meta-toolchain-qt".

Signed-off-by: Olivier Sobrie <olivier@sobrie.be>
---
 recipes-qt4/qt4/nativesdk-qt4-tools.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-qt4/qt4/nativesdk-qt4-tools.inc b/recipes-qt4/qt4/nativesdk-qt4-tools.inc
index 54bf2a1..8f2e706 100644
--- a/recipes-qt4/qt4/nativesdk-qt4-tools.inc
+++ b/recipes-qt4/qt4/nativesdk-qt4-tools.inc
@@ -81,13 +81,13 @@ TOBUILD = "\
   src/tools/moc \
   src/corelib \
   src/sql \
-  src/dbus \
-  src/qt3support \
   src/xml \
+  src/dbus \
   src/tools/uic \
   src/tools/rcc \
   src/network \
   src/gui \
+  src/qt3support \
   src/tools/uic3 \
   tools/linguist/lrelease \
   tools/linguist/lupdate \
-- 
2.12.2


