Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9C08E00828; Mon, 31 Oct 2016 09:52:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D275E00724
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:16 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id n85so9175225pfi.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=7Zco1ovuvG04mxRuIz6RFmIHo7UFr08+Phdq2ztc3qk=;
	b=YgABqcs4tQ+V2rcqNUcT0RhJdoyXQyKm/NOyZoxztyrCUTPXPqYE8DvlFc6QbbV8s4
	mMDiwoDN3se4L9KeBpmU0OX8XC4SdpcafLF/Q22dtpk3KKcBwDf/IRZTgaLRZx9ydpzH
	PrlzpkVWtgQzsgqXg5rHKEm3VsD+hzYlwj/DyRc1A+QuBXP54FycDeuXMEbFypn9dAvU
	dati2F8vHN8uBpzEUbSQU+U6R5VAasm7wVrgRNbKETRG+dKFwW4/OgNFKg0EYqCMs91h
	lxfYKEIDQiEuLX4g3P3TqngrQ0W1kasjh8hd4MDxPZIyYwZhJq20lPEjxJZwX7+lneif
	HEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=7Zco1ovuvG04mxRuIz6RFmIHo7UFr08+Phdq2ztc3qk=;
	b=OveAZJPCYwbm2Qzqx1/cgIcNz5JhBxI6jD46kOcBSQSUJbnieP7gyey0LLX3SLEJkk
	eFugCiwrHgZAqA5h5vdSYDacp+uMl+ynl+/FBzUbQchKJlTc7uQXZ5LXX0mbzGdAFY/Z
	1nuLrCabGUFWpuFNvdUh07PLr5AdYBSzNTyk7fCXM2Ea4mzIm/3ReO56+yOGOTmv9TTN
	uODJMxU9+F+ujUX/x0k3rq6iUkR66Kr57ECBfUtxd0gaR3rEy4VVONHk3WS79IIqWBOM
	e+liUk9q2Vs/IZU5wXfmYQw+n5qVYXY4hkGwitpLihx4gHw6fyjWvIzyc4/eBEzacRnu
	Vd8w==
X-Gm-Message-State: ABUngvdDb8RGFG7Mlmmv78Tdrmwpe/P0f9MQQgXDEOj3mtqFfWlmeRyji/OnP6Ubs12nIw==
X-Received: by 10.98.65.156 with SMTP id g28mr17447864pfd.110.1477932736634;
	Mon, 31 Oct 2016 09:52:16 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	r2sm14653100pfi.67.2016.10.31.09.52.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:52:16 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 09:52:03 -0700
Message-Id: <20161031165208.16286-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.1
Subject: [meta-raspberrypi][PATCH 1/6] firmware: Update to latest
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
X-List-Received-Date: Mon, 31 Oct 2016 16:52:20 -0000

Fixes issues with display not starting with weston

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 29f9c01..6ce89a5 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "ec63df146f454e8cab7080380f9138246d877013"
-RPIFW_DATE ?= "20161005"
+RPIFW_SRCREV ?= "ec5a517ed6051974a5a09f7b7811d21c443a7c74"
+RPIFW_DATE ?= "20161020"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.10.1


