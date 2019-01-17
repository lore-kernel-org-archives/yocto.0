Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E1E3E00CDF; Thu, 17 Jan 2019 10:17:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
X-Greylist: delayed 121 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Jan 2019 10:17:42 PST
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C36EBE00CAD
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 10:17:42 -0800 (PST)
Received: from [10.175.196.103] ([37.123.169.62]) by cmsmtp with ESMTPA
	id kCCZgFhhAcCEokCCZgltFy; Thu, 17 Jan 2019 19:15:40 +0100
To: yocto@yoctoproject.org, richard.purdie@linuxfoundation.org
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
Date: Thu, 17 Jan 2019 19:15:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfMpQrZLuWq25B2cBbM06EokgkwOdxkfiSLM/+BF+HL2JjMZn2nuHFhPx7UQ2lmV3sdA6EE4Lxvh71HKP7YTee1PK2+oijKAjPQ1q8TDwFn2FSdzdUQac
	YydirQAusWTX+5mqB5QXE5QEa0ksVs4DyYhPnLlk6RA9lz78c6xULaPcc6cGpB2wDj6gw3o1jKBo9CZ5lfheJw7AoTjmyFStFGiayPFB8rkf0JDsOmXdsitD
	Hh7n+00daCa9EHP+/Jk0ZUKqyL9bbWe9rKk66l7ASUQ=
Subject: [PATCH] bb.build.addtask: add simple check for circular dependency
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
X-List-Received-Date: Thu, 17 Jan 2019 18:17:44 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

 From 864e49bedbdab480c5ada9588ce8f980f23919dd Mon Sep 17 00:00:00 2001
From: Ulf Samuelsson <ulf@emagii.com>
Date: Thu, 17 Jan 2019 19:07:17 +0100
Subject: [PATCH] bb.build.addtask: add simple check for circular dependency

Signed-off-by: Ulf Samuelsson <ulf@emagii.com>
---
  bitbake/lib/bb/build.py | 48 
++++++++++++++++++++++++++++++++++++++++++++++++
  1 file changed, 48 insertions(+)

diff --git a/bitbake/lib/bb/build.py b/bitbake/lib/bb/build.py
index 3e2a94e..887ced1 100644
--- a/bitbake/lib/bb/build.py
+++ b/bitbake/lib/bb/build.py
@@ -43,6 +43,25 @@ logger = logging.getLogger('BitBake.Build')

  __mtime_cache = {}

+KNOWN_TASKS = {
+    'do_fetch' :           1 ,
+    'do_unpack' :          2 ,
+    'do_patch' :           3 ,
+    'do_configure' :       4 ,
+    'do_compile' :         5 ,
+    'do_install' :         6 ,
+    'do_package' :         7 ,
+    'do_package_data' :    8 ,
+    'do_rootfs' :          9 ,
+    'do_image_qa' :       10 ,
+    'do_image' :          11 ,
+    'do_image_tar' :      12 ,
+    'do_image_ubifs' :    12 ,
+    'do_image_jffs2' :    12 ,
+    'do_image_complete' : 13 ,
+    'do_build' :          14
+}
+
  def cached_mtime_noerror(f):
      if f not in __mtime_cache:
          try:
@@ -820,7 +839,34 @@ def add_tasks(tasklist, d):
      # don't assume holding a reference
      d.setVar('_task_deps', task_deps)

+def circular(after, before):
+    if after == None:
+        return False
+    if before == None:
+        return False
+    for a in after.split():
+        if a in KNOWN_TASKS:
+            for b in before.split():
+                if a == b:
+                    return True
+                if b in KNOWN_TASKS:
+                    if KNOWN_TASKS[b] < KNOWN_TASKS[a]:
+                        return True
+                    else:
+                        # tasks OK
+                        pass
+                else:
+                    # b is unknown
+                    pass
+        else:
+            # a is unknown
+            pass
+
  def addtask(task, before, after, d):
+    if circular(after, before):
+        logger.error("addtask: %s cannot be after %s and before %s" % 
(task, after, before))
+        raise
+
      if task[:3] != "do_":
          task = "do_" + task

@@ -909,3 +955,5 @@ def tasksbetween(task_start, task_end, d):
          chain.pop()
      follow_chain(task_start, task_end)
      return outtasks
+
+
-- 
2.7.4

