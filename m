Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86761E00CEC; Thu, 21 Apr 2016 06:32:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B0EAE00B6F
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 06:32:11 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id k142so83523914oib.1
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 06:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=rBbkGA5dTP+xLI8iRqk98EhNhLvo8s6W4LsCCFNIzQ8=;
	b=da/2dw4jGQwvdcMZKRytw5k//zpzHekmj2ApFo/oCHW/+ZaZ9enM7ODKx7P1KCcjJz
	kcxOci/9zxGVROMeoiaP8GMoqSrYxIfKL9uHCg9kUCSCZ3sSnZ/vV5P3lABCEBWrGxc2
	cuO/UVrusJdcIV4BIkAqYgDx/doAO5GJtTwK2MmCpKKbKW33a0mJhe+Aakh3jLK81gjr
	STdwJJSun3el9VcaWHgSX8E/Fx3j1kOIxdJW52GTxE3niGE0GyqkIeAEPAE5VTlLKwba
	SJoGW4JL3xZgUG1W+PU7WJt7moxdhqsoTLTe8g3Q5Zx6HHd8RK6tnvK4BecsdpUsahRa
	YfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=rBbkGA5dTP+xLI8iRqk98EhNhLvo8s6W4LsCCFNIzQ8=;
	b=U60ajKehfTm6GJS3WNwfilBFawYYLj/qFq/pt8YeWu4sL6PHLpR/ZdKXa3A6ZItKC2
	bLhjJrmceMTrlqPldf+aZP9/G2BXjgVqZMP+E4hhEDyggR5qUE1cDCsweWJBn7xUIY9E
	6nLu5EMFfOfhbTvW7BzRDRz66jdul51HzThZWj+gwxwLnDtFaDTAK8a6iDI7vIdg6zxk
	i+CGe/2/FZSx4HYfxX3OAAlbbM3Mbsfl49/H5d5fnplP2sh2XMWRz6aha3l1Sht6mp5K
	9a1RXz7FWXTWnqR9Fsk/xhQRpEUHJLrS/2gfZ5B5Ev0puwMVJ4UyHZyHnb8bO694k4q/
	lDGg==
X-Gm-Message-State: AOPr4FU6vedmZ0yeCNxz77JE4mSwmdFwTmGCnZEWWyTqm8QXw8IPQQKW8UYH6QwzwPxC6lmtP9fxE3CrLFIvDw==
MIME-Version: 1.0
X-Received: by 10.202.170.65 with SMTP id t62mr5341198oie.60.1461245530603;
	Thu, 21 Apr 2016 06:32:10 -0700 (PDT)
Received: by 10.157.32.135 with HTTP; Thu, 21 Apr 2016 06:32:10 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1604210456050.10388@localhost.localdomain>
References: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
	<20160420180421.GD2561@jama>
	<alpine.LFD.2.20.1604201418060.31154@localhost.localdomain>
	<CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
	<alpine.LFD.2.20.1604201830390.30638@localhost.localdomain>
	<CADkTA4Pga=V5+dozKb4tiZXTmBVPSZ3z5tw+zo_4kgssAy1kMQ@mail.gmail.com>
	<alpine.LFD.2.20.1604210456050.10388@localhost.localdomain>
Date: Thu, 21 Apr 2016 09:32:10 -0400
Message-ID: <CADkTA4ONLXwfCMOOQEpvbDicf68eR3+c+5PF3htiHja32yK3Gg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a known issue with how SRC_URI uses OVERRIDES to locate .scc files?
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
X-List-Received-Date: Thu, 21 Apr 2016 13:32:16 -0000
Content-Type: multipart/alternative; boundary=001a113c352cc80a420530febc61

--001a113c352cc80a420530febc61
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 21, 2016 at 4:59 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Wed, 20 Apr 2016, Bruce Ashfield wrote:
>
> >
> >
> > On Wed, Apr 20, 2016 at 6:37 PM, Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> >       On Wed, 20 Apr 2016, Bruce Ashfield wrote:
> >
> >       > You haven't supplied your SRC_URI in the question ... what does
> it
> >       > look like ?
> >       >
> >       > It has no relation to the SRC_URI, probably a run of the mill
> bug in
> >       > the processing code. I'd suggest taking it up with Wind River
> >       > support.
> >       >
> >       > Alternatively, if you have this somewhere that I clone and
> launch a
> >       > test build, I can help you out .. but I won't be able to easily
> >       > reproduce that situation from scratch.
> >
> >         ok, i found what appears to be a cheap workaround for this, and
> i'm
> >       curious if this makes any sense.  recall original kernel recipe
> >       directory structure:
> >
> >         linux-windriver/
> >           uio.*
> >           ssd.*
> >           mxeiii/
> >             mm.*
> >
> >       when SRC_URI mentioned only that first-level stuff (uio, ssd), then
> >       the configure step worked fine. but as soon as i added the mm.scc
> file
> >       to SRC_URI, it just seems that any descent into a lower-level
> >       directory based on OVERRIDES totally bones the search process. so,
> i
> >       wondered, how can i work around this?
> >
> >         oh, wait, no problem. see, all target boards are powerpc, so
> >       "powerpc" is one of the possible OVERRIDES. obviously, there is no
> >       *actual* value in using an OVERRIDE for which *every* *single*
> *board*
> >       is compatible ... oh, wait, there is.
> >
> >         so i restructured:
> >
> >         linux-windriver/
> >           mxeiii/
> >             mm.*
> >           powerpc/
> >             uio.*
> >             ssd.*
> >
> >       it looks idiotic to take the uio.* and ssd.* content, which should
> be
> >       generic, and deliberately put it in a subdirectory, unless that
> >       subdirectory represents an OVERRIDE which matches every board and,
> ta
> >       da, solves the problem.
> >
> >         i need a drink.
> >
> >
> > Following up to the list. I was able to take a reproducer for this
> > and indeed find some *really* old code that didn't handle a trailing
> > / properly. The end result was the inability to find the
> > configuration fragments that were not in subdirectories.
>
>   just to be clear, there was no problem finding config fragments that
> were not in subdirectories until i somehow triggered the bug by
> *adding* an item that *was* in a subdirectory, and that's when things
> went to hell.
>
>   so the "bug" apparently never manifested itself until i triggered it
> by doing something else. does that sound about right?
>

