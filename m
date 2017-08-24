Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE413E00A39; Thu, 24 Aug 2017 05:05:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AE6CE00726
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 05:05:27 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id m7so3623455pga.3
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 05:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=DEExXItzgnUXWeGSv2QxTbHVpGVKdz7auZVC1a6ooCw=;
	b=gKzbwddyLIWw/KMA5mRYaPPr9XiNghAlikNv9lBYykTHo4ndX2f5ktaofH690BA9FS
	CtpU4qqgkVFk8m7i+S12GNuWl4kHTBH10qXGupwM8sevuINnI+zpxe8tFoHGXNKWw75b
	nINIDiT99GlEHqc3yhrCvOclaP0hUXgn6n3SuTpvp8vUzLot+ylrSg3MoJUUWzhrYSjh
	pLcyhvogGKXnrc3ld/T3D0LqYNJuhkNe258n/JWWTF5ReVXWqFftB9ESPEv+Bgo4YtX1
	WxCCa8LPln5wMJ5yIpnZdAvLU3U8YxaCoRMfRJSlCuGs+F0U8rvjMpRCZXiP+oqi2vh/
	7qfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=DEExXItzgnUXWeGSv2QxTbHVpGVKdz7auZVC1a6ooCw=;
	b=osF/trMWn0x4Xx3swYQw49az3WApBUQ9TAMKrvP+UtQ1N6nrlg2A8XJ6wAqy2KqmK4
	o2ajszxJGXTR3+B0e6INYFJvXDyqeOvBYdevu158/5rD9BXo5llxp0Y9gbBBmV0eq0Xp
	MBLL0/ur3WEr+I2HryfeaRbqLXY4vPPZWOIq3MLtIT7dzv/rm8W/X6OluSSDfDajFgfb
	b5lq4h/pKn7zifwXeeDkqtzWpkJEiVH+PmsY7esgVN8jiH2/68W5qFKAxveh6VhcTPX7
	7c/eIKQBiCfVz/J1KNhlLm2gt9VkV/Cid8o42JnH0K05Wypr4eWnnoJSco3qFDSW1XW4
	IGgQ==
X-Gm-Message-State: AHYfb5hw0lNR7OIU0HkEH4V8B3DZOPtCf8W12+1XLoFyGmcw8Ne+rqME
	6ZP//tRoZ5t8TCcZ
X-Received: by 10.84.140.5 with SMTP id 5mr6809071pls.38.1503576327076;
	Thu, 24 Aug 2017 05:05:27 -0700 (PDT)
Received: from localhost.localdomain
	([2400:2411:21c1:9d00:b8cb:4f3b:9c01:c505])
	by smtp.gmail.com with ESMTPSA id 2sm7789615pfi.104.2017.08.24.05.05.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 24 Aug 2017 05:05:26 -0700 (PDT)
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Aug 2017 21:05:00 +0900
Message-Id: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] bluez5: add functions for raspberrypi0-wifi
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
X-List-Received-Date: Thu, 24 Aug 2017 12:05:29 -0000

I could not use bluetooth with raspberrypi0-wifi.
hciattach on raspberrypi0-wifi failed because BCM43430A1.hcd is not found.

Functions in bluez5_%.bbappend should be enabled with raspberrypi0-wifi too.

I know that these changes are redundant.

If you have any ideas for better solution, let me know.


Yusuke Mitsuki (1):
  bluez5: add functions for raspberrypi0-wifi

 recipes-connectivity/bluez5/bluez5_%.bbappend | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

-- 
2.7.4


