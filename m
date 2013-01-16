Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A16FE011AB
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 22:48:20 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YmJdD6JXBz4KK2n;
	Wed, 16 Jan 2013 07:37:52 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YmJdD528dzbbgn;
	Wed, 16 Jan 2013 07:37:52 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id Y4vbJwwrbZ8B; Wed, 16 Jan 2013 07:37:34 +0100 (CET)
X-Auth-Info: hNfwwFpLw3t6sBDBoes/iC1j9OSFvD/yeYIH1vdJyEs=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 16 Jan 2013 07:37:50 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id D64C91A14A6;
	Wed, 16 Jan 2013 07:37:49 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id B18C1200696;
	Wed, 16 Jan 2013 07:37:49 +0100 (CET)
To: Bruce Ashfield <bruce.ashfield@windriver.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <50F59A91.5080806@windriver.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35D457@GV1HQPEX03.babgsetc.pvt>
	<1358271523.2479.14.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D76D@GV1HQPEX03.babgsetc.pvt>
	<50F59A91.5080806@windriver.com>
Comments: In-reply-to Bruce Ashfield <bruce.ashfield@windriver.com>
	message dated "Tue, 15 Jan 2013 13:06:09 -0500."
Date: Wed, 16 Jan 2013 07:37:49 +0100
Message-Id: <20130116063749.B18C1200696@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Brian Lloyd <blloyd@familyhonor.net>
Subject: Re: SDK environment LDFLAGS problem?
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
X-List-Received-Date: Wed, 16 Jan 2013 06:48:21 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Bruce,

In message <50F59A91.5080806@windriver.com> you wrote:
>
> > Yes, it's clear to me that, in this one respect, the SDK is unsuitable
> > for building kernels or kernel modules.
> >
> > My point is that this is a problem, and it might be reasonable to fix it.

This is indeed a problem, and not only with the kernel, but also for
example with U-Boot - fortunately there are not that many software
packages that need to tweak with linker scripts etc. so they need to
call the linker directly.

> You probably want Jessica or Richard to comment on the architecture /
> design of the SDK with respect to kernel elements. The only packaging
> for out of tree / non build system builds that I know I've ever looked
> into are on target, or staging directory builds of modules.
...

> Everyone/Everything has their reasons for the different workflow(s).
> (I maintain the ability to build all the boards covered in linux-yocto
> without the need for any build system at all, as an example). And all
> workflows are definitely valid, but it is expected that the primary
> workflow for anything oe/bitbake based would be centered around recipes.

I found it difficult to find any formal definition of what LDFLAGS is
supposed to be.  The most authoritative appears to be the definition
as given by the make(1) documentation - as this is where LDFLAGS
actually gets used:

	`LDFLAGS'
	     Extra flags to give to compilers when they are supposed
	     to invoke the linker, `ld'.

Note the phrase "flags to give to compilers", i. e. this clearly
states that the linking is supposed to be done by running the compiler
frontend, and not the linker directly.

So even though we feel the recent version breaks old habits, it seems
that simply our old habits were based on incorrect assumptions.

I see no reason to fix the current settings, but perhaps it would be
helpful to clearly document this behaviour and recommend a workaround.

At least this was what we did for our Yocto based ELDK [1].

[1] http://www.denx.de/wiki/view/ELDK-5/FrequentlyAskedQuestionsAndAnswers#Compiling_U_Boot_or_Linux_fails

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Steal five dollars and you were a petty  thief.  Steal  thousands  of
dollars and you are either a government or a hero.
                                   - Terry Pratchett, _Going_Postal_

