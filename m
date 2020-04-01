Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.358.1585771249711041641
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 13:00:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bV6m+nIr;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: joel.winarske@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id l36so540800pjb.3
        for <yocto@lists.yoctoproject.org>; Wed, 01 Apr 2020 13:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O7FufcEfmeCS3yceXgS9f/Lhw8Vqx+iOJJ19QmR10w0=;
        b=bV6m+nIr8BmVRkSoO45wAr/Fjczb5fDtdhdBssx+LStzvyrCVDg9VH+8GYdJjqkB1S
         65xMPYMem145YgN9VK29ngJXhN6PF03ig4gjzq4QlXGiwE+WxlJBP2Ms5W5QZjQHv4DA
         JPJ2eozEddQH6tGNoOWMVc/PCvCieCmngrfRjZNrUSKMEBYzvFyWn3/15DAPq1PRdvzf
         BTDsrqunMEFxvm05P04wqm6id8+N4l44UqUCvQCi/EgrYpNaUigWHh/bZKJtDfWb/0jS
         utkyzcQ5LDkNe1qJutwWzs3eOKt8NmUCJVDYEFRS+/j1k9vmcQo7LK+y1S+3p4MPmQFN
         JSFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O7FufcEfmeCS3yceXgS9f/Lhw8Vqx+iOJJ19QmR10w0=;
        b=BLHp7STa4t/u7gjczjAFUjQJwNdsrNuT4+joiXyqfoPFHnvSb/vFPtszHofqMIJF+i
         HmYFBP+ZS6+8ROtatYm+dWXd50N6kAlTypZGinupIgPyeYesgeqL4egUCYTyTE6Iz+3N
         4HPYZFSQm7XhxXBkROXCVHorczRAmMJnuRGkFoXOb+Uivzm7ckRrGB1cpPKVaqAIqK72
         Dw+GfpmNzpqJGSlRBhvBCmAr+00e1W+Y29Wh/96Ls5HV33KEqsdi1epCkwJ3fyTL4W3D
         ElZ0l/nGjKKg6PCjsgVQ6+9mjr9XVjOiOVphBhbvdJ57Yz9J0yt4AL17uORkmMIAWat+
         JEDg==
X-Gm-Message-State: AGi0Pubrgxf5OeD+IDbrbt5zudTDOxPa94egUuOQg9v3/1sxWzQ4v0qv
	tXlCktTaCclUyuMTBxhvvNQkiL+NFpAOYpAME1E=
X-Google-Smtp-Source: APiQypJz0ydUKWWrXbbG9q/rJCVQbnhj+a6HDWJQfHoD1QgjqVlMWtr1queYRy6ZrV9U5excnD+kzG3KHA+zpJfQwhA=
X-Received: by 2002:a17:90a:faa:: with SMTP id 39mr7157483pjz.190.1585771249066;
 Wed, 01 Apr 2020 13:00:49 -0700 (PDT)
MIME-Version: 1.0
References: <kdtC.1585760118725241485.ETNE@lists.yoctoproject.org>
 <1601C2BF1E7C8C87.18583@lists.yoctoproject.org> <VI1PR05MB4286E300219B89A7EE37D170A8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB4286E300219B89A7EE37D170A8C90@VI1PR05MB4286.eurprd05.prod.outlook.com>
From: "Joel Winarske" <joel.winarske@gmail.com>
Date: Wed, 1 Apr 2020 13:00:38 -0700
Message-ID: <CABKMkPLuhj+4zbi8pCfxf_Evv6h51-QMRwTY8pY-FOzvXA0xrg@mail.gmail.com>
Subject: Re: [yocto] python argparse or alternate method
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fee77505a2402369"

--000000000000fee77505a2402369
Content-Type: text/plain; charset="UTF-8"

Hi Konrad,

I left out the details of the path encoding :)  Effectively I was
attempting to duplicate get_out_dir() as found here:
https://github.com/flutter/engine/blob/master/tools/gn

My recipe is here:
https://github.com/jwinarske/meta-flutter/blob/zeus/recipes-graphics/flutter-engine/flutter-engine_git.bb

Cheers,
Joel

On Wed, Apr 1, 2020 at 10:46 AM Konrad Weihmann <kweihmann@outlook.com>
wrote:

