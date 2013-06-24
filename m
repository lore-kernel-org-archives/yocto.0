Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94783E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 00:10:01 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Fh+1SwaxpU0hbSQjdaQtQ4cQty0Y1d7HvGxA1A/O7CwBFLB74QDt8pdfEwA6lj6/;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1Ur0uW-00086H-Rv; Mon, 24 Jun 2013 03:10:01 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Bruce Ashfield'" <bruce.ashfield@windriver.com>
References: <05209F2D24AD48348599D707CB5F659F@PAULD>
	<51C7BC42.7010304@windriver.com>
In-Reply-To: <51C7BC42.7010304@windriver.com>
Date: Mon, 24 Jun 2013 00:09:58 -0700
Message-ID: <ECD2F1B71F2647AE85B7BDC7B89D84ED@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac5wip/a35GBZWoCSLKwDLHMfOD2UwAHt6GA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606883675a90833cfb7cdf68eada1e0d89460350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: linux-yocto-rt and cgroups
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
X-List-Received-Date: Mon, 24 Jun 2013 07:10:02 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Bruce Ashfield
> 
> There's no technical reason at all. In fact, pre 3.8 the -rt 
> kernel used
> to inherit more of the standard kernel's configuration and 
> hence enabled
> cgroups. In 3.8, we defined a new policy for the -rt kernel, that used
> parts of the standard kernel's configuration, but not all.
> 
> We can definitely add functionality to this baseline, and 
> I'll be adding
> more in the upcoming dev cycle for yocto 1.5.
> 
> In the meantime you can enable it, and let me know how it 
> goes. I can then
> update the -rt baseline config, knowing that someone else is 
> testing it
> too.
> 
> To enable it, create a linux-yocto_3.8.bbappend, and add:
> 
>   KERNEL_FEATURES_append = " features/cgroups/cgroups.scc"
> 
> And you'll get the same cgroups config that you have with the standard
> linux-yocto kernel.

Yes, that builds and boots fine (except it's linux-yocto-rt_3.8.bbappend).
Thanks a million.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


