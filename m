Return-Path: <rohitj.chd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BE2DE00805; Mon,  9 Jan 2017 02:49:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rohitj.chd[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC382E007C9
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 02:49:52 -0800 (PST)
Received: by mail-lf0-f50.google.com with SMTP id k86so92055887lfi.0
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 02:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5O+kisOR9fxsmR06kos9tpbgimB5PYEzAywfONVhBnQ=;
	b=VSIeXO2uJz6t99ipBTC+jm/ITp8dQi/IhD/ophutp7v4/H5XAcZSSUNY0kesMwpnFD
	p2fIUTM7XGW86qb8WTMS+Aiu8XocY7SvkwHFgCTNoWbXkMKvPKCy4IvjjVy130hlrRIU
	b5plHm+l+AVJe//L51qv4Gj8+mBHbwzQU981dBfonLyBhljWBnKnFFcFc3GcwJkQDfQV
	mV5Y0pOyGlvUC14SkpgrIMPA77fbscqz5NogBKp8CAja8GAx4V/GOQmGansKm5FNttF2
	K+eiCwTFoc7qt9RsUddUCcrXGjyZ5r27mOYHxBar+4NYnhbMAxO6ktW0T+wSUdWo1u+i
	Wakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5O+kisOR9fxsmR06kos9tpbgimB5PYEzAywfONVhBnQ=;
	b=HlAekW9WVSivmmYUEbBCyDdIXKA4yjw60v2pFZseYgYG1bzEv9VQ5IcHST50zk3N2x
	nmVCV/B4sIjS1brS+QtHK05AbmMmV43MCfXnchyTK2RkMHqq8+G+wm0FkxfQL4QMxwMz
	Nf0wckNed8rM+DD7Y0MNd0LdORdWtRRHE56Avxjqdw5Gsk7NeP/QDgfvwTatxeMS4sRb
	TOQ8WdiPlxVQZ9uIguKo1sBOGbu0OYlxYJ2uxjf0jzzdVZbpPJShKHnTbCyVeg5CwE7K
	6QmsNsbhI9xFAun86b/F97lUeVMQ0vt1dOw/kw1m/KrUqD4F+pJCJ68f9rtrQ8WpWGb7
	IxPw==
X-Gm-Message-State: AIkVDXJT2l30YwiBMV+mrir+lX/hYR5Bim5yp9iaOoc3FffEVex9+44MOBSCMU99j2gnejHvmPrlX7BT6xwjFg==
X-Received: by 10.25.213.78 with SMTP id m75mr1761489lfg.36.1483958991075;
	Mon, 09 Jan 2017 02:49:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.114.187.47 with HTTP; Mon, 9 Jan 2017 02:49:50 -0800 (PST)
From: Rohit Jindal <rohitj.chd@gmail.com>
Date: Mon, 9 Jan 2017 16:19:50 +0530
Message-ID: <CAHX_jjupxNY1_yVqy9hibAtExot+u0Domm84YX_1yxOJAbE1Ag@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: (No subject)
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
X-List-Received-Date: Mon, 09 Jan 2017 10:49:54 -0000
Content-Type: multipart/alternative; boundary=001a1146e4a4863efe0545a72020

--001a1146e4a4863efe0545a72020
Content-Type: text/plain; charset=UTF-8

Please help.me adding support for JIT to openjdk 8 in arm architecture.

Immediate help is highly appreciated.

Rohit

--001a1146e4a4863efe0545a72020
Content-Type: text/html; charset=UTF-8

Please <a href="http://help.me">help.me</a> adding support for JIT to openjdk 8 in arm architecture.<br><br>Immediate help is highly appreciated.<br><br>Rohit

--001a1146e4a4863efe0545a72020--
