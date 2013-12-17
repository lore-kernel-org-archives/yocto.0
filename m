Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f54.google.com (mail-qe0-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88CFDE007F7
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:59:58 -0800 (PST)
Received: by mail-qe0-f54.google.com with SMTP id cy11so5358482qeb.13
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:59:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=O8wSWRzLuS7NljBT9CWEk4DLaczn9dG5fzC+qVGTRHY=;
	b=ai7Yi4dgm/iFPa6AB2PL+iyFCqJgW26v2v1a6VnBd3tIPQ7Gb803qsRYXJ/TmcVKoB
	nZHEuhaNj+4eTyMD0/CW6fOfJA6UPQzWBrZb3p0arRvfMK+JDTisqrOJTPjnPzYii1WC
	9X16IQlNAF2hG527nCjxy0dgrXGpobfc5w0yEZ6l2QWdtMNt0BzRndPcFmLXWKUX7K02
	6VCAy0Q84D0y9hDO+iIypNLUVgObIK1QVPVhENBfvIvVEXlm0xOC+8gXFNOC73sP9XJI
	BeUIaGnP5mExxiRdO/UVO1LoEYHq4GbehwRM33FLyAC5d81OzgUgvzzP0E2I4vNYkuqU
	CrcA==
X-Gm-Message-State: ALoCoQl1bIwP6lNLQb2v4URkRn1jdizset0FEzFmDjnc/8Fp5yDl1Z5MuSC1bfaPpFwHqjhI6QdK
X-Received: by 10.224.51.196 with SMTP id e4mr43933699qag.16.1387295997749;
	Tue, 17 Dec 2013 07:59:57 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id 4sm57745643qak.11.2013.12.17.07.59.50
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Dec 2013 07:59:56 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 17 Dec 2013 17:59:14 +0200
Message-Id: <1387295956-24899-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
References: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/6] linux-raspberrypi: Update v3.6.11 to latest HEAD
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
X-List-Received-Date: Tue, 17 Dec 2013 15:59:58 -0000

Change-Id: I9e30fc0c9a16df888ce8e0f56f5bcf7a3aff77bf
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.6.11.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
index ba2c704..a154bcf 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
@@ -1,4 +1,4 @@
-SRCREV = "10bc58289a7ebf6b1ab724636e0a16116278e339"
+SRCREV = "2a8d45ec0883e3cbdce920855b3461ac77308a5f"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.8.1.4


