Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f50.google.com (mail-qe0-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3C13E00824
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:17:02 -0800 (PST)
Received: by mail-qe0-f50.google.com with SMTP id 1so3978312qec.37
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 07:17:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Zs8WKt4FZ3jdOaSJm7LjU0H0a5LKiowuBOBNhANINz0=;
	b=NrSKbzk3+vztRX0PXcJg53668wQj0hq5xfTzQyIOUdXKQFXqi6gUiwzG3e4EgA/tG9
	Zr+xmMMHE/gw18v7sTrKZtftneLid8Kc+PDraVR0iXaQPAGwaFk2eg/AjZl8XrfzMQ4m
	T2WHT01mqjCj5NUEMBajo5KCMxJEbVqjznpAr1jdq4whpSzrdkjqG1jbqdxaPmNh9yuV
	lgkarmMs+yZLItrMGom4B6hJT1LZsz4ub/B0+nCgQz7FVEZSsoE+VmL8Mhq+xbBtNzpQ
	VKIveunEbIfKMkVmknxSxFcHVfncP5R6zAkF1nZYYBvV4b6E5l1eX+7PEnXs4uApQufK
	0lLw==
X-Gm-Message-State: ALoCoQknMU4ZjaBlqPYetVo1Wpe7YcE6fapJR2FxAeNW8e6966090s+GBRc86WPSBHScjh4S5sVR
X-Received: by 10.224.2.194 with SMTP id 2mr4117005qak.44.1389971821729;
	Fri, 17 Jan 2014 07:17:01 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id w8sm14478940qag.15.2014.01.17.07.16.59
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Jan 2014 07:17:01 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 17 Jan 2014 17:16:41 +0200
Message-Id: <1389971801-23724-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
References: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/5] linux-raspberrypi: Update v3.11.10 to remote HEAD
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
X-List-Received-Date: Fri, 17 Jan 2014 15:17:05 -0000

Change-Id: Ia0eac89faa63cb6d748f2749b82d1f80588e6a04
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.11.10.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
index d3fa310..3962b40 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
@@ -1,4 +1,4 @@
-SRCREV = "639f74acc37561caa67abeb9fb61adc7e6a49aef"
+SRCREV = "71397e18fb1038619f3066827b83d6fcd5d8bd62"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.8.1.4


