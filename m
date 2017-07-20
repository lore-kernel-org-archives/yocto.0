Return-Path: <chgans@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8A41E00944; Thu, 20 Jul 2017 15:28:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chgans[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73702E0083A
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 15:28:56 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id y126so17629457qke.4
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 15:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ms75ryFcaeQJ4i6X7ktlV0vfYOSY4SJjqIj/FE1d2r0=;
	b=kUkL7k+lPsDhfQOkeWzTnCxPdMCG7DLOYmvkduqt/npty70TMIOBuaKXwL2DJrTu08
	f5dvT0K9CZi//U6PW1ZHrJsI0CUrq5R6s+JUtpk44poPnm0FJFOItZ1aZpXClHrxxk/i
	OJRF8xDUOcLEu2bAxwZo7eTgzx+JSG/Gz8SiBUYe/+LNVYrxa5f5vRfjTH9cFsioOlhS
	eD5DcG1kOOYBxs/XMxV8HnGMPZIHf7okeek/EnBCyCVU4KhNnXzYLxpqNibmVHmQziCk
	8TpF6nNSh4gaiijvV9ge7PGwnQLClsvtIGb0A/aZyMdiyfPbl6mSLSOFAqB1auRBflr0
	JdAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ms75ryFcaeQJ4i6X7ktlV0vfYOSY4SJjqIj/FE1d2r0=;
	b=qvfHTuzhBjHOGpTXoyjg5TysuFFFakyi7KUVBr1er8QK6bsDtu4FTRNpc/cQY96mpJ
	9MES4oR+RmUD0A2m0RhxeHET0jVRobwpKWNSFtv/1qL3OyXxYir81bNLE+HWclRYh+xJ
	LzbFlAoTmMgHmkWuQ7w9tLTONxRD06BUP5X2FaSN0ycGzKeyUkca6/th3fiNnZEF+IF/
	WUVaLYCxQteF3L5A1OcPLb/q9JMJCuomeCmGbpshWdxnkywBqzdzQ8AWgQnUI/bjsm/5
	vuAH2M5R5bFYZuzKiK9MTIfIva0WRuT5xg8HalMgKJysnbHSxbsoBkPrQC6raNUwgE/G
	fOsg==
X-Gm-Message-State: AIVw112rjh7EsNE/sooxEhaDDasFXrWdULRfKoS1UPxF5qU9BOivKDty
	aGWOkQ2NnD4EnzIY0Zeo3WUlkjf3kX8G
X-Received: by 10.55.175.3 with SMTP id y3mr6823983qke.185.1500589736102; Thu,
	20 Jul 2017 15:28:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.5 with HTTP; Thu, 20 Jul 2017 15:28:55 -0700 (PDT)
From: Christian Gagneraud <chgans@gmail.com>
Date: Fri, 21 Jul 2017 10:28:55 +1200
Message-ID: <CABxGUTh7pCdKjg6ue+0AVp9tyYOqt35fj8udDYxiphGDh0+omA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-qt5] SDK missing python-json (QtCreator)
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
X-List-Received-Date: Thu, 20 Jul 2017 22:28:57 -0000
Content-Type: text/plain; charset="UTF-8"

Hi there,

Since v3.6, QtCreator requires python-json for use with GDB.
The Qt5 SDK doesn't ship this python package (tested with Pyro) and so
it is impossible to debug a program due to the missing python package.
(QtC 4.4 (to be released) should contain a workaround)

Can this dependency be added to Qt5 SDK?

Original QtC bug report can be found at:
https://bugreports.qt.io/browse/QTCREATORBUG-18577

Thanks,
Chris

