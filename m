Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87EC7E00DF2; Thu, 20 Oct 2016 22:10:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38F02E00DF1
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 22:10:04 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id s8so7499765pfj.2
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 22:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=S260AwsxUmIyXDkbzv37ZYkAvyaIYDFzOL7If4LlTtw=;
	b=XiPIoR6OoDz3CLnwxIani++naOYKk/HBjx64lk0DyK5/18sfXVGJQ0QSKsH8CycMOg
	TVhLg3/VBwANRepgOg8+pmkUZ8OpHGSegNrZQMt3MUmtqzDGWFQDwSm2EhBmjJRoix3D
	VwEPilQWUmz5ZamUvGX42QvDXaCCDzSpuQyPmKfTvNR4Ki9feHvxPxwRWyh63jitOeWF
	BRWAjYBb3sWGgi2tjMjwz5FsrJihSmi/3do5PsxocrUF9R6iOCVCHurKFxAfTysOWwKs
	FWr/CsidWwpmdfjTqI7ReRIFJVu3BV2AYcHQ2WAiS72G2ovPDWqSuerrAWv7/1OqgZ6Z
	dTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=S260AwsxUmIyXDkbzv37ZYkAvyaIYDFzOL7If4LlTtw=;
	b=L+/9XAUcnSJrYlMMls9v1kvEBJtSrqVlPv6btnJAPH12aIQncPn3NJIRA6y5YUKI1L
	g5mrymdujihfhkM+huUBM8ivRkM8Tcnv/AaNIu8BxlYXSG2soAKcxDisVVqWp6TRifbr
	zTAQ8PYfcYk7RnFpyz5Uh3l8XL+kSxNMENQlT/MKea8TvDoztEv+ZQ0cCbiIagpEwXDM
	ClXGGU0gzNIz1D8LxY8L08jbYk+/Zmh9LhGwBe0m/kQxEVrqZzk1oJHvjrbAEjEkzyqx
	Jsln4NQsIU8v1g3cQaDNgxIl8XCZuh5l8/BYck1AWdKW7FEi3NymP8xoGLu5NR+1lshe
	pGVw==
X-Gm-Message-State: AA6/9RnGO4g1loML76zU/Tq8ncdZGYv40T5HMEAHTu43ZaXtUG/QPkN8FnGgjzsxjqnm7A==
X-Received: by 10.98.17.26 with SMTP id z26mr8120006pfi.44.1477026604261;
	Thu, 20 Oct 2016 22:10:04 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	m62sm1113803pfi.10.2016.10.20.22.10.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Oct 2016 22:10:03 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Oct 2016 22:09:57 -0700
Message-Id: <20161021050957.26429-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.0
In-Reply-To: <20161021050957.26429-1-raj.khem@gmail.com>
References: <20161021050957.26429-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi_4.8.bb: Update to 4.8.2
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
X-List-Received-Date: Fri, 21 Oct 2016 05:10:07 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
index 02623f4..7934747 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.8.1"
+LINUX_VERSION ?= "4.8.2"
 
-SRCREV = "5b7970b19bbb2ea1620591bfb6517848696ed0b9"
+SRCREV = "0105b0ea92b1614ac00329a530da940053e64a4a"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
 "
 require linux-raspberrypi.inc
-- 
2.10.0


