Return-Path: <daniel.ammann@bytesatwork.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B93AEE00D00; Mon, 22 Jul 2019 04:21:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 308 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Jul 2019 04:21:26 PDT
Received: from bytesatwork.ch (bytesatwork.ch [91.135.72.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F725E00A49
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 04:21:26 -0700 (PDT)
Received: from mimas.bytesatwork.ch (162.40.150.83.ftth.as8758.net
	[83.150.40.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested) (Authenticated sender: daniel)
	by bytesatwork.ch (Postfix) with ESMTPSA id C60DF101C2A70
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 13:16:07 +0200 (CEST)
From: Daniel Ammann <daniel.ammann@bytesatwork.ch>
To: yocto@yoctoproject.org
Date: Mon, 22 Jul 2019 13:16:13 +0200
Message-Id: <20190722111613.29869-1-daniel.ammann@bytesatwork.ch>
X-Mailer: git-send-email 2.11.0
Subject: [yocto-docs][PATCH] ref-manual: Sync list of image types with source
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
X-List-Received-Date: Mon, 22 Jul 2019 11:21:28 -0000

hdddirect was removed from openembedded-core in commit
929ba563f1bc7195c4981b8e139c432b2cc388ea.

f2fs was added in commit dec029686a47b574edfce4472fe2167db54398fb.

container was added in commit e45f074b792a43aa2fd84a5a3f0e20bf1d88ad7e.

squashfs-lz4 was added in commit de70799af1a8bfe2fac22b90401053275d4714ba.
---
 documentation/ref-manual/ref-variables.xml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 0080364e4..cbbd684ae 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -6606,6 +6606,7 @@
                     by default:
                     <literallayout class='monospaced'>
      btrfs
+     container
      cpio
      cpio.gz
      cpio.lz4
@@ -6621,13 +6622,14 @@
      ext3.gz
      ext4
      ext4.gz
-     hdddirect
+     f2fs
      hddimg
      iso
      jffs2
      jffs2.sum
      multiubi
      squashfs
+     squashfs-lz4
      squashfs-lzo
      squashfs-xz
      tar
-- 
2.11.0


