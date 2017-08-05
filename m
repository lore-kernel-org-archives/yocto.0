Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80494E00C49; Sat,  5 Aug 2017 13:59:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADD25E00C33
	for <yocto@yoctoproject.org>; Sat,  5 Aug 2017 13:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1501966774; bh=0IjPnGmQ4v7vJUCnm4+3FgtuMgKxpFzm7mob
	7bf4S2s=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=WUdwHLLeuhfsjBRMP+ONC0a
	k5f8bOmieDzaGSznJgTkf0jxmmB0AHZ2xQoD186yMZoP1AUiP9BrQISzIAbYKHGOE9b
	yu/xfWhg5mdSUys4AmHm5zx5JAOKu7DsDevYzXl3e9dhe7PSVyRV8dYHzQ1nCxcPshl
	a94M10Rb269j9uFdNX3Fpykix7XcX/DIhq6QWYrMiLhjLnA8EbEXGD6Fg7NrN9c37bX
	p9mhj/iQ+VwQsr4HDnKKQ4m6xYPkxu2QWkokZHwayyJeaYkQctADInPw87nJNE15XDc
	xO6ThvVfnER8BBjl6VsSSHgFJFGnkxJFM5/OaO61BjExu6xxdlw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=nhYuEmA1rd3Z7rcP7b6+g0gwhpsUkS/OZtWXlK+1A8qxvGsztBi3BRBqdLFFuz0SKS+R0+/dHkZ3O8BkOBxclM9C88o0LARl48OdB5V5tnscEmqiHD6eDvvfJq4jwk/fuKJq1WZJshEBVUPyBuloCxGk0JpOyRojmotzOSGz4DJhoPP2x4bW2C9Y/wyybCxd22lYzB/qfGRbU8pzwIfLhYT1ht0lN2OVJN1/RhoRjtBUJEQyaqD5eYh2EKl7yuKZRML4OeDH6jTrlARgMiTFmJdB5Kzd8VZFsaWCkDTeRXyknCbHfXmWTjtzNIaAdkZUEGyWi9baUegAkEDaJQ9UPw==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=MONSTER)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1de6AX-000B6j-Dt
	for yocto@yoctoproject.org; Sat, 05 Aug 2017 16:59:33 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Sat, 5 Aug 2017 13:59:34 -0700
Message-ID: <40ABFEA70B1D43BFB8C22B09930C7F63@MONSTER>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMOLTegbYy0zr5BSfSHmd9pP7+KtQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606884c5e89207955d4901c385afe674a9054350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Remote Eclipse debug setup
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
X-List-Received-Date: Sat, 05 Aug 2017 20:59:35 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm trying to get remote Eclipse debugging working, between Yocto Morty and
Eclipse Mars. This is for an RPi3 using systemd. I'm only trying to debug an
application separately compiled with the Yocto SDK toolchain, not to debug
anything in the Linux build.

In my local.conf, I first set EXTRA_IMAGE_FEATURES to "debug-tweaks
eclipse-debug", but it didn't give me the necessary SSH daemon, so I added
"ssh-server-openssh" as well, but nothing is starting it. The only related
systemd unit is sshd.socket.

What is supposed to start sshd, so that Eclipse debugging can work? And is
there any other daemon I have to get running in the target? The Yocto
mega-manual didn't really spell it all out.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com
 