> There is a single tick missing, but I'm sure you get the point
> On 01.04.20 19:37, Konrad Weihmann wrote:
>
> What about
>
> do_configure() {
>
>    cd ${@bb.utils.contains('PACKAGECONFIG_CONFARGS', '--verbose',
> out/verbose', 'out', d)}
>
> }
> On 01.04.20 18:55, Joel Winarske wrote:
>
> Hello,
>
> I'm trying the below in a recipe.  Bitbake gives me: ERROR: Unable to
> parse ...: Exited with "2"
>
> inherit python3native
>
> require utils.inc
>
> do_configure() {
>
>     cd ${@get_out_dir(d)}
> }
>
> (in utils.inc)
> def get_out_dir(d):
>     import os
>     import argparse
>     pkgconfig_args = d.getVar("PACKAGECONFIG_CONFARGS")
>
>     parser = argparse.ArgumentParser()
>     parser.add_argument("--verbose", help="increase output verbosity",
>                         action="store_true")
>     args = parser.parse_args(pkgconfig_args)
>     if args.verbose:
>         return os.path.join('out', 'verbose')
>
>     return 'out'
>
>
>
> What am I doing wrong, or is there a better way?  Seems like it doesn't
> like "args = parser.parse_args(pkgconfig_args)"
>
> The output directory is a combination of the arguments.
>
>
> Thanks!
> Joel
>
>
> 
>

--000000000000fee77505a2402369
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Konrad,<div><br></div><div>I left out the details of th=
e path encoding :)=C2=A0 Effectively I was attempting to duplicate get_out_=
dir() as found here:</div><div><a href=3D"https://github.com/flutter/engine=
/blob/master/tools/gn">https://github.com/flutter/engine/blob/master/tools/=
gn</a><br></div><div><br></div><div>My recipe is here:=C2=A0=C2=A0<a href=
=3D"https://github.com/jwinarske/meta-flutter/blob/zeus/recipes-graphics/f=
lutter-engine/flutter-engine_git.bb">https://github.com/jwinarske/meta-flut=
ter/blob/zeus/recipes-graphics/flutter-engine/flutter-engine_git.bb</a></di=
v><div><br></div><div>Cheers,</div><div>Joel</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 1, 2020 at 10=
:46 AM Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com">kweihma=
nn@outlook.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">

  
  <div>
    <p>There is a single tick missing, but I&#39;m sure you get the point<=
br>
    </p>
    <div>On 01.04.20 19:37, Konrad Weihmann
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <p>What about</p>
      <p>do_configure() {</p>
      <p>=C2=A0=C2=A0 cd ${@bb.utils.contains(&#39;PACKAGECONFIG_CONFARGS&=
#39;,
        &#39;--verbose&#39;, out/verbose&#39;, &#39;out&#39;, d)}<br>
      </p>
      <p>}<br>
      </p>
      <div>On 01.04.20 18:55, Joel Winarske
        wrote:<br>
      </div>
      <blockquote type=3D"cite">
        Hello,<br>
        <br>
        I&#39;m trying the below in a recipe.=C2=A0 Bitbake gives me: ERRO=
R:
        Unable to parse ...: Exited with &quot;2&quot;<br>
        <br>
        inherit python3native<br>
        <br>
        require utils.inc<br>
        <br>
        do_configure() {<br>
        <br>
        =C2=A0=C2=A0=C2=A0 cd ${@get_out_dir(d)}<br>
        }<br>
        <br>
        (in utils.inc)<br>
        def get_out_dir(d):<br>
        =C2=A0=C2=A0=C2=A0 import os<br>
        =C2=A0=C2=A0=C2=A0 import argparse<br>
        =C2=A0=C2=A0=C2=A0 pkgconfig_args =3D d.getVar(&quot;PACKAGECONFIG=
_CONFARGS&quot;)<br>
        <br>
        =C2=A0=C2=A0=C2=A0 parser =3D argparse.ArgumentParser()<br>
        =C2=A0=C2=A0=C2=A0 parser.add_argument(&quot;--verbose&quot;, help=
=
=3D&quot;increase output
        verbosity&quot;,<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 a=
ction=3D&quot;store_true&quot;)<br>
        =C2=A0=C2=A0=C2=A0 args =3D parser.parse_args(pkgconfig_args)<br>
        =C2=A0=C2=A0=C2=A0 if args.verbose:<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return os.path.join(&#3=
9;out&#39;, &#39;verbose&#39;)<br>
        <br>
        =C2=A0=C2=A0=C2=A0 return &#39;out&#39;<br>
        <br>
        <br>
        <br>
        What am I doing wrong, or is there a better way?=C2=A0 Seems like =
it
        doesn&#39;t like &quot;args =3D parser.parse_args(pkgconfig_args)&=
quot;<br>
        <br>
        The output directory is a combination of the arguments.<br>
        <br>
        <br>
        Thanks!<br>
        Joel<br>
        <br>
        <fieldset></fieldset>
      </blockquote>
      <br>
      <fieldset></fieldset>
      <pre></pre>
    </blockquote>
  </div>

<br>
</blockquote></div>

--000000000000fee77505a2402369--
