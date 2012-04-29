Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B170EE00723
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 07:41:20 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3VgWly4jCjz3hhVq;
	Sun, 29 Apr 2012 16:41:18 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3VgWly4zdMz4KLCx;
	Sun, 29 Apr 2012 16:41:18 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id lxnAOzIJeE-n; Sun, 29 Apr 2012 16:41:18 +0200 (CEST)
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Sun, 29 Apr 2012 16:41:18 +0200 (CEST)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id DB0DB1A272F;
	Sun, 29 Apr 2012 16:41:17 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 99E6B202B38;
	Sun, 29 Apr 2012 16:41:17 +0200 (CEST)
To: Daniel Toussaint <daniel@dmhome.net>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CADVYk4SBWkAnU4RL6k2_+1aedbFnfptohKffjGdaK6C2bs-6RQ@mail.gmail.com>
References: <CADVYk4SBWkAnU4RL6k2_+1aedbFnfptohKffjGdaK6C2bs-6RQ@mail.gmail.com>
Comments: In-reply-to Daniel Toussaint <daniel@dmhome.net>
	message dated "Sun, 29 Apr 2012 21:16:44 +0800."
Date: Sun, 29 Apr 2012 16:41:17 +0200
Message-Id: <20120429144117.99E6B202B38@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Building a Qt4-x11 app.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 29 Apr 2012 14:41:20 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Daniel,

In message <CADVYk4SBWkAnU4RL6k2_+1aedbFnfptohKffjGdaK6C2bs-6RQ@mail.gmail.com> you wrote:
> I wish to run an application developed with QT in a Yocto filesystem.
> The app should be linked against Qt4-X11 libs. What is the exact work
> flow to get my app cross compiled on my x86_64 host ?
> So far I have :
> -> Build a complete core-image-sato with IPKG as a packaging system.
> -> Build qt4-x11-free
> -> Build qt4-tools-nativesdk
> 
> Now, I got something called qmake2 in the build directory
> (sysroot-x86_64) , but it complains about not finding the right qmake
> specs.
> I got the feeling I am doing something fundamentally wrong with my
> setup, can anyone enlighten me ?

Try building "meta-toolchain-qte" for the cross development tools,
and "core-image-qte-sdk" for a reasonably complete root file system
that can also be used for native development when needed.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Include the success of others in your dreams for your own success.

