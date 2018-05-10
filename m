Return-Path: <danismostlikely@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17008E00C25; Thu, 10 May 2018 07:34:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danismostlikely[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A8C4E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 07:34:19 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id r25-v6so3311075lfd.1
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 07:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=N+xWefNE2its/7uM3ZIfmnpzFJQP/JxBS+jOCZJcryw=;
	b=VM29aR91/Y0ij8Wf0w4LXQDfV5J/rxHeKK1Mz+VHpT7cHz0n7ovXCCta6/6AUtPP2d
	uKj/kcjGZPRUGxxbtIvUfAFBbK7P9H2PasUjCRWF2A5tdSQiMc21p/tp+JOEu1O6s3l4
	jwdCIIhdXCcM4GSl/5ouXlBZWoCXosdkbuKsQ0XD4iF7oWyPMLzeZr8myyCTJDIkXz9r
	4Timy6jfvlsRTU+ikg008IvFT7ykpfT5iMacaOKlh35KfE7YdAe8wpoEa9A207ZklOWz
	fXVRP8Hv0eHl2ljmMq+OxgYUoVHSa0WccF3UDlOYsQLx9dnZdFsBQJbz1vm1PzjA1JTy
	M11Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=N+xWefNE2its/7uM3ZIfmnpzFJQP/JxBS+jOCZJcryw=;
	b=mCYB973xT9sMK3hcYcG60mXA8S7xgr4M7iPPIPlQ6dQoeYFn0PaWicCteM8g/EV2yT
	uHGa0+4qzqKemxXtDybaXSRyLPatctNcqu0kvW3UjMKtXosFPPI8oC0laiEO3Uo++x1c
	CjvEaZNr9hGC5XUaW3OE9KDDrV4o08xZXJa6P+mHqSmDybhOHnC8dzJBV/YWKZT4XFyE
	mMEZxsPUIgjlNQdnLhxbH0kw+LaqcCbI5aLZT+6DJSBOc6y+7x+q4NbbqVgN5xq0Lhkt
	U6IVKqSJG444uxPTE2zSmlVZYjwE4s6Ue2PJTgSMqzjIOIyMjLeDL8dxWASCAXEyIKXo
	hRAg==
X-Gm-Message-State: ALKqPwft3wtzR0toLDGgpeXWo7qqeME5vzi6ttx7Ls3AmzwewNvy5IZu
	18cx4OaZKr9Ox0H8uwSgCPyxguEHMSs0E3038HGS4w==
X-Google-Smtp-Source: AB8JxZr75pkYHXE0NO/52OMSgdgqgppk++bp+4eGEzTUR0sU129uxqYV7kd+BVfYMSmcnGuid15S2ABCAyLGLDGBmgk=
X-Received: by 2002:a19:8e53:: with SMTP id
	q80-v6mr1231860lfd.140.1525962858289; 
	Thu, 10 May 2018 07:34:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:380e:0:0:0:0:0 with HTTP; Thu, 10 May 2018 07:34:17
	-0700 (PDT)
In-Reply-To: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
From: Dan McGregor <danismostlikely@gmail.com>
Date: Thu, 10 May 2018 08:34:17 -0600
Message-ID: <CACS+7ZR6F1PgKxQxxh=iJzTQNmrrMVOQ01EuhcnotSAhB=AiEA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 10 May 2018 14:34:22 -0000
Content-Type: text/plain; charset="UTF-8"

On 4 May 2018 at 18:26, Khem Raj <raj.khem@gmail.com> wrote:
> Hi All
>
> As you might have noticed that gcc 8.1 was released this week, I am
> calling out for some testing help on testing branch so we can weed out
> issues you might see in your setups. so if you have your
> builders idling over weekend, then you know what they can do this weekend :)
>

Thanks for this. The only two issues I noticed are that the
Wandboard's kernel doesn't compile with gcc 8.1, and gcc-sanitizers
now throws a packaging error on (at least) x86_64.
${libdir}/liblsan_preinit.o is a new file that should go into
liblsan-dev.

> Highlighted changes are
>
> https://gcc.gnu.org/gcc-8/changes.html
>
> and porting doc is
>
> https://gcc.gnu.org/gcc-8/porting_to.html
>
> The branch is here
>
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-8
>
> Its uptodate on top of current master oe-core
>
> May fourth be with you !!
>
> Cheers!
>
> -Khem
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

