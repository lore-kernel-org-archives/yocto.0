Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 511F7E00B6F; Fri, 25 Aug 2017 09:38:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB24FE00349
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 09:38:17 -0700 (PDT)
Received: by mail-pg0-f41.google.com with SMTP id r133so1646882pgr.3
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 09:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:subject:message-id:date:to
	:mime-version; bh=oZYNvXUVBFM2G1EnYKwO9Fx/k9MJUtFk8wGL5wBBS9A=;
	b=KU8qvgOiMJM7HkvpMDOqLlhPJIyUG2Oc3kLqt+DJDFg+6L5sRMW2qxy6u1IM6NLbwN
	MkCNeMLxJjIrTDPsvxn38ezedFfS2MgWpWKShwNxy7GEhcX3ZJ0KVvuUgkJVKLA14XbE
	HnUxOu64tC2IB/YZi2jwsksWv/OT7BDWOiKqrSIeZ8v1GP3MrJ6O1Lx/BHl6b2cevEcO
	c//cR/ADObdsJVRctBsDzNvKKdFhZ2hYYIyymqSBxu9KDLPxyz00NtoBw6Fw1xypYSMq
	MABdHxoLGtbjEesV4JvBOQGq+xTxUsKwAotSZMT5d33qDxK86qiavNp4N4p+IYNMxFMw
	9Aqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:subject
	:message-id:date:to:mime-version;
	bh=oZYNvXUVBFM2G1EnYKwO9Fx/k9MJUtFk8wGL5wBBS9A=;
	b=YUs42AA/+ZXvmmV2ZSX+yaVdTeVN1tQyxjjNk+CaSwl/ru5APncoAjcKTmnXIbUH5j
	JqEU9SUfRAjWW5O67mH9JMNF9wUmxeUiGS0UinOM/kL++7hAGHjij7Y070w/OnNu+1dH
	QtOQfLtOB4hUT+chV80pdL6W7jPgWGy2KFRu9tw555HeHCHMqp7lvGKPmSVTZfvIFPvS
	7AaZwVZKeqOlKriiityBw243Y9QOuO+huok6a4fIo6w6YT/ITXsS9b0fSHxwtGQPkt+U
	+eoT8Gj9N69Jr/1pzY5eOWif4S7QjgfpAtifKdo1KXz4VuzPxGs7JNTiO6RrKVE31Bqy
	HPvg==
X-Gm-Message-State: AHYfb5jNieo5+fnFQmgd7G1TXjzmwbkducH6F/7BPJPuBSsCJz+VePg+
	hpaifu/h3Q1gmFcQTcOTww==
X-Received: by 10.98.75.2 with SMTP id y2mr10716561pfa.305.1503679096976;
	Fri, 25 Aug 2017 09:38:16 -0700 (PDT)
Received: from ?IPv6:2601:644:8780:2b00:64af:4c62:87f4:c94e?
	([2601:644:8780:2b00:64af:4c62:87f4:c94e])
	by smtp.gmail.com with ESMTPSA id
	g5sm13363877pgo.52.2017.08.25.09.38.15 for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 25 Aug 2017 09:38:15 -0700 (PDT)
From: Bill Jenkins <bill@korgrd.com>
Message-Id: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
Date: Fri, 25 Aug 2017 09:38:14 -0700
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: raspberrypi3-64 target not booting
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
X-List-Received-Date: Fri, 25 Aug 2017 16:38:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

I am trying to just get the simple 64-bit rpi-basic-image to work, but the
Raspberry Pi 3 seems to hang with the rainbow screen at startup.

If I build with MACHINE ?= raspberrypi3, the 32-bit image works just fine.

Is there something special that needs to be set in order for the
"MACHINE ?= raspberrypi3-64" image to boot successfully? 

Thanks,
Bill

