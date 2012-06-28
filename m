Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5414E006D9
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 11:12:17 -0700 (PDT)
Received: from frontend4.mail.m-online.net (unknown [192.168.8.183])
	by mail-out.m-online.net (Postfix) with ESMTP id 3WNTc31R4hz4KK8R;
	Thu, 28 Jun 2012 20:12:35 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3WNTbh3KHdzbbnF;
	Thu, 28 Jun 2012 20:12:16 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.183])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id YhQU1R72ivp2; Thu, 28 Jun 2012 20:12:15 +0200 (CEST)
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Thu, 28 Jun 2012 20:12:15 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 79B351A20CD;
	Thu, 28 Jun 2012 20:12:15 +0200 (CEST)
Received: from gemini.denx.de (localhost [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 7ACD02026AB;
	Thu, 28 Jun 2012 20:12:14 +0200 (CEST)
To: Giovanni Foiani <fnognn@unife.it>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
References: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
Comments: In-reply-to Giovanni Foiani <fnognn@unife.it>
	message dated "Wed, 27 Jun 2012 10:14:00 +0200."
Date: Thu, 28 Jun 2012 20:12:14 +0200
Message-Id: <20120628181214.7ACD02026AB@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto and Qt embedded
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
X-List-Received-Date: Thu, 28 Jun 2012 18:12:18 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Giovanni,

In message <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com> you wrote:
>
> This is my first post on this mailing list and I'm quite new to Yocto.
> I successfully built a distro using the latest release of hob, including Qt
> embedded (without X11).
> I wrote a Qt application and cross compiled for ARM on my host machine but
> when I deploy it on the device (a Freescale iMX53) I get and error because
> the application looks for libraries like libQtGui but on the distro all Qt
> libraries are named like libQtGuiE (ending with E which I suppose it stands
> for Embedded).

These names are OK for the Qt Embedded libraries, and they should
match what your cross development tools are using.  Which tool chain
did you use for compiling and linking your application - the one from
meta-toolchain-qte ?

When I build meta-toolchain-qte, this also includes, for example,

.../sysroots/armv6-vfp-linux-gnueabi/usr/lib/libQtGuiE.so.4.8.2

so cross tool chain and native systems work together without problems.


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
It's hard to make a program foolproof because fools are so ingenious.

