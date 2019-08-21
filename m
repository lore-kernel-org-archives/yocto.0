Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2ED7E00D88; Wed, 21 Aug 2019 04:02:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 313F8E003C1
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 04:02:47 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id i63so1678572wmg.4
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 04:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=/CbT+JfENyD7cCcSZNWP8Dlh6EgdPIoO1/sRWaGpfYw=;
	b=fUodYZgzMeCt3do/z8raJSrN4mTlRFiQfOWSu0LpwvHlnPVtb6qecEKOquOPkWIs5c
	YKrswzGjkyjO9tXftAl3/0tY2hWeYxxgtcywGfVxbx/KhRVax41L3IaaWQZJaHrFMifZ
	FpkTdGKjFNQIHGO1HUgpiTFJD4z3hiZ2Bjs89aQp8LjHou03tULXCN40MhN7zDWg06Hv
	Bur8QFUWXqsNr+LjuJf9t6JlPIgvnMQKIBtmnKwGJLUjV5GFsQguVSsB0475cDVt/LtA
	b0i2VpztPLND8/f83CmX31zjn9lfvK5eUI3q2r2J/2jjMvy+mBovL9J4EXdYBbxFJdoX
	ginw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=/CbT+JfENyD7cCcSZNWP8Dlh6EgdPIoO1/sRWaGpfYw=;
	b=sV85gRYAipD7hwJ3PwCUt0TPGdTzes8rmLpJeXbrWnChLcG1OgBf2iwDDySIA7eanJ
	tJirvTyU14bw+FE8lmoTN8tGOz7Niu2GVe2/oPPcjIqOhftw2GiyQMXq8IPuqxKhcCRo
	IV0wKcgr0F6Qu6/RfZmTqAqhlk8dW9U29rCfXr/jdvIbwfUNCLv6i0IMvciXOZoZbqmb
	UaTlHvVjj3UaaSqQUoU8kT6YjjYRIDO1DBHXwDveCoZGETVclPIW0S6S8T/h7V3ozv74
	XRuPG1GVeXAK0PRuUaueLrYWG7EuHbDa2gr4UM4DmImNBQoEGipQ0uJ5hVN0Gjtjnu/0
	VNWw==
X-Gm-Message-State: APjAAAWt9zv0XEK0AQXj2FsS9wJjGRJxfvS2FUm7l1X/cVTnyyRD/HhZ
	UQEx1SwVPr5aIKYSfWJMUx0e5DJC
X-Google-Smtp-Source: APXvYqzocL3gnnBehz26FN5lq5Jcz2IYzezwAZABTfq7d3uujaSUSzZfDZ0s1fQzmsoCm4nSRJwNhg==
X-Received: by 2002:a7b:cd0f:: with SMTP id f15mr5551296wmj.86.1566385366045; 
	Wed, 21 Aug 2019 04:02:46 -0700 (PDT)
Received: from [172.16.100.184] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id w5sm3758677wmm.43.2019.08.21.04.02.45
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Aug 2019 04:02:45 -0700 (PDT)
To: Yocto-mailing-list <yocto@yoctoproject.org>
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <38ab2633-d83a-3951-45d4-bbfb34da58c8@googlemail.com>
Date: Wed, 21 Aug 2019 13:02:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Subject: How to override RRECOMMENDS
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
X-List-Received-Date: Wed, 21 Aug 2019 11:02:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi!

In my update to latest warrior, I came across 
4b393a21ffcf9fe00577b4a46c38b5db89b39e9d, which adds rng-tools as 
RRECOMMENDS. So far, so good. But for some reason, rng-tools fails 
miserably on my platform, why I cannot say, because it blocks the 
watchdog daemon, so before I can get logged in, a reboot happens.

So I go and read the manual, and come across PACKAGE_EXCLUDE, 
NO_RECOMMENDATIONS and BAD_RECOMMENDATIONS. I tried all of them from 
local.conf:


PACKAGE_EXCLUDE = "rng-tools"


NO_RECOMMENDATIONS =  "1"


BAD_RECOMMENDATIONS = "rng-tools"

and even with the pn-target_image/||/ (and yes, I replaced target_image 
with my image name). But nothings seems to help. What am I missing?

Regards,

     Matthias



