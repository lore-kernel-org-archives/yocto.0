Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45B9DE00CC8; Wed, 13 Sep 2017 12:16:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44F7AE00CAF
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 12:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1505330191; bh=4XZLSiJidrb9Lbcqvt/p4yRiiBSMJWJNIbUZ
	fz9f4eg=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=WOhkNkiVMT5BpPErZmngPxd
	EXzxwThY0oBsCNvVSrY7SqXbbzjY0W4ciuWB8pkls8kWlehiBZvIs6sN/VGIFTXuocS
	wzHl9CWWhzgifv6bJcl9cdiEaPGIlvyJIsdInaKK4LFKPrtA86iHBvEe3JOAG36p7yr
	xizwzzaegWVT6Tnfrjz6zsIVQw2LybAp1Wqz5csY0B80nxuqKRBf0G8c8p4ySyOpikz
	RCftomtTDUET7pWHHCEav9+zxonhzyTfsyPRwNVthQtjBahlTk9RTMPHtrNFMAlfSVL
	Bi9PTn+kjMn4T3AuaF55oTrd4Klxr4kIM4LmQhvMP5ADT3231Sw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=OC3jwmfRwKmTJAHl9P8VM2ws7b2MpPAfQDYcIAo7R+z7yI6wzQqyWHpw7PcfRm8bOoPe+IQR4y2fsPlHiWwBg8A3bnC8ZXTc9utZO2V9TAC2gXklv3jn6n+Hp71XnA4MEIRdwQy3rejdNo/HgRFdMiwAfIPScjpfP7yN6WE4zHobas5lU1ZpvaQVow6d96Cl7yrLVG17z22+lPdj8lqgDwnZffNAzw+82CkaWNUA8lhcEQs2eeJGZEF882cvrkGPT7eKcsZtGrTxoaR3Ztlz8UTv3tAuEDChcklAGTb5fUfm3IhY39QSymjUIxvaliLePAmeIoS8VLjmdQbxh+SF/A==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1dsD9B-0006yu-Vc
	for yocto@yoctoproject.org; Wed, 13 Sep 2017 15:16:30 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Wed, 13 Sep 2017 12:16:26 -0700
Message-ID: <7CFAA22325604C53A54F411F4ED0687E@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMsxMuBgjmCp99oRG2x64sRqshEKw==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688033411606372b7dfa7d7b2949ff228a7350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Eclipse Target Communication Framework prevents shutdown
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
X-List-Received-Date: Wed, 13 Sep 2017 19:16:32 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I'm using TCF on a Raspberry Pi and on an Intel Atom, for remote target
debugging with Eclipse Mars. It works fine, except for one thing: if I
have to reboot the target, it puts up a message that says that "A stop job
is running for Target Communication Framework", and it takes a minute and
a half to time out. How do I get TCF to respond to the usual kill signal
on shutdown, or have a more reasonable timeout like five seconds?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


