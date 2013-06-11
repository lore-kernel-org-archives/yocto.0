Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB44BE0151C
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 17:46:01 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=[172.16.2.10])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1UmCij-0007YJ-W1; Tue, 11 Jun 2013 00:45:59 +0000
Message-ID: <51B6733C.8030606@twobit.us>
Date: Mon, 10 Jun 2013 20:45:48 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.12) Gecko/20130116 Icedove/10.0.12
MIME-Version: 1.0
To: mark.hatle@windriver.com, Xin.Ouyang@windriver.com
X-Enigmail-Version: 1.4.1
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-selinux patch doesn't apply cleanly
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
X-List-Received-Date: Tue, 11 Jun 2013 00:46:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hello Mark / Xin,

I built the dylan branch of meta-selinux against the oe-core dylan branch today and ran into a minor issue.  The findutils-with-selinux patch doesn't apply cleanly.  The fix-up is very small and just requires fixing one blob.  Looks like the docs have changed a bit.

There's a patch below if you're interested.  These may be appropriate for the master branch as well but I've only tested against the dylan release branch.

Regards,
- Philip

From: Philip Tricca <flihp@twobit.us>
Date: Mon, 10 Jun 2013 20:30:15 -0400
Subject: [PATCH 1/2] Fix doc menu blob in findutils-with-selinux.patch.

---
 .../findutils/findutils-4.4.2/findutils-with-selinux.patch         |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch b/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch
index 9597b09..e38f53f 100644
--- a/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch
+++ b/recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch
@@ -66,14 +66,14 @@ index 391ffa0..f599bbc 100644
  @node Contents
  @section Contents
  
-@@ -1733,6 +1740,7 @@ from the novel you are reading.
+@@ -1734,6 +1741,7 @@ from the novel you are reading.
  * Size Directives::
  * Location Directives::
  * Time Directives::
 +* Other Directives::
- * Formatting Flags::
  @end menu
  
+ @node Name Directives
 @@ -1890,6 +1898,14 @@ File's last modification time in the format specified by @var{k}
  (@pxref{Time Formats}).
  @end table
-- 
1.7.10.4

