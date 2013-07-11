Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D437AE013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 09:28:19 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id r11so6886300lbv.13
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 09:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=/GUfsl3AjNg0IgJdo+dc+K370n55YLrgjb7GQQlIAps=;
	b=vE3p/+KrzHK68A2/7OL2M3IZb+gwl/F+04p3LstGLH6HQ1Cgk2jITYxbJ0DmcUupBV
	L3uwz69SDX13qENCkNasX5dn16IV6t/t4ea3GaflzTGlXn3v4Or+jouKFfI9cKy84Vv4
	p252tzzZZC78ADpHDHMIZHocNsCIZfzVcSMgsMf+V22TP6HBiJj4b+qDtsVXZi7QAAFD
	UccEcWPI0VQH/W3jgGWg8rlp0lDoVVSVUvvY+z8OdS7oqyLmTIuo1y8zn3ce//DzDGeM
	SwtqwyVl8pVRZxgM2oIGf/g2t2XbSHm9zCf/HcI4depNjx1E3Por0oQac/4hfYFBH8d+
	2Mow==
X-Received: by 10.112.236.33 with SMTP id ur1mr17600115lbc.13.1373560097860;
	Thu, 11 Jul 2013 09:28:17 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.3.5 with HTTP; Thu, 11 Jul 2013 09:27:57 -0700 (PDT)
In-Reply-To: <CALmOhgmsZUWEv1pv=D=ZEm=2RzXRVw4E6mwC0iXEMWt_+_5zFA@mail.gmail.com>
References: <CALmOhgmsZUWEv1pv=D=ZEm=2RzXRVw4E6mwC0iXEMWt_+_5zFA@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 11 Jul 2013 09:27:57 -0700
X-Google-Sender-Auth: pgn7bzQ6i_RfURaGbgBUz8wt7Pk
Message-ID: <CABcZAN=T=GXxyuc1jDsAUSk_0USzwU+1qYv7F9ohRyUQ8J_pkQ@mail.gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake-env
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
X-List-Received-Date: Thu, 11 Jul 2013 16:28:22 -0000
Content-Type: multipart/alternative; boundary=001a11c31ca4b5f1b704e13ee192

--001a11c31ca4b5f1b704e13ee192
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 11, 2013 at 9:25 AM, Trevor Woerner
<trevor.woerner@linaro.org>wrote:

> Has anyone tried using the bitbake-env utility lately?
>
> On master I get:
> $ bitbake-env
> Traceback (most recent call last):
>   File "/home/trevor/local/bin/bitbake-env", line 275, in <module>
>     main(sys.argv[1:])
>   File "/home/trevor/local/bin/bitbake-env", line 248, in main
>     tinfoil = Tinfoil(output=sys.stderr)
>   File "/home/trevor/local/bin/bitbake-env", line 172, in __init__
>     self.config = bb.tinfoil.TinfoilConfig(parse_only=True)
> AttributeError: 'module' object has no attribute 'TinfoilConfig'
>
> but on dylan everything is okay.
>

bitbake has had some changes recently. Try using the 'show' subcommand of
https://github.com/kergoth/bb instead.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c31ca4b5f1b704e13ee192
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jul 11, 2013 at 9:25 AM, Trevor Woerner <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:trevor.woerner@linaro.org" target=3D"_blank">trevor.woerner@li=
naro.org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":7p" style=3D"overflow:hidden">Has anyone tried=
 using the bitbake-env utility lately?<br>


<br>
On master I get:<br>
$ bitbake-env<br>
Traceback (most recent call last):<br>
=C2=A0 File &quot;/home/trevor/local/bin/bitbake-env&quot;, line 275, in &l=
t;module&gt;<br>
=C2=A0 =C2=A0 main(sys.argv[1:])<br>
=C2=A0 File &quot;/home/trevor/local/bin/bitbake-env&quot;, line 248, in ma=
in<br>
=C2=A0 =C2=A0 tinfoil =3D Tinfoil(output=3Dsys.stderr)<br>
=C2=A0 File &quot;/home/trevor/local/bin/bitbake-env&quot;, line 172, in __=
init__<br>
=C2=A0 =C2=A0 self.config =3D bb.tinfoil.TinfoilConfig(parse_only=3DTrue)<b=
r>
AttributeError: &#39;module&#39; object has no attribute &#39;TinfoilConfig=
&#39;<br>
<br>
but on dylan everything is okay.</div></blockquote></div><br>bitbake has ha=
d some changes recently. Try using the &#39;show&#39; subcommand of=C2=A0<a=
 href=3D"https://github.com/kergoth/bb">https://github.com/kergoth/bb</a>=
=C2=A0instead.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c31ca4b5f1b704e13ee192--
