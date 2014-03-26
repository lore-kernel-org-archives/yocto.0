Return-Path: <thomas.petazzoni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE2DE00B7E
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 09:44:24 -0700 (PDT)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 203947D9; Wed, 26 Mar 2014 17:44:23 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from skate (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
	by mail.free-electrons.com (Postfix) with ESMTPSA id AE5A37AD;
	Wed, 26 Mar 2014 17:44:22 +0100 (CET)
Date: Wed, 26 Mar 2014 17:44:20 +0100
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
To: Seth Bollinger <seth.boll@gmail.com>
Message-ID: <20140326174420.648506cf@skate>
In-Reply-To: <CA+JN8xOH+=oJe3w_e06q3VJqZ9T_mQdmbUK8CBL3RE9+h=BiUQ@mail.gmail.com>
References: <CANyK_8e6dfzu64SRLzZdXFE3obT6Td-8UUDqfcoSAqWTjoOq3g@mail.gmail.com>
	<CAJTo0Las0o_JcsvW-X+L=EQAvUf3yVVQBunoCi=cAzR=3y2DrA@mail.gmail.com>
	<CA+JN8xOH+=oJe3w_e06q3VJqZ9T_mQdmbUK8CBL3RE9+h=BiUQ@mail.gmail.com>
Organization: Free Electrons
X-Mailer: Claws Mail 3.9.1 (GTK+ 2.24.20; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded and musl-libc
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
X-List-Received-Date: Wed, 26 Mar 2014 16:44:28 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Dear Seth Bollinger,

On Fri, 21 Mar 2014 08:26:08 -0500, Seth Bollinger wrote:

> > I saw that yesterday too and thought it could be interesting for
> > Yocto.  I'm curious as to why it's better than uclibc though
> > (genuinely curious, I know little about uclibc beyond "it's smaller").
> 
> It been a while since I've reviewed uclibc, but doesn't it break a lot of
> software with its vfork only paradigm?

I'm not sure where you have seen that uClibc has vfork() only paradigm,
but it's not correct. uClibc has a proper fork() implementation on all
MMU-equipped CPU architectures that uClibc support. Only the non-MMU
architectures are limited to vfork(). The originality of uClibc here is
probably precisely the fact that it supports non-MMU architectures,
which many other C libraries do not.

Thomas
-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

