Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39BEAE00CBA; Mon,  1 Jul 2019 06:15:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CFB0E003C1
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 06:14:59 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id a9so8795048lff.7
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2019 06:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=e33sP/87RmmRbHVIDBm7qE094CuzPytjp2va7tA3OIU=;
	b=hWPo0jKN7hu3aNLsSWhoKG0rOTRfOEfK9AICNddwx9ZNpNr5u/rmy3pCJTDfYbkqeY
	73GIzAcaPZ1r8m1OgcbMXaNp8FiTn0FXdM6sw15oSOaYvPWSNeOY4WT+3boY63K+L1LC
	Hy7QgehmQlXO32XjfM6dkwn2C5ToqTgs5kx3k6YasAOCWTcsKvMHjxJJabz3eQqh3qKY
	oy8YEVjH/JrclzeSYXipaAHOI68qg3frZaeCho0NNB+9WLbfaZPiNV6b1gPEgJan9fSU
	0hqsBQSTG6b7BAdHCQdlS7h/dGCwtcCaYU35OafMId2h30nMe+zFdnZXkpU5dR1it+U+
	qQtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=e33sP/87RmmRbHVIDBm7qE094CuzPytjp2va7tA3OIU=;
	b=C77j3NO0ZWR834dDsjAh/WYUWzBF/GK9oy1BOPhD66rO4KqE/vxP1Pey8dodWCSB4J
	LCCJT3AYkCYlJFcyQkGXZLNdb2bip6YI/sHKraM0YS8we8XY1QO9JxykMi/XiRtvKzes
	J2HBUA5y50eWPDyrqi3XVf4vHpeVvREiLzKBC9ZKvsPktPmnEVnsMm2wGEatVcSSLbwe
	ZQg7UyaveKrzWgoKnPE7TtdVYuSKYimCK8iwP4Q3Xtq0X2Og2D/bPojk4/D3Vee2s0II
	9Iu7yWKd4GkdhsQvBu712ZDA+gs6w07qp8z7gtBs890uqtfVkZSOSOLBUK/pg1MAGBoB
	RY3w==
X-Gm-Message-State: APjAAAXtjjt3GXukkEXGh2QKhRkedgd0cjZOb2zQTP5ZTEAl/wUB65RC
	Pvtrs5a1exATa/RxDY3sypFKMeuDLC5zeT59RzM=
X-Google-Smtp-Source: APXvYqxwHgzcDqEntt2cIVQ45gWS0KCyfmraPf0NxZzRTS/bGHiCy3VnuEel0TS/HG0hyi0b2BueBJo+Hk9MUlmMlFE=
X-Received: by 2002:a19:ca0e:: with SMTP id a14mr10997933lfg.19.1561986898892; 
	Mon, 01 Jul 2019 06:14:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAMd7AX9SH60WPAhR87p=Za17rDOCf0CMsp3S7LFbgrT9Y+c2RQ@mail.gmail.com>
	<156175488609.25365.211872127310867605@ardipi>
In-Reply-To: <156175488609.25365.211872127310867605@ardipi>
From: Aaron Biver <aaron.biver@gmail.com>
Date: Mon, 1 Jul 2019 09:14:47 -0400
Message-ID: <CAMd7AX-qB03vx8y0giRrgzVZuQN9h1Ku-geduifnDg9BNcOztw@mail.gmail.com>
To: Claudius Heine <ch@denx.de>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Syntax for zero-padding a number in a recipe?
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
X-List-Received-Date: Mon, 01 Jul 2019 13:15:02 -0000
Content-Type: multipart/alternative; boundary="000000000000409bdc058c9e6a08"

--000000000000409bdc058c9e6a08
Content-Type: text/plain; charset="UTF-8"

 [Sending again because I initially replied to Claudius only, and not
mailing list]

I found using back-ticks with printf also works in a recipe:

NUMBER = "1"
NUMBER_PADDED="FOO_`printf "02d" ${NUMBER}`_MOARFOO"

On Fri, Jun 28, 2019 at 4:48 PM Claudius Heine <ch@denx.de> wrote:

