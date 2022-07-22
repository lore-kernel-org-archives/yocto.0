Return-Path: <marekslomiany@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6783DC43334
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 06:54:14 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com
 [209.85.128.172])
 by mx.groups.io with SMTP id smtpd.web10.5092.1658472847591945703
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 23:54:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RBcgKqAJ;
 spf=pass (domain: gmail.com, ip: 209.85.128.172,
 mailfrom: marekslomiany@gmail.com)
Received: by mail-yw1-f172.google.com with SMTP id
 00721157ae682-31e45527da5so38612577b3.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 23:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=mKWkRISzlCkmKqCKa3+rW5x0rJ2Kj6xw1rcYbNgvt7I=;
        b=RBcgKqAJci80MMt9pC04oLOj0mVASa9fMEYeS8DCIQYpta8GNa8uIq9uw+tTLMx4yr
         w5hUzZnwIfvQYB5bUdIz7akYuE0D2HORRsGUSxXY3oowGnqTqbf+g2gMN6itkifeo6PR
         irXut1GwWRfOHtfv+5oSUbSBDPYHgveMZHf2KaiIuNziGLonuWdC+5pOKeOGaXFhX6ZZ
         GEQAYzcBi9eNVmChd0NLhTzFXrxKCGY8myaFD8p9NufLeBoI6uJjx1U5W1djUdSAYzbq
         fOEUMoWp+JDVIkfwXtUc68pIXdsb1dR0OhGpcomHerv3BGeKJJ/3g7yrv01xXauO4FO0
         B0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mKWkRISzlCkmKqCKa3+rW5x0rJ2Kj6xw1rcYbNgvt7I=;
        b=gyOMuF4OT/uAY6JasB7ELKrL7K5/v597jjQDbnDVi+fK3t6fG01RCzbwx7DOwKITb4
         VwJ4skRl7bFjoEWA5hkMqPRfDD7XfDvlmoecC0Fcn468pJFYQ0ID1ZSMXrYbPX4nPAVL
         0ckmiEJfapL6K48eLZHz+RqHwfYNDdhv3c1g2//pdKCihmFzS2R4Vw0NhfNhQT6tBRU9
         kQsSqWfBM9W4uGx0Zprx9nHVNzyxzPg0zAUtf0xZNcOauDh+ZKlgiDQjYatUQ+/nMot3
         bhwQTD+nvwab3/W1wB9fyvULspHiQ/GoQwYi9tI88w/iEXcAqwW7VsaAAq9QjRmYD6Eb
         XAhg==
X-Gm-Message-State: AJIora9ETwP7YOmVcdv1ozkfS7DuIaGtjQoXdv/1WmJ9ahxzw4v+VWlL
	NQj+rXpb4DDYqKIf9owljfuJmwLK5yu78IvA9jYdSxAl69g=
X-Google-Smtp-Source: 
 AGRyM1t6fFhYjgjn2gtEEmYNGefuSkOqkZ8lwiRhlLt+YEyfU8z7RxvavyMJWBpoAFdp0jePsVd4RyLutuCy+tnnkA0=
X-Received: by 2002:a81:c251:0:b0:31e:6e5a:84c9 with SMTP id
 t17-20020a81c251000000b0031e6e5a84c9mr1872098ywg.37.1658472846601; Thu, 21
 Jul 2022 23:54:06 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Date: Fri, 22 Jul 2022 08:53:55 +0200
Message-ID: 
 <CAJCDnYaubUajjanOwDFCB9r_f2QViqzLu5kfujuBSLpydyEd+A@mail.gmail.com>
Subject: Using custom python modules in classes and functions
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e432b605e45f4c2c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 06:54:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57618

--000000000000e432b605e45f4c2c
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I am working on creating a custom class (basically own image signing) that
will be using a client's python module, but to simplify I'll use as an
example a python3 module Magic as it behaves in exactly the same way. I'm
working on dunfell.

So basically in recipe I am using depends to add the module and it works in
example like that:

inherit python3native
DEPENDS += "python3-magic-native"
do_sometask(){
        python3 ${S}/testapp.py
}

and in testapp.py importing magic works fine, but when I'm trying to import
magic in python function, bitbake-style python functions or in anonymous
python functions it fails to find the module.
as an example that do NOT work:
def foo(d):
    import magic
    mime = magic.Magic(mime=True)
    return "foo"

python do_bar () {
    bb.warn(foo(d))
}

Neither it works in do_bar nor in foo as shown above. Always ends up with:
Exception: ModuleNotFoundError: No module named 'magic'

I have also tried to set variable:
PYTHON_SITEPACKAGES_DIR =
"${WORKDIR}/recipe-sysroot/usr/lib/python3.8/site-packages"
but it does nothing in my case.

Can you help me with this?

Kind Regards,
Marek Slomiany

--000000000000e432b605e45f4c2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div><br></div><div>I am working on creatin=
g a custom class (basically own image signing) that will be using a client&=
#39;s python module, but to simplify=C2=A0I&#39;ll use as an example a pyth=
on3 module Magic as it behaves in exactly the same way. I&#39;m working on =
dunfell.</div><div><br></div><div>So basically=C2=A0in recipe I am using de=
pends to add the module and it works in example like that:</div><div><br></=
div><div>inherit python3native<br></div><div>DEPENDS=C2=A0+=3D &quot;python=
3-magic-native&quot;</div><div>do_sometask(){<br></div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 python3 ${S}/testapp.py<br>}<br></div><div><br></div><div>and=
 in testapp.py importing magic works fine, but when I&#39;m trying to impor=
t magic in python function, bitbake-style python functions or in anonymous =
python functions it fails to find the module.</div><div>as an example that =
do NOT work:</div><div>def foo(d):<br>=C2=A0 =C2=A0 import magic<br>=C2=A0 =
=C2=A0 mime =3D magic.Magic(mime=3DTrue)<br>=C2=A0 =C2=A0 return &quot;foo&=
quot;<br><br>python do_bar () {<br>=C2=A0 =C2=A0 bb.warn(foo(d))<br>}<br></=
div><div><br></div><div>Neither it works in do_bar nor in foo as shown abov=
e. Always ends up with:</div><div>Exception: ModuleNotFoundError: No module=
 named &#39;magic&#39;<br></div><div><br></div><div>I have also tried to se=
t variable:</div><div>PYTHON_SITEPACKAGES_DIR =3D &quot;${WORKDIR}/recipe-s=
ysroot/usr/lib/python3.8/site-packages&quot;<br></div><div>but it does noth=
ing in my case.</div><div><br></div><div>Can you help me=C2=A0with this?</d=
iv><div><br></div><div>Kind Regards,</div><div>Marek Slomiany</div></div>

--000000000000e432b605e45f4c2c--

