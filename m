Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29640E005B3
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 23:21:28 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=QWUqUUVzCGsaGhGdeAO51RXxw6xs5unOXyiMlkH1zgDtu5gLuJMBCZCCj59TEw2C;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1Upuiu-00057W-4a; Fri, 21 Jun 2013 02:21:28 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Nicolas Dechesne'" <nicolas.dechesne@linaro.org>
References: <8DA5A3FB8F6D4E29B99BD61C40AF9442@PAULD>
	<CAP71WjzK48XtCJbDuDd=Uj0sn1=7=2tL5NTZzN6P1APwDaLcjw@mail.gmail.com>
In-Reply-To: <CAP71WjzK48XtCJbDuDd=Uj0sn1=7=2tL5NTZzN6P1APwDaLcjw@mail.gmail.com>
Date: Thu, 20 Jun 2013 23:21:34 -0700
Message-ID: <CF01647F1ED444E9972E46C112E81DFF@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac5uNBM2zoVAby/sTnemQrRPIw9tfQAEzewA
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688a48a9608da02b2d3cd0e610bfd0e8187350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: 'Yocto list discussion' <yocto@yoctoproject.org>
Subject: Re: Compiling a simple command
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
X-List-Received-Date: Fri, 21 Jun 2013 06:21:30 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Nicolas Dechesne
> 
> here you are mixing a recipe for an image with a recipe for a 
> 'package', and that's wrong. you have recipes for images, and 
> recipes for packages.  for package, bitbake will actually do 
> the standard fetch/unpack/patch/configure/compile/package 
> steps, but not for images. all images recipe inherit from 
> image.bbclass, and if you check that file you can see that 
> all 'normal package' tasks are disabled (toward the end of the file)
> 
> so, while your recipe is indeed syntactically correct, the 
> do_compile() and do_install() aren't never really called.
> 
> you need to make a separate recipe for your package, e.g. 
> fastuart_1.0.bb (and removes the 'require' at the beginning).
> 
> then you can create your image recipe, and request your 
> package to be installed in the image , you can do something like that:
> 
> require recipes-core/images/core-image-base.bb 
> <http://core-image-base.bb/> 
> 
> IMAGE_INSTALL += 'fastuart'

Thanks, that appears to work.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


