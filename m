Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 049B4E01410
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 11:49:55 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UHf8R-0007rB-7j
	for yocto@yoctoproject.org; Mon, 18 Mar 2013 19:50:15 +0100
Received: from 24-196-194-18.static.hckr.nc.charter.com ([24.196.194.18])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:50:15 +0100
Received: from kurtmyles by 24-196-194-18.static.hckr.nc.charter.com with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:50:15 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "Kurt Stevens" <kurtmyles@gmail.com>
Date: Mon, 18 Mar 2013 14:50:04 -0400
Message-ID: <ki7njv$kdv$1@ger.gmane.org>
References: <CABzOdpTr4xsWPZtYxwnXOq3XpezVMHULu5Vx9qgxOtKbHt-Gxg@mail.gmail.com>
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 24-196-194-18.static.hckr.nc.charter.com
X-MSMail-Priority: Normal
X-Newsreader: Microsoft Outlook Express 6.00.2900.5931
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.6157
X-RFC2646: Format=Flowed; Original
X-Antivirus: avast! (VPS 130318-0, 03/18/2013), Outbound message
X-Antivirus-Status: Clean
Subject: Re: Timeout elimination
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
X-List-Received-Date: Mon, 18 Mar 2013 18:49:55 -0000

As for putting the image on a cf card, it may depend on which file system 
you would use.

I am using ext3 on a cf card, following the instructions for installing to a 
hard drive on this page:

 https://wiki.yoctoproject.org/wiki/How_do_I

Luck to you.

"Florin Cristian Dan" 
<dan.florincristian@gmail.com> wrote in 
message 
news:CABzOdpTr4xsWPZtYxwnXOq3XpezVMHULu5Vx9qgxOtKbHt-Gxg@mail.gmail.com...
> Hello, i've managed to burn the BSP image (emenlow) on a usb stick, on
> booted on my target machin, apparently it works fine, but i would like to
> know how can i eliminate that 10 day timeout, i've tried to enter the
> address that is given in the splash http://yoctoproject.org/tlk but is not
> working ("page not found"), this is one question, and another question is:
> currently i'm booting the image from a USB stick, but i want to make it
> defintive and run it from the targets CF memory, the principple of writing
> the image to the CF memory is the same as writing the image for the USB
> stick?
> Thank you very much
> Best regards
>


--------------------------------------------------------------------------------


> 




