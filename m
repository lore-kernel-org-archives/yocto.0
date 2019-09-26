Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81690E0098A; Thu, 26 Sep 2019 10:03:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5C68E0080A
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 10:03:37 -0700 (PDT)
Received: by mail-io1-f68.google.com with SMTP id c25so8359839iot.12
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 10:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=LKnTiy3cV0AKo7KOD6K60Zujrr5R8Lfg3K0EDx3Gwd0=;
	b=T7aFpllB7MPXUeyQJbFyDnnVokXzt+6WZVgG8q1t03sBRmvnfs+0umYshblDYs0qdw
	4fzr87KN4hZtvlrwkntBNgQ3Gl8YE34sKduZRIRUQAXguYPC8wWC5KCX0j38EJKxDiww
	lOBT6r4JNkiXokdBNyaFHLuMDQfPZsOdl0wni1LO5P3WCZR9cZWkCU4QjNgGdubvFAwY
	kfslALg3Z+qKGjVx0uyh7q4/LXtT4Kn2Z7upD30Xr4dPuIf94eCuFeQQ1ei/7Uz97VhI
	y3EPk35HWiGg4DWo2npK2PFB0GkeRMMj8qIjKERa1QlBUxrrWVdAjtxcGe1vvRx8tE4t
	TbAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=LKnTiy3cV0AKo7KOD6K60Zujrr5R8Lfg3K0EDx3Gwd0=;
	b=SS7bo0tm4F4zBJPBBtcSY778+sfiN9CNRgKhVOd19Ajo+rbHHQy049cRUAZuBNdR+3
	XQUiJAFzZ7QsD1/NNOsiBf1djovFVByxmEiAgH5tJEcEFtQNVZnGUm3vWDxlbxF49wgq
	et+eSOZm44sqokjRtbtcfOkYArL4+KFLhVj3EQo421LNK82LxxJfEyQl6lDJ+gKbcaJE
	lB5KTap4mZ+3TSBvwtDgGoTDabxMSFaAFK6wfT9WnKAhesx0jyQzpmKi/zfFf8XI3vTS
	qlK+G9CkA77Kh6gDAcXPUjSmL+IWFVPn0NQQ7Ysy8pQLcMW6toGqvUFJYZIYYqYRTv/u
	fzeg==
X-Gm-Message-State: APjAAAWxlvKBvrvgQY+HK3J2Dg6w/4kLYelKOJ86v6bfmbFKY6NX5KNo
	9IjgWld2EmdnTZbFGgGhJmJFYqp4kY4=
X-Google-Smtp-Source: APXvYqxC8S80BXpEOvtoGsAONmKUqdWP8q/kGrbe3kx9umWJzHmneK8I3S/rt0jYUPtYdon4IAJBGA==
X-Received: by 2002:a6b:2b07:: with SMTP id r7mr4335554ior.173.1569517416873; 
	Thu, 26 Sep 2019 10:03:36 -0700 (PDT)
Received: from localhost.localdomain
	(CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com.
	[174.113.11.95]) by smtp.gmail.com with ESMTPSA id
	x12sm1181066ioh.76.2019.09.26.10.03.35
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 26 Sep 2019 10:03:36 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Date: Thu, 26 Sep 2019 13:03:34 -0400
Message-Id: <20190926170334.12953-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH v2] yocto-bsps: update to v5.2.17
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
X-List-Received-Date: Thu, 26 Sep 2019 17:03:38 -0000
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating the reference BSP SRCREVs and versions to 5.2.17 to match
the latest for qemu* and to pickup some reference board specific
patches.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---

v2: make sure that genericx86 and beaglebone-yocto are updated

 .../linux/linux-yocto_5.2.bbappend            | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
index b7cefd25ca..f15bccbaf2 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
-SRCREV_machine_genericx86-64 ?= "35276d20c01a78ee3640a074446b0c15c486c5d0"
-SRCREV_machine_edgerouter ?= "35276d20c01a78ee3640a074446b0c15c486c5d0"
-SRCREV_machine_beaglebone-yocto ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
-SRCREV_machine_mpc8315e-rdb ?= "cae01d71ef67eaafec75ce24f49b038b705b8711"
+SRCREV_machine_genericx86    ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
+SRCREV_machine_genericx86-64 ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
+SRCREV_machine_edgerouter ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
+SRCREV_machine_beaglebone-yocto ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
+SRCREV_machine_mpc8315e-rdb ?= "77f031b182885c177b3a96098ae61271911a7954"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "5.2.10"
-LINUX_VERSION_genericx86-64 = "5.2.10"
-LINUX_VERSION_edgerouter = "5.2.10"
-LINUX_VERSION_beaglebone-yocto = "5.2.10"
-LINUX_VERSION_mpc8315e-rdb = "5.2.10"
+LINUX_VERSION_genericx86 = "5.2.17"
+LINUX_VERSION_genericx86-64 = "5.2.17"
+LINUX_VERSION_edgerouter = "5.2.17"
+LINUX_VERSION_beaglebone-yocto = "5.2.17"
+LINUX_VERSION_mpc8315e-rdb = "5.2.17"
-- 
2.19.1


