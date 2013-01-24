Return-Path: <schnitzeltony@googlemail.com>
Received: from mail-ea0-f176.google.com (mail-ea0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0BFBE01505
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 13:57:57 -0800 (PST)
Received: by mail-ea0-f176.google.com with SMTP id a13so3920480eaa.21
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 13:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:mime-version
	:content-type:content-transfer-encoding;
	bh=q434mVDGSjlnBE9lg8fZZCEdoFY1JvTJmyVNAut3oQY=;
	b=WXbQY2t5HMme8IgSmKgvjgLe5J4lXcPOFrlAPt8IVkfSVnzchlY+r3RG8iVTrc1tuN
	lsSJJSZ7S5J66L17JmjR5iD4rBKGQjpuF/H9eJpzuMEJ5doR0SLYUiXyQQz/HiZfCb/i
	GqYCgxxDueORTaNlUs5jN/gUYDcY/LAQDq/WIkGCLu3EOrgdiJsEoqnM3v9zGxzrhmQs
	DSCwcXTRBzVPt/LgK/KVlYEcJv0FIcw+XbMyM5GD4t2DdfLn7jvoyteFXH+fTXmt+Gay
	+XlB18aqXJhIO04oGoVd8hRLvUnxOXGz8IHA0hlVagc7wJW1NeBXgyksijkYcAeqQMY6
	jGig==
X-Received: by 10.14.225.72 with SMTP id y48mr10347262eep.46.1359064676318;
	Thu, 24 Jan 2013 13:57:56 -0800 (PST)
Received: from localhost.localdomain (p5B0A316D.dip.t-dialin.net.
	[91.10.49.109])
	by mx.google.com with ESMTPS id b2sm37011988eep.9.2013.01.24.13.57.54
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 24 Jan 2013 13:57:55 -0800 (PST)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 22:57:40 +0100
Message-Id: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 1.7.4.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/2] minor fixes for current HEADs
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
X-List-Received-Date: Thu, 24 Jan 2013 21:57:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit e3e92fe9035f872e619f56426414dd93e917f3cc:

  README: Refactor (2013-01-24 21:34:48 +0200)

are available in the git repository at:
  git://github.com/schnitzeltony/meta-raspberrypi.git work

Andreas Müller (2):
      layer.conf: fix parse
      xserver-xf86-config: fix do_install

 conf/layer.conf                                    |    2 +-
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

-- 
1.7.4.4


