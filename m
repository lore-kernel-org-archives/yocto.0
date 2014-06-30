Return-Path: <khczarnowski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3AE8E00507; Mon, 30 Jun 2014 10:14:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (khczarnowski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5150E00289
	for <yocto@yoctoproject.org>; Mon, 30 Jun 2014 10:14:15 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id c1so4552931igq.3
	for <yocto@yoctoproject.org>; Mon, 30 Jun 2014 10:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=QvWP5z/QMQev5XBabXRRNplbdW6gQz7tTlQOmxqtUow=;
	b=LpbmAoe30L7sP5cnRSkGZnAYER6Qf+9r3MbcKTVkbFJeYJPJCYg7Ddr2a7Pk13RXmR
	nZaL0mkcDWcaE81kgXf3UmiyRV0VxadBKnY3/wSSpQdHE3H5K9NwIGtdTw3YHS0NzLeg
	VMQjO8vwnnVTLf1Q8n8JXmEVN767v5vdX1QwQ1cHI8ibJS2uwr9uWdtnHj5KeZrMYbCW
	QAx/yz8CDfjP0GFZbzDbPoEBDFJkLxl6WADIj0ssMvHuby6TesWWQyHchqDLyKKxLCgc
	odBP7ws1C39Nhi1PW4HEmR7tlUge7u5SSqt8734xM7d5J1oyuZ4pCovIPajotRMPJSJo
	BAbQ==
MIME-Version: 1.0
X-Received: by 10.50.80.17 with SMTP id n17mr34740048igx.22.1404148455027;
	Mon, 30 Jun 2014 10:14:15 -0700 (PDT)
Received: by 10.50.10.232 with HTTP; Mon, 30 Jun 2014 10:14:14 -0700 (PDT)
Date: Mon, 30 Jun 2014 19:14:14 +0200
Message-ID: <CAHqFTYrB7go_riLD6Lb-_0y=YRL6+vDY+hnCK_EZU8sxdVMkeQ@mail.gmail.com>
From: Krzysztof Czarnowski <khczarnowski@gmail.com>
To: yocto@yoctoproject.org
Subject: git://git.yoctoproject.org/poky issues, meta-clanton_v1.0.0, from behind firewall
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
X-List-Received-Date: Mon, 30 Jun 2014 17:14:28 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

A newbie question, maybe a faq, but I've searched... Sorry if I've
missed something...

I'm trying to build Galileo BSP, and in particular
meta-clanton_v1.0.0. My dev machine is behind firewall, but I've read
the howto:
https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
checked that the following netcat command:
/bin/nc -X connect -x $PROXY:$PORT git.yoctoproject.org 9418
opens the connection and configured git to use it.

But still I get the following failure when I run setup.sh
"""
$ ./setup.sh
Running: git init
Initialized empty Git repository in
./poky/.git/
Running: git remote add origin git://git.yoctoproject.org/poky
Running: git fetch origin --depth=3 tags/dylan-9.0.2:tags/dylan-9.0.2
fatal: Could not read from remote repository.
Please make sure you have the correct access rights
and the repository exists.
"""
So I understand that I reach the remote repository, but still for some
reason can't read it..

What do I miss? Anyone's experienced similar issues?
Regards,
Krzysztof

P.S.
The dev system is Ubuntu server 13.10.
$ uname -a
Linux kczarnow-lxdev 3.11.0-12-generic #19-Ubuntu SMP Wed Oct 9
16:20:46 UTC 2013 x86_64 x86_64 x86_64 GNU/Linux

