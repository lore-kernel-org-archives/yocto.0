Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web12.8407.1607699988612248913
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 07:19:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=F4Iy8Wyx;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id b9so12878784ejy.0
        for <yocto@lists.yoctoproject.org>; Fri, 11 Dec 2020 07:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qUzpZ7vx/bIAmf6kpRXoqRuTAu+jij5Eu0bButVxZis=;
        b=F4Iy8Wyx6AbDEYUN8pMdxAU1Z9DLA8v0wQ9GfTK2dEiL1oNKBgO8LOSQagVBI3h3/u
         PZ6sWsHu3H4e7lCXnMi5aacTWxz/bcRBd2r9aOk+swgiFnjuXVhjlWcACilhVxfaX9rs
         hyN3/jMK5OUGAdHbWAWlLDIa9xe/1wYN5MQhMihekyxtLkrTJIuNef2Wifuu/rvm5ZzP
         kiR1uM69OqeK03Ojd/A8jr84Gg+PztxiYYdu4krdJWnwqEZHzOiS+QBOT68Hlw79U6sm
         uQe2alnlUblWbZpLkH3cctu7YwkIKb/Ykm5VaOedpsDbyGoa98ZYia2/cP/65M0tXMe6
         kaQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qUzpZ7vx/bIAmf6kpRXoqRuTAu+jij5Eu0bButVxZis=;
        b=e2WCPXeYHbdoM0NLdb4Ss4jz27D4i/M2bhO10ITPG0njesY+LC76xD49OlsHsvyNmL
         /isawB+0QjwJBci9TGWx+aGs2eVqkpyjdZJmOeN2tkN9uzlZPGq2Gq2Abtm2ppmNx6Mt
         skjowlqSljIhrmFFsFFbkdzoIP39zFGFDkXBVffm/X1V8CNJS8rZf+7lE2a/sK7Rycj8
         VbJl/yMMp3zpxPf3k+e4uLjM5Fbg5CMW3dk45jUO/zSYHd1fGhBrd0vDu/rIS2aJ2/57
         01t8ZLiq3uSdfBgTd9EdmWKjhrEqiqpcXBF2S+vHPfd5j8TlYjw46FeQrkunYvdCtHR7
         3cHg==
X-Gm-Message-State: AOAM530rSnLU8FYu1bbAckY2QYT2rAXcSoXchlkPcA/3KnX0ybn1YQul
	bzxziNF2STW8rRbH5kSE3JQkAf3UL798+6uwlIWcKvyMjBw=
X-Google-Smtp-Source: ABdhPJylwaUCVpsOhk6piS/x839QqUWk61q+wvvszMcmwEym303bBz5BPHULjxumHe9CnuMXluHkjrhrEuxDMnjYOAc=
X-Received: by 2002:a17:906:5386:: with SMTP id g6mr6797037ejo.137.1607699987162;
 Fri, 11 Dec 2020 07:19:47 -0800 (PST)
MIME-Version: 1.0
References: <y4Bt.1607699657163733559.sEYQ@lists.yoctoproject.org>
In-Reply-To: <y4Bt.1607699657163733559.sEYQ@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Fri, 11 Dec 2020 16:19:36 +0100
Message-ID: <CA+chaQczCaE8izs2hqGML7NOcmy0VePjN0iND+hjzP5fs-W4=g@mail.gmail.com>
Subject: Re: [yocto] cpu_count() got an unexpected keyword argument 'at_least'
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a3ecac05b631d20d"

--000000000000a3ecac05b631d20d
Content-Type: text/plain; charset="UTF-8"

You're probably mixing incompatible branches of different layers - always
use the same branch in all layers.

at_least was added in oe-core/dunfell with:
https://git.openembedded.org/openembedded-core/commit/?id=c6dda204e15c5b27559f7617b18a7b3ce604e2f8


On Fri, Dec 11, 2020 at 4:14 PM sateesh m <sateesh0457@gmail.com> wrote:

> Hi Guys,
>
>
>               I got expansion error during parsing. I want to fix this
> bug. can anybody know this issue please Update me.
>
> Traceback (most recent call last):
>   File "Var <PIGZ>", line 1, in <module>
> bb.data_smart.ExpansionError: Failure expanding variable PIGZ, expression
> was -p ${@oe.utils.cpu_count(at_least=2)} which triggered exception
> TypeError: cpu_count() got an unexpected keyword argument 'at_least'
>
>
> thanking you in advance.
>
> Regards,
> Sateesh
>
> 
>
>

--000000000000a3ecac05b631d20d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You&#39;re probably mixing incompatible branches of differ=
ent layers - always use the same branch in all layers.<div><br></div><div>a=
t_least was added in oe-core/dunfell with:</div><div><a href=3D"https://git=
.openembedded.org/openembedded-core/commit/?id=3Dc6dda204e15c5b27559f7617b1=
8a7b3ce604e2f8">https://git.openembedded.org/openembedded-core/commit/?id=
=3Dc6dda204e15c5b27559f7617b18a7b3ce604e2f8</a><br></div><div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Dec 11, 2020 at 4:14 PM sateesh m &lt;<a href=3D"mailto:sateesh0457@g=
mail.com">sateesh0457@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hi Guys,<br><br><br>=C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I got expansion error during parsing. I want t=
o fix this bug. can anybody know this issue please Update me.<br><br>
<div>Traceback (most recent call last):</div>
<div>=C2=A0 File &quot;Var &lt;PIGZ&gt;&quot;, line 1, in &lt;module&gt;</=
div>
<div>bb.data_smart.ExpansionError: Failure expanding variable PIGZ, expres=
sion was -p ${@oe.utils.cpu_count(at_least=3D2)} which triggered exception =
TypeError: cpu_count() got an unexpected keyword argument &#39;at_least&#39=
;</div>
<div><br><br>thanking you in advance.<br><br>Regards,<br>Sateesh</div>
<br>
<br>
<br>
</blockquote></div>

--000000000000a3ecac05b631d20d--
