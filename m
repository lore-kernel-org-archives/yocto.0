Return-Path: <marlon.smith10@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E7E5E0096A; Mon, 23 Oct 2017 11:07:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marlon.smith10[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F20BFE00708
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 11:07:41 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id s75so12377567pgs.0
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 11:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version; bh=Equbv36Fmw2fhYeIHfauiV8X3FH+hJ/J0hNu3cDt3sU=;
	b=RLsZtJSOwwYfY/7YJbVjg8OP3qjlEidjBe8xiFFkayeLV9CS9QqvKAyuETd70ivvH1
	RWwAHtZNW+pFvyPfcSqVj8+/UTX9XCZMtw0XmIYhl2pivNMtwZTP9BP6XXGUXnrDUAkU
	TuvjS1CcE+mR1Swi4LL26bbx7pMxpZnXPmQDyTkK0W1BewPp+g6PV2Ln0p+mZrFik2uf
	ffIiohps+pOgy5pIQmkiSs0Y0FMM/F5XpsWJTbWmmn/8n8eizMJEPD+NjGFdS8FdJH/y
	7KBzFs4CmwoZvFi5ZlCjDn25oVJNXjgpz8SZ3WcTgGt+0GnCU3wtkP0bSzEAzTQE010b
	SvOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version;
	bh=Equbv36Fmw2fhYeIHfauiV8X3FH+hJ/J0hNu3cDt3sU=;
	b=pktzItxxt1qRdhb+ZLKEGXbo5U/SnFLZe5RZAI5odnYOxLY7jQLWiHQLBTk3a9W7+X
	QKM5fB5U4IhSmIBhwhGoxIoGJGiAXjlof+PvQZS8joXOJYhzl+CIqJFvcspy9kcV4ktv
	IhaCTdTwXJSJEIRggWkj4I7qwwZJM37jJeyD0xi4I9waDrCDt3gl+HiraYP68QiNJ3sf
	kimmLsk3W2IApMjUGhPhJ21vv12rSCRkSq+yZEyWq4Mo4SkxLrNF6mRPBPiUOyaMbSXz
	4Nrf+x3oC0xixN2GMAGr/ERpsI8/yzFDCX8W3mkUCMKS7nn9OiXDT7qniSi4TKjnQKWt
	YO9Q==
X-Gm-Message-State: AMCzsaWlSlcRlapM1Y0Z4MQ0Ud/RP/Qor27Yhum4CVmcpQ/kL4GB24b8
	bC279oGouBlCvpPAFQWFPeM=
X-Google-Smtp-Source: ABhQp+QQ7iOslomjUrZC/SON47DeQo1fDDAAl34dlPLZfkWapWfyDQugBstiboEV4ti0tW5Wnddq1A==
X-Received: by 10.101.88.70 with SMTP id s6mr12613295pgr.216.1508782061367;
	Mon, 23 Oct 2017 11:07:41 -0700 (PDT)
Received: from [10.2.0.10] (S0106a84e3f53ec33.gv.shawcable.net.
	[184.66.238.184])
	by smtp.gmail.com with ESMTPSA id m1sm9346223pfk.54.2017.10.23.11.07.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Oct 2017 11:07:40 -0700 (PDT)
Message-ID: <1508782059.4636.99.camel@gmail.com>
From: Marlon Smith <marlon.smith10@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Mon, 23 Oct 2017 11:07:39 -0700
In-Reply-To: <CAMKF1sqz8cCN=cE4zoc-HVH1K5FhAQdTkXDMuTCw1H763Www3g@mail.gmail.com>
References: <1508364829.4636.30.camel@gmail.com>
	<CAMKF1srFzdJusbLTTEikKQHrzKinot3=YgR+nkegsKGUCbM6tQ@mail.gmail.com>
	<1508441896.4636.70.camel@gmail.com>
	<CAMKF1sqz8cCN=cE4zoc-HVH1K5FhAQdTkXDMuTCw1H763Www3g@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building kernel backports for ARM with Yocto
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
X-List-Received-Date: Mon, 23 Oct 2017 18:07:43 -0000
Content-Type: multipart/alternative; boundary="=-VO0HdjfOFExKZRM8CroR"

--=-VO0HdjfOFExKZRM8CroR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Khem, with a couple of modifications I was able to get this script
working perfectly and installing the modules into the system
automatically.  Thanks a lot!
If you or anyone else would like a copy of the modified bitbake file
I'd be happy to share it.
On Thu, 2017-10-19 at 14:18 -0700, Khem Raj wrote:
> On Thu, Oct 19, 2017 at 12:38 PM, Marlon Smith 
> com> wrote:
> > 
> > On Wed, 2017-10-18 at 22:50 -0700, Khem Raj wrote:
> > > 
> > > On Wed, Oct 18, 2017 at 3:13 PM, Marlon Smith 
> > > il.c
> > > om> wrote:
> > > > 
> > > > 
> > > > Hi everyone,
> > > > 
> > > > I'm trying to build the Linux backports project to get updated
> > > > wifi
> > > > drivers
> > > > on an older kernel.  The problem is that when building
> > > > backports,
> > > > it first
> > > > builds several tools that need to be run natively before cross-
> > > > compiling the
> > > > rest of the project.
> > > > 
> > > > I know how to write a bitbake recipe to compile natively, and
> > > > how
> > > > to write
> > > > one to build for the target, but I can't figure out how to
> > > > combine
> > > > the two.
> > > > The backports project has steps for LTIB:
> > > > 
> > > >  %Build
> > > >  export PATH=$UNSPOOF_PATH
> > > > 
> > > >  make menuconfig prefix=%{_prefix} \
> > > >    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
> > > >    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
> > > >    KLIB_BUILD=${TOP}/rpm/BUILD/linux
> > > > 
> > > >  export PATH=$SPOOF_PATH
> > > > 
> > > >  make prefix=%{_prefix} \
> > > >    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
> > > >    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
> > > >    KLIB_BUILD=${TOP}/rpm/BUILD/linux
> > > > 
> > > > 
> > > > I believe what I need is an equivalent to the line export
> > > > PATH=$UNSPOOF_PATH
> > > > but I can't find anything in the Yocto documentation or mailing
> > > > lists that
> > > > would be equivalent to that.
> > > > 
> > > > 
> > > > Any help would be much appreciated!
> > > You might try this out
> > > 
> > > https://github.com/kraj/meta-himvis/blob/master/recipes-kernel/li
> > > nux-
> > > backports/linux-backports_4.14-rc4.bb
> > > 
> > > it does not work out of box but with few fixes here and there it
> > > should work
> > It looks like that recipe inherits backports_module and kernel-
> > backports_module-split.. do I need those files as well?
> > 
> backports_module is merged into recipe itsellf. Other one can be
> replaced with inehrtiting
> module bbclasss
> 
> > 
> > > 
> > > 
> > > > 
> > > > 
> > > > 
> > > > 
> > > > Thanks
> > > > 
> > > > 
> > > > Marlon
> > > > 
> > > > 
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > > > 

--=-VO0HdjfOFExKZRM8CroR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html><head></head><body><div>Khem, with a couple of modifications I was able to get this script working perfectly and installing the modules into the system automatically. &nbsp;Thanks a lot!</div><div><br></div><div>If you or anyone else would like a copy of the modified bitbake file I'd be happy to share it.</div><div><br></div><div>On Thu, 2017-10-19 at 14:18 -0700, Khem Raj wrote:</div><blockquote type="cite"><pre>On Thu, Oct 19, 2017 at 12:38 PM, Marlon Smith &lt;<a href="mailto:marlon.smith10@gmail.com">marlon.smith10@gmail.com</a>&gt; wrote:
<blockquote type="cite">
On Wed, 2017-10-18 at 22:50 -0700, Khem Raj wrote:
<blockquote type="cite">
On Wed, Oct 18, 2017 at 3:13 PM, Marlon Smith &lt;<a href="mailto:marlon.smith10@gmail.c">marlon.smith10@gmail.c</a>
om&gt; wrote:
<blockquote type="cite">

Hi everyone,

I'm trying to build the Linux backports project to get updated wifi
drivers
on an older kernel.  The problem is that when building backports,
it first
builds several tools that need to be run natively before cross-
compiling the
rest of the project.

I know how to write a bitbake recipe to compile natively, and how
to write
one to build for the target, but I can't figure out how to combine
the two.
The backports project has steps for LTIB:

 %Build
 export PATH=$UNSPOOF_PATH

 make menuconfig prefix=%{_prefix} \
   CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
   ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
   KLIB_BUILD=${TOP}/rpm/BUILD/linux

 export PATH=$SPOOF_PATH

 make prefix=%{_prefix} \
   CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
   ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
   KLIB_BUILD=${TOP}/rpm/BUILD/linux


I believe what I need is an equivalent to the line export
PATH=$UNSPOOF_PATH
but I can't find anything in the Yocto documentation or mailing
lists that
would be equivalent to that.


Any help would be much appreciated!
</blockquote>
You might try this out

<a href="https://github.com/kraj/meta-himvis/blob/master/recipes-kernel/linux">https://github.com/kraj/meta-himvis/blob/master/recipes-kernel/linux</a>-
backports/linux-backports_4.14-rc4.bb

it does not work out of box but with few fixes here and there it
should work
</blockquote>

It looks like that recipe inherits backports_module and kernel-
backports_module-split.. do I need those files as well?

</blockquote>

backports_module is merged into recipe itsellf. Other one can be
replaced with inehrtiting
module bbclasss

<blockquote type="cite">
<blockquote type="cite">

<blockquote type="cite">



Thanks


Marlon


--
_______________________________________________
yocto mailing list
<a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>

</blockquote></blockquote></blockquote></pre></blockquote></body></html>

--=-VO0HdjfOFExKZRM8CroR--
