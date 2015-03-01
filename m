Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA22AE008CF; Sun,  1 Mar 2015 15:06:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EEBDE00867
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 15:06:31 -0800 (PST)
Received: by labge10 with SMTP id ge10so26895648lab.12
	for <yocto@yoctoproject.org>; Sun, 01 Mar 2015 15:06:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=7F30FUy666TQCt98Tn+wrcdLh07ciOSMiZ575zttuq0=;
	b=S3Z94QDVVRpjGo5gn99CwBjszHDha8mSuiAGy7huvmosB8owak7I9c52Fqmnx9m/2s
	U9pbZ9O9Rg3TDwqLZJBwvqUyTaegDvo1zaRG92L1YVX7SCscuf83gvlEbfSL5sLuYFtD
	tP77tDsk78r2moeV/NxuUIXwytqp3jW7OdZ6C5GeG+aG9xCfke9qYR3IYTjbNU2dn2ew
	ubGGM9Sc0vhadfRCNLASXDtYAGbOVvkPAGvP1scvp58DGouWNFB9zC8SsXPCim+zxCP3
	qNs3rmAgg1F/E4fkbSe0Otl/sZRMuKuR19c8JaRBhYZcXDN+e6R+WshT1sCdutGz7OFR
	d8gw==
X-Gm-Message-State: ALoCoQlVj9GJa6vIkpNhEfsHpjU9VUvlUTg4cSCElokFaH9Y7etUcIY53irekJ6wmMhq/WnQzjY1
X-Received: by 10.152.204.6 with SMTP id ku6mr1044779lac.62.1425251189262;
	Sun, 01 Mar 2015 15:06:29 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	n12sm2148284lbg.31.2015.03.01.15.06.28 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Mar 2015 15:06:28 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon,  2 Mar 2015 00:06:18 +0100
Message-Id: <a31699606ab08ffd4e76f63d6bd2d9d5116ede5c.1425251029.git.andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
References: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
In-Reply-To: <cover.1425251029.git.andrei@gherzan.ro>
References: <cover.1425251029.git.andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/6] firmware.inc: Move to recipes-bsp
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
X-List-Received-Date: Sun, 01 Mar 2015 23:06:38 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 {recipes-bcm => recipes-bsp}/common/firmware.inc | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-bcm => recipes-bsp}/common/firmware.inc (100%)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bsp/common/firmware.inc
similarity index 100%
rename from recipes-bcm/common/firmware.inc
rename to recipes-bsp/common/firmware.inc
-- 
2.1.0


