Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web08.24468.1604993062584537368
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 23:24:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=e5svmTGZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.219.180, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-yb1-f180.google.com with SMTP id v92so4615754ybi.4
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 23:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7PUVWEEFoOUADKID/ymXAi4WeFP8hUhr1FrNCayd7vY=;
        b=e5svmTGZf5mEmwVoNt0Brj0lZV+8OEaMQ8vQf05+uzu0UngaaZsfOOS9nVefpqWDI/
         hPRzMTbUvIy/r7v62PR1R3mT3wvOPyYpQ1MYB+MwJKZm02HFZye7BOJiGSbt38gDtbVh
         63gvtl6GvqIsXglWoyiF7fQ0mpxbsFkeZyQAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7PUVWEEFoOUADKID/ymXAi4WeFP8hUhr1FrNCayd7vY=;
        b=mGuBqqc1MHFGEdSkKL7SC3YVQNJ2SzDRajgAbhV0ht/38GUchTZFJIzeyo+/CtT4M3
         L4JDon4SZUeiYcJ6vmlJbs558kwhavyEyXfdTxDIr1ON/vFi3eERoNU1sI5BTLYrAzLH
         PL1oZOvDIWCx17l8uRq2Axru+K2fxmJdFXxX2iesmgqZzOr5xHg4k9BFCPKO7TtcNhT8
         g9QD4lCLqhu+YYvh3Xw/0ICPs26Ci2cIxgUmG7B3IwWa3OaXxy327H8vl79EEpaPVoAB
         yBLcJGR15l7KpNoF0RMO54O/r6biN+M0veR7XJXJ2KxVG/3x8+Cb917MLYUV51CHHgQ4
         i4RA==
X-Gm-Message-State: AOAM532xjBtEOd9Me9Qf8+GqaZ6TsOtxS/Abxtf2FLMlAowc46jCzodn
	yj4nCeQ8QQGtHcZCSTNNC6csVjx2R/g9aCveeNHDWQ==
X-Google-Smtp-Source: ABdhPJxsrKC6QJ91u0coQhjUPYlEPwcxWf5CFnGk+s8L5i5vN/KVFcsYpfSCbxmLH1JGPwqVvu78eQP5s1uAFOsezeI=
X-Received: by 2002:a25:7e82:: with SMTP id z124mr25176881ybc.388.1604993061774;
 Mon, 09 Nov 2020 23:24:21 -0800 (PST)
MIME-Version: 1.0
References: <4D84553A-FE9E-4D28-B1EF-A39364CCA107@iki.fi>
In-Reply-To: <4D84553A-FE9E-4D28-B1EF-A39364CCA107@iki.fi>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Mon, 9 Nov 2020 23:24:11 -0800
Message-ID: <CADfgfoZOEek=0TQ2Qo+K2nmayAxwcbathT+sh=4Za-9dTpLUug@mail.gmail.com>
Subject: Re: [yocto] Yoctoproject.org cgit tags CSS
To: Anders Montonen <Anders.Montonen@iki.fi>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000506dc705b3bb9190"

--000000000000506dc705b3bb9190
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've copied the style into the new class name. Please let me know if this
looks correct to you.

On Mon, Nov 9, 2020 at 12:29 PM Anders Montonen <Anders.Montonen@iki.fi>
wrote:

> Hi,
>
> Since some time, the tags in the log view of yoctoproject.org=E2=80=99s =
cgit have
> not been highlighted correctly. The problem seems to be that in the HTML=
,
> tags are given the class =E2=80=9Ctag-annotated-deco=E2=80=9D, which doe=
sn=E2=80=99t exist in the
> CSS. The CSS does have a =E2=80=9Ctag-deco=E2=80=9D style which is proba=
bly what=E2=80=99s intended.
>
> Regards,
> Anders Montonen
>=20
>
>

--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--000000000000506dc705b3bb9190
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve copied the style into the new class name. Please =
let me know if this looks correct to you.</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 9, 2020 at 12:29 PM An=
ders Montonen &lt;<a href=3D"mailto:Anders.Montonen@iki.fi">Anders.Montonen=
@iki.fi</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Hi,<br>
<br>
Since some time, the tags in the log view of <a href=3D"http://yoctoprojec=
t.org" rel=3D"noreferrer" target=3D"_blank">yoctoproject.org</a>=E2=80=99s =
cgit have not been highlighted correctly. The problem seems to be that in t=
he HTML, tags are given the class =E2=80=9Ctag-annotated-deco=E2=80=9D, whi=
ch doesn=E2=80=99t exist in the CSS. The CSS does have a =E2=80=9Ctag-deco=
=E2=80=9D style which is probably what=E2=80=99s intended.<br>
<br>
Regards,<br>
Anders Montonen<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Fou=
ndation / Yocto Project</div><div>Systems Operations Engineer</div></div></=
div>

--000000000000506dc705b3bb9190--
