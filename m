Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04493E00C8A; Sun, 17 Sep 2017 18:16:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.69 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD354E00C3A
	for <yocto@yoctoproject.org>; Sun, 17 Sep 2017 18:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1505697382; bh=B0GCSOAUsArSnL6lfk69mmvZymJQTLeTNMqw
	U4IeUTQ=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=B5Yu6yFf/mNUbBBYBnWbNqF
	Bfl2dGcAv8qBKLSgz7Hw8+Bnx4jIB7j1YoYnzSc1tJ7i/K9BPZcb2+jcUdtGttdTWcK
	jXSd5p33NmDdSh1ubR3AJCNj5ySsG1tcXvsjKeu9Nd1uka39mouW4Fztwp6Jd8K57b8
	sYQr0WIxqZ0E8Nq3uQVbajPBeaVrYfKfZ4p4yrxpWMPEAZjqbtIZre2dxVIK+5bDJyl
	ZLsGCin/A/d/VWQIU+fB0ztvBsErz+SEtu3vn19aMKg2xknxq7M39QXL3lRYP1xDGlL
	bO6IQ40GYWOfT+RBlIVDKeTeqPGS6D7QlA/293DsNwloCcIdvNQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=WWCecemQLXe1uHLTaWQrMGaU3KFYPiltb71egijtY4Do08yEwe7bGF321gJu4ET6uKcmqOZSXfYwxZp3EX0xDK8pw65tAlSnsvR/z3L6VIn+2MgKPGRq5NxrnDNovM0bET8wV6J+YrdWD31cy8ypHRlZWLpHUugjGY/zfA7v+eDh/sStlqeIAtjVsZDdt17RJMJtm+Do8GSho9RV4aLxUmKej+wgovonbI3ZKo0gD1vD6YzHhfS1z7dByn/88XKoBcByY4snatQHnWSPT+x2iJhI/PT1c2X6QuBlxlzmRmo26lZDXEfEGaFCVBEFrRBeMH07btu8IVkSwTzrdAHbUA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1dtkfc-0005Qi-LZ
	for yocto@yoctoproject.org; Sun, 17 Sep 2017 21:16:20 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Sun, 17 Sep 2017 18:16:20 -0700
Message-ID: <3D8D4134BBBF450586E55FD9CF1E9B71@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMwG7xkyZiTP1vwQlqcKy96hibXYw==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606882511909f7125a953b63eeadb62e02b84350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Can't find Python oe package
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
X-List-Received-Date: Mon, 18 Sep 2017 01:16:26 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I thought this was a morty->pyro upgrade issue, but trying morty again, on
a freshly installed Ubuntu system, didn't change anything. In
meta/classes/patch.bbclass, patch_do_patch() is barfing when it tries to
import oe.patch. I carefully reinstalled poky, meta-intel, and
meta-openembedded from git, and I get this error, and a bunch more related
to the oe package. The package is there, in poky/meta/lib/oe, so why isn't
it being found? Am I supposed to have a non-empty PYTHONPATH somehow? What
kind of misconfiguration could cause this? This worked on morty before I
had to do a fresh Ubuntu install, so I doubt it's anything in my own
simple layers.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


