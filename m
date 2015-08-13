Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E53BE00985; Thu, 13 Aug 2015 06:12:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,TVD_SPACE_RATIO
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76EAEE009D7
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 06:12:26 -0700 (PDT)
X-Halon-ID: f041ec5d-41bc-11e5-b1f7-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 15:12:24 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 15:12:24 +0200
Message-Id: <12ab56578c314024ff14e9a347242da521fa4029.1439471046.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1439471046.git.petter@technux.se>
References: <cover.1439471046.git.petter@technux.se>
In-Reply-To: <cover.1439471046.git.petter@technux.se>
References: <cover.1439471046.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][fido][PATCH 4/4] rpi-default-providers: Let users overwrite the default providers
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
X-List-Received-Date: Thu, 13 Aug 2015 13:12:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei@gherzan.ro>

[Feature #65]

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
Signed-off-by: Pierre FICHEUX <pierre.ficheux@gmail.com>

(cherry picked from commit ade923f17d242f9a043b1714deb584929a2ffe8e)
Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 conf/machine/include/rpi-default-providers.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index ee3a3ac..cabbd43 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -1,10 +1,10 @@
 # RaspberryPi BSP default providers
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
-PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
+PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
 PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
 PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
-PREFERRED_PROVIDER_jpeg = "jpeg"
+PREFERRED_PROVIDER_jpeg ?= "jpeg"
-- 
1.9.1


