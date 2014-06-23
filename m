Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6871AE003C1; Mon, 23 Jun 2014 09:50:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3283E00282
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 09:50:03 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id u10so4928410lbd.36
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 09:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=02TFJAJM4WgpT8GThkJEFp5gA6RLimZeL64j4gwX/2E=;
	b=vJ9RnalgF/jUle0WGOQJC7CC5DBs2YaTTdpY97HQDCJR5Gcc0ll0c5YGQFxTHMdlfl
	wprw4geJwBH3qhH3X4DhKOumKkwu4cWhII8CiBYpUGPCI22z5fU3357yYmW5ks97s39X
	N9igZQefmdX/9v3vgqXHs+8iqsn6QdwqnvbinH0+EwcKmssW3Budtfn6xje6RSz0mH1W
	QxVxatrWdPyNFLTzgmzXc4dnztEGDiDH2gCweEme320uVMkCShJ0BwLmI9Uo3P7h1+z6
	3Mz1GI80ds6GdGeeU3xLtjFJkADy3aQfBh9tl2ALc4iJEdj+QMScLfRLygD9YFJ30cuK
	3Onw==
X-Received: by 10.112.13.137 with SMTP id h9mr17293196lbc.33.1403542202091;
	Mon, 23 Jun 2014 09:50:02 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.31.165 with HTTP; Mon, 23 Jun 2014 09:49:41 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1406220901500.2299@localhost>
References: <alpine.LFD.2.11.1406220901500.2299@localhost>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 23 Jun 2014 09:49:41 -0700
X-Google-Sender-Auth: mmXr1iIbbm2a9EJX8uFHN5ZxA40
Message-ID: <CABcZANkjcW8-3fG9VpzEzGTnz401uXAuXumTCdU0QO9s5MemFQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: the apparent need for docbook <replaceable> tag in manual examples
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
X-List-Received-Date: Mon, 23 Jun 2014 16:50:10 -0000
Content-Type: multipart/alternative; boundary=001a11c3d10a620ec104fc83a2ef

--001a11c3d10a620ec104fc83a2ef
Content-Type: text/plain; charset=UTF-8

On Sun, Jun 22, 2014 at 6:20 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>   as i said, it took me a few minutes to figure out what the
> conditional metadata example above was trying to demonstrate, but as
> soon as i saw a real example in the codebase, it was perfectly clear.
> to this end, i'm creating wiki pages that show stuff like that
> exactly, like this one for conditional overrides:
>

It's not directly related, but here's some background if it helps anyone at
all.

Conceptually, when we designed overrides, it was created to let us
implement layering of metadata (note: not layers as in yocto layers, but
conceptual layers), to let us always let more specific information be used
in preference to less specific information. Machine information will be
used in preference to Architecture which is used in preference to the
default. This lets us ensure that we're always using the most accurate
information available about the configuration in question.

I've always thought that thinking of it this way helps one see the purpose
behind the mechanism (and you can see that the order of the
includes/requires in bitbake.conf essentially implements the same ordering
where possible, to provide the same capability based on load order of the
config files). I'm not sure if any of our docs talk about it this way, and
I'm not sure if it helps anyone else wrap their heads around it, but I'm
throwing it out there since I've found that some folks seem to find it a
useful way of looking at it.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c3d10a620ec104fc83a2ef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Jun 22, 2014 at 6:20 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a =
href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.=
ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":1k4" class=3D"a3s" style=3D"over=
flow:hidden">=C2=A0 as i said, it took me a few minutes to figure out what =
the<br>
conditional metadata example above was trying to demonstrate, but as<br>
soon as i saw a real example in the codebase, it was perfectly clear.<br>
to this end, i&#39;m creating wiki pages that show stuff like that<br>
exactly, like this one for conditional overrides:</div></blockquote></div><=
br></div><div class=3D"gmail_extra">It&#39;s not directly related, but here=
&#39;s some background if it helps anyone at all.<br></div><div class=3D"gm=
ail_extra">

<br></div><div class=3D"gmail_extra">Conceptually, when we designed overrid=
es, it was created to let us implement layering of metadata (note: not laye=
rs as in yocto layers, but conceptual layers), to let us always let more sp=
ecific information be used in preference to less specific information. Mach=
ine information will be used in preference to Architecture which is used in=
 preference to the default. This lets us ensure that we&#39;re always using=
 the most accurate information available about the configuration in questio=
n.<br>

<br></div><div class=3D"gmail_extra">I&#39;ve always thought that thinking =
of it this way helps one see the purpose behind the mechanism (and you can =
see that the order of the includes/requires in bitbake.conf essentially imp=
lements the same ordering where possible, to provide the same capability ba=
sed on load order of the config files). I&#39;m not sure if any of our docs=
 talk about it this way, and I&#39;m not sure if it helps anyone else wrap =
their heads around it, but I&#39;m throwing it out there since I&#39;ve fou=
nd that some folks seem to find it a useful way of looking at it.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c3d10a620ec104fc83a2ef--
