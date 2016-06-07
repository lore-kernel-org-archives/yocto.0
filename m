Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6C2DE00C2B; Tue,  7 Jun 2016 07:58:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF1D1E006E9
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 07:58:17 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id l188so3963177pfl.1
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 07:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=y4dFniO+a19UoGMWsezlTAbvHosSmF92bHNlBFYiI2M=;
	b=oSanCtLNCiYAAnxYpWkxaGT3m0lD1tRE/HyRVehpU/1P0vRxonjiKb8IdAk4+cIGmV
	NEo+72TQncaoiR1Do4RcPyfAPjUqiqUfGq+4w8z+FY1YY2LPPptyHB7isIRwtPHftKqh
	r0uzcZ3uj3PIRt213/tZ/oz4MiU5HiYQgvB54v87ZtaHImRWrbYUoFxsX0/hMwBBVfId
	itKPohBdm1UlfWfYe5djCC2kVgAN4ted/dk19WbuJHCK2qinWKRrKDfKwunEY5+XCw6l
	LlOARoPt5YggW7TrWFXW0irNqKIrzf9fHUCcGoMcu6rBJFWIroFK+iHrc+aSB8Cf40Xc
	x0FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=y4dFniO+a19UoGMWsezlTAbvHosSmF92bHNlBFYiI2M=;
	b=ZHS+iWm5ErrNLrx/MpJaAr/BbtKGXwlsx8C4HYTLVCl2JgffzXlRXLVIIMuVBqpmwz
	TBcmB2CfYa7a4hYt/uHEkLiACcUiMf8fJotrHbZwfg3jSumi+hCYERdEDr22b9Yw096o
	V8Fok/ATploR5BVos3ruJxDMPNtdLa9x8uSWHWup54BRR/CMBDkdDjrq5I4e8rVlbGdH
	+jYpw5eSzByF6XZ0VZ9a7AodbVAVYsklHBqckKJ0qRT7q2m9Fmngwb+malYbpyvcNiAW
	Gnink0sxJwdKwGzQnpll1FkhF5/I48RDWZe29n6ag+Yp9WcxNDCzjvthPyWbTm8vBDxE
	gReQ==
X-Gm-Message-State: ALyK8tJ6BqOfCvM5SelWQzj6F5gV1PLw4lxGwUR4z5+YtTG4rk9U3dHfK78sHFelt8zuhQ==
X-Received: by 10.98.42.206 with SMTP id q197mr32769331pfq.108.1465311496499; 
	Tue, 07 Jun 2016 07:58:16 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	vw1sm33764089pab.35.2016.06.07.07.58.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 Jun 2016 07:58:15 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Jun 2016 00:57:13 +1000
Message-Id: <20160607145713.27597-1-net147@gmail.com>
X-Mailer: git-send-email 2.8.3
Subject: [meta-raspberrypi][PATCH] omxplayer: fix compilation with GCC 6
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
X-List-Received-Date: Tue, 07 Jun 2016 14:58:22 -0000

Specifying -isystem${STAGING_DIR_HOST}/usr/include in INCLUDES gives:

    In file included from utils/PCMRemap.cpp:26:0:
    .../build/tmp/sysroots/raspberrypi2/usr/include/c++/6.1.1/cstdlib:75:25: fatal error: stdlib.h: No such file or directory
     #include_next <stdlib.h>
                             ^
    compilation terminated.
    Makefile:44: recipe for target 'utils/PCMRemap.o' failed

To resolve this, /usr/include shouldn't be specified as it is already a
default include path relative to the sysroot.

See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70129.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 7d3b464..d9460de 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -40,8 +40,7 @@ export LDFLAGS = "-L${S}/ffmpeg_compiled/usr/lib \
                   -L${STAGING_DIR_HOST}/lib \
                   -L${STAGING_DIR_HOST}/usr/lib \
                  "
-export INCLUDES = "-isystem${STAGING_DIR_HOST}/usr/include \
-                   -isystem${STAGING_DIR_HOST}/usr/include/interface/vcos/pthreads \
+export INCLUDES = "-isystem${STAGING_DIR_HOST}/usr/include/interface/vcos/pthreads \
                    -isystem${STAGING_DIR_HOST}/usr/include/freetype2 \
                    -isystem${STAGING_DIR_HOST}/usr/include/interface/vmcs_host/linux \
                    -isystem${STAGING_DIR_HOST}/usr/include/dbus-1.0 \
-- 
2.8.3


