Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0F6CE01460
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 08:09:54 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UG9nH-0001fb-0j
	for yocto@yoctoproject.org; Thu, 14 Mar 2013 16:10:11 +0100
Received: from 24-196-194-18.static.hckr.nc.charter.com ([24.196.194.18])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 16:10:11 +0100
Received: from kurtmyles by 24-196-194-18.static.hckr.nc.charter.com with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 16:10:11 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "Kurt Stevens" <kurtmyles@gmail.com>
Date: Thu, 14 Mar 2013 11:09:46 -0400
Message-ID: <khsp7a$p7f$1@ger.gmane.org>
References: <khsn0u$1gr$1@ger.gmane.org>
	<CAFyqS9pbxN3n7xKY+85gTyH=Q_VZMX3+buhw7xEK5DeXzopV6g@mail.gmail.com>
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
X-List-Received-Date: Thu, 14 Mar 2013 15:09:55 -0000

Thanks Hans for the quick response.

I cloned meta-openembedded under the poky folder and generated a new build 
folder using the oe-init* script (in a new shell), but when I run hob from 
the new build folder, I get this error message:

ERROR: ParseError at 
/home/kurt/yocto/poky-danny-8.0/meta-openembedded/meta-oe/recipes-support/maliit/maliit-framework_git.bb:7: 
Could not inherit file classes/gtk-immodules-cache.bbclass
ERROR: Command execution failed: Exited with 1

Kurt

"Hans Beckérus" <hans.beckerus@gmail.com> 
wrote in message 
news:CAFyqS9pbxN3n7xKY+85gTyH=Q_VZMX3+buhw7xEK5DeXzopV6g@mail.gmail.com...



On Thu, Mar 14, 2013 at 3:32 PM, Kurt Stevens 
<kurtmyles@gmail.com> wrote:

Hello all,

    I am new to this list, and new to working with yocto project. I have
been able to build bootable images for my target (atom) using yocto and hob,
and am very happy and impressed.

    I would also like to use some of the layers within meta-oe (specifically
apache and mysql), but I don't know how to go about using the layers from
yocto.

    If someone could help me get started, I would greatly appreciate it.

Thanks,

Kurt Stevens


Hi Stevens.
  Just download and place the meta-openembedded somewhere in your path. I 
put it under poky together with the rest, then update your 
build/conf/bblayers.conf file and add <path>/meta-openembedded/meta-oe to 
the list in BBLAYERS.

Hans 




