Return-Path: <darren@apps.dvhart.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF408E011D1
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:04:55 -0700 (PDT)
Received: by iagw33 with SMTP id w33so3687124iag.35
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:04:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=2FledZVJXJ+1mlaxUc0WEFOhs8lC0+jlylMxhwSRGTs=;
	b=JsaqnkRbxUncCQm5tKgDUQ200ZEnfiSfzq/m9CxrEWDOCEFohz8NlUsCeGX5JcLv8p
	EzhR/NIDoMS9rNXHguMQO9eXH4jPX3jlH3J422/hfUBfYd88DbRIDgmjg2RCQXAWudxD
	C75lc0ci2Dj++QWguzXEyescLGY+l+UFe1hxdR46mr+uiR5/JJw/tAEJs8q1DnQtKJoX
	jB3bRTe9DapT4Ez5cdWlUrJoX9UZV3k9pneQTdAzYhcXe34E+7VreqwAim3E+PzRyvWW
	UhPxXL+mq7/kU753pX7CoBuXy19p2mAn5X2fymXjmmkTN/mj7Cg7+rEfXKj1taf7rPCc
	H6Cw==
Received: by 10.50.185.138 with SMTP id fc10mr6917799igc.6.1331755495522;
	Wed, 14 Mar 2012 13:04:55 -0700 (PDT)
Received: from localhost (static-50-53-102-193.bvtn.or.frontiernet.net.
	[50.53.102.193])
	by mx.google.com with ESMTPS id uz5sm452666igc.10.2012.03.14.13.04.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 14 Mar 2012 13:04:54 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 14 Mar 2012 13:04:46 -0700
Message-Id: <1331755490-2148-1-git-send-email-dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQleQ95j3CKY+l0EaRczKCdDNZ6a7fwazdOM1vSF+Kh+ePXe1difkyI+dTBR/KSsMcBK5qxo
Subject: [PATCH 0/4][meta-intel] fri2: update serial, drivers, and kernel version
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Mar 2012 20:04:56 -0000

With this update the FRI2 is now much more functional.

o Legacy boot works with Syslinux over the USB Serial device
o Wifi is enabled at boot
o Bluetooth and Zigbee support added
o EMGD-1.10 is working
o Linux-Yocto 3.0 and 3.2 kernel tested and working


