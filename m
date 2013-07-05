Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CB78E00343
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2013 13:02:36 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=nXkaF+SqSIGNpFIn697/uyfYa/YKnGQI5z7bNQ0CpSCID9YdUKiS32tIAvWww18p;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UvCDD-0002Bc-5U; Fri, 05 Jul 2013 16:02:35 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Luo Zhenhua-B19537'" <B19537@freescale.com>
References: <91F05D61B900467F8FB43D4ACE5DF0F2@PAULD><CA452391058F6D4E9715FB2C29D9312A015D2FE9@039-SN2MPN1-022.039d.mgd.msft.net><E8B4C4D9890F4CDF8C8EE768634ED6C3@PAULD>
	<CA452391058F6D4E9715FB2C29D9312A015D3241@039-SN2MPN1-022.039d.mgd.msft.net>
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A015D3241@039-SN2MPN1-022.039d.mgd.msft.net>
Date: Fri, 5 Jul 2013 13:02:41 -0700
Message-ID: <2A7CCA2D35894EC3A75FE6153BE2307D@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac55QwUeat5KrLe1TDKEXTuxEmXHNAAAJ+KQAACP5yAABSpIEAAX2xCQ
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068851ed40247c8dfb621c54e626392dd13f350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Another in a seemingly infinite chain of errors
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
X-List-Received-Date: Fri, 05 Jul 2013 20:02:39 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Luo Zhenhua-B19537
> 
> [Luo Zhenhua-B19537] Seems like the similar issue as 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4309

Just adding everything to FILES_${PN} solves the problem, although it's
still a mystery to me why the helloworld.c example doesn't need to do that.

> > By the way, I also notice it says to use things like ${bindir} for
> > standard directories. Is there a comprehensive list of 
> these anywhere? I
> > don't find them in the Yocto Dev Manual or Ref Manual.
>
> [Luo Zhenhua-B19537] I am not sure whether such variables are 
> documented in a unified doc, I always check it in 
> meta/conf/bitbake.conf or "bitbake -e | grep xxx". 

Thanks. I think I'll create my own little text file listing them all, along
with the default values they expand into.

If anyone involved in upgrading the docs is reading this, that really should
go into the Ref Manual, in a single table.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