Correct. The subdirs were getting a trailing / and hence when the fragments
were
all gathered up (in case the original location is remote), they were being
dumped
into .kernel-meta/cfg/<the absolute path to the fragment>/foo.cfg.

Later on the configuration was looking for them in just <subdir>/foo.cfg ..
and
couldn't find them.

Bloody trailing slashes!

Bruce


>
> rday




-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a113c352cc80a420530febc61
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Apr 21, 2016 at 4:59 AM, Robert P. J. Day <span dir=3D"ltr">&lt=
;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcou=
rse.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"HOEnZb"><div class=3D"h5">On Wed, 20 Apr 2016, Bruce Ashfield wrote:<br=
>
<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Apr 20, 2016 at 6:37 PM, Robert P. J. Day &lt;<a href=3D"mailt=
o:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Wed, 20 Apr 2016, Bruce Ashfield wrote:<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You haven&#39;t supplied your SRC_URI i=
n the question ... what does it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; look like ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; It has no relation to the SRC_URI, prob=
ably a run of the mill bug in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; the processing code. I&#39;d suggest ta=
king it up with Wind River<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; support.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Alternatively, if you have this somewhe=
re that I clone and launch a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; test build, I can help you out .. but I=
 won&#39;t be able to easily<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; reproduce that situation from scratch.<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 ok, i found what appears to be a chea=
p workaround for this, and i&#39;m<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0curious if this makes any sense.=C2=A0 recal=
l original kernel recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0directory structure:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 linux-windriver/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 uio.*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 ssd.*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 mxeiii/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 mm.*<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0when SRC_URI mentioned only that first-level=
 stuff (uio, ssd), then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the configure step worked fine. but as soon =
as i added the mm.scc file<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0to SRC_URI, it just seems that any descent i=
nto a lower-level<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0directory based on OVERRIDES totally bones t=
he search process. so, i<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wondered, how can i work around this?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 oh, wait, no problem. see, all target=
 boards are powerpc, so<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;powerpc&quot; is one of the possible O=
VERRIDES. obviously, there is no<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*actual* value in using an OVERRIDE for whic=
h *every* *single* *board*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0is compatible ... oh, wait, there is.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 so i restructured:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 linux-windriver/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 mxeiii/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 mm.*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 powerpc/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 uio.*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 ssd.*<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it looks idiotic to take the uio.* and ssd.*=
 content, which should be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0generic, and deliberately put it in a subdir=
ectory, unless that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0subdirectory represents an OVERRIDE which ma=
tches every board and, ta<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0da, solves the problem.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 i need a drink.<br>
&gt;<br>
&gt;<br>
&gt; Following up to the list. I was able to take a reproducer for this<br>
&gt; and indeed find some *really* old code that didn&#39;t handle a traili=
ng<br>
&gt; / properly. The end result was the inability to find the<br>
&gt; configuration fragments that were not in subdirectories.<br>
<br>
</div></div>=C2=A0 just to be clear, there was no problem finding config fr=
agments that<br>
were not in subdirectories until i somehow triggered the bug by<br>
*adding* an item that *was* in a subdirectory, and that&#39;s when things<b=
r>
went to hell.<br>
<br>
=C2=A0 so the &quot;bug&quot; apparently never manifested itself until i tr=
iggered it<br>
by doing something else. does that sound about right?<br></blockquote><div>=
<br></div><div>Correct. The subdirs were getting a trailing / and hence whe=
n the fragments were</div><div>all gathered up (in case the original locati=
on is remote), they were being dumped</div><div>into .kernel-meta/cfg/&lt;t=
he absolute path to the fragment&gt;/foo.cfg.</div><div><br></div><div>Late=
r on the configuration was looking for them in just &lt;subdir&gt;/foo.cfg =
.. and</div><div>couldn&#39;t find them.=C2=A0</div><div><br></div><div>Blo=
ody trailing slashes!</div><div><br></div><div>Bruce</div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
rday</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature">&quot;Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end&quot;</div>
</div></div>

--001a113c352cc80a420530febc61--
