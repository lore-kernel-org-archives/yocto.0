Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8841BE0178A
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 18:58:43 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id z5so5033265lbh.35
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2013 18:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=kAtB8DbHi6ao+qBD3q0vS96ndWS6/ul+oWsRnNHXrfk=;
	b=EDsdVtB1JkM4REa1eKAFV7N0OmyBe0DQnvjYvu7Law8J28HdfHigQOrmePhk+a0loT
	GWfz4uLtVLbP56ogcnauyFGIkoXJh0hzeFlGzdP6O4jzfdy8AZkW6zbByT6x2a8xuF2S
	D+f2Ku+Iz8SLqLIccNy2xnHQO5WSr0NBs6b9SAs6PPa/CBoODt5+SI7sF5CjaR1xnSX7
	bxPL4J9kAvM8klCDN3OOD33bIkQYEouFqaVcew26yy+Sth1ZFztueuLyTTxzABbMOiR5
	fkb4UAa5MklxwF70BI0qIA4o6qRIWUloqPasuWYIkWyfNqlPxGFD2cHg9ZuZDPQEI0I8
	nUkQ==
X-Received: by 10.152.9.198 with SMTP id c6mr78090lab.36.1383533921682; Sun,
	03 Nov 2013 18:58:41 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Sun, 3 Nov 2013 18:58:21 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1311020605300.21679@oneiric>
References: <alpine.DEB.2.02.1311020605300.21679@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 3 Nov 2013 19:58:21 -0700
X-Google-Sender-Auth: 82EjxbqPo7kJMDGgRLS9eQHPEMI
Message-ID: <CABcZANkbE2ynRntWGL8y4Nx6P6LODWodkjfDvMVpxoFcN6VP4A@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: explanation for ALTERNATIVE_LINK_NAME in ref manual seems incomplete
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
X-List-Received-Date: Mon, 04 Nov 2013 02:58:45 -0000
Content-Type: multipart/alternative; boundary=001a1132f83eefcb5c04ea511789

--001a1132f83eefcb5c04ea511789
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 2, 2013 at 3:13 AM, Robert P. J. Day <rpjday@crashcourse.ca>wro=
te:

>  on my quest to spiff up the ref manual variables glossary, a question
> about ALTERNATIVE_LINK_NAME, explained here:
>
>
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-AL=
TERNATIVE_LINK_NAME
>
>  at first glance, that explanation *suggests* that the purpose of that
> variable is to support an alternative name to an existing command, but
> it doesn't make it clear that a *very* common usage is to simply
> create a link with precisely the same name elsewhere. you see a *lot*
> of this throughout the recipes (like this snippet from util-linux):
>
> ALTERNATIVE_LINK_NAME[dmesg] =3D "${base_bindir}/dmesg"
> ALTERNATIVE_LINK_NAME[kill] =3D "${base_bindir}/kill"
> ALTERNATIVE_LINK_NAME[more] =3D "${base_bindir}/more"
> ALTERNATIVE_LINK_NAME[mkswap] =3D "${base_sbindir}/mkswap"
> ALTERNATIVE_LINK_NAME[blockdev] =3D "${base_sbindir}/blockdev"
>
> which appears to simply create symlinks from /bin to programs in
> /usr/bin, yes? (that's what it's doing, right?) i suspect it would be
> useful to mention that application in the explanation, unless i'm
> totally misunderstanding what i'm reading.
>

I=E2=80=99m pretty sure that=E2=80=99s not the case. Afaik it creates a lin=
k from
ALTERNATIVE_TARGET[name] to ALTERNATIVE_LINK_NAME[name]. If the target
isn=E2=80=99t defined, iirc it defaults to adding a .${BPN} suffix to the l=
ink
name. See lines 41 through 45 of update-alternatives.bbclass:

    # NOTE: If ALTERNATIVE_TARGET is not defined, it will inherit the value
    # from ALTERNATIVE_LINK_NAME.
    #
    # NOTE: If the ALTERNATIVE_LINK_NAME and ALTERNATIVE_TARGET are the
same,
    # ALTERNATIVE_TARGET will have '.{BPN}' appended to it.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1132f83eefcb5c04ea511789
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sat, Nov 2, 2013 at 3:13 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.c=
a</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":2tc" style=3D"overflow:hidden">=C2=A0on my que=
st to spiff up the ref manual variables glossary, a question<br>


about ALTERNATIVE_LINK_NAME, explained here:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.ht=
ml#var-ALTERNATIVE_LINK_NAME" target=3D"_blank">http://www.yoctoproject.org=
/docs/latest/ref-manual/ref-manual.html#var-ALTERNATIVE_LINK_NAME</a><br>
<br>
=C2=A0at first glance, that explanation *suggests* that the purpose of that=
<br>
variable is to support an alternative name to an existing command, but<br>
it doesn&#39;t make it clear that a *very* common usage is to simply<br>
create a link with precisely the same name elsewhere. you see a *lot*<br>
of this throughout the recipes (like this snippet from util-linux):<br>
<br>
ALTERNATIVE_LINK_NAME[dmesg] =3D &quot;${base_bindir}/dmesg&quot;<br>
ALTERNATIVE_LINK_NAME[kill] =3D &quot;${base_bindir}/kill&quot;<br>
ALTERNATIVE_LINK_NAME[more] =3D &quot;${base_bindir}/more&quot;<br>
ALTERNATIVE_LINK_NAME[mkswap] =3D &quot;${base_sbindir}/mkswap&quot;<br>
ALTERNATIVE_LINK_NAME[blockdev] =3D &quot;${base_sbindir}/blockdev&quot;<br=
>
<br>
which appears to simply create symlinks from /bin to programs in<br>
/usr/bin, yes? (that&#39;s what it&#39;s doing, right?) i suspect it would =
be<br>
useful to mention that application in the explanation, unless i&#39;m<br>
totally misunderstanding what i&#39;m reading.</div></blockquote></div><br>=
I=E2=80=99m pretty sure that=E2=80=99s not the case. Afaik it creates a lin=
k from ALTERNATIVE_TARGET[name] to ALTERNATIVE_LINK_NAME[name]. If the targ=
et isn=E2=80=99t defined, iirc it defaults to adding a .${BPN} suffix to th=
e link name. See lines 41 through 45 of update-alternatives.bbclass:</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div class=
=3D"gmail_extra">=C2=A0 =C2=A0 # NOTE: If ALTERNATIVE_TARGET is not defined=
, it will inherit the value</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 #=
 from ALTERNATIVE_LINK_NAME.</div>

<div class=3D"gmail_extra">=C2=A0 =C2=A0 #</div><div class=3D"gmail_extra">=
=C2=A0 =C2=A0 # NOTE: If the ALTERNATIVE_LINK_NAME and ALTERNATIVE_TARGET a=
re the same,</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 # ALTERNATIVE_TA=
RGET will have &#39;.{BPN}&#39; appended to it.</div>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a1132f83eefcb5c04ea511789--
