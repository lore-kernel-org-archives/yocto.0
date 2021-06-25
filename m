Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web09.6653.1624623563023391312
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Jun 2021 05:19:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kzIRUzkm;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: fbberton@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id q16so1769052lfr.4
        for <yocto@lists.yoctoproject.org>; Fri, 25 Jun 2021 05:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zr/XMAdf6NMC0IQ/CELAo4qNz6WM4OK1zpyPmYusSUk=;
        b=kzIRUzkmVrwNzyLYqYdeP16oW6o/O4hf+krad/jO9hqIKIKYtfRs2O1+5k37nwb/R1
         6nRk711NK/KU0xjWOOPKdZA6agoNGtLHRhZvzOAGh3BUX0+x97xx4BegrPVrj9Sitzgv
         AifFfQvZfCrZS3OjF6CdjTt7aWyBqbGW5lON164P94Bi5JJFNkjREd1+YKvIvfE55FaU
         sxd0bpAI7I8IuxqWFa07STHdu9/j5GLMwaMxTnuaUNkXul2nvFpLKSbh3ajJ1i/h23G2
         Rg/FGs+NRfFbSh2jTZ9nKffJgp2aSXRO2cpWDP9Al4BStNto41q3yvssRqsvebAIw0Pj
         HetQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zr/XMAdf6NMC0IQ/CELAo4qNz6WM4OK1zpyPmYusSUk=;
        b=YnHRW2uZM3/bjW9vnHhi7I1OEbDb/THUrCKW/lR1+olciexHJdzqQXAfYQytAOwC+W
         mPxHpJxXSNqrdNip5l1bcoYMevHGe/eOOij4zZBzPN4SqNKpaCvz3aGoc/UDJKYsBfNb
         EtmmGQKqcYbRu9QKj1ByWc7XXOP5YRWV9oN8WqiZqIutwOtEQB/DziM8Z/AtKkoEDA5l
         i00gfShdhvoneGfE+cveb4SJMhqSwmqF7LtW+vE7L6+GfhpOI+d0bo05kS+1xotUAyBu
         S11xS5hqjQqzt5h/JQ5DH8g2WLu/MsSGwMDaaEqrJIchnjd1NP5fHVgYTwtw07OP59CY
         XcPQ==
X-Gm-Message-State: AOAM533Cy9GDVn9gd4VaagxYEVb1GewGPcy0p7qOtUxJQ8JdlCHEVq7Y
	n0Gss7h8zrqaxscWrN6nbedLLFCG0aa1pgtOPtY=
X-Google-Smtp-Source: ABdhPJx6Te8tLG954OO39E+I2ptVQPpD4OekDEobUQvQAhZTR60q3mIxgYNv9sQkk5Wr3xQUF6DPyJ6v/neOYfNDO+U=
X-Received: by 2002:ac2:498d:: with SMTP id f13mr7600241lfl.204.1624623561109;
 Fri, 25 Jun 2021 05:19:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAEaGWUKmET2Le-hsEe-o+n1OU8uT+Vqd5TbmKVS8ZwKPQOok0w@mail.gmail.com>
 <be7aa6a88919a2d2e4a2ce65ef614d45cbdd3449.camel@linuxfoundation.org>
In-Reply-To: <be7aa6a88919a2d2e4a2ce65ef614d45cbdd3449.camel@linuxfoundation.org>
From: "Fabio Berton" <fbberton@gmail.com>
Date: Fri, 25 Jun 2021 09:19:09 -0300
Message-ID: <CAEaGWUJxGGY5fVHOEcp-iD9es0Kka4AngaVCwouda5Q11rityg@mail.gmail.com>
Subject: Re: [yocto] The do_populate_sdk is finishing OK even when there are errors present in the build
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000040f5bc05c59626ac"

--00000000000040f5bc05c59626ac
Content-Type: text/plain; charset="UTF-8"

Hi Richard!

Ok, I'll prepare a patch, do more tests on my side and if everything works
I'll send the patch to the OE-core list.

Is there any specific test, or just populate_sdk with core-image-base?

Thanks!

