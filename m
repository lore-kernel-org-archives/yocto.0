Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB52BE00E00; Tue, 10 Sep 2019 22:50:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.86.89.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 423E9E00DF8
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 22:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1568181043; bh=7xUq0tgyrUYJvmQcc91OXtYWgw3FXlIIR5Uc
	Uvq8NEA=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=IVOhJ7ehDDU9wmaU3PrPsw4
	hhJqHvu/Cmzi0NmCTBi6g3TjPUVSmKD34uqnM7hGC7PHyi9vMM9Yr7u6LhyfHqTem7w
	jFDq6O97MfWTQns+RI3E65NZiApxLJMlQprPKm+q9C144L8uXkd6sO/77umaRdwa5lJ
	ZY4CoD/yRpxf4knwUXrB2pwnrVMMKLIXNR8HjVAAcdq0TKB+82CnSMe33w6vMkroACY
	KE1Jh0KbKrNCxgzizROhTlAtY+kbIYmiH4XwdPDdo7P+tiGC0gvepcYugvtL6WUAnp4
	1l+UEd2dQSmmNx+Q6JJetPvPbugEibHer80A5rCMfmp3CMF0RYQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=TnDq+TX2DbQCcyd9BS0Tzi4wNUXVm5DWojzUpEFc4mq4/n0qmsDT5cGF94toNvNv7f45fUQmXJft4IjrC3nbUTG0Haa24F7evnh6To55LLctSm+rN5Ut4WeJ+6l1LWD+wlLT6yR3XL3VU9dBGa5mLt1qyqlHzzZGFvGLnGE/1/MIRp56vHyY/rdiKmYzdPd6SkMjG5h+OOmkFDWBlWaoYLVcQDr5M/H8eu9Ty9607pkDGmRnqKqpPyFeJ8LkdoRn+pqhpqimPlZ0dBbCIvhtae+Wqyy8hUyRZGEghTcL3p4j4956/YLlEKOmFU6sGRTuJR9NyQJtvG+Hk21Sb8fYJA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1i7vWc-000AZ9-2Y
	for yocto@yoctoproject.org; Wed, 11 Sep 2019 01:50:42 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 Sep 2019 22:50:41 -0700
Message-ID: <6F3C5ED776614BD8B5EE2E8DCAFBFAA3@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdVoZNhTHRfGfRo1SzuTmNQRw4kw0w==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068893d7d7c1f5e5817941ff067568292fec350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: One second timestamp resolution?
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
X-List-Received-Date: Wed, 11 Sep 2019 05:50:44 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I just noticed that I'm getting one-second resolution on all my
timestamps. This is for both ext4 and vfat partitions, and shows up in ls
--full-time and the stat command. What could account for this? My uname -a
output is "Linux CHROMA1 4.10.17-yocto-preempt-rt #1 SMP PREEMPT Wed Oct
11 12:33:54 PDT 2017 i686 i686 i386 GNU/Linux" if that's any help. Also,
my ext4 mount options are "rw,noatime,nodiratime,data=ordered".

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


