Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2771E00CC8; Wed, 13 Sep 2017 12:32:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.86.89.64 listed in dnsbl.sorbs.net]
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A243E00CAF
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 12:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1505331149; bh=MmyOe+AAy83gV3WiwFz75A7GNlSDK5r/uZvx
	kFtW2GM=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=CrRRZeNXEccDAsp9eXPg7Pd
	qGYw6TEESBusObuoCGQls+ZVvPUVloPmrI5meJ07OLRNTDK8huq7t7JYfu3zpbigi7o
	1TN9D7fxEbsV67tVRk5UGTLO6dyMmkf81k5kNCc0YQG7JqIKpcGcByTiP5VpuPCgQ8n
	Uapy5Xlh3F/G+7TMw0i2e92DgK4kZdwLkKIE7VKz0TsLzQv7FLsUyz5SnAZvN7ACUrJ
	9Uz3Ult5FcqrY5eDTxwzi6JXVDYKHfUTIIp1NR9KJDperAd1pPbEkpMmKRrLRkqSnCy
	fC/xhc4YtCOZKY1OmTRgfyYKDZHlQfWpv2LFnSKUtPpVcFvmjyQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=dNdGLMff4z6uWcIfEqFVBdDFy3VNINO5aJbD4cDK3vXpINFac6byZp4gD/y1lHIdLvxv9ycpCC1aeGDTAF8rESjlOqfZYgXGErl0TS2OcAw6V326o09qF9kesDaIgMZMe55oWZ7RnZpajHj9T8t7quZEXy5MEE1aGGN/EmdXPGtt6JFWyWdzmsRUhRSwS0yI+uUoh6StX4GDcytaZ3E+AWgDcrVC3cXhS5MI7OH++h/BlsfXjJFwb9qcdYyqLrbTSv1V5Ftq6Sm+mnvZos9vx9sA5y9Pv6GKpGYV+lN/4fudN8g7PZdEGeo/mbcDxB8+Wb0mH2iAIdn+1hoOokSwzQ==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1dsDOd-0004EC-VA
	for yocto@yoctoproject.org; Wed, 13 Sep 2017 15:32:28 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Wed, 13 Sep 2017 12:32:24 -0700
Message-ID: <8ABCD0C2CB8944EBB4282C42CA3DD60C@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMsxwaGJrCJacKaQAWKJXovZCl5Kg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606884014a5469ba4962c1eda19a10861ae90350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Keeping same IP address under DHCP
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
X-List-Received-Date: Wed, 13 Sep 2017 19:32:29 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Whenever I build a new version of my target system, the DHCP server in my
router thinks it's a new machine, and assigns it a new IP address. This
means that I have to edit the connection settings in Eclipse remote
debugging. What is changing in my system that makes that happen, and is
there any way, short of assigning a static IP address, to make the router
continue to recognize it as the same machine?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


