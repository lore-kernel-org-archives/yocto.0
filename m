Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web11.9476.1591359129405400062
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jun 2020 05:12:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TVw/6NnY;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id j13so5463989vsn.3
        for <yocto@lists.yoctoproject.org>; Fri, 05 Jun 2020 05:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=47kDZkiLHmIxgWDsxW30DoXN/Fg+2+t6aaSmtpyWz3s=;
        b=TVw/6NnYPA3MGMN2PL00hnDQt12NPMpu6wMJX1PBBfRCKrBo0J6b5j0z7JYbWexTOO
         qeqTH8e8eHY6MCl5zGz0T4P9HJ7bybpGDPspdp+RhQ0WI945vw81YK4qSRLl2HowUQuC
         SlzDo4dzbxGBZY984/HwEAFyB7WeYEieY6R02hEXXWraXuUJyiqjOm/iWJi6NEwb16Kl
         h56fmjCEQ0f8Dkp8GDQN1GvxLSp0feM95CFIZXlB046aUxCgqIrycQKkSkCz4DHd3HP/
         UbMh0EDCI0leC1kluh36TJNkaf9Wgn+uLdk0lTBPqe+XN54ipJ3Kz/P6LBeTeDHaNof3
         ak+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=47kDZkiLHmIxgWDsxW30DoXN/Fg+2+t6aaSmtpyWz3s=;
        b=FsYii3kAQoWffuBFE9OwsWVsjsQ8XaZ4qYYXlDwcww0akMlllaZahwAo8s9m/myT9q
         GsqynVJzYz8fWf89OMpordBN3Nq0jm0WeZN7QXvUTecVyy6+Fvz2gakTY9cp50TWytB6
         P3QNs3JtAacsEyEBp9gP9XqZaDZ+9SW0G75lah8UbJpKFwdmhT61JBRmG704h86WeM0s
         NyyktLnx+X7Jko9a73ppDh4WHKkIOY7Aqj4dN4/zNTeeW3v0s8PsAra7/Sz/qiq7XvOa
         e7jaZ5Tr70OL8nxU+DG8rEvbFFYKQWH/4C0/I8+nVF9tC2RgGScrCaYyUfRWDvbEFbjW
         zxmA==
X-Gm-Message-State: AOAM532we72P8eQOJhVXqu/lvr819e8EMXyN511q5HhMr9QpI3/1UZIX
	c1Nr4RW1EI1GiFPAelENUhbciqumJRBuy/cjTIGvZyoJ
X-Google-Smtp-Source: ABdhPJxGmajLNKKWD7YBscGWkYNu2r6UA/U76OEVLhMHf26KWx/5Sj9qSd/928W5PEQnfyPfLVTRUmj2BjwAe4q8pow=
X-Received: by 2002:a67:6ec4:: with SMTP id j187mr6418167vsc.35.1591359128462;
 Fri, 05 Jun 2020 05:12:08 -0700 (PDT)
MIME-Version: 1.0
References: <294e63c4-293f-9b86-82d5-7c41bead0d2c@faresoftware.it>
In-Reply-To: <294e63c4-293f-9b86-82d5-7c41bead0d2c@faresoftware.it>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 5 Jun 2020 14:11:56 +0200
Message-ID: <CANNYZj-0O6ixQCUxrj5U7ZYsU7-CqSQHxDXN2S1W7c_Z_xaicw@mail.gmail.com>
Subject: Re: [yocto] Recipe do_install priority
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008feee605a7552b29"

--0000000000008feee605a7552b29
Content-Type: text/plain; charset="UTF-8"

do_install() is not installing things into the final image. It is
installing items to the target location under a separate 'destination
directory', independently of anything else that installs to the same target
location under different destination directory. If the filenames are the
same, you will get a file conflict error later on when the image is
constructed.

It would help if you describe in detail what file do you intend to replace,
and why.

Alex

On Fri, 5 Jun 2020 at 13:31, Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all.
>
> I'm Mauro.
>
> I have to resolve this matter.
>
> The recipe  init-ifupdown.bb install file interfaces in /etc/network.
>
>
> I build a library which need to install the same file in the same folder.
>
> This library is managed by its own recipe  library.bb in my meta-mylayer.
>
>
> How can I tell to bitbake to install library after init-ifupdown in
> final image?
>
>
> The best for me should be drive this behavoir in the recipe-image.bb in
> this way
>
>
> library:do_install after init-ifupdown:do_install
>
>
> that means  run do_install of library.bb afger do_install of
> init-ifupdown.bb
>
>
> Any idea?
>
>
> MZ
>
> 
>

--0000000000008feee605a7552b29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>do_install() is not installing things into the final =
image. It is installing items to the target location under a separate &#39;=
destination directory&#39;, independently of anything else that installs to=
 the same target location under different destination directory. If the fil=
enames are the same, you will get a file conflict error later on when the i=
mage is constructed.<br></div><div><br></div><div>It would help if you desc=
ribe in detail what file do you intend to replace, and why.</div><div><br><=
/div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, 5 Jun 2020 at 13:31, Mauro Ziliani &lt;<a h=
ref=3D"mailto:mauro@faresoftware.it">mauro@faresoftware.it</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all.<br>
<br>
I&#39;m Mauro.<br>
<br>
I have to resolve this matter.<br>
<br>
The recipe=C2=A0 <a href=3D"http://init-ifupdown.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">init-ifupdown.bb</a> install file interfaces in /etc/networ=
k.<br>
<br>
<br>
I build a library which need to install the same file in the same folder.<=
br>
<br>
This library is managed by its own recipe=C2=A0 <a href=3D"http://library.=
bb" rel=3D"noreferrer" target=3D"_blank">library.bb</a> in my meta-mylayer.=
<br>
<br>
<br>
How can I tell to bitbake to install library after init-ifupdown in <br>
final image?<br>
<br>
<br>
The best for me should be drive this behavoir in the <a href=3D"http://rec=
ipe-image.bb" rel=3D"noreferrer" target=3D"_blank">recipe-image.bb</a> in <=
br>
this way<br>
<br>
<br>
library:do_install after init-ifupdown:do_install<br>
<br>
<br>
that means=C2=A0 run do_install of <a href=3D"http://library.bb" rel=3D"no=
referrer" target=3D"_blank">library.bb</a> afger do_install of <br>
<a href=3D"http://init-ifupdown.bb" rel=3D"noreferrer" target=3D"_blank">i=
nit-ifupdown.bb</a><br>
<br>
<br>
Any idea?<br>
<br>
<br>
MZ<br>
<br>
<br>
</blockquote></div>

--0000000000008feee605a7552b29--
