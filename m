Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF8A2E00971; Fri, 19 Oct 2018 08:46:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 506 seconds by postgrey-1.32 at yocto-www;
	Fri, 19 Oct 2018 08:46:53 PDT
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F107DE003D9
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 08:46:53 -0700 (PDT)
Received: from linuxdev2.toradex.int (unknown [46.140.72.82])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 9DC405C0AF7;
	Fri, 19 Oct 2018 17:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1539963505;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:content-type:content-transfer-encoding:
	in-reply-to:references; bh=7UMqKNrLN9vupFxiLdL12Dp6LGnpCkQizRPfRHmuIJg=;
	b=x21nZLnNb5cel3WAFEiWkz6LHo8OeE363ZXx9JIo3yH5dOuOVWMu9wda7qg/LuNUX/65pU
	psNn5JwDkPGw9GKZ/ZwTvOJ910lVPTghumGc6daARjQ+KyiJk7kVqcBeOk7ms5l8qeNBgN
	xjnvp9qrpWNqr6XMbE3KC1eZCf/8CME=
From: Stefan Agner <stefan@agner.ch>
To: opkg-devel@googlegroups.com, alejandro.delcastillo@ni.com,
	yocto@yoctoproject.org
Date: Fri, 19 Oct 2018 17:38:21 +0200
Message-Id: <20181019153821.21177-1-stefan@agner.ch>
X-Mailer: git-send-email 2.13.6
Cc: Stefan Agner <stefan.agner@toradex.com>, stefan@agner.ch,
	openembedded-core@lists.openembedded.org, ricardo@foundries.io
Subject: [opkg-utils PATCH] opkg-make-index: use ctime instead of mtime
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
X-List-Received-Date: Fri, 19 Oct 2018 15:46:54 -0000

From: Stefan Agner <stefan.agner@toradex.com>

When using sstate, two parallel builds can produce two packages
with the same mtime but different checksums. When later one of
those two builds fetches the others ipk, the package index does
not get udpated properly (since mtime matches). This ends up with
messages such as:
  Downloading file:/../tmp/work/../image/...ipk.
  Removing corrupt package file /../sysroot/../var/cache/opkg/volatile/...ipk

However, in that case, ctime is different. Use ctime instead of
mtime to prevent failures like this.

Suggested-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
This addresses the issue discussed here:
http://lists.openembedded.org/pipermail/openembedded-core/2018-October/156348.html

 opkg-make-index | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index 3227fc0..db7bf64 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -115,12 +115,12 @@ for abspath in files:
      pkg = None
      fnameStat = os.stat(abspath)
      if filename in old_pkg_hash:
-          if filename in pkgsStamps and int(fnameStat.st_mtime) == pkgsStamps[filename]:
+          if filename in pkgsStamps and int(fnameStat.st_ctime) == pkgsStamps[filename]:
             if (verbose):
                sys.stderr.write("Found %s in Packages\n" % (filename,))
             pkg = old_pkg_hash[filename]
           else:
-               sys.stderr.write("Found %s in Packages, but mtime differs - re-reading\n" % (filename,))
+               sys.stderr.write("Found %s in Packages, but ctime differs - re-reading\n" % (filename,))
 
      if not pkg:
           if (verbose):
@@ -137,7 +137,7 @@ for abspath in files:
      else:
           old_filename = ""
      s = packages.add_package(pkg, opt_a)
-     pkgsStamps[filename] = fnameStat.st_mtime
+     pkgsStamps[filename] = fnameStat.st_ctime
      if s == 0:
           if old_filename:
                # old package was displaced by newer
-- 
2.13.6


