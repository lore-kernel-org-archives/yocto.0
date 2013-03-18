Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDCFAE0140A
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 10:47:51 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UHeAN-0003QE-DI
	for yocto@yoctoproject.org; Mon, 18 Mar 2013 18:48:11 +0100
Received: from 24-196-194-18.static.hckr.nc.charter.com ([24.196.194.18])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:48:11 +0100
Received: from kurtmyles by 24-196-194-18.static.hckr.nc.charter.com with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:48:11 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "Kurt Stevens" <kurtmyles@gmail.com>
Date: Mon, 18 Mar 2013 13:48:08 -0400
Message-ID: <ki7jvm$ddj$1@ger.gmane.org>
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 24-196-194-18.static.hckr.nc.charter.com
X-MSMail-Priority: Normal
X-Newsreader: Microsoft Outlook Express 6.00.2900.5931
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.6157
X-RFC2646: Format=Flowed; Original
X-Antivirus: avast! (VPS 130318-0, 03/18/2013), Outbound message
X-Antivirus-Status: Clean
Subject: How to script HOB settings
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
X-List-Received-Date: Mon, 18 Mar 2013 17:47:52 -0000

Hello,

    I have been building images using HOB, and that works very well.

    I had read in the docs about creating a custom package group, and I did 
this, and it worked well until I needed to incorporate some openembedded 
layers.

    After that my custom package group is either being ignored or 
overridden.

    I am having to select multiple perl libraries and system utilities for 
my package, and this is not only error prone and tedious, but I really want 
to keep these settings in a way that I can reapply them easily.

    I expect to use the same setup in the future on a different 
architecture, and having a layer or script that I can apply which works like 
the custom package group originally did would be great.

    I would appreciate any ideas,

Thanks,

Kurt Stevens





