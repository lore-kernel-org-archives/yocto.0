Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD7ECE00B1B; Thu, 29 Jun 2017 15:52:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 715AEE00B05
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 15:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1498776730; bh=UhxFLMPgc8UpKANsN6JvX3Y3OhDpxAdvugHH
	XKOqWqg=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=sfPFE2abKuPqCq5dsdnCJFM
	/9Cn2tAki5vBR8YaysjNhcpv9YMPRKTEaYZR+Z3FRgpXF+65Frmhe0M9LoZkTxu37/q
	IoduRnkoMzAmy1aVIDc6X9MCMBxgofB4VCk5GvOLPrnjjG+XMPdZp6SHOt4BgRbMVS+
	OIlUcYM/7cDnmilziMBg4Ek4cODknHq/gJv1dIG2fNGFNh38K104DsM5bVRcAEu36Np
	qxRDe8N5Uas+Bk9BQEOXWd/fqhlCtNu94iWDzArK0/mu5GbaLTtP3YMz/MLzedIgpqI
	+DmQM835O9ZAOgGqJRdAASzYARTOLo45xrgQHGPjWUQt8sKF7ng==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=TY5dcn9ptOoEHsyU7VpbUk9I0KQ6Bq9U57ljDaZO7+YMy1rybMnDkRU8PMRxrjRi6fzDnXsx9ssS1RgNMUQIl2hqElrXiW3LftO9iUuT0Cq4hNn0KeTijxS1Gg3KHAEelgIo4ilHe0f9IDxZ5g1rMIMyvSLSpjorxPstqt1Za4QybRPqpoQeo0OrFdQfJHqCBMegOJLD8FSVOFAoS2OQ8GGWP/CMTSzca9r1jdzsuwpoNUmDqb6/yYunT4bcq58Cl1lTsvG9NO3KQKemsEIll8FKGYS4ZcQo/f4OwuyPGIvjkWgSSKdj9TgX5qua0oWV4KiBnqb009nZMRYpmSh55A==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dQiI5-000EmY-OB
	for yocto@yoctoproject.org; Thu, 29 Jun 2017 18:52:01 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Jun 2017 15:51:57 -0700
Message-ID: <FF02D819682A44949D09718D69202477@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLxKk+DuU+XNs90SsyFkJyypRuvgw==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688b5eca2874962fd258142308689a81a7c350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: RPi app built with SDK won't load
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
X-List-Received-Date: Thu, 29 Jun 2017 22:52:13 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I posted about this a week or so ago, but have narrowed things down
further.

I built a 32-bit non-GUI RPi image which works, built the corresponding
SDK, and used the SDK's toolchain to build an empty C program (just
"return 0;" inside main). When I run it on the target, the shell
complains:

    -sh: ./test: No such file or directory

If I run "ldd test", it dies with the same error, without even getting far
enough to trace the search for libc, the only referenced library. (Yes,
the x attribute is set.)

On my host system, I ran arm-poky-linux-objdump -x on the test program,
and then ran it on the version of chmod.coreutils from the rootfs of the
build (because it was the smallest executable in /bin). The only
differences were that chmod referenced a couple more libraries, the
section addresses and sizes were of course different, test had a small
.comment section listing the compiler used, and chmod had a .gnu_debuglink
section. All attributes were the same, even the contents of the
.ARM.attributes section.

Yet despite this, chmod runs fine, but test doesn't.

What else could possibly return an ENOENT error code to the shell so early
in the load process?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


