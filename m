Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29164E00DF0; Thu,  1 Aug 2019 11:38:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F7B0E00DA9
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 11:38:10 -0700 (PDT)
Received: by mail-qt1-f195.google.com with SMTP id y26so71307902qto.4
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 11:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=uptEBQpm6KkuUymfbYoeWH079g95wD1usTFB3ui1cUs=;
	b=Fw6B8R+ffTy2qRSgR2PSwtivQ0VkMuuaH+IWYED6qo5u6CnSM7qjriv9eFnqOyXTVE
	dzb2hrIHK/A5kA7/ESsaneD2V/NikGFjG/hMxkJVpCu7gV3Ss+Pjk7hiZNSgag2dv0/z
	Dzj/ApDU8B5WUhNW0wa3+R7yadbOeJb00gZOaJ+IrY3WEVw2stGXTH7DyW/H+aX9BWmy
	e4tZmVabRwdx5a+Tp8d8G+u+7WEJEWimTsQtI+wHrK6PK8BMAkUlbAyy1AHH7/ndQDvy
	4HMfmcvxfrfKO9/J351cm2rKME/W6YpkUg7YUnTr7kxLOpXsPc87q5pwPO8VyfQJEw93
	J27A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=uptEBQpm6KkuUymfbYoeWH079g95wD1usTFB3ui1cUs=;
	b=uTqH8m609rW9YKZ+t3bZrXbAyKO/Z8YvQK5Vg2HRua/ocJizaq3v55IoXMkMvHqkzv
	0qgxO8NZAM2ufstlyFGXvetxvYqcn8tWgn/1+fRMSetTcj1HAHB/cF5HB+XJXIfWOaMJ
	316uLzSFQnU8kHeVPJfIO+Nhd192gziy4hMBy+1Mrx8j2QzEd/D4xKo/g/58tJq0roq7
	Z1/8+i9MIKrW2Wrl6Lut79WkZi4hwI0EuMuMrZaZ3sbjk0mnYUDX/QvDVuW1PpewpDjZ
	jTX5GMw59OK3vNG/PFAS1YWONWc/9ZkI3l4GYjGsGXNF/7fb06TR1w7EVbGSE4pRIXQm
	gilA==
X-Gm-Message-State: APjAAAURiQG6RcAnDGwX+WpXNYoUxpGGwppSujQCx+Vs0Kb+t0qDb9ZR
	cw6KVl4vYt1cvhk0YoHGJq4Otw17bSc=
X-Google-Smtp-Source: APXvYqwCWyXHeqWSZ65dNyNHl7DU5smQm/0oM+NnSyJKpRCdkZpN/91tHeK3xOPlcFkmBU9UtA83dg==
X-Received: by 2002:a0c:bd18:: with SMTP id m24mr94485874qvg.118.1564684689379;
	Thu, 01 Aug 2019 11:38:09 -0700 (PDT)
Received: from intrepid.geontech.local
	(static-108-40-78-74.bltmmd.fios.verizon.net. [108.40.78.74])
	by smtp.gmail.com with ESMTPSA id
	v28sm29195708qkj.11.2019.08.01.11.38.08
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 01 Aug 2019 11:38:08 -0700 (PDT)
From: Thomas Goodwin <btgoodwin@geontech.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Aug 2019 14:37:31 -0400
Message-Id: <20190801183734.9597-1-btgoodwin@geontech.com>
X-Mailer: git-send-email 2.17.1
Subject: [yocto-autobuilder-helper][PATCH 1/4] config.json: Added meta-openembedded and meta-virtualization
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
X-List-Received-Date: Thu, 01 Aug 2019 18:38:11 -0000

The meta-openembedded has no top-level conf/layer.conf, so
layer-config's attempt to add it fails (silently).  Adding
it to the config.json with no-layer-add set to true will
bypass this silent failure.

The meta-virtualization fails because its repo isn't defined.
Once defined, it has a conf/layer.conf, so it's presence in
NEEDREPOS will cause ADDLAYER to fail because the former will
add it to the bblayers.conf before its dependencies are added
during run-config (causing bitbake-layers to error out).  The
fix is to also specify no-layer-add.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
---
 config.json | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/config.json b/config.json
index 62954ce..2252b83 100644
--- a/config.json
+++ b/config.json
@@ -921,6 +921,19 @@
             "url" : "git://git.yoctoproject.org/meta-gplv2",
             "branch" : "master",
             "revision" : "HEAD"
+        },
+        "meta-virtualization" : {
+            "url" : "git://git.yoctoproject.org/meta-virtualization",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
+        },
+        "meta-openembedded" : {
+            "url" : "git://git.openembedded.org/meta-openembedded",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
         }
+
     }
 }
-- 
2.17.1


