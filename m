Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CE5EE00A1E; Mon, 19 Mar 2018 14:32:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49BEAE00529
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 14:32:40 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id e194so17759490wmd.3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 14:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=gyj/F4VKWOc1a1k4RymVyDA2bOUzd1J0Y+Ran8wezwk=;
	b=KnhzYdIo+ifAnzJIQgsKnhX56qnXDwdFfT9FaLwJfSAp8oLtCeo6S8A9h0Gsvjy693
	4bCmKbUCPXddBi/8DtjDNvnxaA6fFvUYK/8IZu5t23C3xEuXzoOCAd/ZSdNc65oSss8I
	cR2vbAAFhbdNAr/Z9Fy1bSqXwzI6V6rJa2IqdB7ZgZlhYSJXWKyvMjVNCi6dgQevScFu
	XecLb9oTDqTHh3w1oFtFVYPV77loar8zHyZHCn1GQPAm/qnacvQtwLDvh/EiSSZ9i5Pq
	Rzd+nffYRpN7KZwudtD5oXUlJVUEU1hJaqQ5tsqVh4D9/5JFSRMI27HZ/HtxTWDhGN65
	ezdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=gyj/F4VKWOc1a1k4RymVyDA2bOUzd1J0Y+Ran8wezwk=;
	b=Tj5dJY/qciRBRWJ3JMH4tSQf2mvumUyAoEQ96lE5heIuLcUQiQBON1z2mBqzzQgP9w
	2XI+nmuXx40ZrUVhqliyEr8o3+kwSnOib5yR3GHk7Px4y6UwHhrHrDAAF1XGOv5MgurI
	mZikhxImehds9kExl8uFs+unPL5SIYHD+k/jMb/tjzocvEUuAlQh+eYhyRTEBs0rUDaF
	v3BzSjYr/jua7xT9qjg91JcYmY8DVvcv6C+5VCtPnZf+pXVIrTEzgOUorkF49EKBmAyK
	RrxddgOjqdt4nM9gxvd5ksDVS2qw8kJRIeM/+IF11bKLc4Rzi2u0MZ4O6r+11mVdXiAS
	jZOQ==
X-Gm-Message-State: AElRT7FSN9orkgegKeK/0t6sREIfkP5yfDs6BwESuCdS5wJ6orBjEe3M
	R9NdmUEcbaXSPY6kMZ+q/Q4NEQwA0dzvos0163k=
X-Google-Smtp-Source: AG47ELsk7J/2vYJNoyYBUzhBSYfarvqVqcQPAT5mG0R98o0a/3psWuIUhdE4je4rkyG0kY2StCoaoaxTxUeQxqfBN6k=
X-Received: by 10.28.176.134 with SMTP id z128mr204294wme.86.1521495160156;
	Mon, 19 Mar 2018 14:32:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Mon, 19 Mar 2018 14:32:39 -0700 (PDT)
In-Reply-To: <6C79F0E5-F966-4068-B0CA-0B2FACB4ACD3@korgrd.com>
References: <6C79F0E5-F966-4068-B0CA-0B2FACB4ACD3@korgrd.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 19 Mar 2018 14:32:39 -0700
Message-ID: <CAJ86T=UGbOp3MtiMC=rL74qHXLrnVfp0k-CTXcdPqZbeUbCytw@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ARM CPU version question
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
X-List-Received-Date: Mon, 19 Mar 2018 21:32:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 19, 2018 at 9:49 AM, Steve Pavao <stevep@korgrd.com> wrote:
> What=E2=80=99s the recommended way to be able to propogate target-specifi=
c compile-time CPU tune information to affect the build of a source file in=
 my own custom layer?
>
> For example, if I=E2=80=99m building for an arm6-based target, I=E2=80=99=
d like to be able to have the __ARM_ARCH_6__ symbol be available when the Y=
octo system builds my custom layer.  The BSP for such a target obviously de=
fines this symbol when building its files for such a target.  Is there an e=
asy way to propagate this information to my own custom layer, to affect my =
own sources?  Maybe my recipe needs to include certain conf files from othe=
r layers such as meta or the BSP layer?

This kind of macro is typically defined internally by gcc, depending
on the -mcpu etc options passed on the gcc command line, ie options
which are included in the ${CC} definition setup by OE.

Therefore all you normally need to do is ensure that the Makefiles etc
for the components in your custom layer all correctly respect OE's
definition of ${CC}.

A typical bug in handcrafted Makefiles is to force CC to (e.g. CC =3D
"$(CROSS_COMPILE)gcc") and lose the original value passed via the
environment.

> Currently, I notice that architecture-level symbols are available to my c=
ustom layer at compile time, such as __aarch64_ and __arm__, but not CPU tu=
ne information, such as __ARM_ARCH_6__.

The exact set of macros defined by gcc will vary depending on exactly
which ARMv6 CPU you are targeting (and to some extent, which version
of gcc you are using). If you have code which needs to be enabled for
any ARMv6 target then you may have to test multiple macros. For
example see the way in which openssl defines __ARM_ARCH__

  https://github.com/openssl/openssl/blob/master/crypto/arm_arch.h

> - Steve Pavao
> Korg R&D
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

