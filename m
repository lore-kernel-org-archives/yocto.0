Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EB89E007A0; Fri, 22 Aug 2014 04:15:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DA61E00796
	for <yocto@yoctoproject.org>; Fri, 22 Aug 2014 04:15:26 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id l6so10478834qcy.25
	for <yocto@yoctoproject.org>; Fri, 22 Aug 2014 04:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZBtIrq7Yl7JYmo45Gx25b6srF732Sqq0cmPguD0SYP8=;
	b=l/g80kvll7hyQiEzBBf7zoLDOoCIagRe56a8Web5fKIQPKMsgsJ5T/0/XJ+RVY3P/F
	RXp8QKXj3EjG/twj5s3iMS5K9vt46DBbqevsi+s2Bhdymqq5aq9QENcDdXNxMdzuGcQh
	/NfFRf6lSKAFdD4DL0kZJ7hZs7D1X2nICaXgZZqU9TY5dd0ygWgxQ3Ev4hj2x5i/EvZe
	aftLiMXFi1YpToKjg60mvnUigohhHjTvHBRImx6GwK48gj6albJ8nFUxtlSJAwWCeQo5
	FfdPn146EqbRVaBTEstLZUefQhDC9rbVL5jffT2G9OF4O5wEHoDZCtbLJdSJ5ObXRQcl
	RwUA==
X-Received: by 10.140.41.38 with SMTP id y35mr6139864qgy.69.1408706125910;
	Fri, 22 Aug 2014 04:15:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Fri, 22 Aug 2014 04:15:04 -0700 (PDT)
In-Reply-To: <5777242.Xr7uNq0FsT@peggleto-mobl5.ger.corp.intel.com>
References: <CAL7ttbfhyeXxh1xHkAreqJG8_kBd8ND6wkiBSb3Jt2Ry1=MUig@mail.gmail.com>
	<5777242.Xr7uNq0FsT@peggleto-mobl5.ger.corp.intel.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 22 Aug 2014 08:15:04 -0300
Message-ID: <CAMCfZKHZuhdhAobG5TeDJGORVK+R7WbtZ5KvoMsJ3XdkK1OUNQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: should systemd be considered harmful ?
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
X-List-Received-Date: Fri, 22 Aug 2014 11:15:32 -0000
Content-Type: multipart/alternative; boundary=001a11c135ce3a591e050135f4a4

--001a11c135ce3a591e050135f4a4
Content-Type: text/plain; charset=ISO-8859-1

Paul,

On Fri, Aug 22, 2014 at 8:00 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Alex,
>
> On Wednesday 20 August 2014 18:53:10 Alex Damian wrote:
> > In release 216, systemd includes a caching nameserver, and full TTY
> stream
> > parsing. See details
> >
> >
> http://lists.freedesktop.org/archives/systemd-devel/2014-August/022295.html
> >
> > I think the ever growing number of components in systemd will create
> > conflicts with the normal tools, like libresolv, used in traditional UNIX
> > systems.
> >
> > I think the number of components shipped with and required by systemd is
> > pretty outside the scope for an init system.
> >
> > I would argue that the monolithic systemd is not in line with the UNIX
> > philosophy of small tools that do one thing and do it well, and that it
> is
> > actually contra-productive to use it in embedded systems due to the large
> > number of dependencies needed to get it to run, as well as the difficulty
> > to debug when something goes amiss.
> >
> > Can I get your opinions in the respect that systemd is a useful tool to
> > have in the Yocto Project ?
>
> One of the things that OpenEmbedded (and by extension, the Yocto Project)
> emphasises is flexibility. We support three packaging backends for
> example. It
> has to be this way - the systems we are targeting vary greatly in size,
> scope,
> and application. The OS produced by our build system may not always
> necessarily resemble a traditional Linux or even Unix system.
>
> As far as init goes, for some devices, you can get by with sysvinit. Others
> can do with much less - e.g. a single sequential script for initialising
> the
> device and starting services. Others still need something more dynamic and
> robust, and those are the things systemd is designed to handle better. We
> need
> to cater for all of these, so we have little choice but to support systemd
> and
> do so properly. That does mean that the build system has to understand what
> functions systemd provides and where other software that might otherwise
> provide that functionality is not needed and thus should not be installed
> when
> systemd is being used.
>
> I know a lot of people hold the view that systemd is rolling in too many
> functions that are already handled elsewhere, and it has seemed that way
> to me
> at times. It may be worth taking a look over this blog post if you haven't
> already though:
>
> http://0pointer.de/blog/projects/the-biggest-myths
>

