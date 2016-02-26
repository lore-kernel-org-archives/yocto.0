Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 595E9E00D63; Fri, 26 Feb 2016 05:21:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C45DE00D46
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 05:21:29 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fl4so51176446pad.0
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 05:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=RxW+GWShJNbY/JGCg1saFF76okEPeqe+qn3Eelg14Bc=;
	b=aYc0RLZ67mYtyPFA7yAT7WjMn6hMiKT4BWd2Xjgm3vg6r9juwst7Icjd9M2ubPPrB0
	zkPRHCtdzB0O3YPxuY9TmN1mGxhxvuoD09UcliM2TpuETNsIHQfDJTd3Qt2B2adzGnWI
	th7/GpQx9VT3zidsh46b2ca2BEKyZBs6wyXGiAGBeFH3GmHFj65z9mMv+zFJWa0+hM+s
	Scdj8VpLEeh2RPgxDq8dMuOg+m+C2icbMjqFujZ6NHRSRUm3v4bGYOJ0B86fiBkdMGqI
	A7D5dbvxA1B7w1+fKItVv/3CwzsGr7x6EJxqnlEp/4ZrA4+JHsdwG05dpAczHGcP2DpF
	P94w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=RxW+GWShJNbY/JGCg1saFF76okEPeqe+qn3Eelg14Bc=;
	b=OkHCRBUkseCt4XFwDOyGUWEulfqXsXrZQb5kYo2v4vFC+TYxAw6IgDTy+E85z5ZFfn
	bj9jIjBmedsxsIk4GGfkihSkHg0jSlNliCf5b/8gQTBog7k0CF/tAor/x2/FDnpQGf7k
	wOp2UhTm3L0mqb/bve1VrS/ObkwNMqi25nHLg19QIwLJ/OCLF6Blt5yCgIrgKm0pdkzQ
	30lJOpNmTbzXhY7LtlOJ8lONrH1QCiD0wzKdKGRVVR8pXq8aFXsiiqiJJ402KUeOSRrr
	VhdkWWqyHgXO9acqD70teEIJp8bilpgHlnMtwTDt8B89XrjMX8bLV5TlTyoOR6UuMvbv
	eRCQ==
X-Gm-Message-State: AD7BkJIJE6KAj+VgS35dLvFsVp65ZpbnxikRhJ4vcKd8ffbP5Bhtr3sTCnpXwZwbTkXn8A==
X-Received: by 10.66.191.104 with SMTP id gx8mr1978755pac.21.1456492888972;
	Fri, 26 Feb 2016 05:21:28 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id r5sm19580846pap.7.2016.02.26.05.21.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Feb 2016 05:21:28 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 00:21:08 +1100
Message-Id: <1456492868-19761-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
Subject: [meta-raspberrypi][PATCH] omxplayer: fix host-user-contaminated QA warnings
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
X-List-Received-Date: Fri, 26 Feb 2016 13:21:30 -0000

Explicitly chown the installed files to fix host-user-contaminated QA
warnings for libavcodec, libavdevice, libavfilter, libavformat,
libavutil and libswresample shared libraries.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index a0690a0..8816273 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -61,6 +61,7 @@ do_install() {
     oe_runmake STRIP='echo skipping strip' dist
     mkdir -p ${D}${datadir}/fonts/truetype/freefont/
     install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/
+    chown root:root -R ${D}
 }
 
 FILES_${PN} = "${bindir}/omxplayer* \
-- 
2.7.1


