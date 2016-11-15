Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23867E0095F; Tue, 15 Nov 2016 00:21:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 317D3E0093B
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 00:21:33 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id t79so151850668wmt.0
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 00:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=1sk652dNEicTTOl6z3Otkm5NMukN/qQWSnXsT82uiSQ=;
	b=iJSUhjLkgWnt7oDy9I14S9/FG1NhC+zzBFCt8d4NqTmqXKsPknMxTRcTciw/xDqo6F
	LcQySpHhzC9wjLxslRvSrerKHEz4sf2E8fZuG8AH5LjLQQxd65mIuRZmV7g507XATuyk
	mpZX4qgYOMIxtbJAUCxK9cq1uROo9WiV5GO/wo3jHG1KqRq0SvZMyPZfJ3YgCgqOoGBq
	IdY6x16mP4HX/dWADYUFC5tJxQc77CKMqNEEqhdmh88wBJEyviGKJOF2Jwllyl6YCBE6
	ts8ZJMkXlnLBoWOy2guhUT9QFCcXcAl1MIb5kzGpUbxEMquKjG9BMbDi3SWHZ+V42TXQ
	4WUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=1sk652dNEicTTOl6z3Otkm5NMukN/qQWSnXsT82uiSQ=;
	b=jwnxD9V8tWQjm2OkHDaMeCrR+VccKor51pxc1BX1WlDjmeADwVMbmqxjA4utJeb4rw
	kQnbJjliUGxLgADa+whNy+SGep4RhELCPWqJ3xYYiMPEMWAJxF+jn0JYbtBJzQ6awL1n
	rT1tHAUHLvA5BNsVIyRx/si5VFC1ZJN96iC5PvXQvPHk09Y+mEHOwCmutmXUmVf9f08E
	eOKzkXg8bKyMUwX6bLYQuUt+HWYQfw8fwnkV7wuNPgPvI+hT2kiqznikDMLJU6nHxyiG
	yJEY5fLgPA+zhsd2bFT42pr9yrAbHXBlJqtOsCzsSYHgWH7gWR+hnXQAeI5zZ4upXAbI
	4Ryg==
X-Gm-Message-State: ABUngvecs49OatqPpb6X9UkEGn+QPYRpg5u4TFvmds69T0E11oGA5Fb/bztbo7HviDbxkg==
X-Received: by 10.28.8.202 with SMTP id 193mr2157447wmi.101.1479198092945;
	Tue, 15 Nov 2016 00:21:32 -0800 (PST)
Received: from localhost.localdomain (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	wg8sm28395198wjb.42.2016.11.15.00.21.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 15 Nov 2016 00:21:32 -0800 (PST)
From: Piotr Lewicki <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Tue, 15 Nov 2016 09:21:27 +0100
Message-Id: <1479198088-6559-1-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH 0/1] raspberrypi3.conf: fix typo for BCM43430
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
X-List-Received-Date: Tue, 15 Nov 2016 08:21:38 -0000

From: "piotr.lewicki" <piotr.lewicki@elfin.de>

New linux-firmware subpackage is called "bcm43430" and not "bcrm43430".
Renaming it because the test image is not building with the typo.

piotr.lewicki (1):
  raspberrypi3.conf: fix typo for BCM43430

 conf/machine/raspberrypi3.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.7.4


