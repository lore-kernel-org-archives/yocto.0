Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3B97E00D42; Thu, 24 Nov 2016 07:48:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9765EE00D3B
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 07:48:48 -0800 (PST)
Received: by mail-ua0-f175.google.com with SMTP id 12so51023052uas.2
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 07:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=NA14bRL9BGIdxoXUM5UbhF9UGnlFFj6bmy+y7DE6LKA=;
	b=BUBQQzOzBIex34otU6S5JLW9cIe/oSaMCYCpAmjdca+Hz0+LxgxY/w/HHtBwTNy76B
	bR4EWorwxYQOdELmiJKTYERWgmTQthD7LMZKJ1v1Zbo3pv56aGlizo+J0fwssIozNDfa
	VW9n/LVMTLSRyd17JlxY1S2nWzwHHBSapC8LL8SiyrmoPscBf/kUWf5vZXjNcPktZ4Xa
	vqBR8m4qDIqhJsOjcw4ISjZnJtl0xy6nYKzAWFfO3SRhltSsshvxdCQ5EPOpGFtUICS/
	Zkn9ncQn4ZFVx+taefynJbkZXzZJo5w3Ad8LZxu6fvtwrrDJvmJr8P5J3ETSQXAznb+R
	N6Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=NA14bRL9BGIdxoXUM5UbhF9UGnlFFj6bmy+y7DE6LKA=;
	b=ZYlw4qIBqEMAmmfaYONJQVgEPvuaT9CDW64PDdETsm3Pn38smdLux+dZaImDtnG5Mo
	qKS/DH5WsxE4AiDfnD2nncFpr7h18GSWk80Zh2tgfvoFdtsC4VR36Nz6glsgL2UENzAT
	KWu6aXcj0nGvMzCPaO/L3UR7bApV/MG9OmxlCHluDI3fngJl94ff0orKQlt/JIPl/FOb
	RU60bLr5GsEV4d9IrxI27tKvvHqavKiscpkPWHwCSrg7b7wYLH+OkWqP9DpB/aydsdnG
	T37XN0yKi3Nladi5GK3WPoYjWg9eMx6KAa8qtT5NPmMQQhnGllnO1uiYdOpXdqos6NQD
	IiTw==
X-Gm-Message-State: AKaTC00EPnBVc42b7+x3K84Ss+WU/Lxy018NQZAPbOCyqiuC0powhRgG3IlRYSrjLN2OWtyo6cRBgRN+MjTBlg==
X-Received: by 10.159.55.168 with SMTP id q37mr2430284uaq.63.1480002527304;
	Thu, 24 Nov 2016 07:48:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.4.129 with HTTP; Thu, 24 Nov 2016 07:48:46 -0800 (PST)
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E7F626B@AZ-FFEXMB01.global.avaya.com>
References: <CAF3SDA6CjS0Tdfy0hqJEg+sYv67HpeYe9HOO9GBL6JQSjXaWHw@mail.gmail.com>
	<CABcZANk0XfQTA5dio2NQvRnV+cSF3dLF+Rpv8+3RY-kUO=0y=w@mail.gmail.com>
	<F38A866CD026F746A3BF0928A84397BE3E7F626B@AZ-FFEXMB01.global.avaya.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 24 Nov 2016 13:48:46 -0200
Message-ID: <CAF3SDA5ObWo1siH9-S65kLy85imC+ww6F4tTMih1d7iw5HrDkg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Extracting PV & PR from Makefile at compilation time.
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
X-List-Received-Date: Thu, 24 Nov 2016 15:48:51 -0000
Content-Type: text/plain; charset=UTF-8

2016-11-23 12:01 GMT-02:00 Bipnesh, Abhinav (Abhinav)
<abhinavbipnesh@avaya.com>:
> One quick way would be to use environment variables in both places. So you
> can export them before starting a build.
>
>
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Christopher Larson
> Sent: Wednesday, November 23, 2016 19:13
> To: Daniel.
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Extracting PV & PR from Makefile at compilation time.
>
>
>
>
>
> On Wed, Nov 23, 2016 at 6:26 AM, Daniel. <danielhilst@gmail.com> wrote:
>
> I have a Makefile with this header
>
>
>
> major = 1
>
> minor = 0
>
> patch = 10
>
> release = -beta
>
> Which compilates someting like libmylib.so.1.0.10-beta shared object.
>
> On recipe I duplicate this information:
>
> PV="1.0.10"
>
> PR="-beta"
>
>
>
> Is there anyway to grab that information from Makefile and setting PV & PR
> according to it? At compilation time? So that I only have to change at one
> place?
>
>
> bitbake wants to know pv/pr at parse time, long before the sources have been
> fetched and unpacked.
> --
>
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics

Thanks guys for the reply.

Christopher, now I understands. It's an egg/chicken problem. So what
I'm asking is a bit non-sense.

My case is something like this:

We have custom board.
At this board some peripherals reside.
Some libraries sit over that peripherals.
I want to be able to get version of that libraries from a running
environment when needed. This wouldn't done by my self, but by other
people that have no good linux knowledge, so that need to be simple
like a "run this command".
I want to be able to get the right source code from version number.
I want to made package updates avaible from package feed, so that
running images can be updated by package manager instead of burning
every new image. This would make my development cycle more
incremental.

Before the first e-mail I was keeping version at makefile and
generating libsomething.so.X.Y.Z-release. This make it easy to grasp
version from library file name. But at each version the proper recipes
had to be edited. This is boring and error prone. I'd already build
packages like libsomething-1.2.3.rpm that ships libsomething-1.2.4.rpm
because I forgot to update the recipe.

So now I'm using no revision from SRC_URL (I'm using SVN). And setting
things like below.

SRCREV = "${AUTOREV}"
PV = "${SRCPV}"
PR = "r0"

So that recipe editing can be avoided. Since I'm using SVN the
revision number aways increase and I can get system update working
properly.

I'm about to read about PR service since using SVN revision as version
seems not a good idea for me. The libraries are only used internally
so I do not have to bother about versining API changes. Anyway, thanks
for the feedback

Best regards,

-- 
"Do or do not. There is no try"
  Yoda Master

