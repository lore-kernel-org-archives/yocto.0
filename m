Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web11.47749.1584949072372103117
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 00:37:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=W4Xk1GLd;
 spf=pass (domain: linaro.org, ip: 209.85.219.181, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f181.google.com with SMTP id j138so6541859ybg.5
        for <yocto@lists.yoctoproject.org>; Mon, 23 Mar 2020 00:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zZfyrQIl5yUeIhEI7vudwRHXMaJ6G9OwhZ/A8IrziN0=;
        b=W4Xk1GLdSuXLm1UOoDSE3FsC5/jELGbLxraPQ2k8KwK14noHF/9tCc3B6YT1j6bnP6
         hSuT385RMdziZkW2i+6A6gV3wAZj88rEDk98if0fLVXRuPVGtwKC33fS0Pz9gqVrNJVP
         y/7wQ2+oaHtVBrdXtFdgxTZKGeST0WEAgCsXQtCctCvqON6WBEHjSc2NqFS5iZ2oCPy6
         /MdC+XRhM5TbrUM4MXpeE+hPz+jMTfpnvVysHghNqXAEhK5AoMKTf2uIni+5f9vtnqwL
         +1eNm6hmtdB2FcS1r+2KmzSIugrRwykfImDvG3eZJ+xDYiLu9Mebk7+8xTNKaA6F8CDO
         1mKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zZfyrQIl5yUeIhEI7vudwRHXMaJ6G9OwhZ/A8IrziN0=;
        b=snEUZo7lmIY+NL/uA24AfPpkEKZjwo2sU8LFPn2jiHOencbTCwyaAct8uaj/y1CL1z
         nm0XbeO6onKVKgpq4/Dj/fzzm+/S+s4aq932PjRJ3luuupi4ViWTUpxA3KchP3PHWlNJ
         hziKl3W/dK4miFNqPm2XCWSCjqfACZMNGEk3C07tH+sWGhk/Kw37yt60NYrEa31h+0o1
         wo3bzpaKQVR4NCJX/UXCvtIVQuCLR1jYYa8H9PwOTgTWONa8XjjGVGEog0xvQFmAsMAA
         Ot88PRInZY6XeVdxsSpyqbNh94ACUp7/jL7YvXUKZ0/g1RN88rbQbdPjI5z1j5EuD2R3
         Qb/w==
X-Gm-Message-State: ANhLgQ1vVp8XQjX5OMOawa1fWQ2RNJSv8RZWQYWq40oD6A1GNz0s6WBE
	UzNP3J2qYbi90NbnFDS+6ZQ9tsYDIioUD6s5zxRnCA==
X-Google-Smtp-Source: ADFU+vttd+T6MDR4zFmtECRaRexDa2gcSHVRjdDGbyKe/AN5kRBrbKIV0LB79knQE7KZN1Wz3+JrJGwiOiqnk+E9igw=
X-Received: by 2002:a25:99c9:: with SMTP id q9mr33924772ybo.475.1584949071375;
 Mon, 23 Mar 2020 00:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <KDJv.1584916402885275339.1NaK@lists.yoctoproject.org>
In-Reply-To: <KDJv.1584916402885275339.1NaK@lists.yoctoproject.org>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Mon, 23 Mar 2020 08:37:39 +0100
Message-ID: <CAP71Wjz8EeqLA4=RycNgxtfmZjtn1e9+t9XoaT7x+YhEynwK2Q@mail.gmail.com>
Subject: Re: [yocto] "Yocto Project Linux Kernel Development Manual" is gone
To: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000063043005a180b618"

--00000000000063043005a180b618
Content-Type: text/plain; charset="UTF-8"

hi,

thanks for reporting, you're right.. and the Development tasks manual entry
is listed twice.. We will investigate and fix that!

cheers


On Sun, Mar 22, 2020 at 11:57 PM Vasyl Vavrychuk <vvavrychuk@gmail.com>
wrote:

> Latest "Docs Overview" webpage https://www.yoctoproject.org/docs/ has no
> link to "Yocto Project Linux Kernel Development Manual".
>
> Instead it shows link to "Yocto Project Development Tasks Manual" two
> times.
> 
>

--00000000000063043005a180b618
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>hi,</div><div><br></div><div>thanks for reporting, yo=
u&#39;re right.. and the Development tasks manual entry is listed twice.. W=
e will investigate and fix that!</div><div><br></div><div>cheers<br></div><=
div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Mar 22, 2020 at 11:57 PM Vasyl Vavrychuk &lt;<a hr=
ef=3D"mailto:vvavrychuk@gmail.com">vvavrychuk@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Latest &quot;Docs=
 Overview&quot; webpage <a href=3D"https://www.yoctoproject.org/docs/" rel=
=3D"noopener" target=3D"_blank">https://www.yoctoproject.org/docs/</a>=C2=
=A0has no link to=C2=A0&quot;Yocto Project Linux Kernel Development Manual=
&quot;.<br><br>Instead it shows link to &quot;Yocto Project Development Tas=
ks Manual&quot; two times.</p>
<br>
</blockquote></div>

--00000000000063043005a180b618--
