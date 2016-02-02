Return-Path: <todd.efflam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6991EE007B5; Mon,  1 Feb 2016 17:14:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (todd.efflam[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37F8CE00444
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 17:14:45 -0800 (PST)
Received: by mail-vk0-f43.google.com with SMTP id e6so87614067vkh.2
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 17:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=aCJJDgdAmnx/ajU+L4AQdC0Bhoj6qlz2F/uzkTYvrns=;
	b=qjGZ00Auca3niYW40YBzM/LYJIJ42+7/RT6uvdtOBpp/IeopPaZnKczfvB0d8GyWkQ
	TBKhaIYLh/GBVU1bFonNc5XYOkEIYhZ70Xg53v0rUnS1hX3F/dIq+ezEZdfNCowbyaBf
	m0YXS0q+i+DdFRJj4g00y0/I9scxbPOTQqSh17ipenRjABL3pTZugwxrVwSEQKMrBoE4
	a5VlBzaSaOzV1ZYI80xgQhATZQLLhShaq0S2OgFdN6CF56POKQL3hklSNYGB047W+z+M
	osNuDX6DgcSeg23Atee3PbxBmqR424y5NY/pXBW14rC73wQnGTlCFbUDHkVczqcvCWyd
	vkqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=aCJJDgdAmnx/ajU+L4AQdC0Bhoj6qlz2F/uzkTYvrns=;
	b=Jl5U8YpYylSShVsfgD2VW4iORrdk/TKo6P0U+6H2LQs11khLjTxZDfwg0ByLhfV+KV
	vSIzDCgTCOkY9P8jW9aJMD5HpqUz65JSeFtZMs2O+I+NSgpMiE3uC6hSMiayQrMIzXkk
	p6B/SsVYU0H6bqF8dLzGNQ9UHkMmmM92bITxcV6dAwZSb1deVbOIHpUiTGl6v4cGaYwr
	dakcL+IJZ5kEESN4rKO7pGcHXP6SAmVX+AL8iQbgpWAUPTM4lDIHSjxhbn04TvIMqFFK
	TsrJJzb+umAoZg7jyi3rOThq1Yaio1X5D8tLesnuko+FfxzB4O8FWnOrQvrEXguFxsyg
	8EXQ==
X-Gm-Message-State: AG10YOS3f8Yp81UX+KjgO4ajQyyiE6M4KdKR8BXMnHimQVREM9PS93WHzaHoE0KYPo/Yt0R/kMLaJKa84Z0p2A==
MIME-Version: 1.0
X-Received: by 10.31.3.194 with SMTP id f63mr16096326vki.114.1454375685206;
	Mon, 01 Feb 2016 17:14:45 -0800 (PST)
Received: by 10.103.86.81 with HTTP; Mon, 1 Feb 2016 17:14:45 -0800 (PST)
Date: Mon, 1 Feb 2016 17:14:45 -0800
Message-ID: <CAHWMYyCftLwJ2OsiAHNtgK94gy+9FAG_71mgi6A=+F_nuUJrGw@mail.gmail.com>
From: Todd Efflam <todd.efflam@gmail.com>
To: yocto@yoctoproject.org
Subject: Problem installing ath10k firmware
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
X-List-Received-Date: Tue, 02 Feb 2016 01:14:49 -0000
Content-Type: text/plain; charset=UTF-8

Hello,
We're having a problem getting the ath10k firmware to run with a new
wireless card.  The card uses chip QCA9882.  We've tried installing
ath10k firmware using:
IMAGE_INSTALL_append += linux-firmware-ath10k

in combination with the following kernel configs:
CONFIG_FIRMWARE_IN_KERNEL=y
CONFIG_EXTRA_FIRMWARE_DIR="/lib/firmware"

we tried adding
CONFIG_EXTRA_FIRMWARE="ath10k/QCA988X/hw2.0/firmware-2.bin
ath10k/QCA988X/hw2.0/board.bin" but this failed as it wasn't able to
locate the files.

After building, we receive the following error when booting our cpu:
ath10k: Could not fetch firmware file 'firmware-2.bin': -2

We then realized lib/firmware.... contained firmware-4.bin and
firmware-5.bin instead of firmware-2.bin, but after copying
firmware-4.bin to 2 we still received the same error from our cpu.

Has anyone had success getting ath10k to run with firmware-2.bin?  Any
help would be appreciated!

Best,
Todd

