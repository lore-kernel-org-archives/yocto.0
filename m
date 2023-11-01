Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DE95C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 11:45:10 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web11.4880.1698839108671194535
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 04:45:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UPsGnXst;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-507975d34e8so9657629e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 04:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698839106; x=1699443906; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=7u85akkBbUx9noOaYUdBFzq9Oi9H5jeMOAdZV1qHxr4=;
        b=UPsGnXstVxMHewdIrvMUwuceLDwRmir281WlRvL2w3HqEao853TwcUAPPKNLtYOYdI
         vIhtetkfL8JdrxJiH4kIXVT1cvYNnF5lpRB3dgMLwvZpcFQGCepZvJvZkocO7k8eXH8H
         WKrN3XY8RL4P6dr6lgedCZlz8/5gbnWuDxehM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698839106; x=1699443906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7u85akkBbUx9noOaYUdBFzq9Oi9H5jeMOAdZV1qHxr4=;
        b=emfysuHebyfj+Z0Atu0Xf7kAPLoPt5tL7myobGp3QlVQb1hyqMd0+WoCN6SQt6NVLl
         yhkuRXAEYVI/krfPMFEIgT1uWwEiHiydakfoYyTwCxHTjHctke4yrVPuE8TsDjQLo9CH
         a4oo4P2dO7EZKCfI95A46t77NooZOXnGXB83tiOEr6bz6furKmxpj4+MbbcdtfxpdvXV
         rdeXxxAFgPnBPQ782Ui0BrhKXySFiGoSyno8oPrEmUYxzYxtIY91vA6cyBkdwAkTww5H
         fbUhQdV5G14HwAvhnVSuKwAmxi3MetfjMa6suYD/BS8lM502LbGRToukboqXywsW8ByQ
         Zi4Q==
X-Gm-Message-State: AOJu0Yyg9T+chztDHILl8OmkTrYGXKGrerAixO1ry8/j6gfAxIWnngPg
	rTCeB9ucfjq2yPuTFCerRtCJRmOd1x9KG/fUW/U=
X-Google-Smtp-Source: AGHT+IGGu/zyGU8chd2BxnwAhw28q3o1RcBHElF97/0aURvMpIQFCPXQcaWPpishXTVBxmrn3HoBbQ==
X-Received: by 2002:a05:6512:3c8b:b0:503:2642:435e with SMTP id h11-20020a0565123c8b00b005032642435emr14466444lfv.66.1698839106475;
        Wed, 01 Nov 2023 04:45:06 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:fc93:9493:ec09:7593])
        by smtp.gmail.com with ESMTPSA id h7-20020a05600c314700b004078d71be9csm1305206wmo.13.2023.11.01.04.45.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 04:45:05 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [auto-upgrade-helper] [PATCH 1/2] upgrade-helper: Drop layer_machines
Date: Wed,  1 Nov 2023 11:45:04 +0000
Message-Id: <20231101114505.2306354-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 11:45:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61553

We don't need the ability to change this per layer, drop the option
and simplify the code.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 upgrade-helper.py | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/upgrade-helper.py b/upgrade-helper.py
index 3be6d68..869dc3f 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -109,8 +109,6 @@ def parse_cmdline():
                         help="layers to include in the upgrade research")
     parser.add_argument("--layer-dir", action="store", default='',
                         help="the layers root directory")
-    parser.add_argument("--layer-machines", nargs='*', action="store", default='',
-                        help="machine to build for the layers")
     return parser.parse_args()
 
 def parse_config_file(config_file):
@@ -180,7 +178,7 @@ class Updater(object):
                 E(" In layer mode enable you need to specify %s.\n" % setting)
                 exit(1)
 
-            layer_settings = ('layer_name', 'layer_dir', 'layer_machines')
+            layer_settings = ('layer_name', 'layer_dir')
             for s in layer_settings:
                 self.opts[s] = settings.get(s, '')
                 if not self.opts[s]:
@@ -188,13 +186,11 @@ class Updater(object):
 
             self.git = Git(self.opts['layer_dir'])
             self.poky_git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
-            self.opts['machines'] = self.opts['layer_machines'].split()
         else:
             # XXX: assume that the poky directory is the first entry in the PATH
             self.git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
             self.poky_git = None
-            self.opts['machines'] = settings.get('machines',
-                'qemux86-64 qemuarm_musl').split()
+        self.opts['machines'] = settings.get('machines', 'qemux86-64 qemuarm_musl').split()
 
         self.opts['send_email'] = self.args.send_emails
         self.opts['author'] = "Upgrade Helper <%s>" % \
@@ -773,7 +769,6 @@ if __name__ == "__main__":
         settings['layer_mode'] = 'yes'
         settings['layer_dir'] = args.layer_dir
         settings['layer_name'] = ' '.join(args.layer_names)
-        settings['layer_machines'] = ' '.join(args.layer_machines)
 
     updater = UniverseUpdater(args)
     updater.run()
-- 
2.39.2


