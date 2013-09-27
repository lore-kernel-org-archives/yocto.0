Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73B3FE01652
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 00:11:58 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id n12so2215715wgh.3
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 00:11:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=69+erdl4KOz5gMx2FdQXkdQniocG5IParp2gkELqZVw=;
	b=FHOOln0Qr20+xNQaEHbboUFxXqPgE1/GWiNmwIwBnLhoDLtEPeIKv55tWi4FGjtFM2
	41gYH3e8V5qaMAarsKwLWmhIY/OvlarGAUUpI7pBylHWadjEdTPE9nSlnmG+fEbYbgYn
	6aQ14FDosoEuI0M7G42Rise9dDgelbE7sDLay0d+/AQLt5Mp2qZzHAkrOhjmbKWGINkK
	3Wq6lcKzsdwRilZmBypYLnl4puGYWFnh+OkyRxVGOpNZVf6ELlZFAQdknGZGcex92YFi
	vukwtlZDj3yxWnwZbJhm8h9ntEvGlbf/gj3nm/1tSX0obJW+wdwwMAGIs2xqn2ic1cxa
	RNhA==
X-Gm-Message-State: ALoCoQlFWsQX/udACvYHyM2SR6emQA4CX8uzx8JlmXk34X0cnB81o2BOcxr1b/x818L+eO2cwxau
X-Received: by 10.180.160.240 with SMTP id xn16mr1301280wib.62.1380265916919; 
	Fri, 27 Sep 2013 00:11:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.74.46 with HTTP; Fri, 27 Sep 2013 00:11:36 -0700 (PDT)
In-Reply-To: <CAFyqS9qLLgCd=dCKQB436XxHar8uKFUZzgDSEoHb-EMPf+3DSQ@mail.gmail.com>
References: <E51394554A503C4E852F9BEE46B03E8DF039C2@TI-ODIN.tasernet.com>
	<CAP71Wjx4KQtfiEG4a4kin6XAtu9fMwZON6cNDgHDwJksef_H4w@mail.gmail.com>
	<E51394554A503C4E852F9BEE46B03E8DF03B46@TI-ODIN.tasernet.com>
	<CAFyqS9qLLgCd=dCKQB436XxHar8uKFUZzgDSEoHb-EMPf+3DSQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 27 Sep 2013 09:11:36 +0200
Message-ID: <CAP71WjzYWGwLBpOzXF7q=R4YOx_++Ef_JGM1=j44FoUr1omKLQ@mail.gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about automatic debug package generation
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
X-List-Received-Date: Fri, 27 Sep 2013 07:12:01 -0000
Content-Type: multipart/alternative; boundary=047d7b6251b0adfae804e7583385

--047d7b6251b0adfae804e7583385
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 27, 2013 at 8:49 AM, Hans Beck=E9rus <hans.beckerus@gmail.com>w=
rote:

> Actually, I have a related question. If you choose to install -dbg
> variants, you will get a .debug folder copied to the target.
> That .debug folder can then be pointed out by debuggers etc. to get
> the symbol information, right?
> How can the package handler know what files to strip? Does it use some
> simple file magic match? I have a case now for which I made a set of
> working recipes for Erlang. Erlang .beam files also contain symbols
> that can be stripped, but not the conventional way. I guess I need to
> add something to the do_package phase to compensate for that, but will
> it interfere with what is done in package.bbclass?
>

it would strip 'unstripped ELF files' that are found in the install
directory, and kernel modules too. there is some logic to get the list of
all files that need to be stripped in the function i mentioned above. you
cannot give a list of 'additional' files that need to be stripped.

if you need to strip with unconventional strip tools, you can surely do
that in your own recipe (or class), and modify FILES_{PN}-dbg to include
those, assuming you don't process the same files than package.bbclass,
there shouldn't be any issue.

--047d7b6251b0adfae804e7583385
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Sep 27, 2013 at 8:49 AM, Hans Beck=E9rus <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gmai=
l.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":13j" style=3D"overflow:hidden">A=
ctually, I have a related question. If you choose to install -dbg<br>
variants, you will get a .debug folder copied to the target.<br>
That .debug folder can then be pointed out by debuggers etc. to get<br>
the symbol information, right?<br>
How can the package handler know what files to strip? Does it use some<br>
simple file magic match? I have a case now for which I made a set of<br>
working recipes for Erlang. Erlang .beam files also contain symbols<br>
that can be stripped, but not the conventional way. I guess I need to<br>
add something to the do_package phase to compensate for that, but will<br>
it interfere with what is done in package.bbclass?</div></blockquote></div>=
<br>it would strip &#39;unstripped ELF files&#39; that are found in the ins=
tall directory, and kernel modules too. there is some logic to get the list=
 of all files that need to be stripped in the function i mentioned above. y=
ou cannot give a list of &#39;additional&#39; files that need to be strippe=
d.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">if you need=
 to strip with unconventional strip tools, you can surely do that in your o=
wn recipe (or class), and modify FILES_{PN}-dbg to include those, assuming =
you don&#39;t process the same files than package.bbclass, there shouldn&#3=
9;t be any issue.</div>

<div class=3D"gmail_extra"><br></div></div>

--047d7b6251b0adfae804e7583385--
