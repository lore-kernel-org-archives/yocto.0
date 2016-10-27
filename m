Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9555E006D8; Thu, 27 Oct 2016 08:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BA09E00529
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 08:29:37 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id e12so5108452oib.3
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 08:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:subject:date:message-id;
	bh=wrjauYpK0BvtiopnpHg6T7Y9L1yAA4qGu1Y9NRbErZ8=;
	b=B5Uk2o2mEQujEzSIk7+HhHFU1xtHmz1sI6sXfykZ2pSB65e26PcqSnIW1IdkFbAaqQ
	0PC4tatYshqu819hB5/gm4CJQOsAqRvqSM6fS2f87D85vBVyATZ+QqJ1fLFAGaz//rnI
	HJjfpE+2my+ciwgP7IujRx9q2aQhsXcgukZvWe2zMnANIDDehNfyBTXjKu/kIkIjutcC
	sNxAKu2omodUhUg465uetAi9y6R8B0XX0hUGv093ZfoqEQ2Qm0FQ/P6Rni4p17+4w0XO
	8WVvlMqtqpxPiMg0dTYYQCNWP2MQaWM9jDNCATlau4PW9lAucDviy4F1zlazCRBy1c48
	juNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=wrjauYpK0BvtiopnpHg6T7Y9L1yAA4qGu1Y9NRbErZ8=;
	b=S5SA//YvQfxHCPUdJtQ+ZsqwwVIJW3YkmLgT785ptM1PzSOz+nyQnEy0e09Yw2lviZ
	z/9DPMjuxKPT8rzVlMuWJj6Xb8PVAzUricHTNKmo8Z9WCOGyoR0VxsZpK/xcfPETY46W
	AugvxQzrOEM5zZM7Tp+3hAbYYL1Od+uMFqqFPKP0LhL/5urj6sxPemNsUG4+7Igab849
	jRYmfKHCUprSp7TnzHY0IBvdQ0let6zPckq8Qme1WyMt8O8H43EuorFOnAguhw2n42m/
	3K0zWSK60497ZP8wG+smhHMHFIeR4n9Dpd7QDiDWP5BLbboSbvzpOTtRfzif0sLTdD7a
	If0g==
X-Gm-Message-State: ABUngveKeftIAahL8WvryW4MlpEtbIC3NreF+Micg0Jk6SgRxeU5eS+OXFzMmnybMZdElQ==
X-Received: by 10.107.192.130 with SMTP id q124mr7170916iof.129.1477582175997; 
	Thu, 27 Oct 2016 08:29:35 -0700 (PDT)
Received: from mir.deserted.net ([23.233.31.74])
	by smtp.gmail.com with ESMTPSA id
	a100sm3090109ioj.13.2016.10.27.08.29.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Oct 2016 08:29:34 -0700 (PDT)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org,
	flihp@twobit.us
Date: Thu, 27 Oct 2016 11:29:48 -0400
Message-Id: <1477582188-13463-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] eudev: remove explicit setenforce call in init
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
X-List-Received-Date: Thu, 27 Oct 2016 15:29:44 -0000

When using udev-cache, the eudev init script had been explicitly calling
'setenforce 1'. That's no longer necessary with updates to other parts of
eudev and the presence of the call prevented booting core-image-selinux*
systems in permissive mode.  Remove the call to allow permissive booting.

[YOCTO #7506]

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---

The Yocto bug mentions asked whether removing this setenforce call (that is,
allowing booting in permissive mode) would cause new warnings / errors /
whatever or would potentially even prevent booting at all.  I tried to cover the
various cases in my testing and I've captured the boot logs here:

   http://pastebin.com/EEahVmzd
   http://pastebin.com/Qxa3BHHE
   http://pastebin.com/4XE9Zhg8

And on review I don't see anything significant in the differences.  That said,
an extra set of eyes (or two) would be appropriate, I think, which is why I
posted the logs.  I zeroed out all the timestamps for the sake of making diffs
less noisy.

Philip: Since you authored the original commit here, I'd like you to weigh in on
the sanity of this change, even though the bug is specifically referencing a
commit I did long ago.

One caveat with this, and you'll see it in the logs, I'm right now observing
that if the system doesn't boot into enforcing mode on the first boot, switching
to enforcing mode requires a reboot, but I think that's a function of the first
boot relabling and udev-cache squabbling.  Subsequent boots of all three
scenarios didn't have any issues with logins, as far as I could tell, and
requiring a reboot when doing policy-related work on a first boot of an SELinux
system isn't all that unexpected, from my experience.

Thoughts?

-J.

 recipes-core/eudev/eudev/init | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-core/eudev/eudev/init b/recipes-core/eudev/eudev/init
index 9a4b293..ee64f86 100644
--- a/recipes-core/eudev/eudev/init
+++ b/recipes-core/eudev/eudev/init
@@ -89,7 +89,6 @@ case "$1" in
 				    fi
 				    echo "$NEWDATA" > /dev/shm/udev.cache
 			    fi
-			    /usr/sbin/setenforce 1
 		    else
 			    if [ "$ROOTFS_READ_ONLY" != "yes" ]; then
 				    # If rootfs is not read-only, it's possible that a new udev cache would be generated;
-- 
1.9.1


