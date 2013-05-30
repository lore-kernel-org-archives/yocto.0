Return-Path: <erik.boto@pelagicore.com>
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1228DE014FD
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 00:04:44 -0700 (PDT)
Received: by mail-la0-f44.google.com with SMTP id ek20so505791lab.3
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 00:04:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:mime-version:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=cy4h0Co59bB7PMQt2EPHZh/cMo95kTxKypbo6/kFBbY=;
	b=cPlJsUmAAtsimgh+MTe3Qz7gl/+3k/SmYWOhmi7Q/829POwHI7Ji5/W0/6IL/Xyuak
	jpLqoFwyY1uipRstp/10vmAEQ56O6r4p421gKkFZINO6Bxxy6REiwJZpFrLAkYzmxZMA
	Wx5ZqkmGWqxr58SaTAtC7jQk1l8NkzC6XAgtNW5eQ16dX4bACS1V3dU2nFqEt1jikmWF
	b1rWUxPJUp417axb7dJgvkF7nrUG6zQnEoJFl/EBsA2PDRW9+V52j4dT2KYKoba2ekQX
	+O56bxuT2lMGLN2nZN3cSwmO8j/Kzr/RQQ0MmRFRwIrie7/URKxet5lwHW171z9ytFMu
	FRXA==
X-Received: by 10.112.72.132 with SMTP id d4mr3098318lbv.79.1369897483746;
	Thu, 30 May 2013 00:04:43 -0700 (PDT)
Received: from erik-mbook.office.pelagicore.net
	(194-237-7-146.customer.telia.com. [194.237.7.146])
	by mx.google.com with ESMTPSA id w20sm9358641lbi.14.2013.05.30.00.04.42
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 30 May 2013 00:04:42 -0700 (PDT)
From: =?UTF-8?q?Erik=20Bot=C3=B6?= <erik.boto@pelagicore.com>
To: yocto@yoctoproject.org
Date: Thu, 30 May 2013 09:03:29 +0200
Message-Id: <1369897409-25194-2-git-send-email-erik.boto@pelagicore.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <1369897409-25194-1-git-send-email-erik.boto@pelagicore.com>
References: <1369897409-25194-1-git-send-email-erik.boto@pelagicore.com>
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQkCTlz4RDazLW0sqoWHsJvxiDVqTiVCIevcNYlsH7AbqX63Bo4sQO00v1MOL2YSw/sXF7sZ
Subject: [meta-ivi][PATCH 2/2] audiomanager: start using -d to daemonize
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
X-List-Received-Date: Thu, 30 May 2013 07:04:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The unit file is written in such a way that it expects setup_amgr.sh to
return, therefore -d needs to be passed to AudioManager.

Signed-off-by: Erik Botö <erik.boto@pelagicore.com>
---
 recipes-multimedia/audiomanager/audiomanager/setup_amgr.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/audiomanager/audiomanager/setup_amgr.sh b/recipes-multimedia/audiomanager/audiomanager/setup_amgr.sh
index 8dbdc6b..07b6d5c 100755
--- a/recipes-multimedia/audiomanager/audiomanager/setup_amgr.sh
+++ b/recipes-multimedia/audiomanager/audiomanager/setup_amgr.sh
@@ -3,5 +3,5 @@
 rm /tmp/session_amgr
 dbus-daemon --session --print-address --fork > /tmp/session_amgr
 export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/session_amgr`
-AudioManager
+AudioManager -d
 
-- 
1.8.1.2


