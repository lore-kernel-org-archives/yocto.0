Return-Path: <devil.69@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29BF0E00D53; Mon, 26 Aug 2019 07:21:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (devil.69[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Aug 2019 07:21:03 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AD72E00C5C
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 07:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1566829262;
	bh=JQvskXjbpaX3rsFZ9MEGb3F4bw2IkDteaoXE3IJkqmY=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=X/kBZha3d/5YxOIofeL1iKc78BZMq70CjkqZl3y5Q/Q2zTP+BUxM67Laew5mlFDM5
	f1COODeUPxON1oWats1Zt+V2FT+KcXSq6iO2OXmmDftJ3yNX/Vogq9a7lSfCDXz91z
	kTQ6tlSS5aEFBmo7Yr6Oqe7iCMM5ozq9qFMuEBEI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.108.170.8] ([217.108.170.8]) by web-mail.gmx.net
	(3c-app-gmx-bs32.server.lan [172.19.170.84]) (via HTTP);
	Mon, 26 Aug 2019 16:15:59 +0200
MIME-Version: 1.0
Message-ID: <trinity-777d9367-a666-4cf2-a1ed-bc9942f2a8bf-1566828959769@3c-app-gmx-bs32>
From: "Michael Eichhorn" <devil.69@gmx.de>
To: yocto@yoctoproject.org
Date: Mon, 26 Aug 2019 16:15:59 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:4BrK9ytsaQHMMisz4cVHIyY7tgDcDcGY6lEP67cjKBAmMidnrpCsG6gw/bor8zALwcgM3
	eJdvo6J7vQSCiWUQ3Vkze2DLewHWogfDKmwlEjdW7UKBIjw9lLl8EAYn5UdC+qZ+rIvNJ6nYRwLM
	GnfKeFArdp+zzGcNJu6M5yegWtbInlhTESHhEvJ3DCHUmyvZ3eWFnBH86QitIc0nIFO3YMSuQRyE
	mnm4KDtdkIcdNNUihPDeiV+9zL9uvSRT7X5BixL7XJ1bYa39M9ocYCTVNcpA/lUNLUjqzv+ZMJJa
	KA=
X-UI-Out-Filterresults: notjunk:1;V03:K0:91Uzc6l1FZE=:JuozsTsoJMHOMZJjK0ZMzp
	ldMCbWD1JlPhUeibBMubKCNUcvXG9JHzQdWDL1hIcrEYdyA+y01A541CD13zSu+4KhIDLtMTi
	czWRrgfHzvKGU79fo/ru2jwYhK0mTjGzAhd7MzADUW2Va1WBtCFDuT1Ue93wjCWS3J1fdDEOC
	e6iuuKjFU/ze9Q6Z7tI+fj8FKSpo/dMTkZSSMvpviggJVSQzTuqDD6PeOm9kee/QOUZEL8fbV
	g/dgMCp+nZ/93BRIPCYHNkzUH/CNcwszymaZgeCfpTThcREhGWkHV8iCp1wqPCLWcUv2AaVzu
	utUDqk+bm+tV9o7ncPQ8KBqgKljzbnTT6EO0OugdgBchQ9xeuut3asGmwR1X6psOUBdylOw4r
	NQGuFUI8eZT6C3tqyKxv83LpMfNn9GAnZeL/xNleDJu8R0lIxfy4w6UagO9hKI4ysk+Vo7T86
	otRHtb1qbggP+YBX2eXi15A4Fiou/aeH0D+fw+dGHp9+nBfcFlhWQ9xv17b5z5vBtrvRppmD1
	jfGUp+LK1bO/LMdopYGnjJWQqm/3XkUmf6AQnMyYb2XnQxxAehJ/wCnKTnm3Is1xHg09ZbGT7
	retY8isiiLXaQNzrbFH04SneEDHkIj7dr3VX4X8ZzZbzFgOmQWYvdivoTJ9LXZrZU/S8jIDnt
	VKUM2aTQdzOjNYW9e8JbrnQEQ
Subject: kernel modul install
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
X-List-Received-Date: Mon, 26 Aug 2019 14:21:04 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Dear all,</div>

<div>&nbsp;</div>

<div>i am new to yocto and i created a recipe for a kernel modul for my bt and wifi chip.</div>

<div>it seems that everthing works, but in my do_install i receive an error:</div>

<div>...is trying to install files into a shared area when those files already exist...</div>

<div>My receipe is somehow producing an bluetooth.ko which is already existing because</div>

<div>of my linux-mainline recipe.</div>

<div>What can i do? the relevant one is the one from my chip recipe.</div>

<div>&nbsp;</div>

<div>Best regards,</div>

<div>Michael</div></div></body></html>

