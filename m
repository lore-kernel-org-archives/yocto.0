Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8619E013A6
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 04:48:40 -0800 (PST)
Received: from mail-lb0-f200.google.com ([209.85.217.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 05 Nov 2012 04:48:39 -0800
Received: by mail-lb0-f200.google.com with SMTP id k13so4150574lbo.11
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2012 04:48:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=LkkHJDnsb1h2PZxRydGlTkPJyPi9PfnhqLwYKHK0/ok=;
	b=Qc8C0QhH7tcoVqpKMZQmcu43/nR0R32TYGXQzHx/VuUDeXFQi6jJAlX9ItUQ1S0d+b
	iBWplNhC00fw+bF2QPSoHsDzh5FmwICAe3BMz5AhsdI/jlKSUdSrnLehYeSEVmYx+ygX
	uGiEu4V/UmLVfFm++fgGbDEOUFzL7p+H+sVq+C8I3aIJgZUicYkSgt62APnN8+fy2mNj
	58IndaIOuIze9pRTh8btKZi7cXd80wRk+wQtfskC6Y0503Mscivvq05JsyuDgIVgaT5f
	cKisuNsBut7OVVzIHltyN8r7fyQUFEB0FgACogIaOB0/ayNc8jAxHI3YMgYVbp/RC+tM
	d9kA==
Received: by 10.180.19.197 with SMTP id h5mr13012498wie.22.1352119717271;
	Mon, 05 Nov 2012 04:48:37 -0800 (PST)
Received: by 10.180.19.197 with SMTP id h5mr13012487wie.22.1352119717170;
	Mon, 05 Nov 2012 04:48:37 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id fa9sm11451350wib.5.2012.11.05.04.48.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 05 Nov 2012 04:48:36 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com,
	nitin.a.kamble@intel.com
Date: Mon,  5 Nov 2012 12:47:18 +0000
Message-Id: <1352119640-25949-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
References: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmgYbfsLO26oVg7EJ7e9+99K1WpDhLh49TwO3MQ3Ece6jiouGALjczkkS/AmWGD9y04pkjgyETGCuCaJPgBbI07KubKd47xJW+E2kg/P8msXvuZs5euFXuw/AafGNGNCHYMMlsjwTPweUo9pYTxfkbXkWMAoQ==
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/3] xserver-xorg: bump PR to get the new xorg-abi- RPROVIDES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Nov 2012 12:48:41 -0000

---
 common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
index 8c7009f..1c71d7b 100644
--- a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
+++ b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
@@ -17,4 +17,4 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
 SRC_URI[md5sum] = "5bef6839a76d029204ab31aa2fcb5201"
 SRC_URI[sha256sum] = "864831f51e841ff37f2445d1c85b86b559c8860a435fb496aead4f256a2b141d"
 
-PR = "r1"
+PR = "r2"
-- 
1.7.10


