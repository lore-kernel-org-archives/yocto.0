Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE259E00DAA; Thu,  4 Jan 2018 08:16:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F9B6E00D90
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 08:16:02 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id c16so2843019itc.5
	for <yocto@yoctoproject.org>; Thu, 04 Jan 2018 08:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZyCqpk7rs3hUTQR+cdX2oYHQ+JjrhhR4TrM19X8r0FM=;
	b=p+HWKgV8KSessa0Wq5Yo7/F8V2SeBe8vpRfBZ1kRC7PStwjbyt3jnUQFAWkHODKOCR
	4D9baU91mVq/qvvohrf01PpiygwwRN29k9bKFwOdw4/qGfm3OuNqDTTUUglvCo8WexaM
	CxlqupzbVLQeYS/boMBktGlfQvo3bsS2lGufK23VM/WH73LoaynYcnln0GlxkRC7JK8q
	+upa8Et4EjQrw1IjDJEz5IrFz1e10UHb9Z+Hwsz0Bcfklv5aX9MO21lm+3XSuzXh/aDX
	e1MJipOeraIXcHf8hYKFqtfQrR180OMfky3ZihfUAjAzWDBa2hdDPKrNwDZCMmz70Key
	LFIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZyCqpk7rs3hUTQR+cdX2oYHQ+JjrhhR4TrM19X8r0FM=;
	b=cP22gJL7AI68cy+KFRtqGXcBjYQYnCxDxdWYJ+7amOFeLoqpNNnS3Ejj2TdFpj3Onj
	zc8TBBUUHjieXW8IuYJENTGfqC7liAGHaxJGPHmNCsOFhoc9msQdDvCBqKCplj18PwKg
	bzM6MQVZWjZsli+3s9KAjOd27xpiIlWvT+ZoDPIE0Ghu6uy3bWTqeLKGIIGkbAkxF4Cr
	kk/rhlrLUFgPbeGJLrnad3AL92koAb1bjOZ+h7nWgAAl5S5UhhpucI6pBc4AtdpYcCGe
	+wtbq/7gdqvxPyVIc6c+L20BiWvuOubVorurVdzjfJe4nMp3lr2WxdA2t2w5Q4CakqQW
	Zn8A==
X-Gm-Message-State: AKGB3mL7/BTEd4A8lzKbUOYmXv6Q7X9Ufd3X4zzUEwm+KiuhcBtod9II
	22nOWjqY7ZM68QwINBdBJPubW9Sltv8FaPSTXoPa6Q==
X-Google-Smtp-Source: ACJfBouO5Z0wAFdDGQOaNJIZzxkI3px8qWtA7Rpvs+ojCLLss5cthjlcIB1vG2W2EXFns+1K9OuPUrG+gB3NYzd5LtE=
X-Received: by 10.36.145.143 with SMTP id i137mr5601ite.6.1515082562120; Thu,
	04 Jan 2018 08:16:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.34.133 with HTTP; Thu, 4 Jan 2018 08:15:41 -0800 (PST)
In-Reply-To: <CAOLNbFYp+U3gJbkWuw-7ViGHzsbLFSEb01P5QREjPPgHb1CV=Q@mail.gmail.com>
References: <CAOLNbFYp+U3gJbkWuw-7ViGHzsbLFSEb01P5QREjPPgHb1CV=Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Jan 2018 16:15:41 +0000
Message-ID: <CAJTo0LZBqz2YrH5YFBcdOyK98_ngoEMSKpD=i1iimuy6tb2BgA@mail.gmail.com>
To: Rail Shafigulin <rail@esenciatech.com>
Cc: yocto@yoctoproject.org
Subject: Re: running autoreconf during a configuration step
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
X-List-Received-Date: Thu, 04 Jan 2018 16:16:03 -0000
Content-Type: multipart/alternative; boundary="94eb2c0ef16eebc88e0561f5a57a"

--94eb2c0ef16eebc88e0561f5a57a
Content-Type: text/plain; charset="UTF-8"

On 4 January 2018 at 15:45, Rail Shafigulin <rail@esenciatech.com> wrote:

> I'm somewhat new to Yocto. Trying to build libsoc,
> https://github.com/jackmitch/libsoc. The steps are outlined here,
> https://github.com/jackmitch/libsoc#manually-building. The first one
> is to run autoreconf -i. I've been looking through documentation but
> didn't find anything on how to do it. Is there an EXTRA_OE<something>
> variable? I did run bitbake -e | grep EXTRA_OE but didn't the only one
> that is remotely related to it is EXTRA_OECONFIG, but it is for
> ./configure step. I would appreciate any help with it.
>

The autotools class will run autoreconf and then configure, so you just
need to inherit that class.

Ross

--94eb2c0ef16eebc88e0561f5a57a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 4 January 2018 at 15:45, Rail Shafigulin <span dir=3D"l=
tr">&lt;<a href=3D"mailto:rail@esenciatech.com" target=3D"_blank">rail@esen=
ciatech.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;m somewhat new to Yoc=
to. Trying to build libsoc,<br>
<a href=3D"https://github.com/jackmitch/libsoc" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/jackmitch/<wbr>libsoc</a>. The steps are out=
lined here,<br>
<a href=3D"https://github.com/jackmitch/libsoc#manually-building" rel=3D"no=
referrer" target=3D"_blank">https://github.com/jackmitch/<wbr>libsoc#manual=
ly-building</a>. The first one<br>
is to run autoreconf -i. I&#39;ve been looking through documentation but<br=
>
didn&#39;t find anything on how to do it. Is there an EXTRA_OE&lt;something=
&gt;<br>
variable? I did run bitbake -e | grep EXTRA_OE but didn&#39;t the only one<=
br>
that is remotely related to it is EXTRA_OECONFIG, but it is for<br>
./configure step. I would appreciate any help with it.<br></blockquote><div=
><br></div><div>The autotools class will run autoreconf and then configure,=
 so you just need to inherit that class.</div><div><br></div><div>Ross=C2=
=A0</div></div></div></div>

--94eb2c0ef16eebc88e0561f5a57a--
