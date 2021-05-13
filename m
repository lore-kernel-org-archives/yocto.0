Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.9665.1620888340018156492
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 23:45:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ln3rMnug;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: onyx22574@gmail.com)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D37CF38C05B5
	for <yocto@yoctoproject.org>; Thu, 13 May 2021 06:45:38 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id 131so7186806ljj.3
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 23:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XLkXogBUZhdeToKrgK9Y9grznf3nlDe55TLFw64nYMs=;
        b=ln3rMnugSgvwtWZTSICheYGHwVQiVLPx9ThbFl62lGrgIPS1+rc73PH88bXbzJFIaq
         UA08x0wOS61UUjcOgmG1t8edEt2tW10rlp98XkET3M4+iG4x/l0lpziDt/Erwx5gcUb+
         4FiBHxS5hPVp1ac0vnBm4DOCWDpegp7P5ovVjfPw1rmU+dBDTtwcQjQSXmgG+sJq15Ml
         4iuPOEOX/lN9lq1VpxYhVMXAOrhj37Sd8JyL6d2iWT1efP46JDuSnHDXKa2vBZbGWKBT
         7DPNU4zayVxLN3rRbKilM+nWHBeFCm87A1Bfz97fNPBDLM3k9V6+Ah/7cWJRktxygc1m
         6ybw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XLkXogBUZhdeToKrgK9Y9grznf3nlDe55TLFw64nYMs=;
        b=P+uL0mUlI6mrrumhj0w4BCA+EJgejHZCAixPD9Hv3zUjOesarrJkwb7zQhqnz5vqp5
         Wi3e/19rbe+Bi2+3L6TNvOQ+9JS/QTlNhjCw33jERmSCCfpjswJZ2c0hvkKZX5VzIfJQ
         GmTBmwkj2Bwz/mrG/LzMN6zkR2oRv9yQ1fyxjFRDqp/tiaGb3JBlPMvdorHk2mVVeK+D
         Cs+e6/cdDKqwAfFUPkx6rlirZsDBWx3Y2jNKZICm+HoB08lFBqOufZX3MUK4ccFOtjb/
         5hKkPhlta64rYJxsTawZV0l6wcRGSr9k2FUG7Nauw6FXOp21iT9t8qlDvQPt+bUq6+KH
         XEuw==
X-Gm-Message-State: AOAM533whjEEUhXAsjwtfIgZwkvfV8tfSo05JYVa6weBtpcB+ziQjYfs
	HwSmk1TZoV3an061yg3kj5Xb2k2URc7/8zp4UxQ=
X-Google-Smtp-Source: ABdhPJwp2Bzs33Yh7oVZwfrNhBQpPD0DSlHFX8t3yTjEX07rEunKgA2zKqpuBBwhunXsK2LM2t1Pl+hUhfmyfDGuDOo=
X-Received: by 2002:a2e:9d8e:: with SMTP id c14mr32217568ljj.350.1620888337203;
 Wed, 12 May 2021 23:45:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAF2aNtzrjYOUYdevN83fJ-Dn6Jjp1SsNh1Q5zO0MXFEjW4xcUg@mail.gmail.com>
 <CAMKF1sqxa+F4POAOb78tZd2ArPPk9ZTjfRMWSWEXyDyXxug9Pw@mail.gmail.com>
In-Reply-To: <CAMKF1sqxa+F4POAOb78tZd2ArPPk9ZTjfRMWSWEXyDyXxug9Pw@mail.gmail.com>
From: "Jack Daniels" <onyx22574@gmail.com>
Date: Thu, 13 May 2021 08:45:26 +0200
Message-ID: <CAF2aNtyY+xM2Oj4w8Mf+hZmr47wTpb+ibYDQK=fFinj4Cue=jQ@mail.gmail.com>
Subject: Re: [yocto] Yocto with xtensa
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008f45cb05c23079ae"

--0000000000008f45cb05c23079ae
Content-Type: text/plain; charset="UTF-8"

Hello Khem,

Thank you for the information.
Is it about adding support for the xtensa build system (toolchain)? Is it
work for heterogeneous SoC (CPU/ARM + DSP/xtensa) as well?

Thank you.
BR/J

On Thu, May 13, 2021 at 1:07 AM Khem Raj <raj.khem@gmail.com> wrote:

> Hello Jack,
>
> I think we do not have support for Xtensa architecture working out of
> box upstream. Although it should be possible to add it with little
> effort, but no one has spun patches to do so
> thus far.
>
> Thanks
> -Khem
>
> On Wed, May 12, 2021 at 1:29 PM Jack Daniels <onyx22574@gmail.com> wrote:
> >
> > Dears,
> >
> > I am looking for a way to include sample code for DSP (xtensa) with
> Yocto/Linux. what would be the procedure to include such a code and
> eventually interprocessor communication between xtensa core and CPU under
> Yocto/Linux?
> >
> > Thank you.
> > BR/J
> >
> >
> > 
> >
>

--0000000000008f45cb05c23079ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Khem,<div><br></div><div>Thank you for the informati=
on.=C2=A0</div><div>Is it about adding support for the xtensa build system =
(toolchain)? Is it work for=C2=A0heterogeneous=C2=A0SoC (CPU/ARM=C2=A0+=C2=
=A0DSP/xtensa) as well?</div><div><br></div><div>Thank you.</div><div>BR/J=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, May 13, 2021 at 1:07 AM Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hello Jack,<br>
<br>
I think we do not have support for Xtensa architecture working out of<br>
box upstream. Although it should be possible to add it with little<br>
effort, but no one has spun patches to do so<br>
thus far.<br>
<br>
Thanks<br>
-Khem<br>
<br>
On Wed, May 12, 2021 at 1:29 PM Jack Daniels &lt;<a href=3D"mailto:onyx225=
74@gmail.com" target=3D"_blank">onyx22574@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Dears,<br>
&gt;<br>
&gt; I am looking for a way to include sample code for DSP (xtensa) with Y=
octo/Linux. what would be the procedure to include such a code and eventual=
ly interprocessor communication between xtensa core and CPU under Yocto/Lin=
ux?<br>
&gt;<br>
&gt; Thank you.<br>
&gt; BR/J<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div>

--0000000000008f45cb05c23079ae--
