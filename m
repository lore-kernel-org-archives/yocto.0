Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68773E0092E; Sun, 29 Mar 2015 09:32:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC888E00477
	for <yocto@yoctoproject.org>; Sun, 29 Mar 2015 09:31:59 -0700 (PDT)
Received: by qgep97 with SMTP id p97so170043486qge.1
	for <yocto@yoctoproject.org>; Sun, 29 Mar 2015 09:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=bMkmq8MpdgPe6QzT9d7Cl0VrSlmV34mpfIOVqbCrIb4=;
	b=a5DksRsXB/vhr20bb8FRyUDBiKxAhZQ31kKE1dK/i38f5Qzd5HYNKvDCMWu7bdubyw
	yCuuZZNXZ7WmNgVSvxQ01KDTrpR+QMLw3d82G3s1dTkvXSftO3UzwZxNIhYWQ7OHl1/R
	kyZhvvQEpHpaOQ6oJa+f5OAieROMTGE7QtweTLYGq5eQ+hseOm3j3hKXnoNIWzQEyh21
	9p6vSH9zRwWwN44gJuyX6dfFjpCeXaLE4n/PDwVeBYA8KdZX7rTUMywUbTDgke/SzQs4
	oE3ZFAbWZDGeqxDcQoQj1kU1BfzRwfThJx/pOkONujkEffvBAz0wC0FPMjY/MbHWCRnF
	aoPQ==
X-Received: by 10.140.16.99 with SMTP id 90mr36222121qga.105.1427646718493;
	Sun, 29 Mar 2015 09:31:58 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.140.108.8 with HTTP; Sun, 29 Mar 2015 09:31:38 -0700 (PDT)
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDC9879DC@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDC9879DC@MSXBEBVT12.planar.net>
From: Christopher Larson <clarson@kergoth.com>
Date: Sun, 29 Mar 2015 09:31:38 -0700
X-Google-Sender-Auth: KjoGn63CP3HwJY_7HpSaLbUyytY
Message-ID: <CABcZANnqSHbCribX69qFhV9Wnoz_3dCa_jChief8rZTK42cBJQ@mail.gmail.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How do VIRTUAL-RUNTIME's work and how to create a new keymap for VIRTUAL-RUNTIME_ir_keytable-keymaps
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
X-List-Received-Date: Sun, 29 Mar 2015 16:32:01 -0000
Content-Type: multipart/alternative; boundary=001a11c067a085483005126fe78c

--001a11c067a085483005126fe78c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 29, 2015 at 9:23 AM, Matt Schuckmann <Matt.Schuckmann@planar.co=
m
> wrote:

> The v4l-utils recipe defines VIRTUAL-RUNTIME_ir-keytable-keymaps and the
> ir-keytable package appears to RDEPENDS on its value.
>
> I want to define my own key map so  I think that I should create a new
> package, called =E2=80=9Cmy-rc-keymaps=E2=80=9D, for now it simple instal=
ls a file in
> /lib/udev/rc_keymaps
> In my image recipe I set VIRTUAL-RUNTIME_ir-keytable-keymaps =3D
> "my-rc-keymaps"
> I then added ir-keytable as a RDEPENDS of another of my packages.
>
> The problem is I don=E2=80=99t see my keymap file getting added to the im=
age, in
> fact it looks like the default rc-keymaps package is getting installed.
>
> If I add =E2=80=9Cmy-rc-keymaps=E2=80=9D to the same RDEPENDS I added ir-=
keytable then it
> gets installed so I know the package is ok.
>
> I don=E2=80=99t understand what=E2=80=99s going on here.
> I also find it frustrating that I don=E2=80=99t see the VIRTUAL-RUNTIME m=
echanism
> documented so it makes it even harder to understand.
>

VIRTUAL-RUNTIME_something is just a variable. Someone defines it in the
config metadata, then a recipe uses it. That's it. There's nothing magic
about it, nor anything special about it. It's just a convention to let the
user override the package to be used for that functionality.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c067a085483005126fe78c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Mar 29, 2015 at 9:23 AM, Matt Schuckmann <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:Matt.Schuckmann@planar.com" target=3D"_blank">Matt.Schuckmann=
@planar.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Th=
e v4l-utils recipe defines VIRTUAL-RUNTIME_ir-keytable-keymaps and the ir-k=
eytable package appears to RDEPENDS on its value.=C2=A0 </div>
<div>=C2=A0</div>
<div>I want to define my own key map so=C2=A0 I think that I should create =
a new package, called =E2=80=9Cmy-rc-keymaps=E2=80=9D, for now it simple in=
stalls a file in /lib/udev/rc_keymaps</div>
<div>In my image recipe I set VIRTUAL-RUNTIME_ir-keytable-keymaps =3D &quot=
;my-rc-keymaps&quot;</div>
<div>I then added ir-keytable as a RDEPENDS of another of my packages. </di=
v>
<div>=C2=A0</div>
<div>The problem is I don=E2=80=99t see my keymap file getting added to the=
 image, in fact it looks like the default rc-keymaps package is getting ins=
talled. </div>
<div>=C2=A0</div>
<div>If I add =E2=80=9Cmy-rc-keymaps=E2=80=9D to the same RDEPENDS I added =
ir-keytable then it gets installed so I know the package is ok. </div>
<div>=C2=A0</div>
<div>I don=E2=80=99t understand what=E2=80=99s going on here. </div>
<div>I also find it frustrating that I don=E2=80=99t see the VIRTUAL-RUNTIM=
E mechanism documented so it makes it even harder to understand.</div></blo=
ckquote></div><br>VIRTUAL-RUNTIME_something is just a variable. Someone def=
ines it in the config metadata, then a recipe uses it. That&#39;s it. There=
&#39;s nothing magic about it, nor anything special about it. It&#39;s just=
 a convention to let the user override the package to be used for that func=
tionality.<br>-- <br><div class=3D"gmail_signature">Christopher Larson<br>c=
larson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br=
>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a11c067a085483005126fe78c--
