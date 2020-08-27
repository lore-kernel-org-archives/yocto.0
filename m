Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com [209.85.217.65])
 by mx.groups.io with SMTP id smtpd.web11.16283.1598526130674683568
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Aug 2020 04:02:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ulAqYV6R;
 spf=pass (domain: gmail.com, ip: 209.85.217.65, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f65.google.com with SMTP id u131so2565731vsu.11
        for <yocto@lists.yoctoproject.org>; Thu, 27 Aug 2020 04:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AxpWwiQq6ZYHh8Y3YiW5FS2+/8sVFX9EhLiPyqDi6vE=;
        b=ulAqYV6RiaDkR87QtkUwbWKteTfCuFVREK9qK+DSW+QJ4HAsitm9O7Rp8HFnCmUjY0
         LrskvVPU1Ralr3CFkzT7leyybkpZHPpj/6hBAh/ZJrDNMWyzpXT91z655evQju09uP5O
         Voy1FbEJggIbT2PLuGQvrrWQ8wVuC+O7dswowA4jorX40nYy00OyWE66rC8J/onc0u7X
         2vIRH2heoPymlk7SCOXd7cVIyndgdP0Feq1hJO2mrqNLCeKiQJgBtI5A4UYL++o/Z9dn
         tEGgQWN5PP2CRbcLhRIUZqzS+tm90Rn3DgVKa77lsEpHFo1+iF965oSAd/AVvN1xGymP
         +Kqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AxpWwiQq6ZYHh8Y3YiW5FS2+/8sVFX9EhLiPyqDi6vE=;
        b=Bx9uXH1lZlCoDv/QLz6jpgEg/2xWtzokRAGikTKZBFwb2VdJTi7IVVRhX46l1KNQka
         HfNgbWGuBLiPx4zqbIaFP+TIO2HEnNcUXvxrlqdpczeS+HGtb/7N6DnzpSPnJDxAiGuU
         pS7CBvj7dnklmZrgEnvrBzhI2ZbT2r9pUCwtTOo2vY1Vndb8f7D3AMXVM7JbLaieHA0O
         HZgg2uXtDU1x+H6J1mnzmN/s46Zhn2ZjcY00hg4yKRV5LFvjHr2SNwk7xBWMv8pC1iJU
         4PV5gMoBTbAkQn6JIHYwIRDM/92u9JclFmqxZXBchnOIFQq0647AKyUhuyBQIWsIvWCc
         QjKQ==
X-Gm-Message-State: AOAM5331YPJLJp5gURfb+xFFCwkmj5UmexBmbNwVmIcGWNrEYihybRyQ
	8nmAwPdDk0S28mKWLjenCk4vaYbKrswwiYIFEfw=
X-Google-Smtp-Source: ABdhPJwC8HS8vJRibPk31b338CEFZ/TBOrJQ31UqCkUXnMlbq0yQb94wzjUlpMsMVhTbZcTknmcLd2A5sUUYKTEx83I=
X-Received: by 2002:a67:bd0f:: with SMTP id y15mr10941545vsq.47.1598526129820;
 Thu, 27 Aug 2020 04:02:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200826155433.16346-1-alex.kanavin@gmail.com>
 <75a92bc5a9b597f0610987d5ab4b7de9b53f79ba.camel@linuxfoundation.org>
 <CANNYZj-Fg0aiqK2QM__OC+3r2N5-THnsUYX5Pgtt+mjWDDq5zg@mail.gmail.com> <2fcbd0f884b6b53a4cdc7002c278eef3a7868c06.camel@linuxfoundation.org>
In-Reply-To: <2fcbd0f884b6b53a4cdc7002c278eef3a7868c06.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 27 Aug 2020 13:01:58 +0200
Message-ID: <CANNYZj_p0MiLb8LM-ZdZs8tyaDEcovrxNUz5SMXeECWvdT7Teg@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add binutils to images where it's required by tests
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000021d78005add9deee"

--00000000000021d78005add9deee
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Aug 2020 at 23:03, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> >  I didn't write either of the tests, but yes - I can work on this
> > tomorrow.
>
> Right, I didn't write them either, they're rather old. I'm just
> thinking whilst we've gotten this far we may as well fix this properly
> and stop it being copy and pasted onward. I appreciate the help!
>

And done, patches sent :) Bonus fix: one of the multilib tests was
erroneously always skipped.

Alex

--00000000000021d78005add9deee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, 26 Aug 2020 at 23:03, Richard Pur=
die &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdi=
e@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">&gt;=C2=A0 I didn&#39;t wri=
te either of the tests, but yes - I can work on this<br>
&gt; tomorrow.<br>
<br>
Right, I didn&#39;t write them either, they&#39;re rather old. I&#39;m just=
<br>
thinking whilst we&#39;ve gotten this far we may as well fix this properly<=
br>
and stop it being copy and pasted onward. I appreciate the help!<br></block=
quote><div><br></div><div>And done, patches sent :) Bonus fix: one of the m=
ultilib tests was erroneously always skipped.</div><div><br></div><div>Alex=
<br></div></div></div>

--00000000000021d78005add9deee--
