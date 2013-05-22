Return-Path: <paul.betafive@gmail.com>
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABBE3E01409
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 02:06:15 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id hi5so3494392wib.6
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 02:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=7CT4AvFFWh14oAVAFztuddv54MWR/E3VWGOz2XHJf/M=;
	b=Tan65Rpgvs0GqjpwkQmJPEY6eCRN/oyUZIpkKq3aEsX6HvKKyuHGluDbnIK0UbcHSw
	h4+wFUfd9NgLvLKBBF2cYge46qEX4QX/v4BqqQZLJh3pQqhUmM4topXmQA/f1ZOuVHf5
	QxRSRwcLqVMl7uxjsqmNz5YlNm5twHK4dmRvFSMs5zV2HOjW0F1j9AlQsuQAOkLipLvb
	8bLBgt5Ba11KZZ3wjd4+pFqQNJNDg7bcNiHQP0d2V9kOUfnJ4z8QPbDOX/DFiC7hFg6g
	k0VKIWRX2YemzOvnSDCKel71fl2EWHEnJyagpr4nxI8pF1yY1wpFW/dYc6wunq5wG9et
	Q+BQ==
X-Received: by 10.181.13.112 with SMTP id ex16mr31699553wid.28.1369213574599; 
	Wed, 22 May 2013 02:06:14 -0700 (PDT)
Received: from vesta.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83]) by mx.google.com with ESMTPSA id
	ca19sm27459501wib.3.2013.05.22.02.06.12 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 22 May 2013 02:06:13 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Wed, 22 May 2013 10:06:02 +0100
Message-Id: <1369213564-22220-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.2.2
Subject: [meta-raspberrypi][PATCH 0/2] Patches from recent discussions
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
X-List-Received-Date: Wed, 22 May 2013 09:06:16 -0000

I've made recent comments on the Raspberry Pi firmware and on the first run
script included in meta-raspberrypi. As I've not really got a definitive answer
on either I thought I'd send in patches for review.

The patch for bootfiles and vc-graphics doesn't reduce the amount we need to
fetch but it does make it easier to override the firmware source to a local
clone or an archive. If there's no need for vc-graphics any more and the
userland recipe satisfies everyone's use cases maybe this is redundant and
vc-graphics should just be removed?

Paul Barker (2):
  rpi-first-run-wizard: remove
  bootfiles, vc-graphics: consolidate SRC_URI and S variables

 recipes-bcm/bootfiles/bcm2835-bootfiles.bb         |   6 +-
 recipes-bcm/common/firmware.inc                    |   3 +
 recipes-bcm/vc-graphics/vc-graphics.inc            |   9 +-
 recipes-extra/startup/rpi-first-run-wizard.bb      |  37 ---
 recipes-extra/startup/rpi-first-run-wizard/LICENSE | 339 ---------------------
 .../rpi-first-run-wizard/first-run-wizard.sh       | 213 -------------
 .../startup/rpi-first-run-wizard/rc.firstrun       |  73 -----
 .../startup/rpi-first-run-wizard/rpi_startup.sh    |   6 -
 8 files changed, 9 insertions(+), 677 deletions(-)
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard.bb
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/LICENSE
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/first-run-wizard.sh
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/rc.firstrun
 delete mode 100644 recipes-extra/startup/rpi-first-run-wizard/rpi_startup.sh

-- 
1.8.2.2


