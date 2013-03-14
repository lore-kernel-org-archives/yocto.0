Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B30F7E01466
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 12:54:41 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UGEEv-0004V7-3w
	for yocto@yoctoproject.org; Thu, 14 Mar 2013 20:55:01 +0100
Received: from 24-196-194-18.static.hckr.nc.charter.com ([24.196.194.18])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 20:55:01 +0100
Received: from kurtmyles by 24-196-194-18.static.hckr.nc.charter.com with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 20:55:01 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "Kurt Stevens" <kurtmyles@gmail.com>
Date: Thu, 14 Mar 2013 15:54:49 -0400
Message-ID: <kht9tc$guj$1@ger.gmane.org>
References: <khsn0u$1gr$1@ger.gmane.org><CAFyqS9pbxN3n7xKY+85gTyH=Q_VZMX3+buhw7xEK5DeXzopV6g@mail.gmail.com><khsp7a$p7f$1@ger.gmane.org>
	<CAJTo0LbmzHgstyKaFCiD0Wpr7Z2+Zu-vcw31qWXOJn_1qpd_yQ@mail.gmail.com>
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 24-196-194-18.static.hckr.nc.charter.com
X-MSMail-Priority: Normal
X-Newsreader: Microsoft Outlook Express 6.00.2900.5931
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.6157
X-RFC2646: Format=Flowed; Original
X-Antivirus: avast! (VPS 130314-1, 03/14/2013), Outbound message
X-Antivirus-Status: Clean
Subject: Re: Using meta-openembeded with yocto
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
X-List-Received-Date: Thu, 14 Mar 2013 19:54:41 -0000

Ross,

    Yes, that was the ticket!

    Now things make more sense, and the build is rolling.

    Thanks very much to both you and Hans.

Kurt Stevens


"Burton, Ross" <ross.burton@intel.com> wrote 
in message 
news:CAJTo0LbmzHgstyKaFCiD0Wpr7Z2+Zu-vcw31qWXOJn_1qpd_yQ@mail.gmail.com...
> On 14 March 2013 08:09, Kurt Stevens 
> <kurtmyles@gmail.com> wrote:
>> ERROR: ParseError at
>> /home/kurt/yocto/poky-danny-8.0/meta-openembedded/meta-oe/recipes-support/maliit/maliit-framework_git.bb:7:
>> Could not inherit file classes/gtk-immodules-cache.bbclass
>> ERROR: Command execution failed: Exited with 1
>
> You're running the master branch of meta-oe with the Danny release of
> Poky - that's not going to work (because it's referring to files that
> only exist in master oe-core/poky).  You'll need to checkout the
> "danny" branch of meta-oe.
>
> Ross 




