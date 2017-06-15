Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12BF2E00B97; Wed, 14 Jun 2017 19:11:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E9BFE00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 19:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1497492669; bh=8sbkOZIypf3VicGzWzZOD8UvjK3j3fdCuZ+D
	xpLipCQ=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=DqUTJ3EYPvmfv4gQDUCKuWU
	vvh/aYxmcrf0qkaBkQgJ0zR4u1IfJUwrQy9B5Qe/+0hiblBM9LiLSM7ilwd+jnhNSDu
	gXSWjRiYBHoBibOVBSfCEDxliyDz1OR9qKQgt7CqQBgTAGXQHliDiPLq8fstqVY7+QA
	HVaOT8bqHDbOKqV/B9VXWCkAlivq4fllc7uG018qv/BA1G38hM5h7EAEF8gECvfdoNX
	kzyAtcjqShzxPh1LvQKXZpFQXj+IZc/0k/Faz/FXOtwlpuiITqURvWxq+NlzB1Nd+sY
	b3W2gPnpEfafHTr7S4z7h2D2SSSn7ZHdRKFdW+RciwNwN63EHZA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=dvqYDxBUNBfXY9smSaCRaipXSe557n9eJv0j859teW0IgophnIT/XOwdRj243oQ2bmeSCV6nhk6lYheDSDoJu8l53cI6zjUhDID3ToPBhXTQPW7CEEnhz8ti09s1CrWClVWqlspuJWIB80AhzkTntXSSyrV0Xuti7P8HaPzrzuJq0fF2ipYnawXyasdie7CsQjWWLvVJ2Co0LBuyV29KQL9D8Q/KkOns+uAyM6DrV2NCvDy3UE0R1Hpptw5BsEzc4oFpjsfSxA5M5BPcUi/tD0+mkCnLqqnFNdGa0Nbax7/dwNRlLxRWpwAnWHaDKVFiW9eRwUSOzAs2Ye3jxPv6mA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dLKFY-00005w-67
	for yocto@yoctoproject.org; Wed, 14 Jun 2017 22:11:08 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Wed, 14 Jun 2017 19:11:10 -0700
Message-ID: <674A5206CFD34D99AF67A279C9F5E3C1@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLlfKf7TAJYxINQS5SWTgMZR+HHJw==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688c78e93d2479eaa40e59a0c4e35cc6574350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Is linux-yocto-rt kernel compatible with x32 tune?
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
X-List-Received-Date: Thu, 15 Jun 2017 02:11:10 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I've been fighting with this off and on for a week. If I build
core-image-minimal for a generic86-64 machine, I can get it to use the x32
ABI, or I can switch to the linux-yocto-rt 4.8 kernel, but I can't do
both.

If I do both, it builds with no complaint other than a lot of bit size
errors in grub-efi do_package_qa (which don't seem to matter with the
standard kernel). Most binaries, including loadable kernel modules, are
properly built as ELF architecture i386:x64-32, but the kernel itself is
built as i386:x86-64. The result is an immediate kernel panic trying to
run init, because the kernel doesn't know how to load it.

I understand that not all packages have been updated to work with x32, but
the RT kernel? Is this a combination that is known not to work? If it is
expected to work, am I the first person to try to boot it on actual
hardware? I'd like to know either that this simply won't work, so I can
stop wasting time on it, or get some help diagnosing the problem and
fixing it. I'm stumped.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


