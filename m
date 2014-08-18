Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBE5BE007B5; Mon, 18 Aug 2014 07:30:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67A39E007AA
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 07:29:54 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id z11so4111154lbi.41
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 07:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=aTuFUhNSiPG/bbh3DJ5SF/gTPlDrLums0QuEuF5+kYc=;
	b=EKOPQ7NavX+DwGVQt5H73nj9t+ICl26GcNR59LjEBylLteuopeHZ1rVPS5Y60FM8rk
	TRkN+qJLbcciCIabw0yQ+NPbr9dT+jNgSbT71so49v2oRywTet5OeA2u2h2R4DGRyoke
	4qJfHRU1mXI5UjW/vwjFr1JAWqhScHq0oNGZjzndCuxcMeP5o7CI3neuCdmvE8SYy2cG
	PGPKXu9EiUDmSRf9lYW09wx5kKk9RPG/vmndP1wBVt5YpmvHJbLLafrzBgnCNnbKk4ng
	oOeYIS9wOejTBXXGFkczhbuBtcRGoM9fA99bauhn5rlmWQICqP1wGJ8uP8Ua7vQl/Abx
	me9A==
X-Received: by 10.112.209.36 with SMTP id mj4mr28816035lbc.26.1408372193794;
	Mon, 18 Aug 2014 07:29:53 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.43.42 with HTTP; Mon, 18 Aug 2014 07:29:33 -0700 (PDT)
In-Reply-To: <20140818134453.GE12992@gmail.com>
References: <20140818134453.GE12992@gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 18 Aug 2014 07:29:33 -0700
X-Google-Sender-Auth: TBiFgPIhN0H5B2xWspn7_AjfFDM
Message-ID: <CABcZANmKtKEC=VX2La83gpvQVA84yf6VdUvNXv412Nwjk_2zDA@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE Devel <openembedded-devel@lists.openembedded.org>
Subject: Re: toybox in OpenEmbedded
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
X-List-Received-Date: Mon, 18 Aug 2014 14:30:03 -0000
Content-Type: multipart/alternative; boundary=001a11c25eba52a20a0500e83457

--001a11c25eba52a20a0500e83457
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 18, 2014 at 6:44 AM, Paul Barker <paul@paulbarker.me.uk> wrote:

> I've been wanting to try out toybox within OpenEmbedded for quite a while
> and
> have finally found time to put a recipe together. Toybox is a BSD-licensed
> alternative to Busybox which may be of interest to a few people. It's
> still a
> work in progress but it already covers a large number of the basic
> commands a
> system needs. It should tie in well with the recent work Khem has done to
> enable
> the use of musl in OpenEmbedded as toybox and musl are often used together
> (e.g.
> Aboriginal Linux distro).
>
> My patches are currently against openembedded-core for convenience but this
> probably belongs in meta-oe for now. I've done some basic testing on
> qemuarm but
> nothing significant. toybox builds and installs correctly though and I've
> set
> ALTERNATIVE_PRIORITY = 60 so that it takes precedence over busybox tools.
>
> Removing toybox after it has been installed currently bricks the system
> though
> as the postrm script runs after '/bin/toybox' has been removed (so things
> like
> '/bin/ln' become broken links and the update-alternatives script can't
> run).
>

One option for that might be to try the C implementation of alternatives
that's provided in chkconfig, rather than cworth's shell version. I haven't
tested it in that context, but I doubt it runs so many external tools.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c25eba52a20a0500e83457
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Aug 18, 2014 at 6:44 AM, Paul Barker <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk</=
a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":2cp" class=3D"a3s" style=3D"over=
flow:hidden">I&#39;ve been wanting to try out toybox within OpenEmbedded fo=
r quite a while and<br>


have finally found time to put a recipe together. Toybox is a BSD-licensed<=
br>
alternative to Busybox which may be of interest to a few people. It&#39;s s=
till a<br>
work in progress but it already covers a large number of the basic commands=
 a<br>
system needs. It should tie in well with the recent work Khem has done to e=
nable<br>
the use of musl in OpenEmbedded as toybox and musl are often used together =
(e.g.<br>
Aboriginal Linux distro).<br>
<br>
My patches are currently against openembedded-core for convenience but this=
<br>
probably belongs in meta-oe for now. I&#39;ve done some basic testing on qe=
muarm but<br>
nothing significant. toybox builds and installs correctly though and I&#39;=
ve set<br>
ALTERNATIVE_PRIORITY =3D 60 so that it takes precedence over busybox tools.=
<br>
<br>
Removing toybox after it has been installed currently bricks the system tho=
ugh<br>
as the postrm script runs after &#39;/bin/toybox&#39; has been removed (so =
things like<br>
&#39;/bin/ln&#39; become broken links and the update-alternatives script ca=
n&#39;t run).</div></blockquote></div><br></div><div class=3D"gmail_extra">=
One option for that might be to try the C implementation of alternatives th=
at&#39;s provided in chkconfig, rather than cworth&#39;s shell version. I h=
aven&#39;t tested it in that context, but I doubt it runs so many external =
tools.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c25eba52a20a0500e83457--
