Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A262AE01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 01:43:28 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=ltp7qGMJAExGhclSqHgjaCm5ZtzgBAwS4mCvwL/VbkSr+BdqFzgBHy3Jldw54Nls;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UmgeN-0006x0-Dz
	for yocto@yoctoproject.org; Wed, 12 Jun 2013 04:43:27 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Jun 2013 01:43:31 -0700
Message-ID: <BFD6B071C7D34F26A9AE3730B70366FC@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-index: Ac5nSOprppcrIawZRNaP8yqMfLykRA==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068884e77a9d69eab5505b0405a84693c6a6350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: What does "virtual/" mean?
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
X-List-Received-Date: Wed, 12 Jun 2013 08:43:29 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I see lots of references to "virtual/kernel", as opposed to simply "kernel".
The bitbake docs show "virtual/whatever" and "virtual/package" in some of
its syntactic examples. But what does the "virtual/" prefix actually mean?
Google coughs up endless uses of the term, as though everyone knows what it
means, but no explanation of it.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


