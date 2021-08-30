Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web08.151.1630340796664523968
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 09:26:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kYwRPejp;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: rybczynska@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id d26so23367019wrc.0
        for <yocto@lists.yoctoproject.org>; Mon, 30 Aug 2021 09:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YQaEggjQeyiv44m7IfnGoaQzQgNydZRXHFDmI2J8guM=;
        b=kYwRPejpHAgNQ4Qg9UZRVrOcEMzUEg0uSO3w6Txn+Rs0gMfu08jOWhJDu+b37mew9f
         OS+YS2S1IhJUiSzdX9C4nX5XeHLV29LyQTL3H58wORu4fRZ93sUI80dXyuN/VZYRm7XV
         HfaZj46YmLEfP/JIj3cyH3ZKL/ChEECYQi64336aCqFbqd3YjK3qYMePovezeEa+Z0GW
         Zf/gqLLsmMok9+W6sfrYXR8ZJFo6oSPTu37ADKQNg3hwu8f76pizsqjQc/L53eTSgyes
         1hWPdMxS/bEz/Z36hVk3xM8N1UWmBP8jfu8ic55yr/mh7WXwlOu47DZgNXvJsuqFEDBi
         C7Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YQaEggjQeyiv44m7IfnGoaQzQgNydZRXHFDmI2J8guM=;
        b=ofq1zdt2A9U/dj9QDK8l+GFdoQIjt5S4XTDuwLgAfMak4fDyQ+8q7b+acAEwlQHOSQ
         66bqmF89WZH8HGy5zN+Vd9ut0wjplHWLqkSeQfE5a5J4a2/1PXX+A08XiY60Y//8ssiP
         Jx+xw8sjhCZvZB9qTFVd7PAGUeYXhU0Ij48j5NK6Xve90MvgVVqs5TBRGcQJSpggkD57
         DM821i25meIT6umlxchqwJ7doAL1sqAP9ungp88GHFgjTk0UFQ2K7EqGPCKZapfoFMFI
         JHMS+z1nTT+0pXX14K+nO4dnQ/YvjRLiCfPuargf+1nkRySyBDSGgD2jMiI9avvj3icZ
         UMPg==
X-Gm-Message-State: AOAM533hL0jflDmJakvZE9AGI02P9OZ5M/1YNvlZUuWCl19gsHvIDmIi
	AWre1PjzqcqMm8nL1OLjt9EtvITl07a7sVzBCCk=
X-Google-Smtp-Source: ABdhPJw7lsSeYXBnhjjYuQ9V+8huKWohCQkYDWFMnmGEztq4Xse+5wU5vOa0pawh4jC6UMuZiCCb7wlSczTv89QeOYs=
X-Received: by 2002:adf:f7c2:: with SMTP id a2mr26945489wrq.58.1630340795149;
 Mon, 30 Aug 2021 09:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210825060532.8379-1-rybczynska@gmail.com> <4aa7aca3-2de1-8cc4-123b-f0f4e44ccfb2@gmail.com>
In-Reply-To: <4aa7aca3-2de1-8cc4-123b-f0f4e44ccfb2@gmail.com>
From: "Marta Rybczynska" <rybczynska@gmail.com>
Date: Mon, 30 Aug 2021 18:26:24 +0200
Message-ID: <CAApg2=TNUjBuK4RPBQ1SRYQzZ5WC0OZM4ouFb0ymKJUz82JXBw@mail.gmail.com>
Subject: Re: [meta-hardening][PATCH] meta-hardening/binutils: harden installation permissions
To: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Cc: Marta Rybczynska <marta.rybczynska@huawei.com>
Content-Type: multipart/alternative; boundary="000000000000f5301705cac94b91"

--000000000000f5301705cac94b91
Content-Type: text/plain; charset="UTF-8"

(correcting the wrong list address)

On Fri, Aug 27, 2021 at 6:07 AM akuster808 <akuster808@gmail.com> wrote:

> Marta,
>
> On 8/24/21 11:05 PM, Marta Rybczynska wrote:
> > Compilers and related utils are better restricted on production
> platforms.
> > Change permissions of all installed binutils tools to remove access from
> > users outside of the root group.
> >
> > This also demonstrates how to restrict file permissions in a hardened
> > distribution.
>
> Have you looked into FILESYSTEM_PERMS_TABLES? An example of the format
> can be found @ /meta/files/fs-perms.txt
>
> For more info see
> https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html
>
> Maybe having something like fs-perms.txt in meta-hardening may achieve
> the same?
>
>
It looks like a possibility, I will give it a try. I have a question about
the future,
however. Currently meta-hardening is defining its own distribution. When
hardening
will be in DISTRO_FEATURES (you were working on it some time ago
https://patchwork.openembedded.org/patch/174773/),
it would be less obvious to use, wouldn't it?

A bonus question, do you still plan to make it in DISTRO_FEATURES?

Regards,
Marta

--000000000000f5301705cac94b91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">(correcting the wrong list address)<br></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Aug 27, 2021 at 6:07 AM akuster808 &lt;<a href=3D"mailto:akuster808@g=
mail.com">akuster808@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Marta,<br>
<br>
On 8/24/21 11:05 PM, Marta Rybczynska wrote:<br>
&gt; Compilers and related utils are better restricted on production platfo=
rms.<br>
&gt; Change permissions of all installed binutils tools to remove access fr=
om<br>
&gt; users outside of the root group.<br>
&gt;<br>
&gt; This also demonstrates how to restrict file permissions in a hardened<=
br>
&gt; distribution.<br>
<br>
Have you looked into FILESYSTEM_PERMS_TABLES? An example of the format<br>
can be found @ /meta/files/fs-perms.txt<br>
<br>
For more info see<br>
<a href=3D"https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html=
" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/docs/3.=
1/ref-manual/ref-manual.html</a><br>
<br>
Maybe having something like fs-perms.txt in meta-hardening may achieve<br>
the same?<br>
<br></blockquote><div><br></div><div>It looks like a possibility, I will gi=
ve it a try. I have a question about the future,</div><div>however. Current=
ly meta-hardening is defining its own distribution. When hardening</div><di=
v>will be in DISTRO_FEATURES (you were working on it some time ago <a href=
=3D"https://patchwork.openembedded.org/patch/174773/">https://patchwork.ope=
nembedded.org/patch/174773/</a>),</div><div>it would be less obvious to use=
, wouldn&#39;t it?</div><div><br></div><div>A bonus question, do you still =
plan to make it in DISTRO_FEATURES?<br></div><div><br></div><div>Regards,</=
div><div>Marta<br></div></div></div>

--000000000000f5301705cac94b91--