On Fri, Jun 25, 2021 at 8:48 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2021-06-24 at 17:40 -0300, Fabio Berton wrote:
> > Hi all!
> >
> > I'm running some test with do_populate_sdk task and I'm seeing this
> > on the log:
> >
> > check_data_file_clashes: Package kmsxx-dbg wants to install file
> /home/builder/build/tmp/work/foo-poky-
> >
> linux/core-image-minimal/1.0-r0/sdk/image/opt/bar/sysroots/aarch64-poky-linux/usr/bin/.debug/kmstest
> > But that file is already provided by package  * libdrm-dbg
> >
> > I also see this kind of message with other packages.
> >
> > Looking in the source code I found that the install_complementary
> > function runs this [1] with attempt_only=True, and if attempt_only is
> > true log above it's just a warning, as shown here [2].
> >
> > This [3] comment says that "will only attempt to install these packages,
> > if they don't exist then no error will occur."
> >
> > My question is how can I force an error and not just a warning when
> > running do_populate_sdk?
> >
> > I understand that I can change [1] to run:
> >
> >   self.install(install_pkgs)
> >
> > so, it'll use set attempt_only to False, that is the default, but I
> > think this will break some use cases.
> >
> > What is the correct behaviour here, see the warning messages and fix
> > the packages to avoid "file is already provided by package" messages,
> > every time I create a SDK or change in some way to see an error message
> >  and stop SDK generation?
> >
> > What is the correct behavior here, inspect the warning messages, and
> > fix the packages to avoid "file is already provided by package" messages,
> > every time I create an SDK or change it in some way to see an error
> > message and stop the SDK generation?
>
> It would probably be worth an experiment to see if we really do need the
> attempt_only option set there any more. I'd hope it isn't needed now...
>
> It is probably worth testing a patch on the autobuilder, assuming your
> local tests with that pass. We'd need to check the different package
> backends are ok with that.
>
> Cheers,
>
> Richard
>
>

--00000000000040f5bc05c59626ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">Hi Richard!</div><div class=3D"gmail_default" style=3D"font-fa=
mily:monospace,monospace"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:monospace,monospace">Ok, I&#39;ll prepare a patch, do more tests=
 on my side and if everything works I&#39;ll send the patch to the OE-core =
list.</div><div class=3D"gmail_default" style=3D"font-family:monospace,mono=
space"><br></div><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">Is there any specific=C2=A0test, or just populate_sdk with cor=
e-image-base?</div><div class=3D"gmail_default" style=3D"font-family:monosp=
ace,monospace"><br></div><div class=3D"gmail_default" style=3D"font-family:=
monospace,monospace">Thanks!</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 25, 2021 at 8:48 AM Richard P=
urdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.pur=
die@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">On Thu, 2021-06-24 at 17:40 -0300, Fabio Berton wrot=
e:<br>
&gt; Hi all!<br>
&gt; <br>
&gt; I&#39;m running some test with do_populate_sdk task and I&#39;m seeing=
 this=C2=A0<br>
&gt; on the log:<br>
&gt; <br>
&gt; check_data_file_clashes: Package kmsxx-dbg wants to install file /home=
/builder/build/tmp/work/foo-poky-<br>
&gt; linux/core-image-minimal/1.0-r0/sdk/image/opt/bar/sysroots/aarch64-pok=
y-linux/usr/bin/.debug/kmstest<br>
&gt; But that file is already provided by package =C2=A0* libdrm-dbg<br>
&gt; <br>
&gt; I also see this kind of message with other packages.<br>
&gt; <br>
&gt; Looking in the source code I found that the install_complementary=C2=
=A0<br>
&gt; function runs this [1] with attempt_only=3DTrue, and if attempt_only i=
s=C2=A0<br>
&gt; true log above it&#39;s just a warning, as shown here [2].<br>
&gt; <br>
&gt; This [3] comment says that &quot;will only attempt to install these pa=
ckages,=C2=A0<br>
&gt; if they don&#39;t exist then no error will occur.&quot;<br>
&gt; <br>
&gt; My question is how can I force an error and not just a warning when=C2=
=A0<br>
&gt; running do_populate_sdk?=C2=A0<br>
&gt; <br>
&gt; I understand that I can change [1] to run:<br>
&gt; <br>
&gt; =C2=A0 self.install(install_pkgs)<br>
&gt; <br>
&gt; so, it&#39;ll use set attempt_only to False, that is the default, but =
I=C2=A0<br>
&gt; think this will break some use cases.=C2=A0<br>
&gt; <br>
&gt; What is the correct behaviour here, see the warning messages and fix=
=C2=A0<br>
&gt; the packages to avoid &quot;file is already provided by package&quot; =
messages,=C2=A0<br>
&gt; every time I create a SDK or change in some way to see an error messag=
e<br>
&gt;=C2=A0 and stop SDK generation?<br>
&gt; <br>
&gt; What is the correct behavior here, inspect the warning messages, and<b=
r>
&gt; fix the packages to avoid &quot;file is already provided by package&qu=
ot; messages,<br>
&gt; every time I create an SDK or change it in some way to see an error=C2=
=A0<br>
&gt; message and stop the SDK generation?<br>
<br>
It would probably be worth an experiment to see if we really do need the<br=
>
attempt_only option set there any more. I&#39;d hope it isn&#39;t needed no=
w...<br>
<br>
It is probably worth testing a patch on the autobuilder, assuming your<br>
local tests with that pass. We&#39;d need to check the different package<br=
>
backends are ok with that.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--00000000000040f5bc05c59626ac--
