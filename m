Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 775C4E00B9F; Mon, 12 Jun 2017 23:34:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF1BEE00B76
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 23:34:04 -0700 (PDT)
Received: by mail-wr0-f176.google.com with SMTP id 36so4819686wry.3
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 23:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-disposition:user-agent;
	bh=XGg7tB8A+IXWbCtQs1M69r+HpjrErM2qCPxsptB5tyk=;
	b=AKA0yqCynJPHpY1vnqRFhqd7vf+svZmUECArz28g3h6cwZnHi7rTcCEnM7rTQHuxFT
	1YDpRawMsSSmncAi7es+bEQY6vVlZCRdAoOkvP8JBcN2ON6vhqq5R8orhPtkU4VLD9Jr
	FW5RpfL2iZvTof/mpNiGl3kxQrkpz9OZOdwAsvhKYqt9+rWUDQGQQGrbX2wChIhfmVx3
	NPexQcOJMKV1QJQKHBtSY+QgkLii8CnVvDyuC/UXShXV76yhVg08h2FCz6Xk8jXPtVhT
	UtTf+pIAYhnImN8NG4o8Q1CvHOkO3mcYiXTWy6bCN0CKjUyFSqVW/IoqBV3YGAzmZnSZ
	/m7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-disposition:user-agent;
	bh=XGg7tB8A+IXWbCtQs1M69r+HpjrErM2qCPxsptB5tyk=;
	b=Gp8rfLN6LnpK6yTHsv/sFhyEvyTUiLUx/PaKm78GerSlr9nHusW4a1Cvu2njoMof34
	3IRRLMNz/4CxiqQA3iJpiYx3HHvUvT95Yg4ce0xmoLLEI1tS66sCcEeAQ86p7CuM0JDn
	MtO/i0rNFtkW+YtSDWYrwhHu83j/axJlfVCrYwSehL6b9hlTYSipd+b8Pxm+ZH7M6cgo
	U7vd81l/JTieXQ8b/64jpQQ/+/pt36om8UPnIAff6geuwZUrlyMUEM5roPpbYoTfxMDm
	qrVhHTHFKCsoDPpITReGENddqfQa9Smh8sTQEseFnC7Qssq6ZgAtmoO2ws4rUFNWEzQM
	EjTQ==
X-Gm-Message-State: AODbwcDNhsnNbNP18AChcqQOeVZrQAUdIXQxjDo90vpyQ/WMO4+4ngkw
	YRpXeJuD6PT+jef6PjHduA==
X-Received: by 10.80.226.204 with SMTP id q12mr24072627edl.37.1497335643394;
	Mon, 12 Jun 2017 23:34:03 -0700 (PDT)
Received: from localhost (x4e3603d5.dyn.telefonica.de. [78.54.3.213])
	by smtp.gmail.com with ESMTPSA id
	z44sm6792938edz.57.2017.06.12.23.34.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Mon, 12 Jun 2017 23:34:02 -0700 (PDT)
Date: Tue, 13 Jun 2017 08:31:46 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20170613063146.GA21721@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Setting directories permissions
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
X-List-Received-Date: Tue, 13 Jun 2017 06:34:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello List,

I try to define a directory permission for a folder to 0775 instead of
0755 in my recipe. But somewhere in the install and packaging process
this is overwritten.

in my receipe I do this:

do_install() {
    install -m 0775 -d ${D}${sysconfdir}/folder1/folder2/


I expect this on the target:

root@box:/etc/folder1# ls -la
drwxrwxr-x    2 root     webgrp         512 Jan  1  1970 folder2

but I get only this permissions:

root@box:/etc/folder1# ls -la
drwxr-xr-x    2 root     webgrp         512 Jan  1  1970 folder2


I also tried to define it in the fs-perms.txt file. But this didn't work
either.

/etc/folder1/folder2           0775    root    webgrp  false - - -

some clue how to handle such directory permissions the yocto way?


Best Regards,

Oliver

