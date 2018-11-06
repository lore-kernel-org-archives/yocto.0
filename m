Return-Path: <laurentiu.duca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AC2EE00A0C; Tue,  6 Nov 2018 08:10:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (laurentiu.duca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5AC2E0097C
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 08:10:23 -0800 (PST)
Received: by mail-oi1-f194.google.com with SMTP id i138-v6so8177434oib.1
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 08:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5Td1Cj/1qxtJ+VuxPalXkIzXakaDVxXJQkdiW77YhyI=;
	b=S5/Ujl2uU/b3fTEOHGPC+iFf4a2iEjtltZDQVHy4/oIu4USYrijUPtv0sJkEGl2mbu
	7n+8ycpqm/+YzMNAKqC6iHsH6jv2Z8L0HOrzx8thTvTWtZGOjROduWxCAYftdVNlbRPa
	ka8DQyGI0fUjJmH2O3VIORGvs1y+tRU2NyNEVPT1DI3Fm3EzBfkeOm+M1j2Of2hKwuyo
	qkpJBVrF30KxgIiedyppQA2LOnneKHaQy4NjsXFpW5OavNd6EU3Z+iD4NByqRqHYWc8Y
	wUl/zTzZQ3T0sl5ksvdMyHSvQQghCsjmAowgpuOTVCXLbpW1dbWpcbNigW6gvxce9bz9
	SliA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5Td1Cj/1qxtJ+VuxPalXkIzXakaDVxXJQkdiW77YhyI=;
	b=UN0sDNHqYspgX5/ZNKKCv33dKs3mZm9txrEPcppfUHUjY6T4LUW1qjSf2naV73h5vE
	6l2agTURhXG1Eir2IvHl1zOhzdoQzSD8WhX6SGkMuw1/DK012WWDm2X95EvN+HttAsWZ
	3byew/aR9ikMABleUozDmvos7OMW+pVSPS69yUx6VYsNBoZu+krewrAom8QTVYO4vA03
	eAGgLTRAT2hUvVwrh30eOXXXKagc7l+psnedBmhoTHrgqHQYqOLNo/CCgUB7pxsJWbNH
	ebgTJUwDR1nxxXoEzMZ8sT/lWh+gBkDmQM9aOGUeVp2V49X6229zSVJv88s1qDNIDhBt
	3aiw==
X-Gm-Message-State: AGRZ1gJK6A7TwLhDu3JZsfTqC6ZZiYkM+DsX+JVNDN/0trJ4sdp1TMJ6
	gQsw+PdnLJ87AKhyw6ZMKu2YGctBn2L3TnLCJaOeaw==
X-Google-Smtp-Source: AJdET5esXExchRIPlSVuHU2T0l4CrN2RjUzIwGIQ/R0vwmk9h4kKkJyKJV0NsFoAMJvLTawzlUqQISb9Seyl5mvGmLk=
X-Received: by 2002:aca:c752:: with SMTP id
	x79-v6mr14873745oif.139.1541520622801; 
	Tue, 06 Nov 2018 08:10:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:b50b:0:0:0:0:0 with HTTP;
	Tue, 6 Nov 2018 08:10:22 -0800 (PST)
From: Laurentiu-Cristian Duca <laurentiu.duca@gmail.com>
Date: Tue, 6 Nov 2018 18:10:22 +0200
Message-ID: <CAPm8-H7dXa=p7gdUoLw7KutU8nbLpns065-KG5G_5DU+1oQaZg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to compute SRCREV for a github project
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
X-List-Received-Date: Tue, 06 Nov 2018 16:10:25 -0000
Content-Type: text/plain; charset="UTF-8"

Dear yocto community,

  A basic question regarding yocto and git.
How to compute the SRCREV for the linux-raspberrypi_4.14.bb recipe:
$ cat meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.14.bb
LINUX_VERSION ?= "4.14.68"
SRCREV = "8c8666ff6c1254d325cfa300d16f9928b3f31fc0"
SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.14.y"
...

  If I want to change to LINUX_VERSION 4.14.74 (for example),
how will I compute or get the SRCREV for this version
(please note that I am not interested in AUTOREV)?
The command "git log -50" lists the latest 50 commits
and a 40-bit signature for each commit, but does not show the kernel version.

  I have searched google but no response found.

Thank you and best regards,
Laurentiu-Cristian Duca