Thanks for the link. It's really helpful.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c135ce3a591e050135f4a4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Paul,</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Fri, Aug 22, 2014 at 8:00 AM, Paul=
 Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel=
.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:=
<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":4d3" class=3D"a3s" style=3D"over=
flow:hidden">Hi Alex,<br>
<div><div class=3D""><br>
On Wednesday 20 August 2014 18:53:10 Alex Damian wrote:<br>
&gt; In release 216, systemd includes a caching nameserver, and full TTY st=
ream<br>
&gt; parsing. See details<br>
&gt;<br>
&gt; <a href=3D"http://lists.freedesktop.org/archives/systemd-devel/2014-Au=
gust/022295.html" target=3D"_blank">http://lists.freedesktop.org/archives/s=
ystemd-devel/2014-August/022295.html</a><br>
&gt;<br>
&gt; I think the ever growing number of components in systemd will create<b=
r>
&gt; conflicts with the normal tools, like libresolv, used in traditional U=
NIX<br>
&gt; systems.<br>
&gt;<br>
&gt; I think the number of components shipped with and required by systemd =
is<br>
&gt; pretty outside the scope for an init system.<br>
&gt;<br>
&gt; I would argue that the monolithic systemd is not in line with the UNIX=
<br>
&gt; philosophy of small tools that do one thing and do it well, and that i=
t is<br>
&gt; actually contra-productive to use it in embedded systems due to the la=
rge<br>
&gt; number of dependencies needed to get it to run, as well as the difficu=
lty<br>
&gt; to debug when something goes amiss.<br>
&gt;<br>
&gt; Can I get your opinions in the respect that systemd is a useful tool t=
o<br>
&gt; have in the Yocto Project ?<br>
<br>
</div></div>One of the things that OpenEmbedded (and by extension, the Yoct=
o Project)<br>
emphasises is flexibility. We support three packaging backends for example.=
 It<br>
has to be this way - the systems we are targeting vary greatly in size, sco=
pe,<br>
and application. The OS produced by our build system may not always<br>
necessarily resemble a traditional Linux or even Unix system.<br>
<br>
As far as init goes, for some devices, you can get by with sysvinit. Others=
<br>
can do with much less - e.g. a single sequential script for initialising th=
e<br>
device and starting services. Others still need something more dynamic and<=
br>
robust, and those are the things systemd is designed to handle better. We n=
eed<br>
to cater for all of these, so we have little choice but to support systemd =
and<br>
do so properly. That does mean that the build system has to understand what=
<br>
functions systemd provides and where other software that might otherwise<br=
>
provide that functionality is not needed and thus should not be installed w=
hen<br>
systemd is being used.<br>
<br>
I know a lot of people hold the view that systemd is rolling in too many<br=
>
functions that are already handled elsewhere, and it has seemed that way to=
 me<br>
at times. It may be worth taking a look over this blog post if you haven&#3=
9;t<br>
already though:<br>
<br>
<a href=3D"http://0pointer.de/blog/projects/the-biggest-myths" target=3D"_b=
lank">http://0pointer.de/blog/projects/the-biggest-myths</a><br></div></blo=
ckquote></div><br>Thanks for the link. It&#39;s really helpful.</div><div c=
lass=3D"gmail_extra">

<br><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></d=
iv>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=
=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_med=
ium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blan=
k">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c135ce3a591e050135f4a4--