> Hi,
>
> Quoting Aaron Biver (2019-06-28 18:44:40)
> > Is there such a thing as zero padding a number in a recipe (or vice
> versa?
> > I'd be just as happy starting with a zero-padded number, and converting
> it
> > to non-zero-padded.
>
> In bitbake you could do this with inline python:
>
>         NUMBER = "1"
>         NUMBER_PADDED = "${@"{:02d}".format(d.getVar("NUMBER", True))}"
>         NUMBER_PADDED2 = "0012"
>         NUMBER2 = "${@str(int(d.getVar("NUMBER_PADDED2", True)))}"
>
> I have not tested this and it could possible be done more elegant, but
> it should work.
>
> regards,
> Claudius
>
> > The crux of the dilemma is that I must have zero-padding for file-naming,
> > but I CAN'T have zero padding in these numbers when I pass them to the C
> > code (or the C code treats them as octal).
> >
> > I'd like to start with:
> > VERSION_MAJOR="1"
> > VERSION_MINOR="19"
> >
> > And turn this into "01" and "19" for purposes of naming the output file
> > from the recipe.
> >
> > I've tried the bash-style printf -v, but the recipe kicks the printf
> lines
> > out with a parse error.
> >
> > VERSION_MAJOR="01"
> > VERSION_MINOR="19"
> >
> > VERSION_MAJOR_STR=""
> > VERSION_MINOR_STR=""
> >
> > printf -v VERSION_MAJOR_STR "%02d" VERSION_MAJOR
> > printf -v VERSION_MINOR_STR "%02d" VERSION_MINOR
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-54 Fax: (+49)-8142-66989-80 Email: ch@denx.de
>
>            PGP key: 6FF2 E59F 00C6 BC28 31D8 64C1 1173 CB19 9808 B153
>                              Keyserver: hkp://pool.sks-keyservers.net
>

--000000000000409bdc058c9e6a08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>[Sending again because I initially replied to Claudius only, and not m=
ailing list]</div><div><br></div><div>I found using back-ticks with printf =
also works in a recipe:</div><div><br></div><div>
NUMBER =3D &quot;1&quot; <br></div><div>NUMBER_PADDED=3D&quot;FOO_`printf &=
quot;02d&quot; ${NUMBER}`_MOARFOO&quot;</div>

</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Jun 28, 2019 at 4:48 PM Claudius Heine &lt;<a href=3D"mailto:ch@den=
x.de">ch@denx.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi,<br>
<br>
Quoting Aaron Biver (2019-06-28 18:44:40)<br>
&gt; Is there such a thing as zero padding a number in a recipe (or vice ve=
rsa?<br>
&gt; I&#39;d be just as happy starting with a zero-padded number, and conve=
rting it<br>
&gt; to non-zero-padded.<br>
<br>
In bitbake you could do this with inline python:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NUMBER =3D &quot;1&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NUMBER_PADDED =3D &quot;${@&quot;{:02d}&quot;.f=
ormat(d.getVar(&quot;NUMBER&quot;, True))}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NUMBER_PADDED2 =3D &quot;0012&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NUMBER2 =3D &quot;${@str(int(d.getVar(&quot;NUM=
BER_PADDED2&quot;, True)))}&quot;<br>
<br>
I have not tested this and it could possible be done more elegant, but<br>
it should work.<br>
<br>
regards,<br>
Claudius<br>
<br>
&gt; The crux of the dilemma is that I must have zero-padding for file-nami=
ng,<br>
&gt; but I CAN&#39;T have zero padding in these numbers when I pass them to=
 the C<br>
&gt; code (or the C code treats them as octal).<br>
&gt; <br>
&gt; I&#39;d like to start with:<br>
&gt; VERSION_MAJOR=3D&quot;1&quot;<br>
&gt; VERSION_MINOR=3D&quot;19&quot;<br>
&gt; <br>
&gt; And turn this into &quot;01&quot; and &quot;19&quot; for purposes of n=
aming the output file<br>
&gt; from the recipe.<br>
&gt; <br>
&gt; I&#39;ve tried the bash-style printf -v, but the recipe kicks the prin=
tf lines<br>
&gt; out with a parse error.<br>
&gt; <br>
&gt; VERSION_MAJOR=3D&quot;01&quot;<br>
&gt; VERSION_MINOR=3D&quot;19&quot;<br>
&gt; <br>
&gt; VERSION_MAJOR_STR=3D&quot;&quot;<br>
&gt; VERSION_MINOR_STR=3D&quot;&quot;<br>
&gt; <br>
&gt; printf -v VERSION_MAJOR_STR &quot;%02d&quot; VERSION_MAJOR<br>
&gt; printf -v VERSION_MINOR_STR &quot;%02d&quot; VERSION_MINOR<br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
--<br>
DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0 Managing Director: Wolf=
gang Denk<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: (+49)-8142-66989-54 Fax: (+49)-8142-66989-80 Email: <a href=3D"mailt=
o:ch@denx.de" target=3D"_blank">ch@denx.de</a><br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PGP key: 6FF2 E59F 00C6 BC28 31D8 =
64C1 1173 CB19 9808 B153<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Keyserver: hkp://<a href=3D"http://pool.sks-=
keyservers.net" rel=3D"noreferrer" target=3D"_blank">pool.sks-keyservers.ne=
t</a><br>
</blockquote></div>

--000000000000409bdc058c9e6a08--
