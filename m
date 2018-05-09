Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63299E00D53; Wed,  9 May 2018 14:48:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 730C2E009F8
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 14:48:58 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id 11-v6so27886ois.8
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 14:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=7I+FwutiR1Wq2D+h7XZlqX+LPBU6IE+hHQS7t9r3tHs=;
	b=ETdBJmfMW7l68L/3lGa91fwvDxBelOQ+gXthnN12F1vDNvwrewK+MSaxbNMgF1qqpF
	kOWIE7YjoYOYitKJ1p1YRb3mboDOXQyrfgAZv0Eb/UuOshTMsnR+7dR5ApSDgWP1CBpA
	aiAe+v0oHN1anNoZZu/oz1LrqCGGAV7tnvzTe9TaODBgL7irAFO6etON6ud+9fm3Dbhh
	xEVDQSJgLMVLYG4DXamisImr4BdVFEf2zpEEwsvlgHH4NGZ/uYu9ykURPAUkrill0sA9
	sOIwrXAVPhau6UdfahTJFGWi32e/jaTX8vy5a2jhMYhOBWmS4zUvkGM7u4m4l4seBEJ6
	hi5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=7I+FwutiR1Wq2D+h7XZlqX+LPBU6IE+hHQS7t9r3tHs=;
	b=b4Pt/9jG3n4Avb6GjoPwsjUYhHTirqXPCyJy7wW6yGtmpwoWn6JlObL94synAPlB+G
	Wmq9mUde4WOo6fflt/jJOw8YfI8TsIqbn2segAf1pIEhrCemhrUqdlO3aIZmQvzS8e+9
	kD+6POd8d2BYWchHr5blr/Hd/m3vaUihl9lS/5SbgQ/n/zYiRyWDnncPGXfHj+pCrCtX
	Z28S13cq2YOiqha0WI9yOTk/FdZy7U1roZrzdHOOsxa2mn+iw0aIcW2OFNPaf+mZP5jL
	78GlVGjHwcB0Pku0So1hdv6i9BSVBuFIG68lsPPtK0KW+50FHM8bcNaOOSxMONayVumu
	Npiw==
X-Gm-Message-State: ALQs6tA4LiwLbXkP7VnnciEm/kxlOtiJfstoSrgX+ijNcwMm3EeeBbOb
	dXPPU8kd8WzTIV4ozGGa5ur+ToDU
X-Google-Smtp-Source: AB8JxZqZ77XlR3HWVhFJTaBJrzmBxcxCDl++Kwg0uyUtX+YEdRjgpUS1iGp2fLnPWmFGqLoR2RQCMw==
X-Received: by 2002:aca:281a:: with SMTP id
	26-v6mr28140692oix.37.1525902537670; 
	Wed, 09 May 2018 14:48:57 -0700 (PDT)
Received: from localhost.localdomain ([204.77.163.42])
	by smtp.gmail.com with ESMTPSA id
	14-v6sm8255500oth.15.2018.05.09.14.48.57
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 09 May 2018 14:48:57 -0700 (PDT)
From: Matt Hoosier <matt.hoosier@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  9 May 2018 16:48:55 -0500
Message-Id: <20180509214855.3330-1-matt.hoosier@gmail.com>
X-Mailer: git-send-email 2.13.6
Cc: Matt Hoosier <matt.hoosier@garmin.com>
Subject: [PATCH] bitbake: fetch2/gitsm: avoid live submodule fetching during unpack()
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
X-List-Received-Date: Wed, 09 May 2018 21:48:59 -0000

From: Matt Hoosier <matt.hoosier@garmin.com>

Although the submodules' histories have been fetched during the
do_fetch() phase, the mechanics used to clone the workdir copy
of the repo haven't been transferring the actual .git/modules
directory from the repo fetched into downloads/ during the
fetch task.

Fix that, and for good measure also explicitly tell Git to avoid
hitting the network during do_unpack() of the submodules.

Ref:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12739
---
 bitbake/lib/bb/fetch2/gitsm.py | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/gitsm.py b/bitbake/lib/bb/fetch2/gitsm.py
index 0aff1008e5..1f3fc44352 100644
--- a/bitbake/lib/bb/fetch2/gitsm.py
+++ b/bitbake/lib/bb/fetch2/gitsm.py
@@ -132,4 +132,14 @@ class GitSM(Git):
 
         if self.uses_submodules(ud, d, ud.destdir):
             runfetchcmd(ud.basecmd + " checkout " + ud.revisions[ud.names[0]], d, workdir=ud.destdir)
-            runfetchcmd(ud.basecmd + " submodule update --init --recursive", d, workdir=ud.destdir)
+
+            # Copy over the submodules' fetched histories too.
+            if ud.bareclone:
+                repo_conf = ud.destdir
+            else:
+                repo_conf = os.path.join(ud.destdir, '.git')
+            runfetchcmd("cp -pr %s %s" % (os.path.join(ud.clonedir, 'modules'), repo_conf), d)
+
+            # Careful not to hit the network during unpacking; all history should already
+            # be fetched.
+            runfetchcmd(ud.basecmd + " submodule update --init --recursive --no-fetch", d, workdir=ud.destdir)
-- 
2.13.6


