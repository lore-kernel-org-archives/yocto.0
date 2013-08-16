Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0A59E0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 17:20:52 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=icY8UXijw4a6bAle2+XiL6inZwmO4wegnYA2khpXkDbUNJLG9cTa+Y4NAl+YltZy;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VA7mO-0006Qu-0v; Thu, 15 Aug 2013 20:20:36 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Mark Hatle'" <mark.hatle@windriver.com>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD><520D242A.6040103@linux.intel.com><D4677E29EEA744F99ECD3BF698767C89@PAULD>
	<520D6431.2080105@windriver.com>
In-Reply-To: <520D6431.2080105@windriver.com>
Date: Thu, 15 Aug 2013 17:20:42 -0700
Message-ID: <E7C5F907D16F437AB756BDEC599B01C4@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6aD0rFyfZsg9otSWWxnGzfKrb1vwABkbXQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688b2c54edab9d3fc922b20da4b02463fd0350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Fri, 16 Aug 2013 00:20:53 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Mark Hatle
> 
> A simple way to diagnose if your package is even in the 
> install list is to do 
> bitbake -e <image>, then scan the output for 
> "PACKAGE_INSTALL".  If your package 
> is not listed there, then something has either cleared your 
> configuration or you 
> have a typo.
> 
> IMAGE_INSTALL_append = " my_package" should work, and 
> generally won't be cleared 
> by a recipe.

It's there, and it's all working now. I've had things break in odd ways
before, and recover when I rebuilt. This time it took a couple of tries.

What makes it frustrating is that I'm building on a wimpy Atom system.
I've been on the verge of buying a killer system just to do builds, but I
keep thinking, maybe I'll only need to do this another dozen or so times
and then I'll be done, in which case it wouldn't be a good investment.

> (Note you should modify IMAGE_INSTALL, which is transformed 
> by the system into 
> PACKAGE_INSTALL... modifying PACKAGE_INSTALL can lead to problems.)

I don't think that all the various ways to append stuff will ever make
sense to me. Currently, I'm using IMAGE_INSTALL += "..." in my top level
recipe, and it works. I don't know what IMAGE_INSTALL_append does
differently.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


