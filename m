Return-Path: <laurent.gauthier@soccasys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A79E2E00911; Sun, 14 May 2017 13:21:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63823E003E1
	for <yocto@yoctoproject.org>; Sun, 14 May 2017 13:20:50 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id d127so55501636wmf.0
	for <yocto@yoctoproject.org>; Sun, 14 May 2017 13:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=soccasys-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version:reply-to;
	bh=cY4b1ifXO8K62LzI3SThfTIHbWndeJs+WGqpKntNjeo=;
	b=xkYuzI9ulFKi3fPvwkQaDZ++5B7CTnbCQJUYYCgKt42VYs7I50iHnFrb9JxOqrLbNh
	HDKNxISnS56A7+Xz+Z5HYTDFzY15IpADKMPn8yjsslAwc50d1+MMGmSByHRIiRSmxGYq
	OOQtFfWnNbKyvUAAlhiiywWoM8ZaGEvi3BxPOTV8hdJsNzVQzPcf8+IENT3V2MIs7FM4
	Gu/lC/MC5fLAcpiCAeGeys1coy96wOPzG2SjAdTKkE2FsohsBglD4uzLyZWuc9DKeYN1
	BGumitVzRJX68khRyOSfSs/G1lWkEbkhrEJ84k2L6HkpR5N2XM4w5qSsMATpGN5F59mS
	jQnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:reply-to;
	bh=cY4b1ifXO8K62LzI3SThfTIHbWndeJs+WGqpKntNjeo=;
	b=asJdqbfhD5wT/nF1VvtwR6dZkLxH9EWPBdglC6bjiow7akcVkYsBWTHaNLmuDRnwzw
	ae22zbabg1sBkN8DCkUS5F0F7gTVvRwbUUOSZgLxDWxZSLUxV+VjP0YeKa7xtiwZ5rNN
	0w9f7HFtMvaxrXYNhS2YzQ6/xEVJzChO41zhvw3QtlCnBHrtpl7bj863HdnmqoI2NeM7
	AM3sfJECqiv9YQisXh2lXWV+NE+nYj82e2EHCgdAINNKqZqfK9Hz7gD9vU5R3H9/CM0U
	fLB/CPQES0a7eWVFkkxVy+fmO6V/SIY1+pK2KbpEF7ucggaB2TFS1YIkiHGrCcfaTm8N
	mURQ==
X-Gm-Message-State: AODbwcCLum1WPRMY/mmBu9IGNL8HRhVwKSqOl4jHdI8B0r5qJDA3B1VY
	wWJNYBSmOrCEnd3h
X-Received: by 10.28.214.211 with SMTP id n202mr1684005wmg.105.1494793249367; 
	Sun, 14 May 2017 13:20:49 -0700 (PDT)
Received: from moonbase.fritz.box (ip-176-199-232-86.hsi06.unitymediagroup.de.
	[176.199.232.86]) by smtp.gmail.com with ESMTPSA id
	l27sm6684882wrb.65.2017.05.14.13.20.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 14 May 2017 13:20:48 -0700 (PDT)
From: Laurent Gauthier <laurent.gauthier@soccasys.com>
To: yocto@yoctoproject.org
Date: Sun, 14 May 2017 22:20:30 +0200
Message-Id: <1494793230-611-1-git-send-email-laurent.gauthier@soccasys.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH][meta] Jethro issue with non-normalized paths in BBLAYERS during populate_sdk_ext
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: laurent.gauthier@soccasys.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 14 May 2017 20:21:00 -0000
Content-Type: multipart/mixed; boundary="===============7288144516133611468=="

--===============7288144516133611468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


    Issue with non-normalized paths in BBLAYERS during populate_sdk_ext
    
    This one-liner applies to Yocto Jethro and fixes a failure of
    populate_sdk_ext when copying bitbake and the layers.
    
    This failure occurs when your BBLAYERS variable contains things
    such as the following:
    
      BBLAYERS ?= " \
        ${TOPDIR}/../meta \
        ${TOPDIR}/../meta-yocto \
        ${TOPDIR}/../meta-yocto-bsp \
        "
    
    Signed-off-by: Laurent Gauthier <laurent.gauthier@soccasys.com>

diff --git a/meta/lib/oe/copy_buildsystem.py b/meta/lib/oe/copy_buildsystem.py
index c0e7541..b2f437e 100644
--- a/meta/lib/oe/copy_buildsystem.py
+++ b/meta/lib/oe/copy_buildsystem.py
@@ -35,6 +35,7 @@ class BuildSystem(object):
         corebase_files.append(bitbake_dir)
 
         for layer in layers:
+            layer = os.path.abspath(layer)
             layerconf = os.path.join(layer, 'conf', 'layer.conf')
             if os.path.exists(layerconf):
                 with open(layerconf, 'r') as f:

--===============7288144516133611468==--
