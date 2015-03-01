Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AD5DE00867; Sun,  1 Mar 2015 15:05:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67AF0E00746
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 15:05:33 -0800 (PST)
Received: by lbiv13 with SMTP id v13so7856590lbi.11
	for <yocto@yoctoproject.org>; Sun, 01 Mar 2015 15:05:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Bux7jvE6I4mzImEe53evuBKAUqs6QyWM+3e7+NZp5Kg=;
	b=aLM7oeMhzqB0kDBw3GIjIVGeXnIF/6rwOn6NPMQw2EZBPZgl3iw+hCc9LO4TdZNMgK
	VwevEmv1tmXLOvZaJ1+3UjEDrA084FhU+lrqjqJmJmjgCzSer1Lw98fcUQxCZOKzr2Qp
	aJKkPVr20FxiDBn1+rMnAV7BS3CVRJ++OtXSKy/cplIFRk4p/IJiH7NabHxCuKJcdUDz
	zZ/Gb5LXrO3Y0OQuIzzBmR5RdDkoAkDsHJXXg5jwHvrUGIcC9DcZnENikiyZILV+QeNP
	DmohLfZip7Lcw/E9zx/kmkr4rZTfvc6fyumrnjMNiumbNcuPUywrSmqjZQg+AFiiOE5Y
	a4Ng==
X-Gm-Message-State: ALoCoQkPq8bvng3qnQuE5VLN+mTIysw+6nghkNQCUXM14o09ZNCqrOMe2mCcsxovo+T9u4rfnogB
X-Received: by 10.152.37.2 with SMTP id u2mr3573178laj.45.1425251131800;
	Sun, 01 Mar 2015 15:05:31 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	w2sm2142035lbp.48.2015.03.01.15.05.30
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Mar 2015 15:05:30 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon,  2 Mar 2015 00:05:21 +0100
Message-Id: <cover.1425251029.git.andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
Subject: [meta-raspberrypi][PATCH 0/6] Restructure some recipes
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
X-List-Received-Date: Sun, 01 Mar 2015 23:05:37 -0000

The following changes since commit 57c8e6bffbbef9b2331551093c3436303eb18386:

  rpi-base.inc: Include the RPI2 DTB (2015-03-01 22:43:40 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/meta-raspberrypi ag-dev
  http://git.yoctoproject.org/cgit.cgi/meta-raspberrypi/log/?h=ag-dev

Andrei Gherzan (6):
  bcm2835: More recipe to devtools
  bootfiles: Move to recipes-bsp
  firmware.inc: Move to recipes-bsp
  vc-graphics: Move to recipes-graphics
  rpi-basic-image: Define rpi SPLASH specific package
  .gitignore: Ignore some stuff

 .gitignore                                                          | 2 ++
 {recipes-bcm => recipes-bsp}/bootfiles/bcm2835-bootfiles.bb         | 2 +-
 {recipes-bcm => recipes-bsp}/bootfiles/rpi-config_git.bb            | 0
 {recipes-bcm => recipes-bsp}/common/firmware.inc                    | 0
 recipes-core/images/rpi-basic-image.bb                              | 2 ++
 {recipes-bcm => recipes-devtools}/bcm2835/bcm2835_1.38.bb           | 0
 {recipes-bcm => recipes-graphics}/vc-graphics/files/egl.pc          | 0
 {recipes-bcm => recipes-graphics}/vc-graphics/files/vchiq.sh        | 0
 {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics-hardfp.bb | 0
 {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics.bb        | 0
 {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics.inc       | 2 +-
 11 files changed, 6 insertions(+), 2 deletions(-)
 create mode 100644 .gitignore
 rename {recipes-bcm => recipes-bsp}/bootfiles/bcm2835-bootfiles.bb (95%)
 rename {recipes-bcm => recipes-bsp}/bootfiles/rpi-config_git.bb (100%)
 rename {recipes-bcm => recipes-bsp}/common/firmware.inc (100%)
 rename {recipes-bcm => recipes-devtools}/bcm2835/bcm2835_1.38.bb (100%)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/files/egl.pc (100%)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/files/vchiq.sh (100%)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics-hardfp.bb (100%)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics.bb (100%)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics.inc (97%)

-- 
2.1.0


