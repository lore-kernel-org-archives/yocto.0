Return-Path: <lorenz.q.bucher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA05AE008EA; Thu, 27 Nov 2014 10:14:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lqb.list[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79DE6E006EF
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 10:14:34 -0800 (PST)
Received: by mail-wi0-f169.google.com with SMTP id r20so18898213wiv.4
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 10:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=PMYqJ+70jAgiXVJCgsRU7rjSw2Gll294HfY2zH7Msp0=;
	b=kNoE6lJUMmaoYuJwi1UrDWxt1Wecg0Kus2ZnGBYihKrZ9ABpGO5HLCjWkt5E2uzSbT
	nv5gm7+mBx10UZLmi1cEbVTpfRzV8TYMNKTFoon3XJYpnL89CJF5XqFmsR6CVzGyeenB
	UdVxIJkWYNWrJKVtyL5Fc88qzODdNM0nQaJxb0HcxipDcTc4OUDmxXhfUYxTZcTk6gaL
	RfREZ1PKSBSQnfDdWW7zJpaZfO9yShBhbRQjMjVDNrYDtxJShnt3NaufHtOl4KPctn1j
	dwtmAbt5BWP/5Ap4+R1vqWT6nqOwoA/7dHoOTIQVW7/ciASSCAHctCzJFpbtHa4JXX+y
	69Zg==
MIME-Version: 1.0
X-Received: by 10.194.58.8 with SMTP id m8mr16943961wjq.43.1417112073895; Thu,
	27 Nov 2014 10:14:33 -0800 (PST)
Sender: lorenz.q.bucher@gmail.com
Received: by 10.194.89.166 with HTTP; Thu, 27 Nov 2014 10:14:33 -0800 (PST)
Date: Thu, 27 Nov 2014 19:14:33 +0100
X-Google-Sender-Auth: j1cOQvBuhUi9LWsdPAq9Y8_kfF8
Message-ID: <CACwxUjnNMuxEbfGyeRv-NOPaj64tT_u6sznYFfpuEdyZgNW4ow@mail.gmail.com>
From: Lorenz <lqb.list@gmail.com>
To: yocto@yoctoproject.org
Subject: Bug in meta/lib/oe/package_manager.py
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
X-List-Received-Date: Thu, 27 Nov 2014 18:14:39 -0000
Content-Type: text/plain; charset=UTF-8

On Ubuntu 12.04 I got an error message that the number of arguments
didn't match.
Puting the arguments into a tupple solves the problem.

diff --git a/meta/lib/oe/package_manager.py b/meta/lib/oe/package_manager.py
index 27fdf26..dc3ad58 100644
--- a/meta/lib/oe/package_manager.py
+++ b/meta/lib/oe/package_manager.py
@@ -1257,10 +1257,10 @@ class OpkgPM(PackageManager):
                                                  "local-%s-feed.conf" % arch)

                     with open(cfg_file_name, "w+") as cfg_file:
-                        cfg_file.write("src/gz local-%s %s/%s" %
+                        cfg_file.write("src/gz local-%s %s/%s" % (
                                        arch,

self.d.getVar('FEED_DEPLOYDIR_BASE_URI', True),
-                                       arch)
+                                       arch))

     def _create_config(self):
         with open(self.config_file, "w+") as config_file:

