Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 342CBE00BAA; Thu, 15 May 2014 18:32:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.44 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pb0-f44.google.com (unknown [209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CAC2E00B9F
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:10 -0700 (PDT)
Received: by mail-pb0-f44.google.com with SMTP id rq2so1844510pbb.17
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=tlWvhlXmroL0Jr53qqKFtlb1zdZ1WLOTSFpNMQLIvRc=;
	b=EkyOL09Vj65kdKEWC6oem8q0A4oVCGmA6rCeGMeShNZSfguJUdDgMjBdXKYTQblx2V
	ErwV2a/YqTniMOpv3EgvGgrY8u25kso5F+U69uYKndGTD7u+ziJqtpbr+nqKPKUOOY7o
	Gp0f6lVDh/KCyKOyZsnR5ekJcDEzeFWmztv1GwVvntXjqfQcoELfpzYYtB4KMIxWXQWq
	JxzbOtKunxBcEeLS/OY+U8tE/s6sne0rWZyoQN4kzBHvwCTzvBkx7Pu5E3U1PUGeUnfT
	EWjx7bwgm753yBG8ThEapOA243+ShUx42Dtn94XrSZsmfhGbXYrp2irGSqLkKkzK0tmt
	/BEw==
X-Received: by 10.68.184.66 with SMTP id es2mr16619612pbc.19.1400203930632;
	Thu, 15 May 2014 18:32:10 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	ph1sm27579744pac.14.2014.05.15.18.32.08 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 May 2014 18:32:09 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 15 May 2014 18:31:25 -0700
Message-Id: <1400203891-30912-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
References: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 3/9] Use wildcard in bind bbappend name
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
X-List-Received-Date: Fri, 16 May 2014 01:32:15 -0000

    bind: Use wildcard to minimize the need to keep tp keep in-synx
    with Poky.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-connectivity/bind/bind_9.%.bbappend | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-connectivity/bind/bind_9.%.bbappend b/recipes-connectivity/bind/bind_9.%.bbappend
index 3500b9a..1dfef8a 100644
--- a/recipes-connectivity/bind/bind_9.%.bbappend
+++ b/recipes-connectivity/bind/bind_9.%.bbappend
@@ -1,5 +1,3 @@
-PR .= ".1"
-
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 SRC_URI += "file://volatiles.04_bind"
-- 
1.9.1


