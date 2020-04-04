Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web11.3424.1585971917370546038
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Apr 2020 20:45:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RrwNyZ3/;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: ticotimo@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id i3so9826220ioo.13
        for <yocto@lists.yoctoproject.org>; Fri, 03 Apr 2020 20:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VALURDefv6H7rycL+qMLmDW9MD2qJLWfKfs1ytX7fSg=;
        b=RrwNyZ3/U+I1ceNiw6fuiti3RjJgz5/PqVEMjFtOmVxKICOk0cHM5YonxE0jB707kV
         cOlyL4gBvKKlqeHJSHhQk88m24fTmWy5/5+UR6oQFuFaiKo+Z8m9fYH5Goj1ubFQII+p
         ujZ9LxnLcrukuPg4ygbC+XAz+F1Pag0V/FBmAhYxkhmsqL+8FMq0KAoSzAqsm1hd93EU
         3fUIsDASduVIAHNmyydWFIteo2gG3ypwWl8poMaWqjRyqUk+Wr25mfWZJJK+LKSmvfeW
         KxG8WF5PvOWFN39hGgT9v9GGWkDiD6VK4kmrjaf0bxtUSkEZDKt/RnSRHXjp+cmsmgzC
         gx/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VALURDefv6H7rycL+qMLmDW9MD2qJLWfKfs1ytX7fSg=;
        b=ATflUcwEr4bR6AY5WBMQgeksspyjbpeeB25KHmaXwZjPYjUP0Uc4LQjCIP+ORHPSso
         WEyypcA+RuXVmsh5FA++kKM+mqsXLAySPaQ6ltuYieYFZ5atk7T1LPnMr9fIQTjarqAO
         +0U1isXrXmZweu6JT9lXQA/pVABmPI5LhJxyxTHYg1rRSw5NysazDg0EcMrgH+kf0t9k
         b6mXqUIQCAQ6E/IDTFdoUTKgw4oACqFgxlzoPhfxr8EhPzhfrlv16PASkVVpQaanH4q4
         JuPeZ7Nn3YYnHcrD0Yyaybkyi7+NwNLEaKna+D5UaSLNoKc23C4YbWq4YQRyudmXkWyt
         DCDg==
X-Gm-Message-State: AGi0PuY4MoDsgjtaJIhNcAPI0n+ZLHilNl6VdXKRfbZJLnMyjgpTuDxo
	D6XbySMXLoSXXwISZCukxo7NR+KtQnVjGTa8aco=
X-Google-Smtp-Source: APiQypJi38KK5gW2GmiPCV0owC4KYjD6TxvUprnSKd188KTUVx2zesi5C+nGS3CBtsZRQfax60wf+58gLL8WIwpi668=
X-Received: by 2002:a02:2944:: with SMTP id p65mr11072821jap.89.1585971916658;
 Fri, 03 Apr 2020 20:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <ov4c.1585970971927964887.70rX@lists.yoctoproject.org>
In-Reply-To: <ov4c.1585970971927964887.70rX@lists.yoctoproject.org>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Fri, 3 Apr 2020 20:45:05 -0700
Message-ID: <CANx9H-AcPKt7Oq+Qbv5G0tSGCe=pqKa0k7KFdp3EugA1DAiAdg@mail.gmail.com>
Subject: Re: [yocto] Python modules missing #yocto #python
To: zidouhzakaria@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b7702a05a26edc63"

--000000000000b7702a05a26edc63
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 3, 2020 at 8:29 PM <zidouhzakaria@gmail.com> wrote:

> Hello,
>
> I am trying to install numpy module in my image using "pipoe". When i
> bitbake my recipe i got this :
>

Numpy is already part of oe-core:
http://layers.openembedded.org/layerindex/recipe/51338/

Why not just use the existing recipe?


> Log data follows:
> | DEBUG: Executing shell function do_compile
> | ERROR: python3 setup.py build_ext execution failed.
> | numpy/random/_bounded_integers.pxd.in has not changed
> | Processing numpy/random/_mt19937.pyx
> | Traceback (most recent call last):
> |   File
> "path/to/build/work/aarch64-poky-linux/python3-numpy/1.18.2-r0/numpy-1.18.2/tools/cythonize.py",
> line 61, in process_pyx
> |     from Cython.Compiler.Version import version as cython_version
> | ImportError: No module named 'Cython'
>
> I installed Cython also with pipoe and added : RDEPENDS_${PN} =
> "${PYTHON_PN}-cython" to numpy recipe but nothing changed. Any idea ?
>
> Thank you 
>

--000000000000b7702a05a26edc63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Apr 3, 2020 at 8:29 PM &lt;<a href=3D"mailto:zidou=
hzakaria@gmail.com">zidouhzakaria@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">Hello, <br><br>I am trying to install numpy module =
in my image using &quot;pipoe&quot;. When i bitbake my recipe i got this : =
<br></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Numpy is alr=
eady part of oe-core:</div><div dir=3D"auto"><div><a href=3D"http://layers.=
openembedded.org/layerindex/recipe/51338/">http://layers.openembedded.org/l=
ayerindex/recipe/51338/</a></div><br></div><div dir=3D"auto">Why not just u=
se the existing recipe?</div><div dir=3D"auto"><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><br>Log data follows:<br>| DEBUG: Executing shell function d=
o_compile<br>| ERROR: python3 setup.py build_ext execution failed.<br>| num=
py/random/_<a href=3D"http://bounded_integers.pxd.in" target=3D"_blank">bou=
nded_integers.pxd.in</a> has not changed<br>| Processing numpy/random/_mt19=
937.pyx<br>| Traceback (most recent call last):<br>|=C2=A0=C2=A0 File &quot=
;path/to/build/work/aarch64-poky-linux/python3-numpy/1.18.2-r0/numpy-1.18.2=
/tools/cythonize.py&quot;, line 61, in process_pyx<br>|=C2=A0=C2=A0=C2=A0=
=C2=A0 from Cython.Compiler.Version import version as cython_version<br>| =
ImportError: No module named &#39;Cython&#39;<br><br>I installed Cython als=
o with pipoe and added : RDEPENDS_${PN} =3D &quot;${PYTHON_PN}-cython&quot;=
 to numpy recipe but nothing changed. Any idea ?<br><br>Thank you
<br>
</blockquote></div></div>

--000000000000b7702a05a26edc63--
