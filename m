Return-Path: <sgw@bigsur.com>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D78FFE006C2
	for <yocto@yoctoproject.org>; Sat, 22 Dec 2012 00:25:19 -0800 (PST)
Received: by mail-pb0-f49.google.com with SMTP id un15so3152848pbc.8
	for <yocto@yoctoproject.org>; Sat, 22 Dec 2012 00:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bigsur.com; s=bigsur.com;
	h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=buPOe1tlKVciYPPHUohqJ/sidMDegF8tAd52Co3+oUQ=;
	b=Fn3x+aH1qLEkMsgEFLe1jSovfHkYeWr5Af6UwieZ3vAauCg4aUQXI4fx6zl+KzXhYB
	I/k/W/bupQJznQDrztmTjRlOV82vl+VgDC6Am9Bfrru1wz85AApuD3yDtrkLpeuwN7Ch
	FTPthzJe0kWNbFVun29IZl4prVwaTFMzOmQZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=buPOe1tlKVciYPPHUohqJ/sidMDegF8tAd52Co3+oUQ=;
	b=jCq0G+tmHNKoSo4WfVYI9Ugw0LVDrAZAbVN1cfXJVTRl2zMhneURmMS0fnNhNC0zcV
	gl6W7GNxGtm/A1Rwn5XAQ/Or/4n2WUuPSa+z+U6lpsisEhMb40wz/jvVuvyxG+mE1q9W
	I4UcK/Pdum+KHpocHG1bQwBwd1o2Ip6Kq4nZET5HFoGGjd1Hvv7a7ChTylkCSbteuRTU
	ayd4p239AInIKLNnj3g+cCFz42gx9JCnGYOOf1tkbTykppTq1fuUZ0yYWV26hN/MRBVh
	+D0XkGTqG0sZOlcj4gMbXMyKDcjx5HrAVNgLiHo9eZkJUOUzP0PgKugcSz0JTzjIFQgD
	fCjQ==
X-Received: by 10.68.136.163 with SMTP id qb3mr46924988pbb.129.1356164719687; 
	Sat, 22 Dec 2012 00:25:19 -0800 (PST)
Received: from localhost (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id hc4sm8465082pbc.30.2012.12.22.00.25.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 22 Dec 2012 00:25:18 -0800 (PST)
Sender: Saul Wold <sgw@bigsur.com>
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat, 22 Dec 2012 00:24:47 -0800
Message-Id: <1356164687-25863-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQkMAtUZfN/Ybc/xjY0HcYD8NnhL5SszPZzZ30MDr6dqEkx8fU93KrjDh5jZBKZAWwQNYKVU
Cc: openembedded-core@lists.openembedded.org
Subject: [meta-qt3][PATCH v2] qt-x11-free-native: Use internal 3rdparty libpng header
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
X-List-Received-Date: Sat, 22 Dec 2012 08:25:19 -0000

Ensure the 3rdparty version of libpng headers are found first, otherwise
the sysroot libpng15 header are found which causes a mis-match issue.

[YOCTO #3625]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |    1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index 2d87d26..b18ea0d 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -40,6 +40,7 @@ inherit native
 do_configure() {
 	echo "yes" | ./configure -prefix ${prefix} ${QT_CONFIG_FLAGS} -fast -L ${STAGING_LIBDIR} \
                 -I ${STAGING_INCDIR_NATIVE} 
+	sed -i -e '\:obj/release-shared-mt/qpngio.o\ kerne:s:$(CXXFLAGS):-I3rdparty/libpng $(CXXFLAGS):' src/Makefile
 }
 
 do_compile() {
-- 
1.7.9.5


