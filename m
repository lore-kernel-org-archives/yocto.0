Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0275E00E11; Thu, 12 Sep 2019 03:14:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47E69E00DE4
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 03:14:10 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id r134so18841460lff.12
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 03:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dAXV3etqq+OCVvEd7j4yuzODKsb+1RVQ5ii/3a9bp1k=;
	b=B6tcWu7e9QpcmfafE1l1Zfk87zLjceUHNvN8PVB1ag+Qp/2u9DsyW44JW05v4KNnk0
	edhTIWSgvhse3YHf8LgA7HA6kR83sBhC+VA3tqkvr2RsskeVZplA4iAHPJbN5JqnE/yq
	EqztVaEQnpa+eOGwsx0Z4+/PglzWJ5+GRZmlFHGz4Ta4Pg+FLD+G2wEtnIMD6eh7/neW
	HWdlz6etb/k61ojkjX3ebTBWfptIcWUtDC+RjYWwR5mG4fZOKnzVs4ziTFtOrG+iWaai
	o6wOF+fqTSxh8yMCrKMUABk5boif7/xwBHRxGrbh1KTkYu/lYuRyZrLWsJDcVQlROiVL
	nVSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dAXV3etqq+OCVvEd7j4yuzODKsb+1RVQ5ii/3a9bp1k=;
	b=p3faH9s+ZFxFjhXKrz++VolPOVJ4NZFY2LRM+fYUdAC/8zowx6Cxpbcy+hMieZyqHt
	wdT1OIRg/z1barQHOGtyBcD7ZASWPMPNCuFEpTPaoCWooC5pbS5S8x2nut/VpbsMrFqH
	pYwh/jARxSxcYz/bNfWtpxHevxsK3gBDPXFhso3muM6ywH7GSwKLjGwAufzc8pTu0J0n
	SWTpj6R09DX3FBq+I2/imGUZMZGB0RruCPcQe1d0wAnt26lTFZqvlUnl4kLe2PdCPsf6
	ivjEciwKJ0FA6xUADU109uIMVPR73BPDeTlfHloJtJ/NALi7p1ZUH1goPgIGds49+M8y
	VT3w==
X-Gm-Message-State: APjAAAXS2KT0U+xujGwejWrGfwmZQ7v2MyNP+G0b2byj574TWdzU27Zb
	oztLn0UAGqJ6h/ELKmowi1rKVD6Rtilss/HoLb/jL/zP
X-Google-Smtp-Source: APXvYqw4Kwis0tg0L4GVWjQh9LmbJqQE4tTqN7Q4ebuWfo5KgXfuIx96hKz/KWmdnlHpP9RfHZic1268i+BmuaGDJpM=
X-Received: by 2002:ac2:5464:: with SMTP id e4mr27562114lfn.102.1568283249215; 
	Thu, 12 Sep 2019 03:14:09 -0700 (PDT)
MIME-Version: 1.0
From: Teemu K <maillinglists18@gmail.com>
Date: Thu, 12 Sep 2019 13:13:55 +0300
Message-ID: <CAAmVmrpyrf6QhAA85UwWQa1mbrd5D6KmddKndeMqcoGG-YP9mA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Debug-files in SDK
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
X-List-Received-Date: Thu, 12 Sep 2019 10:14:11 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm not entirely sure if this is bug or feature.

I've created sdk to my image with populate_sdk - command. I noticed
that in the SDK the x86_64 - directory is 384MB and that contains all
the toolchains etc., but the target side
(cortexa9hf-neon-poky-linux-gnueabi) is 5.7GB. Majority of it is in
.debug - directories.

What causes the confusion here is that I haven't enabled debug-symbols
in my local.conf and I don't have any other debug stuff enabled there
either. Are those the debug-symbols that can be used to debug software
on target with GDB for example? I thought that debug symbol
information needs to be separately enabled.

If they are not, then can I get rid of them somehow?

-Teemu Keskinarkaus

