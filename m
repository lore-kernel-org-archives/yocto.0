Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 978C3E00524
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 16:03:31 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id p27so2586748qat.14
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 16:03:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=k5dsVlQezxB7QhMYHdF089oJjSwPXO3GmWJ/wCrg8c8=;
	b=GexIXEdE/s1x3KXB6xqk2U8pU5qfQKpcByubHhmjuhT3KaagO/J+CB459CZxW30Seb
	4/aq1SSH0Qk3spYXKXk/K1Ug0MkhjeghhOss4rhksHP0q0sv2RAvZ4094wdYGcwDXAJt
	6m4JYPk9KYblpK2zdV6J3warIcWhl8KBbHwyDvtkyQKwi5CLmnuSsyHKRh/fs5fzHMvr
	m+PKre26NGdIYkPzKUbTbOZ5PmFmzsGMRg9TKy/Cznvb9tOvBUbOhi0Fyzbx/JgCNkj0
	tnbPb1TTQXW7LhSkP5j6Ri9SNNo2ww1Lo7tNcD0P3tbM3uUlkhjsGvN2oZ4tqdVdTqcP
	f+GA==
MIME-Version: 1.0
Received: by 10.49.17.106 with SMTP id n10mr15230334qed.64.1349305408566; Wed,
	03 Oct 2012 16:03:28 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Wed, 3 Oct 2012 16:03:28 -0700 (PDT)
In-Reply-To: <CC922B79.368%PatrickTurley@gamestop.com>
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
Date: Wed, 3 Oct 2012 16:03:28 -0700
X-Google-Sender-Auth: tbFBCs7TU0PpcFedWSMSzAVpvE0
Message-ID: <CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
X-Gm-Message-State: ALoCoQnhSVmVejJ0cuS0SVdQ4QBMOCystMfGNyBpORcxwTnCLX2Jt0yxzc5lD3gSxO7OuaIY3RUA
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The BitBake equivalent of "Hello, World!"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 23:03:31 -0000
Content-Type: multipart/alternative; boundary=047d7bea356c92347604cb2fa534

--047d7bea356c92347604cb2fa534
Content-Type: text/plain; charset=ISO-8859-1

Hi Patrick,

I think I understand what you are looking for. I created this Bitbake Hello
World for a training class. It just uses 'raw' Bitbake and a very basic
recipe to build the Nano editor (including download from the project site).

You need to have a couple of things in place to make this work. I got to
run but I will get back to it and post it.

:rjs

On Wed, Oct 3, 2012 at 3:56 PM, Patrick Turley
<PatrickTurley@gamestop.com>wrote:

