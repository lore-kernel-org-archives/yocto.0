Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A8E7E0140D
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2013 23:20:19 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=QKrxoIijAfT9skGFQnw263aqymKqdeBvI4qfNe25X2S6w9aY8E/8gHmwFL4BVj8A;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UuzNS-0006Pk-Ms; Fri, 05 Jul 2013 02:20:18 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Luo Zhenhua-B19537'" <B19537@freescale.com>
References: <91F05D61B900467F8FB43D4ACE5DF0F2@PAULD>
	<CA452391058F6D4E9715FB2C29D9312A015D2FE9@039-SN2MPN1-022.039d.mgd.msft.net>
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A015D2FE9@039-SN2MPN1-022.039d.mgd.msft.net>
Date: Thu, 4 Jul 2013 23:20:24 -0700
Message-ID: <E8B4C4D9890F4CDF8C8EE768634ED6C3@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac55QwUeat5KrLe1TDKEXTuxEmXHNAAAJ+KQAACP5yA=
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688fa469864a98b6cc6c7e8fb0b239fe843350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Fri, 05 Jul 2013 06:20:23 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Zhenhua-B19537
> 
> FILES_${PN}_append = " xxx" should useful, xxx is the file 
> which is listed in the "were installed but not shipped" message. 
> 
> More info of FILES can be found in 
>
https://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.ht
ml#var-FILES

Thanks for the quick response.

The problem is that every directory that I create in this one recipe is in
that list, not just the files. This includes things like
/lib/systemd/system.

I have another recipe, which is basically the same as the hello.c example,
except that it is a real program. It works fine without a FILES_${PN}
variable. So what is it about my failing recipe that makes it need a
FILES_${PN} variable? It has no do_compile, just a do_install script with a
bunch of install and ln commands.

By the way, I also notice it says to use things like ${bindir} for standard
directories. Is there a comprehensive list of these anywhere? I don't find
them in the Yocto Dev Manual or Ref Manual.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


