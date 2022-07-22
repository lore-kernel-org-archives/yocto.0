Return-Path: <marekslomiany@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1EDBC433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 08:31:24 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
 [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web12.5552.1658478677009869821
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 01:31:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TuG7L7+D;
 spf=pass (domain: gmail.com, ip: 209.85.219.172,
 mailfrom: marekslomiany@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id r3so6896291ybr.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 01:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Yth/z+5SL7RzO9pLDuWAZ4/GeS/yFEABxgGeFEOlTJI=;
        b=TuG7L7+D0hvtoJyrwFUABZ2YzYsvGGlajPK+PotAAJF4RUi30naxnFNl1RUuu6TqiD
         a5gPLSdLU7QvNCE6Y3OQq4NNUcNjmqHLkphJh9P1UQRpsrh8hFXFqAmXMLzxdHR+eH9b
         RfbgPaNmjLK7v/rlZGTmHC3D00fjtjF276RnB0RomQyO0H+H31fH2bvDD/YKOLChHXdF
         RobZ7bld2u43oYJ7m4m9D/iNM1AFHqUnnRAT8rCX9Y2VQI4u9Xc2O5R1IAnvGyM6CGuC
         5YLnE9xz9XfLswW0kRkQMuT7hUQuAEphe6s0YjbdUbzU+eDsE0wpExizF1DPnQhfZfP6
         XTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Yth/z+5SL7RzO9pLDuWAZ4/GeS/yFEABxgGeFEOlTJI=;
        b=3KBZ6Jcw4qs+mi70Zf1NU6O/GLoKjI+JK3XzNTqupoiR2pYw/B0nAL429IKYY2DLkU
         jxDgA6p0qhWku7xl+ffWJLZmGH5QHSClrZL4fGFQbXgSDirKi7oOFsBE1S23wLLVO+A8
         7nWoBDRaMsnYk9JGWkjHdYzqyaepTuwvNLnu/DlQke1zJ4vSVszBE8i6M/bYjhuTWBQs
         f3yNnE64eSjtMVUyHY/kzubSNLkl+SGD/Bat2Wt/DHgLtsV3frtf3OH3s3OKIdSlHJbE
         3SWcWt2tOto3CymJHAEhBNwu42rso6HhAFq4XFWH3Ojl9N/WNC4/j8wry/XZ1kpc6tFT
         ZkvQ==
X-Gm-Message-State: AJIora8P12fh6be/064+3J8kONZK3iaCPWxaALw2s0SZXcoR4fLGKqAW
	sSxQBmEikDTW1mZegvwKiGVps3okH5wsnRHnwvA=
X-Google-Smtp-Source: 
 AGRyM1uQ2zbk+kI3JrMlsWyLMa8tolsiBi9M11POfDlpvWPB08MjVVGTz0GR86Lmz58OMfrNuq4u/uYrChWb0epbPXs=
X-Received: by 2002:a25:6c8a:0:b0:66e:c8b5:7665 with SMTP id
 h132-20020a256c8a000000b0066ec8b57665mr1881477ybc.285.1658478675949; Fri, 22
 Jul 2022 01:31:15 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAJCDnYaubUajjanOwDFCB9r_f2QViqzLu5kfujuBSLpydyEd+A@mail.gmail.com>
 <6d1c618a-5aba-3b57-0fe7-1554acfbc42a@theobroma-systems.com>
In-Reply-To: <6d1c618a-5aba-3b57-0fe7-1554acfbc42a@theobroma-systems.com>
From: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Date: Fri, 22 Jul 2022 10:31:04 +0200
Message-ID: 
 <CAJCDnYabo56XKaHUbq_mZbU-+26r3UOAqjabySmhwZShLiK=0g@mail.gmail.com>
Subject: Re: [yocto] Using custom python modules in classes and functions
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000058fe8e05e460a80f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 08:31:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57620

--00000000000058fe8e05e460a80f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your reply.
I am aware that recipe-sysroot has to be populated before and that's fine
with anonymous functions not working, but even if I make sure that
recipe-sysroot and recipe-sysroot-native are populated it wont import in
python functions. In the meantime I have found old mail from 2017 in this
list https://www.yoctoproject.org/pipermail/yocto/2017-November/039014.html
according to this in 2017 it was impossible to import modules built by
yocto. Is this still true?

Regards,
Marek Slomiany

pt., 22 lip 2022 o 10:21 Quentin Schulz <
quentin.schulz@theobroma-systems.com> napisa=C5=82(a):

> Hi Marek,
>
> On 7/22/22 08:53, Marek S?omiany wrote:
> > Hello everyone,
> >
> > I am working on creating a custom class (basically own image signing)
> that
> > will be using a client's python module, but to simplify I'll use as an
> > example a python3 module Magic as it behaves in exactly the same way. I=
'm
> > working on dunfell.
> >
> > So basically in recipe I am using depends to add the module and it work=
s
> in
> > example like that:
> >
> > inherit python3native
> > DEPENDS +=3D "python3-magic-native"
> > do_sometask(){
> >          python3 ${S}/testapp.py
> > }
> >
> > and in testapp.py importing magic works fine, but when I'm trying to
> import
> > magic in python function, bitbake-style python functions or in anonymou=
s
> > python functions it fails to find the module.
> > as an example that do NOT work:
> > def foo(d):
> >      import magic
> >      mime =3D magic.Magic(mime=3DTrue)
> >      return "foo"
> >
> > python do_bar () {
> >      bb.warn(foo(d))
> > }
> >
> > Neither it works in do_bar nor in foo as shown above. Always ends up
> with:
> > Exception: ModuleNotFoundError: No module named 'magic'
> >
> > I have also tried to set variable:
> > PYTHON_SITEPACKAGES_DIR =3D
> > "${WORKDIR}/recipe-sysroot/usr/lib/python3.8/site-packages"
> > but it does nothing in my case.
> >
> > Can you help me with this?
> >
>
> Anonymous functions are run during parsing before anything is built.
> Therefore, I don't think it'll be possible to use a python module from a
> recipe in an anonymous function.
>
> In order to use native binaries from recipes in another recipe, the
> binaries need to be in the recipe sysroot-native directory. This is what
> DEPENDS does behind the scenes, it adds a dependency for one task of
> your recipe on the population of sysroot-native from all dependencies
> (DEPENDS). Therefore, your DEPENDS will be enough if it happens in any
> task running after the do_prepare_recipe_sysroot task of your recipe.
>
> Don't forget that a task is run only if it's in the path of a task
> requested by the user or another recipe as a dependency. Usually it
> needs to be in the path of the do_build task. e.g. addtask my_task after
> do_prepare_recipe_sysroot is not enough if you want my_task to always
> run during a normal build because nothing has a dependency ON my_task.
> addtask my_task after do_prepare_recipe_sysroot before do_configure for
> example, will work, because when do_configure will need to be run, it'll
> ask my_task to be run too by bitbake.
>
> Cheers,
> Quentin
>

--00000000000058fe8e05e460a80f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for your reply.=C2=A0</div><div>I am aware tha=
t recipe-sysroot has to be populated before and that&#39;s fine with anonym=
ous=C2=A0functions not working, but even if I make sure that recipe-sysroot=
 and recipe-sysroot-native are populated it wont import in python functions=
. In the meantime I have found old mail from 2017 in this list=C2=A0<a href=
=3D"https://www.yoctoproject.org/pipermail/yocto/2017-November/039014.html"=
>https://www.yoctoproject.org/pipermail/yocto/2017-November/039014.html</a>=
 according=C2=A0to this in 2017 it was impossible to import modules built b=
y yocto. Is this still true?</div><div><br></div><div>Regards,</div><div>Ma=
rek Slomiany</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">pt., 22 lip 2022 o 10:21=C2=A0Quentin Schulz &lt;<a href=3D"mai=
lto:quentin.schulz@theobroma-systems.com">quentin.schulz@theobroma-systems.=
com</a>&gt; napisa=C5=82(a):<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">Hi Marek,<br>
<br>
On 7/22/22 08:53, Marek S?omiany wrote:<br>
&gt; Hello everyone,<br>
&gt; <br>
&gt; I am working on creating a custom class (basically own image signing) =
that<br>
&gt; will be using a client&#39;s python module, but to simplify I&#39;ll u=
se as an<br>
&gt; example a python3 module Magic as it behaves in exactly the same way. =
I&#39;m<br>
&gt; working on dunfell.<br>
&gt; <br>
&gt; So basically in recipe I am using depends to add the module and it wor=
ks in<br>
&gt; example like that:<br>
&gt; <br>
&gt; inherit python3native<br>
&gt; DEPENDS +=3D &quot;python3-magic-native&quot;<br>
&gt; do_sometask(){<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 python3 ${S}/testapp.py<br>
&gt; }<br>
&gt; <br>
&gt; and in testapp.py importing magic works fine, but when I&#39;m trying =
to import<br>
&gt; magic in python function, bitbake-style python functions or in anonymo=
us<br>
&gt; python functions it fails to find the module.<br>
&gt; as an example that do NOT work:<br>
&gt; def foo(d):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 import magic<br>
&gt;=C2=A0 =C2=A0 =C2=A0 mime =3D magic.Magic(mime=3DTrue)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 return &quot;foo&quot;<br>
&gt; <br>
&gt; python do_bar () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 bb.warn(foo(d))<br>
&gt; }<br>
&gt; <br>
&gt; Neither it works in do_bar nor in foo as shown above. Always ends up w=
ith:<br>
&gt; Exception: ModuleNotFoundError: No module named &#39;magic&#39;<br>
&gt; <br>
&gt; I have also tried to set variable:<br>
&gt; PYTHON_SITEPACKAGES_DIR =3D<br>
&gt; &quot;${WORKDIR}/recipe-sysroot/usr/lib/python3.8/site-packages&quot;<=
br>
&gt; but it does nothing in my case.<br>
&gt; <br>
&gt; Can you help me with this?<br>
&gt; <br>
<br>
Anonymous functions are run during parsing before anything is built. <br>
Therefore, I don&#39;t think it&#39;ll be possible to use a python module f=
rom a <br>
recipe in an anonymous function.<br>
<br>
In order to use native binaries from recipes in another recipe, the <br>
binaries need to be in the recipe sysroot-native directory. This is what <b=
r>
DEPENDS does behind the scenes, it adds a dependency for one task of <br>
your recipe on the population of sysroot-native from all dependencies <br>
(DEPENDS). Therefore, your DEPENDS will be enough if it happens in any <br>
task running after the do_prepare_recipe_sysroot task of your recipe.<br>
<br>
Don&#39;t forget that a task is run only if it&#39;s in the path of a task =
<br>
requested by the user or another recipe as a dependency. Usually it <br>
needs to be in the path of the do_build task. e.g. addtask my_task after <b=
r>
do_prepare_recipe_sysroot is not enough if you want my_task to always <br>
run during a normal build because nothing has a dependency ON my_task. <br>
addtask my_task after do_prepare_recipe_sysroot before do_configure for <br=
>
example, will work, because when do_configure will need to be run, it&#39;l=
l <br>
ask my_task to be run too by bitbake.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div></div>

--00000000000058fe8e05e460a80f--

