Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C24CDE00AF7
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 07:04:14 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2JE40BH017038; Wed, 19 Mar 2014 14:04:00 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id N19XYLvJmi6f; Wed, 19 Mar 2014 14:04:00 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2JE3ugI017014
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 19 Mar 2014 14:03:57 GMT
Message-ID: <1395237830.3808.119.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>, Burton Ross <ross.burton@intel.com>,
	"Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Wed, 19 Mar 2014 14:03:50 +0000
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Subject: [PATCH 1/2] yocto-start-autobuilder: Make sure janitor logging goes to a log file
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
X-List-Received-Date: Wed, 19 Mar 2014 14:04:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Currently logging from the janitor gets lost. Ensure it gets to a log
file instead including anything to stderr.

---
 yocto-start-autobuilder | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/yocto-start-autobuilder b/yocto-start-autobuilder
index b34a60d..74e3a13 100755
--- a/yocto-start-autobuilder
+++ b/yocto-start-autobuilder
@@ -79,7 +79,7 @@ if os.path.isfile(os.path.join(AB_BASE, ".setupdone")):
         os.chdir(AB_BASE)
         if os.environ["OPTIMIZED_GIT_CLONE"] == "True":
             os.chdir(AB_BASE)
-            subprocess.Popen("python bin/buildslave-janitor " + os.path.join(AB_BASE, "config/autobuilder.conf"), 
+            subprocess.Popen("python bin/buildslave-janitor " + os.path.join(AB_BASE, "config/autobuilder.conf") + ">> yocto-slave/janitor.log 2>&1", 
                            shell=True, stdin=None, 
                            stdout=None, stderr=None, 
                            close_fds=True)



