Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93085E006BC; Sat, 15 Aug 2015 08:09:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 731F4E0052C
	for <yocto@yoctoproject.org>; Sat, 15 Aug 2015 08:08:57 -0700 (PDT)
Received: by pabyb7 with SMTP id yb7so77619552pab.0
	for <yocto@yoctoproject.org>; Sat, 15 Aug 2015 08:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=tRLKZljtgixAo92EYIo/maHDmW1srl8CmYmtA1Qb060=;
	b=mAgZGKrporMgCF0wrd5IYhr/YaeQSCnOYOBaOsHlypczPqbkNzN5jGbF7T+fk6lvwA
	Ds88fL+rp9AvJsVfXGhJLmSODc91vnwp9NGWYQ8CAQQnzSW2LPgJozzvlcj8RdFSthAx
	7nPj+pwGw6G0bOgLAi91iyVbaAKEGtoUA8Ovmdf4ytReSqsuwfCOq2mI6/Dr3Y6UoXSA
	8gal5VsPNC221S0vxn9JI0GvjnuFJ+ELN/erDfdmYC/bW/pYztExqCu/mg+QDItHRR2j
	G9LuaXIvGGiwVMGDsKde4OrazAgqC4MSH/OpV8jkhUqXl6S6GG2e7boFGVEp6hz/+svo
	IbOQ==
X-Received: by 10.68.181.34 with SMTP id dt2mr61285195pbc.7.1439651337395;
	Sat, 15 Aug 2015 08:08:57 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	qn7sm9117048pab.14.2015.08.15.08.08.56
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Aug 2015 08:08:56 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Aug 2015 01:08:28 +1000
Message-Id: <1439651308-12048-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.5.0
Subject: [meta-raspberrypi][PATCH] rpi-config: fix setting decode_WVC1 in config.txt
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
X-List-Received-Date: Sat, 15 Aug 2015 15:09:01 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/bootfiles/rpi-config_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 29ced34..45b9f1d 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -26,7 +26,7 @@ do_deploy() {
         sed -i '/#decode_MPG2/ c\decode_MPG2=${KEY_DECODE_MPG2}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
     if [ -n "${KEY_DECODE_WVC1}" ]; then
-        sed -i '/#decode_WVC1/ c\decode_MVC1=${KEY_DECODE_WVC1}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        sed -i '/#decode_WVC1/ c\decode_WVC1=${KEY_DECODE_WVC1}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
     if [ -n "${DISABLE_OVERSCAN}" ]; then
         sed -i '/#disable_overscan/ c\disable_overscan=${DISABLE_OVERSCAN}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
-- 
2.5.0