> In my previous message, some of the indentation in the representation of
> my file tree was wrong (because we're using Outlook, which destroy all
> indentation when you paste it into an e-mail message). The errors are
> small, but I want to avoid annoying anyone who might think I don't even
> have the file tree constructed correctly.
>
> The following is accurate:
>
> >/home/pturley/Workspace/woohoo
> >    |
> >    +-- build
> >    |   |
> >    |   +-- classes
> >    |   |   |
> >    |   |   +-- base.bbclass
> >    |   |
> >    |   |     +-------------------------------------------
> >    |   |     | do_hello() {
> >    |   |     |     echo Hello
> >    |   |     | }
> >    |   |     |
> >    |   |     | addtask hello
> >    |   |     +-------------------------------------------
> >    |   |
> >    |   +-- conf
> >    |       |
> >    |       +-- bblayers.conf
> >    |       |
> >    |       | +-------------------------------------------
> >    |       | | BBLAYERS ?= " \
> >    |       | |   /home/pturley/Workspace/woohoo/LayerA \
> >    |       | |   "
> >    |       | +-------------------------------------------
> >    |       |
> >    |       +-- bitbake.conf
> >    |
> >    |         +-------------------------------------------
> >    |         | CACHE = "${TOPDIR}/cache"
> >    |         +-------------------------------------------
> >    |
> >    +-- LayerA
> >    |   |
> >    |   +-- a.bb
> >    |   |
> >    |   |     +-------------------------------------------
> >    |   |     | PN = 'a'
> >    |   |     | PV = '1'
> >    |   |     +-------------------------------------------
> >    |   |
> >    |   +-- conf
> >    |       |
> >    |       +-- layer.conf
> >    |
> >    |         +-------------------------------------------
> >    |         | BBPATH .= ":${LAYERDIR}"
> >    |         | BBFILES += "${LAYERDIR}/*.bb"
> >    |         +-------------------------------------------
> >    |
> >    +-- BitBake ...
> >
> >    The BitBake directory origin is:
> >
> >        http://git.openembedded.org/bitbake/
> >
> >    I have the 1.15.2 tag checked out, which is what
> >    Yocto denzil uses.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bea356c92347604cb2fa534
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Patrick,<div><br></div><div>I think I understand what you are looking fo=
r. I created this Bitbake Hello World for a training class. It just uses &#=
39;raw&#39; Bitbake and a very basic recipe to build the Nano editor (inclu=
ding download from the project site).</div>
<div><br></div><div>You need to have a couple of things in place to make th=
is work. I got to run but I will get back to it and post it.</div><div><br>=
</div><div>:rjs<br><br><div class=3D"gmail_quote">On Wed, Oct 3, 2012 at 3:=
56 PM, Patrick Turley <span dir=3D"ltr">&lt;<a href=3D"mailto:PatrickTurley=
@gamestop.com" target=3D"_blank">PatrickTurley@gamestop.com</a>&gt;</span> =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">In my previous message, some of the indentat=
ion in the representation of<br>
my file tree was wrong (because we&#39;re using Outlook, which destroy all<=
br>
indentation when you paste it into an e-mail message). The errors are<br>
small, but I want to avoid annoying anyone who might think I don&#39;t even=
<br>
have the file tree constructed correctly.<br>
<br>
The following is accurate:<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;/home/pturley/Workspace/woohoo<br>
&gt; =A0 =A0|<br>
&gt; =A0 =A0+-- build<br>
&gt; =A0 =A0| =A0 |<br>
&gt; =A0 =A0| =A0 +-- classes<br>
&gt; =A0 =A0| =A0 | =A0 |<br>
&gt; =A0 =A0| =A0 | =A0 +-- base.bbclass<br>
&gt; =A0 =A0| =A0 |<br>
&gt; =A0 =A0| =A0 | =A0 =A0 +-------------------------------------------<br=
>
&gt; =A0 =A0| =A0 | =A0 =A0 | do_hello() {<br>
&gt; =A0 =A0| =A0 | =A0 =A0 | =A0 =A0 echo Hello<br>
&gt; =A0 =A0| =A0 | =A0 =A0 | }<br>
&gt; =A0 =A0| =A0 | =A0 =A0 |<br>
&gt; =A0 =A0| =A0 | =A0 =A0 | addtask hello<br>
&gt; =A0 =A0| =A0 | =A0 =A0 +-------------------------------------------<br=
>
&gt; =A0 =A0| =A0 |<br>
&gt; =A0 =A0| =A0 +-- conf<br>
&gt; =A0 =A0| =A0 =A0 =A0 |<br>
&gt; =A0 =A0| =A0 =A0 =A0 +-- bblayers.conf<br>
&gt; =A0 =A0| =A0 =A0 =A0 |<br>
&gt; =A0 =A0| =A0 =A0 =A0 | +-------------------------------------------<br=
>
&gt; =A0 =A0| =A0 =A0 =A0 | | BBLAYERS ?=3D &quot; \<br>
&gt; =A0 =A0| =A0 =A0 =A0 | | =A0 /home/pturley/Workspace/woohoo/LayerA \<b=
r>
&gt; =A0 =A0| =A0 =A0 =A0 | | =A0 &quot;<br>
&gt; =A0 =A0| =A0 =A0 =A0 | +-------------------------------------------<br=
>
&gt; =A0 =A0| =A0 =A0 =A0 |<br>
&gt; =A0 =A0| =A0 =A0 =A0 +-- bitbake.conf<br>
&gt; =A0 =A0|<br>
&gt; =A0 =A0| =A0 =A0 =A0 =A0 +-------------------------------------------<=
br>
&gt; =A0 =A0| =A0 =A0 =A0 =A0 | CACHE =3D &quot;${TOPDIR}/cache&quot;<br>
&gt; =A0 =A0| =A0 =A0 =A0 =A0 +-------------------------------------------<=
br>
&gt; =A0 =A0|<br>
&gt; =A0 =A0+-- LayerA<br>
&gt; =A0 =A0| =A0 |<br>
&gt; =A0 =A0| =A0 +-- <a href=3D"http://a.bb" target=3D"_blank">a.bb</a><br=
>
&gt; =A0 =A0| =A0 |<br>
&gt; =A0 =A0| =A0 | =A0 =A0 +-------------------------------------------<br=
>
&gt; =A0 =A0| =A0 | =A0 =A0 | PN =3D &#39;a&#39;<br>
&gt; =A0 =A0| =A0 | =A0 =A0 | PV =3D &#39;1&#39;<br>
&gt; =A0 =A0| =A0 | =A0 =A0 +-------------------------------------------<br=
>
&gt; =A0 =A0| =A0 |<br>
&gt; =A0 =A0| =A0 +-- conf<br>
&gt; =A0 =A0| =A0 =A0 =A0 |<br>
&gt; =A0 =A0| =A0 =A0 =A0 +-- layer.conf<br>
&gt; =A0 =A0|<br>
&gt; =A0 =A0| =A0 =A0 =A0 =A0 +-------------------------------------------<=
br>
&gt; =A0 =A0| =A0 =A0 =A0 =A0 | BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
&gt; =A0 =A0| =A0 =A0 =A0 =A0 | BBFILES +=3D &quot;${LAYERDIR}/*.bb&quot;<b=
r>
&gt; =A0 =A0| =A0 =A0 =A0 =A0 +-------------------------------------------<=
br>
&gt; =A0 =A0|<br>
&gt; =A0 =A0+-- BitBake ...<br>
&gt;<br>
&gt; =A0 =A0The BitBake directory origin is:<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0<a href=3D"http://git.openembedded.org/bitbake/" target=
=3D"_blank">http://git.openembedded.org/bitbake/</a><br>
&gt;<br>
&gt; =A0 =A0I have the 1.15.2 tag checked out, which is what<br>
&gt; =A0 =A0Yocto denzil uses.<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--047d7bea356c92347604cb2fa534--
