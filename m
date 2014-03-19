Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34DFAE00995
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 07:04:01 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2JE3kCt017006; Wed, 19 Mar 2014 14:03:47 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id vpLfO-RAvQOV; Wed, 19 Mar 2014 14:03:46 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2JE3dUK016998
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 19 Mar 2014 14:03:41 GMT
Message-ID: <1395237814.3808.118.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>, Burton Ross <ross.burton@intel.com>,
	"Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Wed, 19 Mar 2014 14:03:34 +0000
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Subject: [PATCH 2/2] buildslave-janitor: Add in try/except handling to make calls robust against failure
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
X-List-Received-Date: Wed, 19 Mar 2014 14:04:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

There is a suspicion that the command can fail causing the janitor trash
removal process to exit. This adds in some exception handling to deal
with this. It include a timeout to stop it entering nasty loops.

This combined with the previous patch should let us figure out what
error conditions its hitting.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bin/buildslave-janitor | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/bin/buildslave-janitor b/bin/buildslave-janitor
index 153f18d..2cfef86 100755
--- a/bin/buildslave-janitor
+++ b/bin/buildslave-janitor
@@ -66,11 +66,16 @@ def trash_processor(trashdir):
         print("Not prepared to use a trashdir of /")
         return
     while True:
-        files = os.listdir(trashdir)
-        if files:
-            os.system("ionice -c 3 rm %s -rf" % trashdir)
-        else:
-            time.sleep(30*60) # 30 minutes
+        try:
+            files = os.listdir(trashdir)
+            if files:
+                os.system("ionice -c 3 rm %s -rf" % trashdir)
+            else:
+                time.sleep(30*60) # 30 minutes
+        except Exception as e:
+            print("Exception %s in trash cleaner" % str(e))
+            time.sleep(60) # 1 minute timeout to prevent crazy looping
+            pass
     return
 
 def mirror_processor(mirrordir):




