Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88556E00D8A; Tue, 30 Jul 2019 11:36:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
	[209.85.217.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1CB4E00D4D
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 11:36:35 -0700 (PDT)
Received: by mail-vs1-f68.google.com with SMTP id v6so44301706vsq.4
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 11:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=CWzU2gj30gAoH8rL9oFxbtIZiKD9jXtKjUPWDU7IKfY=;
	b=NvFcYPPm8jevJJ7Ph+n9ZbSuTdSZq6U+mYI527cF7d5dxgQN0y+IgSbNsF0BPIaV6T
	Q1eVNAb6zs/dzu6+hPf4EPcVtiujseeOWcA7gsiQwlv2yNeEjQr83BVkPysPWAXkgnGM
	MsyAGAvaZcXD/CXUBxzeHx/pLcXr/D4Fd5U65Fyd+1BF9fKK3nQ1pMYhj6q77/iy3yFB
	EF+a7M8ec33kcUPBJ/lCN0SRBZtvo1YPL+DDN7O4g2akGsGPMcaH1U7wHEsTZ41aZ87p
	BwFpLQxm7inF57jVXGu67AvSIZPXcJj4fCcspmIE+3LnhyAn4DHDv0VIerWSy23a8TE4
	0UJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=CWzU2gj30gAoH8rL9oFxbtIZiKD9jXtKjUPWDU7IKfY=;
	b=kBlUtzziG+Y5o5B/9vO2NCi/4wVBXQ1lA2wyNEOtUHAm0h015wBiQWKEw9YZWk645d
	/Ayd8pR7PW2yXAiJHwgOxDTXdbsKQFpN0JTSRgzKrqIVkpUwSLfRuEK+ulzEQmGfJ+JM
	+hqdkc9LvYSXjUjEZ4+VTAkJWFkmd3ZzO5gEQjg1z8BnSpYaDou/MBgQ9ZCsSeMKQv6R
	qGBURqiaHJiZy4DCwwZHduR4QJz5Un9t8zB4l6GMmI+3y3D4NyrfH6rHSXlOlmE6ZpUP
	XhgBvo0Y6WZPokUJoY75sIkgioht9Uq4UeeJUzqV/A0JLdDZOf0gyIrh1XweyVSnEPFX
	ADCg==
X-Gm-Message-State: APjAAAX2P3RKXb3GqfrNFWo9NwyQr94Jkk8uvx8ggwTFYtf9pytFqacG
	SKn+xo/NhCzYw4pNYbnliPh+KV/t9kg=
X-Google-Smtp-Source: APXvYqwDqoG1U44syeAR6k7Tb9ZjB1Po/TP0xmPUzB7X6YjzuvRyxIITaSdZHtt4KZkFTZIUgEJJfg==
X-Received: by 2002:a05:6102:3c5:: with SMTP id
	n5mr36192604vsq.56.1564511794737; 
	Tue, 30 Jul 2019 11:36:34 -0700 (PDT)
Received: from intrepid.geontech.local
	(static-108-40-78-74.bltmmd.fios.verizon.net. [108.40.78.74])
	by smtp.gmail.com with ESMTPSA id
	y71sm15036900vsc.19.2019.07.30.11.36.34
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 30 Jul 2019 11:36:34 -0700 (PDT)
From: Thomas Goodwin <btgoodwin@geontech.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Jul 2019 14:36:19 -0400
Message-Id: <20190730183621.26193-1-btgoodwin@geontech.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Tue, 30 Jul 2019 11:45:43 -0700
Subject: [yocto-autobuilder2][PATCH 1/3] Bug fix: added support for ABHELPER_JSON environ.
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
X-List-Received-Date: Tue, 30 Jul 2019 18:36:36 -0000

The readme suggests exporting this variable from the
environment to expose multiple configuration JSON files
but the intended behavior doesn't work without adding the
variable to extra_env.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
---
 builders.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/builders.py b/builders.py
index 5765040..3d12969 100644
--- a/builders.py
+++ b/builders.py
@@ -15,7 +15,8 @@ maxsteps = 9
 # Environment to pass into the workers, e.g. to load further local configuration
 # fragments
 extra_env = {}
-#extra_env = {"ABHELPER_JSON" : "config.json /home/pokybuild/config-local.json"}
+if os.environ.get('ABHELPER_JSON'):
+    extra_env['ABHELPER_JSON'] = os.environ['ABHELPER_JSON']
 
 @util.renderer
 def get_sstate_release_number(props):
-- 
2.17.1


