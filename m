Return-Path: <joshua.lock@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78350E0076B; Fri, 20 Mar 2015 07:22:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,UNPARSEABLE_RELAY
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 437 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Mar 2015 07:22:22 PDT
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [93.93.135.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3DE6E00754
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 07:22:22 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: joshuagl) with ESMTPSA id EA71A600EAD
From: Joshua Lock <joshua.lock@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 20 Mar 2015 14:14:54 +0000
Message-Id: <1426860894-13604-3-git-send-email-joshua.lock@collabora.co.uk>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1426860894-13604-1-git-send-email-joshua.lock@collabora.co.uk>
References: <1426860894-13604-1-git-send-email-joshua.lock@collabora.co.uk>
Subject: [PATCH 2/2] PublishArtifacts: enable publishing of sstate
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
X-List-Received-Date: Fri, 20 Mar 2015 14:22:23 -0000

The PUBLISH_SSTATE variable in config/autobuilder.conf didnt' appear to be
wired up anywhere so I've forced it into PublishArtifacts here.

I consider this patch an RFC because a) it required both the PUBLISH_SSTATE
variable to be set and b) an sstate parameter to be passed to the
PublishArtifacts step. Having to turn things on twice is "not good".

Signed-off-by: Joshua Lock <joshua.lock@collabora.co.uk>
---
 .../site-packages/autobuilder/buildsteps/PublishArtifacts.py | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index aee3d1f..58add14 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -127,6 +127,18 @@ class PublishArtifacts(ShellCommand):
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.tmpdir, "deploy/ipk/* ") + \
                                     os.path.join(DEST, IPK_PUBLISH_DIR) + ";"
+                elif artifact == "sstate":
+                    if str(os.environ.get("PUBLISH_SSTATE")) == "True":
+                        sstate_dir = os.environ.get("SSTATE_DIR")
+                        pub_dir = os.environ.get("SSTATE_PUBLISH_DIR")
+                        if sstate_dir is not None and pub_dir is not None:
+                            command=command+"mkdir -p " + pub_dir + ";"
+                            command=command+"cp -R --no-dereference --preserve=links " + \
+                                     sstate_dir + "/* " + pub_dir + ";"
+                        else:
+                            command=command+"echo 'Skipping copy of sstate, directories not configured.';"
+                    else:
+                        command=command+"echo 'Skipping copy of sstate, PUBLISH_SSTATE not set.';"
                 elif artifact == "toolchain":
                     command=command+"mkdir -p " + os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-- 
2.1.0


