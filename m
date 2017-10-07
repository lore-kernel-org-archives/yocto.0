Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2A00E00DA7; Sat,  7 Oct 2017 00:30:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.61 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 747C0E00D01
	for <yocto@yoctoproject.org>; Sat,  7 Oct 2017 00:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1507361406; bh=Ws/LtmSyk6iz0QnMTL8jPAUjue+PG+xrwoM7
	O0v8Tpc=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=nw4uMCTN6o/Z4MJ1hCfnLxT
	z7hmNW+qu6nGRkcPWrbaFh3XsqteQL7wHPPHIF+hmaUJhPcDT3D3pMAzotRed+N/iX8
	FhNUAy2WFyHrNZvZbUhKUgtr9MfsOWyTva+OT8yXuo0XIJObP3mgKJXi/fdMA7YdGod
	xvStTCRYU/AMSftpw/0uJj7DR6J6dGxwFNcZrfvtKKPQ7A7c0i18SAeQSjANXomWos1
	B/JtMrHUS46E6890l1lYneXUN2YDCWVvnwGQX4b4tWbcBHqgHQLifQtZ28MNpJIt1s1
	cfS0tghrFJgjSMiZey5rkpjvuwf+Wx/1UbVYercgXyhfP6Xl/+w==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=TPpE/G6AgaM8Ff9ZLY4udbxVrtM+92apkLe9C5QvNXRBNyI6x7+bQMQI82wUDPKWO23BdZTuq0CSlLXlcIMs/8wK0G7aGMVJW/ZE74HuhWIE0d8GMQBocMbRMrQXQe6OCjTe8+pGR6BcYw7XKrbnEaN4qNyMgeAChPxNQmvhWU80P5LFiGK5ZvZENcrJe5ZrVvEIAAuXFkpgOmuz6WlUew0J3OUcD9h+gvnFeu03OQUM9M51SpfVfvCuEb1od22B79H5QEP5EeuktVTbR2skrpWr5cepOugBXe1Mqa5ANHtMBXc0N5dLF4rEuD6SKpA7LZvPOTbxJER5qbUNY27OYA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1e0jYi-0008z5-Pg
	for yocto@yoctoproject.org; Sat, 07 Oct 2017 03:30:04 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Sat, 7 Oct 2017 00:30:10 -0700
Message-ID: <409F491A08EE44CEBD7605A8195E3C6D@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdM/PhusuLOLY3CJS3CL2GfamIIvWw==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688a59bda5ad666fea52722e72c27f32896350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Missing /etc/resolv.conf
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
X-List-Received-Date: Sat, 07 Oct 2017 07:30:08 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

(Yocto Pyro, using systemd configured with resolved, networkd, timedated,
timesyncd)

/etc/resolv.conf is supposed to be symlinked to
/run/systemd/resolve/resolv.conf, which gets updated with the DNS address
received from DHCP, but it's not. Looking through systemd_232.bb, I see
that do_install() uses sed to edit /usr/lib/tmpfiles.d/etc.conf to set up
this link. When I run the system, I see that etc.conf does indeed have
this edited line, but there is no /etc/resolv.conf.
systemd-tmpfiles-setup.service runs successfully. Isn't that what's
supposed to execute all the junk in /usr/lib/tmpfiles.d? All the
abovementioned servers are running.

Am I missing something?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


