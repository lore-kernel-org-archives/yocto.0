Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 170F5E00AD7; Wed, 27 Jan 2016 07:02:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6397E00AB5
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 07:02:42 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id g73so21842900ioe.3
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 07:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=McK57dVmaeOFx98mpYtekzPRrCIkXVuVLcnxLbAkUwU=;
	b=PmdwSZFxe05fxRfAyd/h/Q2iTr7yS+1WBpuitpnQuAgwP125S6cJdu88+XXoylGOIZ
	0eQD6mSnhyNJyvc0sDWnWh9epqt4zeRYlUcUV8iKEUiTk7nOpg5TRFfmrOZDrO5iPwHS
	+8Gxv+LtrMzNAXcXVg+s6SJXowHjI8EHn8IvLisvKOCu/h0mJXftEHYvNglWZ6lsJf/y
	lJDnuZWStylzXPlqQ5GW+X8em3LvQ12zURt71ScptP+LT/0p9hitxRRAKcvOD3bZv0La
	I2Rb4gCcsjfqmxnp2A01D3BsHAQB56boTDUBu0wNiVPTprHsQ0Z+evkAXgkme2jVpzQh
	eDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=McK57dVmaeOFx98mpYtekzPRrCIkXVuVLcnxLbAkUwU=;
	b=LKgImtnuL6JlphD0ZgVcrIxNkuUNlj9Y2d9CQii/ylD+jbHqWwpz2LDjPUTUFrTjkn
	wnf4cPBJPtYMgKO5kr+NkXKKjAoC8IBQg8D7MZ+XOyoY4f0W933glfg9YwqsqlpzPDjT
	DgY/CbkYVjYxA0lNRCCSQoWp0GvRmDvdUKxhXC9K+uKwgfbDuw2XtOWgihrbxBe37gla
	HHL+y0eeUvyTQnAAe7GYaWcMfQEkF5hSxRf7Wazxk8HiR5xKWsC52UWeGl0fVITOZ+bZ
	g8rIYXysLvevUIH9jnlHmsNGyV21DyRcCYSVHJ3xLIL9lH0lOJhSkJsO5gdaahxyrls3
	QUHQ==
X-Gm-Message-State: AG10YOSphdxxe3amJpNHvCzsKNWpG/FodaoJBM3mrcI0z7Tqs/E1b+XeXgZbZ+glSxZFPlJpiOPejU9TY1GwNagr
X-Received: by 10.107.135.104 with SMTP id j101mr32471779iod.133.1453906961392;
	Wed, 27 Jan 2016 07:02:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 27 Jan 2016 07:02:22 -0800 (PST)
In-Reply-To: <CAFkk2KRbEnfcia1sq0keuFedUhMCNng3YWdbfCr=Osxw_qkeOQ@mail.gmail.com>
References: <CAFkk2KRbEnfcia1sq0keuFedUhMCNng3YWdbfCr=Osxw_qkeOQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Jan 2016 15:02:22 +0000
Message-ID: <CAJTo0LZFpfFzYAUf2En8r-amde0q23eNbzhHapTPUyeSREVYjA@mail.gmail.com>
To: Ulf Magnusson <ulfalizer@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Detecting missing build dependencies
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
X-List-Received-Date: Wed, 27 Jan 2016 15:02:44 -0000
Content-Type: multipart/alternative; boundary=001a113ebe92f8add3052a52174f

--001a113ebe92f8add3052a52174f
Content-Type: text/plain; charset=UTF-8

On 27 January 2016 at 14:45, Ulf Magnusson <ulfalizer@gmail.com> wrote:

> The only method I know of at the moment is to remove or rename tmp/ so
> that the build uses a fresh sysroot and then trying to rebuild the
> recipe. Is there something nicer? I think I remember reading about a
> script for testing for missing build dependencies, but I might be
> misremembering.
>

You're thinking of scripts/test-dependencies.sh.

Personally I just use wipe-sysroot (faster than deleting tmp) and
buildhistory-diff to verify build dependencies.

Ross

--001a113ebe92f8add3052a52174f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 January 2016 at 14:45, Ulf Magnusson <span dir=3D"ltr">&lt;<a href=3D=
"mailto:ulfalizer@gmail.com" target=3D"_blank">ulfalizer@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1q3" class=3D"a=
3s" style=3D"overflow:hidden">The only method I know of at the moment is to=
 remove or rename tmp/ so<br>
that the build uses a fresh sysroot and then trying to rebuild the<br>
recipe. Is there something nicer? I think I remember reading about a<br>
script for testing for missing build dependencies, but I might be<br>
misremembering.</div></blockquote></div><br>You&#39;re thinking of scripts/=
test-dependencies.sh.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Personally I just use wipe-sysroot (faster than deleting t=
mp) and buildhistory-diff to verify build dependencies.</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ebe92f8add3052a52174f--
