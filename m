Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web10.10782.1581955867218064850
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 08:11:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t4z/mGmT;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id c7so6334298uaf.5
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2020 08:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5WPWC+UXYFi64PyUPlOX35v/nxC67X67iAffbUOPQA8=;
        b=t4z/mGmTKExzOEN74E9pefjYUhmvsMhe3YqQq7lFNZdZAAihTzNb9AULUiBjyF1TBn
         /bORe+grb3xOQ3EIRRRDwEFw7HK9+cSLSJW0OlcmacGjNQYnc2HfmAVWoPRL9MdDFIiH
         ZaDDL+XXNAO1g3O9uNOiB53Eyxq3NbpB1q3DkhWnPFXNmM4gL6vm7o3Xs2VAuPkjavWo
         muD8VwSkQgN/0VgYKintAKs/5RYjcwevPA1zC8GmJ8ltYTOUSNS/CZU/4wkQZvPds5Jn
         gZE/v+AXrLMtGKDcx4AVwNUuI4XlgvUaaFUjKZKduXxhoHkW6Sa8Yvs77VaiCZTPbBY0
         5Ydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5WPWC+UXYFi64PyUPlOX35v/nxC67X67iAffbUOPQA8=;
        b=AOsOJNhuMDBAjY1LMpjROayveN5o7L66ojzqmphsAvmpgJdodRMeLz5Ki5BQz+pvSY
         4kg61pqSNqsRLBCPax31g8FpyC1/tniMOyHL658n4vsD8VzPa5YTSGmotwssu2nL+csj
         dRzRSq/NwvTt0HygN5I/J6lpREZ0OSrjRBJIP9Ib0IiNhAtRfprB/eLIa29rxZdOfvw2
         ItIVVYcJEA0KOzloXp26olxDMkmGdGyXrqJI2//1KdJ4sZqXUh1ZBCV9m2x2vA+TZHkO
         1zRY7Ngzc5aPdyIY9klMpfMByXgCvLm3AUN87I1cQdAIqOwhWvsLtfcp0LgTFq4Alppq
         3+yg==
X-Gm-Message-State: APjAAAVxWswHZN03ps7POr1WWiMGLJCHToA34EQsNind76VfSb3vE3Xl
	xzMhPJB1MHXUS7KmonjZze2M/r4LhtgiqcxKQ08=
X-Google-Smtp-Source: APXvYqwPsUIYW9sQmT0ODPyD3kpC3vYTM9ZqMP1k1mCvxUXm99xTC0TFUfnp8+v5Y+/bxz3SWfARfyTNzwUZ/sxfDgI=
X-Received: by 2002:ab0:7802:: with SMTP id x2mr8406071uaq.100.1581955866289;
 Mon, 17 Feb 2020 08:11:06 -0800 (PST)
MIME-Version: 1.0
References: <999304F2-F116-487C-8D43-2D4C0AD026B3@charter.com>
In-Reply-To: <999304F2-F116-487C-8D43-2D4C0AD026B3@charter.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 17 Feb 2020 17:11:31 +0100
Message-ID: <CANNYZj-k5qc1Od+61HtpwE0YnyJf7ALezBv4K8JR+wYpK5gDiQ@mail.gmail.com>
Subject: Re: [yocto] do we have a slack channel for yocto?
To: ILJUN LEE <iljun.lee@charter.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
X-Groupsio-MsgNum: 48457
Content-Type: multipart/related; boundary="000000000000764f12059ec7cd24"

--000000000000764f12059ec7cd24
Content-Type: multipart/alternative; boundary="000000000000764f11059ec7cd23"

--000000000000764f11059ec7cd23
Content-Type: text/plain; charset="UTF-8"

There is irc. #yocto @freenode.

Alex

On Mon, 17 Feb 2020 at 17:07, ILJUN LEE <iljun.lee@charter.com> wrote:

> Hi All,
>
>
>
> Do we have a slack channel for yocto?
>
>
>
> Thanks,
>
> iljun
>
> *[image:
> /Users/p2774198/Library/Containers/com.microsoft.Outlook/Data/Library/Caches/Signatures/signature_190838216]*
>
> *ILJUN LEE* | Principal S/W Engineer II | 720-492-7975 (M)
>
> CTECII,  Suite B - 8560 Upland Drive, Englewood, CO 80112
>
> iljun.lee@charter.com
> The contents of this e-mail message and
> any attachments are intended solely for the
> addressee(s) and may contain confidential
> and/or legally privileged information. If you
> are not the intended recipient of this message
> or if this message has been addressed to you
> in error, please immediately alert the sender
> by reply e-mail and then delete this message
> and any attachments. If you are not the
> intended recipient, you are notified that
> any use, dissemination, distribution, copying,
> or storage of this message or any attachment
> is strictly prohibited.
> 
>

--000000000000764f11059ec7cd23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There is irc. #yocto=C2=A0@freenode.<div><br></div><div>Al=
ex</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Mon, 17 Feb 2020 at 17:07, ILJUN LEE &lt;<a href=3D"mailto:iljun=
.lee@charter.com">iljun.lee@charter.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left=
:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-5460702272015560140WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hi All,<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Do we have a slack c=
hannel for yocto?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks,<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">iljun<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;color:rgb(9,78,137=
)"><img width=3D"227" height=3D"75" style=3D"width: 2.3645in; height: 0.781=
2in;" id=3D"gmail-m_-5460702272015560140Picture_x0020_1" src=3D"cid:17053eb=
032e4cff311" alt=3D"/Users/p2774198/Library/Containers/com.microsoft.Outloo=
k/Data/Library/Caches/Signatures/signature_190838216"></span></b><span styl=
e=3D"font-size:11pt"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;color:rgb(9,78,137=
)">ILJUN LEE</span></b><span style=3D"font-size:11pt;color:rgb(9,78,137)"> =
| Principal S/W Engineer II | 720-492-7975 (M)</span><span style=3D"font-si=
ze:11pt"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(9,78,137)">CTECII,
</span><span style=3D"font-size:11pt;color:rgb(37,95,166)">=C2=A0Suite B -=
 8560 Upland Drive, Englewood, CO 80112</span><span style=3D"font-size:11pt=
"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"mailto:il=
jun.lee@charter.com" target=3D"_blank"><span style=3D"color:rgb(11,76,180)"=
>iljun.lee@charter.com</span></a></span><u></u><u></u></p>
</div>
The contents of this e-mail message and <br>any attachments are intended s=
olely for the <br>addressee(s) and may contain confidential <br>and/or lega=
lly privileged information. If you<br>are not the intended recipient of thi=
s message<br>or if this message has been addressed to you <br>in error, ple=
ase immediately alert the sender<br>by reply e-mail and then delete this me=
ssage <br>and any attachments. If you are not the <br>intended recipient, y=
ou are notified that <br>any use, dissemination, distribution, copying,<br>=
or storage of this message or any attachment <br>is strictly prohibited.</d=
iv>

<br>
</blockquote></div>

--000000000000764f11059ec7cd23--

--000000000000764f12059ec7cd24
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <17053eb032e4cff311>
X-Attachment-Id: 17053eb032e4cff311

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
AAAASUVORK5CYIIA

--000000000000764f12059ec7cd24--
