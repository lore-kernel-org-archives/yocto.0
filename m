Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31B2DE00BE4; Tue, 15 Sep 2015 18:22:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 921DBE00D5E
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 18:22:00 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=m8ZjipEPUzZGVFS0opMsnQhiEUePpMKzNMOYg+vv72savBjDM3OYi9Gy3H1tC5wF;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1Zc1Q2-0004Ob-NI
	for yocto@yoctoproject.org; Tue, 15 Sep 2015 21:21:54 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
	<F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
In-Reply-To: <F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
Date: Tue, 15 Sep 2015 18:21:58 -0700
Message-ID: <45E86B59B078495EA9249998AA08E2C5@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDwHRAvxBaGhR+ORoKG8E/CPkzoggAACCyQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688c646061ebd2db7e0644ffd39dad407a4350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: I hate busybox!
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
X-List-Received-Date: Wed, 16 Sep 2015 01:22:02 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Khem Raj [mailto:raj.khem@gmail.com] 
> 
> I agree on busybox differences but sometimes its not about 
> the utilities they are needed for some sundry work.
> What would be interesting to know is how much size increase 
> is caused by replacing all busybox functionality
> with other utilities and also RAM consumption. That can give 
> valuable information for someone who is assembling embedded 
> system stack and help him/her the decision making. embedded 
> systems of today might have more memory and what not, but 
> they are also running more
> complex applications than in past, so software bloat has 
> caught up with more memory, in the end you still need to be 
> cautious about the footprint and equation remains almost same.

As I said in another message, my 32-bit Intel system image increased by
36MB when I added the full utilities. The busybox executable is half a
meg, while individual full-featured commands are generally a few tens of
kilobytes. I don't know if running busybox loads the whole thing into
physical RAM, or if it only allocates the pages that are actually touched;
that would determine the relative RAM use, I suppose.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


