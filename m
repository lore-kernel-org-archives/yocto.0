Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web08.26956.1623657894903249418
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 01:04:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EvbhHbn/;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: thisisaash9698@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id q16so11555684qkm.9
        for <yocto@lists.yoctoproject.org>; Mon, 14 Jun 2021 01:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xsu4FUiP5XhEAAxn/HC15meGSAyseewhv9ZQiAHPCos=;
        b=EvbhHbn/XWDNC3ij3HDHoXM3yXNhEVn9BIVH8DpzzPMW/xYzhaVLXPKkgfd1oDr1A/
         aglMDCJn2cM3o53yOloJJwkO+hYGNu1pRt/joNrQrenLDuShKWmwfFSyytgUmqFNpgNG
         1hNlhwrUrwbPZE/Ft5OQ58xk+ANd/krqw6IT/h/YRT9MdiWYnI2/AaNX0IGzz12H4lkd
         AW8P46ygsOIQMn+ilmzMXKCw0YhsGD2cAFP3eB8rPMpZIYQgVajxvZZmHz6MNYhJDovu
         bSQbzK03bIoqdS/ogIMonUV+M6S73Rha3mIbJuR9mSuyj1ECMO0RzhALV0yq+wUl4UzU
         N+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xsu4FUiP5XhEAAxn/HC15meGSAyseewhv9ZQiAHPCos=;
        b=lL+H7RUluxmP+tbwTMoZadIlR96RMI078y4UTWZWRckPXWQYXfsTDHqsnLGveSAF0P
         Y7CEE5OaqFOYhPk7sckoozGrHL6qjBpgACkDzAhhOjYcTTAuYigfs3KcvHq7I7xJ3iu8
         XTwy4qNv2nEm51lA9qmRCB8yNCoTbQ4WVnmFO7gN9l1GZWwIyg1g2sAtOaGCjHR/A2nk
         tnfsSoUVDSkUAG1m/HKH5jCDG6yScnGMNbKh+4tgKTxpzqhtDEf3q+utzQZw2nVc0+9J
         eg8brBP5NKrRT4cRU9y3cFp9EIA9OqNcUpkBX0dBFPsUIXjBdecXEIndTdCXEDv70+P+
         TzwA==
X-Gm-Message-State: AOAM530OZJ1JfTau+qeqLVapDoLYw5BQRbOYz81uZzlrAwIoitjRqqfZ
	jifon+biUvdq8GxiAC5gd/aZ/YRsrTkqf0q/Kfg=
X-Google-Smtp-Source: ABdhPJy2QsMklRcwtwuhsE5BtdwpFs6HqyxUa53WQHDtZIZ5zImXzf3ebSNOm8FNa4mNcQVlZ++QCURnzMTeVwbL8S0=
X-Received: by 2002:ae9:ed10:: with SMTP id c16mr14738694qkg.110.1623657893985;
 Mon, 14 Jun 2021 01:04:53 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1Z2LtWAbFAyeXEk=JQUN1D8TFvGzWXfCNeYnHgS1qdFGg@mail.gmail.com>
 <CAAnfSTsEsgc7cAdikFhiZFZDfCX6HZ0mfq49yrrTcgYBS2sC2A@mail.gmail.com>
In-Reply-To: <CAAnfSTsEsgc7cAdikFhiZFZDfCX6HZ0mfq49yrrTcgYBS2sC2A@mail.gmail.com>
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Mon, 14 Jun 2021 13:34:43 +0530
Message-ID: <CANVQz1brFG-t4k3HZvWU_d6qp6DM_h3R_23hkME-Fx7i5GWTAQ@mail.gmail.com>
Subject: Re: [yocto] QEMU Size Increase from Yocto Thud to Zeus
To: Ross Burton <ross@burtonini.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000001ff2205c4b55004"

--00000000000001ff2205c4b55004
Content-Type: text/plain; charset="UTF-8"

Thanks for the clarification, yes I am installing QEMU in my image. Is
there some way that we can disable the additional architectures and
streamline the size ?

Thanks

On Fri, Jun 11, 2021 at 8:48 PM Ross Burton <ross@burtonini.com> wrote:

> Are you installing qemu into your image though?
>
> Qemu did get larger as it is built with more architectures enabled,
> but unless you're installing it in your image it won't make a
> difference.
>
> Ross
>
> On Fri, 11 Jun 2021 at 11:40, Aashik Aswin <thisisaash9698@gmail.com>
> wrote:
> >
> > Hi Experts,
> >
> > I am upgrading my Linux from Yocto Thud to Zeus (5.4 Kernel) . After
> building I could see a significant increase in the size of the image.
> > On checking with buildhistory enabled, I could see that qemu has nearly
> doubled in size.
> >
> > Thud (4.19) - 223084  KiB     qemu
> > Zeus (5.4) - 474757  KiB     qemu
> >
> > Is this size increase expected or are there some additional configs that
> might have been added as a part of the upgrade ?
> >
> > Appreciate your help.
> >
> > TIA,
> > Aashik
> >
> > 
> >
>

--00000000000001ff2205c4b55004
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the clarification, yes I am installing QEMU in =
my image. Is there some way that we can disable the additional architecture=
s and streamline the size ?<div><br></div><div>Thanks</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 11, =
2021 at 8:48 PM Ross Burton &lt;<a href=3D"mailto:ross@burtonini.com">ross@=
burtonini.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">Are you installing qemu into your image though?<br>
<br>
Qemu did get larger as it is built with more architectures enabled,<br>
but unless you&#39;re installing it in your image it won&#39;t make a<br>
difference.<br>
<br>
Ross<br>
<br>
On Fri, 11 Jun 2021 at 11:40, Aashik Aswin &lt;<a href=3D"mailto:thisisaas=
h9698@gmail.com" target=3D"_blank">thisisaash9698@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; Hi Experts,<br>
&gt;<br>
&gt; I am upgrading my Linux from Yocto Thud to Zeus (5.4 Kernel) . After =
building I could see a significant increase in the size of the image.<br>
&gt; On checking with buildhistory enabled, I could see that qemu has near=
ly doubled in size.<br>
&gt;<br>
&gt; Thud (4.19) - 223084=C2=A0 KiB=C2=A0 =C2=A0 =C2=A0qemu<br>
&gt; Zeus (5.4) - 474757=C2=A0 KiB=C2=A0 =C2=A0 =C2=A0qemu<br>
&gt;<br>
&gt; Is this size increase expected or are there some additional configs t=
hat might have been added as a part of the upgrade ?<br>
&gt;<br>
&gt; Appreciate your help.<br>
&gt;<br>
&gt; TIA,<br>
&gt; Aashik<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div>

--00000000000001ff2205c4b55004--
