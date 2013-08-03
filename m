Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8912E015C6
	for <yocto@yoctoproject.org>; Sat,  3 Aug 2013 03:53:39 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id h10so1488287vbh.20
	for <yocto@yoctoproject.org>; Sat, 03 Aug 2013 03:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	bh=6j1Yco6oP4/WHseYxhxIZs5RsdiqQilTtSkRx5L48YQ=;
	b=KRu4d3gFTYUqqI4jJZyjG+eAaB9T6UEdFkh1I7RCP0wDHg3BayUxRzZVjzeHKCR36G
	ShQNrPRSMS164/1O+qe62j4qsBSww4EzIZCLK5XVEHtNwI4fkYW7JJy/pp5xM7llGN1U
	mvI7TWmeSPd+O0xM6v+ZMk4e9r4it0BAM7njdUBUQ57UHmvbQ4UEb+Cjm2avSk375ll3
	WXrcuDQ594HKukXeTxkoIHVgWC7QH3SljKpt0lVCbkwdGNwo3Bh7t9Q4EYkgqdPUsFug
	W5gUweBesyM+PyQXycKQP9I7GdG+G32mF5rWzsMNo/3SAiicfS1ImFZZSrhWnhuc4cyC
	FCAQ==
X-Received: by 10.58.127.202 with SMTP id ni10mr3263046veb.27.1375527218119;
	Sat, 03 Aug 2013 03:53:38 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Sat, 3 Aug 2013 03:52:57 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sat, 3 Aug 2013 11:52:57 +0100
X-Google-Sender-Auth: lNbW7rAUOSAnxceSKaTNmr4DlTU
Message-ID: <CANyK_8e_1LtgJeFu=7m4qhepV-hZ=9Ji5H7hTuhbexs40qv5NQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Recipe naming
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
X-List-Received-Date: Sat, 03 Aug 2013 10:53:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've looked at the OE versionning policy
(http://www.openembedded.org/wiki/Versioning_Policy) and I can't quite
figure out the correct name for my recipe from that.

I have a testing branch for opkg which I would like to put a recipe
for in a meta-opkg layer to simplify testing. The testing branch will
be fetched from git. Should I call this:

    "opkg_testing.bb"
    set PREFERRED_VERSION_opkg = "testing" to use

or

    "opkg-testing_git.bb", PROVIDES opkg
    set PREFERRED_PROVIDER_opkg = "opkg-testing" to use

I'd lean towards the former as it is a version of opkg not a separate fork.

Is there a convention for this or should I just make my own decision?

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

