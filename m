Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 178F9E00BAB; Mon,  5 Jun 2017 16:14:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49E4BE00BA2
	for <yocto@yoctoproject.org>; Mon,  5 Jun 2017 16:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1496704442; bh=zjyeGMWj8ghJGliSI9GTwXhKq02AzzkXshGR
	zNjv+rk=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:
	Thread-Index:X-ELNK-Trace:X-Originating-IP; b=KlrODbf7IzOzgnB/YYGm
	lbMaixefloORopVQudzKERUB5KDjXVw6xC03ExfWQkiKXmjA4Y6nJVeyguOf+eqihyd
	nFEh6SDYxVsGTAC0eryirgNJGQXk19EphBoV+Omjed7xwQMFh6QkVGE2VN/XhB5kRuH
	nbUU32jbWnUn3d0dS1pKNLoDYr7saDmP2DHYa2I65Wi5GMO9yG2Bs5zY1MVa6hfAve1
	57piYR4mos71qEO3MrQyvtLkHiA8ViL9OJHPwR26/m3TCI5OBhpluHE2W6lCoo0MRUt
	Xs/YjzmJB3jDV/daAq3CTjSnUp5zGv+ksmkWDAC545Rg3iL4CW91FA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=InIoTRrM4wD5GokbansAiCyEmWchC0E/ZjYL4lOO6eUDTczhE0PdseLfWD1OST1NSdtZ4AyFb6A//OM5jXvo3gJJjS6cqGk9Z1XS7poD35JA/4nzG2zau9hpOXK3MO0qdR/XOvcfvgyEq+2V0IoVXQE2pKDqru1OrpyfzS5WTIZ56AiKt+pcVET1xfimWMLmqGmIjUvKD3nNgrU+mv1Qfgkfa8UW9+FYULrgvlUTmBRcWHFIScsZ0viSH1arBmJGE8+HSxHQ/gzZop8PurcHWvyt3g/kGWyUVv2w60HBESNYWTQ7MXsEmQfBLB+GHi7bjSKnnrEf+x/wHeUS3y7WOA==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dI1CA-0000DR-CG
	for yocto@yoctoproject.org; Mon, 05 Jun 2017 19:13:58 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Mon, 5 Jun 2017 16:13:55 -0700
Message-ID: <97A3C40DC2EB4BC999E951064A2B4BF6@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
Thread-Index: AdLeUWeXSAFbIXPQTdWRwjCESV9LiQ==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688dbd3ba57841df08cd1ef24790e9b6680350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: First attempt at x32 system: kernel panic
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
X-List-Received-Date: Mon, 05 Jun 2017 23:14:04 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I took a functioning 32-bit x86 system built with Morty and successfully
converted it to 64-bit. Builds and runs fine. Next, I tried applying the
x32 tune, as described in the Yocto manual. I created another BSP layer,
changed all the names accordingly, set CONFIG_64BIT=y and CONFIG_X86_X32=y
in one of my .cfg files, set DEFAULTTUNE to "core2-64-x32", and set
baselib to the expression documented in the Yocto manual (which boils down
to "libx32"). It builds without complaint, but when I run it, I get a
kernel panic almost immediately.

The problem is that the kernel is being compiled as regular 64-bit code
while everything else is using the x32 tune as it should. The init program
is symlinked to systemd, which objdump shows as having an architecture of
i386:x64-32, while various object modules used to build the kernel show
i386:x86-64. Everything in /lib seems to be x64-32 except for the .ko
files in /lib/modules.

I thought perhaps the problem was that one of my .scc files specifies
KARCH as x86_64, which I used because "yocto-bsp list karch" only lists
that and i386 for this CPU. I guessed that there might be an x64_32
choice, and tried that, but it went ahead and built an x86_64 kernel again
without complaint. I also tried removing CONFIG_64BIT=y, with the same
result.

So why am I getting a 64-bit kernel without the x32 tune?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


