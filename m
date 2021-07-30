Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web08.24832.1627654755921996502
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jul 2021 07:19:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GP1NFkGi;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id x14so13381676edr.12
        for <yocto@lists.yoctoproject.org>; Fri, 30 Jul 2021 07:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ypfcHaH090vJ+8GXpYHSU8qvWR7hDGy/3/vhaZN8+ig=;
        b=GP1NFkGiOepV5Q3O6eBcHX4LBxv3W/2Qf6SnS60Hob+lT2Jtu7tvw0RDw1CF7sIl51
         +NcnocpIkvJcJIgonp2pB0pdUP8W299zDdxRG7VwUD7VwM1qPl8xc0Noa9pPN8ujmrsG
         wJ588+qgsWGF+QyzqqYNyxCd8VDBJhDY2bsBRoFhkuO3Dmi9b6sjTslsHau4QCSokxuU
         Vhq32fgKj6hlH5WhH07Ik0oQVSZMbm51FTizkwS+nabpqH0t9/KqcoMxhnn+dqiq8XpL
         slPjzJb7YxQios5qAMinVsNjuzAT1+Irka8yfmQ3QzrIuoQZA5M3uxrPQwfkDl5/xXAK
         5sfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ypfcHaH090vJ+8GXpYHSU8qvWR7hDGy/3/vhaZN8+ig=;
        b=c+YyLP2MKGK0hH51UvnoQaWbx/pPAlGirp7vl6EKoMaSmwsM4JZRd15m6weuand0B7
         NGqb7VvIYUQPZ3M1QXoflnZ9gqi2TsYaP6HndVpf8tSjx0as2CrFpdOM+dNztarwg+VC
         OYsYD8/3XPshlYAeLvio/fHNBQZmDIjLu1N1YCrM2hRZKylv2n+ouaR1op8H2vpYq2Eh
         gnNfNPRnDfZhfvreRKITTfqdEngAMY20aA/U7jzMZwf+f05OlmmQbzytrM0C2i8miQKU
         GZgBso4QXlR2oR6qJ66TqJOZb6uGbJYfHpmHR/ruSvGmMaNfcygEzH164SKOGqB9/2Dg
         hADA==
X-Gm-Message-State: AOAM531itCaoIUuToWi9tf/8KnfEw0M6ukEguQL/UB5qtCyhC/Lw4M9X
	oFGgyoYn7CpmDIPdPVAZdh+HSlFrKuCmeFkhiuU=
X-Google-Smtp-Source: ABdhPJwABwj2rTskIGQ+HoJGwagfqihpDH6ryaB6o11xLnkyjXEGbnhYcZmmDAGUl8plXCokYZMg/1jMacXFDJxC0nw=
X-Received: by 2002:a05:6402:94b:: with SMTP id h11mr3245455edz.76.1627654754344;
 Fri, 30 Jul 2021 07:19:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210730092518.14608-1-Martin.Jansa@gmail.com> <466167fc-7fd5-946b-4dfd-55a5bcd12da5@gmail.com>
In-Reply-To: <466167fc-7fd5-946b-4dfd-55a5bcd12da5@gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Fri, 30 Jul 2021 16:19:02 +0200
Message-ID: <CA+chaQdOnSVkeZxbnfn3rjNQaCX+wrW-ziPF8RLBS_gruxMk3w@mail.gmail.com>
Subject: Re: [yocto] [meta-security][WIP][PATCH 1/2] Convert to new override syntax
To: akuster808 <akuster808@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007320a105c857e7c7"

--0000000000007320a105c857e7c7
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 30, 2021 at 3:51 PM akuster808 <akuster808@gmail.com> wrote:

>
>
> On 7/30/21 2:25 AM, Martin Jansa wrote:
> > This is the result of automated script (0.9.0) conversion:
> >
> > oe-core/scripts/contrib/convert-overrides.py .
> >
> > converting the metadata to use ":" as the override character instead of
> "_".
>
> thanks. I had a similar patch set sitting on my laptop waiting for my
> last build to finish of gitlab. Guess I should have pushed them sooner.
>

feel free to use your version of the conversion, my WIP wasn't very well
tested anyway as we use only smack recipe from main security-layer and
BBMASK everything else

--0000000000007320a105c857e7c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Jul 30, 2021 at 3:51 PM akuster80=
8 &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_blank">akuster808@=
gmail.com</a>&gt; wrote:<br></div><div dir=3D"ltr"><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 7/30/21 2:25 AM, Martin Jansa wrote:<br>
&gt; This is the result of automated script (0.9.0) conversion:<br>
&gt;<br>
&gt; oe-core/scripts/contrib/convert-overrides.py .<br>
&gt;<br>
&gt; converting the metadata to use &quot;:&quot; as the override character=
 instead of &quot;_&quot;.<br>
<br>
thanks. I had a similar patch set sitting on my laptop waiting for my<br>
last build to finish of gitlab. Guess I should have pushed them sooner.<br>=
</blockquote><div><br></div><div>feel free to use your version of the conve=
rsion, my WIP wasn&#39;t very well tested anyway as we use only smack recip=
e from main security-layer and BBMASK everything else</div></div></div>
</div>

--0000000000007320a105c857e7c7--
