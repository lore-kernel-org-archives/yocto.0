Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B4C1E00B3F; Sat, 15 Apr 2017 04:51:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
Received: from mail-ua0-f178.google.com (mail-ua0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D9E8E00A30
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 04:51:11 -0700 (PDT)
Received: by mail-ua0-f178.google.com with SMTP id a1so56256183uaf.3
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 04:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=dsHzuqtVIqlyVxPF8xwp9ajai7P5e/Irvdnst4Rz+04=;
	b=kz4QsQ+EownizIWSt1q3/6xVrXb5/Hs7VYP7s4uDJs46U+STRcId8LzfaRvt+SjYZD
	LwR2dU4Faf2qspn1LdxdqZTlUqTil4oue4vfQrWtO5X6ipFtGmED3RdO+MqPM1Ayz/fY
	/JpjjQ9I00pkpL78P9DejJCXYv55xa5P5+MNxqWL9pe/NkU7xaBjjCAKBntW12eKvaXE
	8UVJTzgIsBxbusvJUgNbwJfJTD4JeKIZCx5crgdq0+K1XBtt39Q+dsE1p6LsqMXSeKJt
	lz84psn1s65kdXdZB+ikUjZOST//AU9rxYMUbLZq7Dvu7AGE8FSetjp57D4NeRvumD3l
	9mQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=dsHzuqtVIqlyVxPF8xwp9ajai7P5e/Irvdnst4Rz+04=;
	b=EETeWsQYXjfexxGHsjJg9oGdEmoVxw1269jsHSG7L/sw/1hHTNpa6mdGP50zjPkglL
	2Q8Tk0Iknx/5J0NBrq4vkAj06m/rmg69kXHnM1VCJo8w+iVolbDD1Sjw5yGldWZakxT0
	F4Ct/S2RGgeunvoimLEucix41+p7MH5m5Kh5OCuwGypykcpDc2dMQOfUFkXc8YlSwaa+
	DIhDbnas7XoLZMUPqBIoiFCPOc8Xddcyc6r7t9dDB40chIkagw031uGAk6Ct40MXaQH+
	eWWe+B2Y/jV2XxC0hDJXdYFAaCtbgi9HliF7pgRbfq/fjvEsAfxCDUN3Oa4Sq6hGq/tQ
	8V4g==
X-Gm-Message-State: AN3rC/7s4zomrG9xzNppPyG81yPdTtn+xjUU0+wVhsxpJvBLyAY+/fjp
	0NqwL8jh9uSbrsgByZN+YJ9AJcrF/A==
X-Received: by 10.176.94.101 with SMTP id a37mr6200627uah.73.1492257071455;
	Sat, 15 Apr 2017 04:51:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.105 with HTTP; Sat, 15 Apr 2017 04:51:11 -0700 (PDT)
From: Life Life <sadlife1990@gmail.com>
Date: Sat, 15 Apr 2017 14:51:11 +0300
Message-ID: <CAAHuHfxiGoOOK3o17TZS+pC0-G+7ZebS5_oYW8Xvv-wpsPu4OQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: cups 2.2.2 Backend filter not include serial port support.
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
X-List-Received-Date: Sat, 15 Apr 2017 11:51:18 -0000
Content-Type: multipart/alternative; boundary=f403043ee8e8a86258054d332cd4

--f403043ee8e8a86258054d332cd4
Content-Type: text/plain; charset=UTF-8

Hello,

I'm try to build cups 2.2.2. It is not included serial backend support.
How to enable serial port backend support ?

Thanks.

--f403043ee8e8a86258054d332cd4
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div><div><div>Hello,<br><br></div>I&#39;m try to build cups  2.2.2. It is not included serial backend support.<br></div>How to enable serial port backend support ?<br><br></div>Thanks.<br></div>

--f403043ee8e8a86258054d332cd4--
