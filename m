Return-Path: <niko.mauno@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A57B4E00C1F; Sun, 11 Nov 2018 06:29:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [83.102.40.151 listed in list.dnswl.org]
X-Greylist: delayed 581 seconds by postgrey-1.32 at yocto-www;
	Sun, 11 Nov 2018 06:29:47 PST
Received: from tulikuusama2.dnainternet.net (tulikuusama2.dnainternet.net
	[83.102.40.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93880E0090E
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2018 06:29:47 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tulikuusama2.dnainternet.net (Postfix) with ESMTP id 3AB59260D7;
	Sun, 11 Nov 2018 16:20:04 +0200 (EET)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from tulikuusama2.dnainternet.net ([83.102.40.151])
	by localhost (tulikuusama2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041)
	with ESMTP id 3zN-EkDCVY3H; Sun, 11 Nov 2018 16:20:03 +0200 (EET)
Received: from luumupuu2.dnainternet.net (luumupuu2.dnainternet.net
	[83.102.40.55])
	by tulikuusama2.dnainternet.net (Postfix) with ESMTP id D416A25E55;
	Sun, 11 Nov 2018 16:20:03 +0200 (EET)
Received: from localhost.localdomain (82-181-15-94.bb.dnainternet.fi
	[82.181.15.94])
	by luumupuu2.dnainternet.net (Postfix) with ESMTP id 8C0AD2C61;
	Sun, 11 Nov 2018 16:20:00 +0200 (EET)
From: Niko Mauno <niko.mauno@iki.fi>
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Date: Sun, 11 Nov 2018 16:19:49 +0200
Message-Id: <20181111141949.2739-1-niko.mauno@iki.fi>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [opkg-utils PATCH] update-alternatives: Fix link relocation support
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
X-List-Received-Date: Sun, 11 Nov 2018 14:29:48 -0000
Content-Transfer-Encoding: 8bit

Commit fcb26339000021eb9bb711aa264247aebcfdd4ae which added Debian-style
support for link relocation tries to relocate symbolic link on host OS,
resulting in following-like error when two alternative packages have
symbolic link source located in different directories (/bin/rev ->
/bin/busybox.nosuid and /usr/bin/rev -> /usr/bin/rev.util-linux):

  update-alternatives: renaming rev link from /bin/rev to /usr/bin/rev
  mv: cannot stat '/bin/rev': No such file or directory

Fix the issue by prefixing 'olink' and 'link' variable references with
path to targeted root filesystem's root directory.

Signed-off-by: Niko Mauno <niko.mauno@iki.fi>
---
 update-alternatives | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/update-alternatives b/update-alternatives
index 89a440b..d4fa7eb 100644
--- a/update-alternatives
+++ b/update-alternatives
@@ -58,7 +58,7 @@ register_alt() {
 			local link_str=`echo $link | protect_slashes`
 			sed -e "1s/.*/$link_str/" $ad/$name > $ad/$name.new
 			mv $ad/$name.new $ad/$name
-			mv $olink $link
+			mv $OPKG_OFFLINE_ROOT$olink $OPKG_OFFLINE_ROOT$link
 		fi
 	else
 		echo "$link" > "$ad/$name"
-- 
2.19.1


