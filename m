Return-Path: <tylerwhall@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71966E0080C; Sat, 18 Oct 2014 14:33:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tylerwhall[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FBC1E007C0
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 14:33:28 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id e89so2003136qgf.36
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 14:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=luH1E3knnktiSaLe5/nMtqSLqVBnPZc7UYLHYMQq5+U=;
	b=D8vcowLRovJn9IRedqtUgyxYjcj1CJv5jJOjKgvRl1EOU3lcdcQ3z34tR8KXvuMglr
	XNkG7auM/RYniiXZg6AuRfXkh9j3QMuPQhtM54w4zCXPE7XYhwzOAsvpf+jzuNBFo537
	iqUS4DE5YXtZ+z1YHiUyPZ30cuUUCUR4DKRfjhIFOVnyc7KXBAwo9lds+xkfHg5BB2mn
	Zry1J9VcsML9rPxPftjXGRGTM6tVvLE68d9BDMqZ+/9Mhw60JllpQTPsSRMzDqcYBRKO
	Kn+rpmssNGx/5F7o5uCrcmH/CWXtuTg+U+fCG1fZBPpCt7eEn9rah4J3LmNk75txbdv9
	jL4A==
X-Received: by 10.224.75.7 with SMTP id w7mr23863282qaj.26.1413668007737; Sat,
	18 Oct 2014 14:33:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.143.10 with HTTP; Sat, 18 Oct 2014 14:33:07 -0700 (PDT)
In-Reply-To: <20141018100300.GG2437@jama>
References: <9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
	<m1rb0r$ucm$1@ger.gmane.org>
	<2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>
	<m1rc1u$cvb$1@ger.gmane.org> <m1rf00$l0m$1@ger.gmane.org>
	<m1t3rp$aj2$1@ger.gmane.org>
	<20141018084423.GB2437@jama> <m1t9ml$43g$1@ger.gmane.org>
	<20141018091009.GD2437@jama>
	<544233BF.8020007@gmx.de> <20141018100300.GG2437@jama>
From: Tyler Hall <tylerwhall@gmail.com>
Date: Sat, 18 Oct 2014 17:33:07 -0400
Message-ID: <CAOjnSCax3=Cyvr1+rpjSTBxV7U89n8f6xrUra+Kf7Ak4VTE5dQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: SOLUTION: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Sat, 18 Oct 2014 21:33:33 -0000
Content-Type: text/plain; charset=UTF-8

** Resent to [yocto] as apparently I wasn't subscribed **

That patch changed python3-config to use distutils.sysconfig to get
paths. That was already patched by OE to use environment variables to
substitute the correct path, but it seems there's nothing guaranteeing
those variables are exported.

> PREFIX = os.path.normpath(sys.prefix).
replace( os.getenv("BUILD_SYS"),
> os.getenv("HOST_SYS") )
>
> This gives error
>
> TypeError: Can't convert 'NoneType' object to str implicitly

It may have worked previously because python3-config returned the path
to the native sysroot and it compiled successfully despite picking up
the header from the wrong place.

There are a few python recipes that export these variables explicitly,
but it doesn't seem like something that clients should have to know
about.

From python-pycurl:
>
> # need to export these variables for python-config to work
> export BUILD_SYS
> export HOST_SYS
> export STAGING_INCDIR
> export STAGING_LIBDIR

This is also done in python-pygobject and python-dbus. Is this
something that distutils.bbclass should do?

On Sat, Oct 18, 2014 at 6:03 AM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Sat, Oct 18, 2014 at 11:32:47AM +0200, Neuer User wrote:
>> Am 18.10.2014 um 11:10 schrieb Martin Jansa:
>> > On Sat, Oct 18, 2014 at 10:51:30AM +0200, Neuer User wrote:
>> >>> http://git.openembedded.org/openembedded-core/commit/?h=daisy&id=de5797b27a358954eb15318d0d77ad1981981861
>>
>> THANKS A LOT!!!
>>
>> This is it. This patch broke the recipe. I reverted it and it runs
>> through now without error.
>>
>> THANKS A LOT!!!
>>
>> What shall we do now? Is this a bug in this patch? Or does my recipe
>> need some adaptation?
>
> + Tyler Hall
>
> My guess is that your app is receiving the include path with sysroot
> prefix now from sysconfig and then adds another sysroot prefix so it
> points to non-existent directory, check the include paths (e.g. run
> make -n in your configured qmake project) and if it's the
> case then debug where it's added (OE_QMAKE_DEBUG_OUTPUT = "-d" should
> help)
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

