Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.10312.1580400895992848081
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 08:14:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HkuA3dR4;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: onea.alex@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id z2so4023492oih.6
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2020 08:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0S94OGq5UG8HU+94ypHgrluXhHHPvP3NChsVIZLhysM=;
        b=HkuA3dR4T5+QIhDngzD58vGCydfr2Z6beqrTBf4pfR92S3VLDGSr1a+94+WiryNUXZ
         qFBc+MiIc7hZxpuovKaR2JXsVKVGeXZ1QN+pQ0qSsolEtMH1Gw90sbiu+F500JgISXaL
         ZpBgy0HUDSVucm8/kMoErIvCgWrHzV58mcPH7a00Jt1JhUZ9kBcF91sot5JCFM11tIjq
         7GAwnKcrnpVnUpgKVglJow1n3HFxKutPsIoP83wiHsOXxY2YnjkR+y6qEdnW7juPKCH3
         aN3GGdc55kn0OyeCMTc/ZsRZTRuVrtt3LWp67di6gsEMTQkeCgwr/iuZoqJuXPtM41em
         0vIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0S94OGq5UG8HU+94ypHgrluXhHHPvP3NChsVIZLhysM=;
        b=rxkry97zdhO0fYz38lwel5hH0SHFPQMOYf3MrbecD8lXlaSPUYZwOX/U/5LWHNzI23
         Z0wyuaWrvSMmwhh8hpnF24P/8Q8KMy30CIyKxymyVILI3felxmgUK9xtSdaDYHCJ8PD1
         RhrnwuZg0RDvKMpUhpIR+s7ARUOfyW6ycDL+drKur9gGFFl2ZD01xPcHag5RXX7sz/g1
         WVIqvFR55qSA8j1DzABPCV/iaWphZxX4qBcf+iENr5RqKqJlGqgRg3GHqr2wcJcSg6Up
         AW6Ug6LOziVyz7VdklTFBS2Ax6g5Cui34ewKNwoP4Ip1dn8l6ODD7jgH9pYK+h7fLcm1
         6DCQ==
X-Gm-Message-State: APjAAAWUeOg+RNFYdoANRr7NqBDh6zS5qFWAlyFq0sn/Yv6VJgXFcMMZ
	pAvFXxGkPkotkNtpu5k17g4cU8e8go9Y8l6LoIw=
X-Google-Smtp-Source: APXvYqy5xDUk6ZRqV6kfbrhflwUl3Z7mn4CdQsdzGe1DVyX0JDyK1Y0QGNe/90HSoMg/E4lCgYNLu83RchpVMerH7IE=
X-Received: by 2002:aca:b70a:: with SMTP id h10mr3528640oif.20.1580400895221;
 Thu, 30 Jan 2020 08:14:55 -0800 (PST)
MIME-Version: 1.0
References: <CAJgSc4xZ9Jhyqba1dufKh5h2WHidw5evus5Yo_obr2vdrxDOPQ@mail.gmail.com>
 <4911dfd590168072b2f4f8e7437c7c8d8229418f.camel@linuxfoundation.org>
In-Reply-To: <4911dfd590168072b2f4f8e7437c7c8d8229418f.camel@linuxfoundation.org>
From: "Alexandru N. Onea" <onea.alex@gmail.com>
Date: Thu, 30 Jan 2020 18:12:04 +0200
Message-ID: <CAJgSc4yQL_TfDpnVDnB_-pT+ubo-mJz3uOe8nYLDZOWHQZVcZw@mail.gmail.com>
Subject: Re: [yocto] Bitbake immediate assignment behavior
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f6657f059d5dc195"

--000000000000f6657f059d5dc195
Content-Type: text/plain; charset="UTF-8"

Hi Richard,

Thank you for the clarification.

I am definitely not in a position to make any suggestions regarding how
bitbake should behave, however I would like to at least give my view:
    * to me, the reason for having an immediate assignment seems to be
related (among others, maybe) to the fact that at times we want / need to
be certain about the value of a variable, and we can achieve that by
forcing the assignment to use "known" values (i.e. values that are known at
the moment of the parsing) instead of relying on future values. In short,
in my opinion, the immediate assignment aims to guarantee that the value of
a variable depends ONLY on known values at the time of the parsing, and not
on future, uncertain values.
    * the current behavior of the immediate assignment directly contradicts
the above by introducing the very same "uncertainty" which we try to avoid
by using it in the first place. That is, the immediate assignment cannot
guarantee that the value of the assigned variable depends ONLY on values
known at the time of the parsing.

Of course, it is also possible that the use of immediate assignments in
practical contexts is not so much driven by the need for the above
guarantee, but instead used in ways that I don't see at the moment. I would
like to learn more about how this assignment is used in practice.

Thanks again,
Alexandru Onea


On Thu, 30 Jan 2020 at 14:04, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> Hi,
>
> On Thu, 2020-01-30 at 13:32 +0200, Alexandru N. Onea wrote:
> > Let's consider the following example in a bb file:
> >
> > X = "1"
> > A := "X is '${X}' and Y is '${Y}'"
> > B = "X is '${X}' and Y is '${Y}'"
> > X = "2"
> > Y = "3"
> >
> > According to the bitbake user manual, section 3.1.7 [1], the expected
> > values for A and B after parsing is done, are
> >
> > A="X is '1' and Y is ''"
> > B="X is '2' and Y is '3'"
> >
> > meaning that, since Y is not defined at the time of parsing the
> > assignment to A, it is replaced with blank, while X is substituted
> > with the value that it had at that time. On the other hand, B will
> > substitute the last defined values for both X and Y.
> >
> > However, if I run the following example through bitbake, I get the
> > following result:
> >
> > A="X is '1' and Y is '3'"
> > B="X is '2' and Y is '3'"
> >
> > Although unexpected and a bit counter-intuitive at first, the result
> > is easily explained by the fact that, according to section 3.1.4 [2],
> > an undefined variable expansion results in keeping the actual literal
> > string in place, in our case "${Y}", which probably leads, at the end
> > of the parsing, to a re-evaluation of A and, since now Y is defined,
> > the substitution of that literal with the last value that has been
> > assigned to Y (i.e. 3).
> >
> > Question: is this behavior intentional? Or is it a bug? The
> > documentation for the immediate assignment states that we should
> > expect undefined variables to be substituted with blank while in
> > practice they obey the rules of the simple assignments.
>
> I'd say bitbake is behaving as it was written to behave. I'm not sure
> its ideal but we probably do rely on it in places.
>
> > Should at least the documentation be updated?
>
> Yes, and we should add some tests for it to better "document" it.
>
> There is a patch on the bitbake list which tweaks the docs already but
> I'd like to fix the example too.
>
> Cheers,
>
> Richard
>
>

--000000000000f6657f059d5dc195
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Richard,<div><br></div><div>Thank you for the clarifica=
tion.</div><div><br></div><div>I am definitely not in a=C2=A0position to ma=
ke any suggestions regarding how bitbake should behave, however I would lik=
e to at least give my view:</div><div>=C2=A0 =C2=A0 * to me, the reason for=
 having an immediate assignment seems to be related (among others, maybe) t=
o the fact that at times we want / need to be certain about the value of a =
variable, and we can achieve that by forcing the assignment to use &quot;kn=
own&quot; values (i.e. values that are known at the moment of the parsing) =
instead of relying on future values. In short, in my=C2=A0opinion, the imme=
diate assignment aims to guarantee that the value of a variable depends ONL=
Y on known values at the time of the parsing, and not on future, uncertain =
values.</div><div>=C2=A0 =C2=A0 * the current behavior of the immediate ass=
ignment directly contradicts the above by introducing the very same &quot;u=
ncertainty&quot; which we try to avoid by using it in the first=C2=A0place.=
 That is, the immediate assignment cannot guarantee that the value of the a=
ssigned variable depends ONLY on values known at the time of the parsing.</=
div><div><br></div><div>Of course, it is also possible that the use of imme=
diate assignments in practical contexts is not so much driven by the need f=
or the above guarantee, but instead used in ways that I don&#39;t see at th=
e moment. I would like to learn more about how this assignment is used in p=
ractice.</div><div><br></div><div>Thanks again,<br clear=3D"all"><div><div =
dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Alexandru O=
nea</div></div></div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, 30 Jan 2020 at 14:04, Richard Purdie=
 &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank=
">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Thu, 2020-01-30 at 13:32 +0200, Alexandru N. Onea wrote:<br>
&gt; Let&#39;s consider the following example in a bb file:<br>
&gt; <br>
&gt; X =3D &quot;1&quot;<br>
&gt; A :=3D &quot;X is &#39;${X}&#39; and Y is &#39;${Y}&#39;&quot;<br>
&gt; B =3D &quot;X is &#39;${X}&#39; and Y is &#39;${Y}&#39;&quot;<br>
&gt; X =3D &quot;2&quot;<br>
&gt; Y =3D &quot;3&quot;<br>
&gt; <br>
&gt; According to the bitbake user manual, section 3.1.7 [1], the expected<=
br>
&gt; values for A and B after parsing is done, are <br>
&gt; <br>
&gt; A=3D&quot;X is &#39;1&#39; and Y is &#39;&#39;&quot;<br>
&gt; B=3D&quot;X is &#39;2&#39; and Y is &#39;3&#39;&quot;<br>
&gt; <br>
&gt; meaning that, since Y is not defined at the time of parsing the<br>
&gt; assignment to A, it is replaced with blank, while X is substituted<br>
&gt; with the value that it had at that time. On the other hand, B will<br>
&gt; substitute the last defined values for both X and Y.<br>
&gt; <br>
&gt; However, if I run the following example through bitbake, I get the<br>
&gt; following result:<br>
&gt; <br>
&gt; A=3D&quot;X is &#39;1&#39; and Y is &#39;3&#39;&quot;<br>
&gt; B=3D&quot;X is &#39;2&#39; and Y is &#39;3&#39;&quot;<br>
&gt; <br>
&gt; Although unexpected and a bit counter-intuitive at first, the result<b=
r>
&gt; is easily explained by the fact that, according to section 3.1.4 [2],<=
br>
&gt; an undefined variable expansion results in keeping the actual literal<=
br>
&gt; string in place, in our case &quot;${Y}&quot;, which probably leads, a=
t the end<br>
&gt; of the parsing, to a re-evaluation of A and, since now Y is defined,<b=
r>
&gt; the substitution of that literal with the last value that has been<br>
&gt; assigned to Y (i.e. 3).<br>
&gt; <br>
&gt; Question: is this behavior intentional? Or is it a bug? The<br>
&gt; documentation for the immediate assignment states that we should<br>
&gt; expect undefined variables to be substituted with blank while in<br>
&gt; practice they obey the rules of the simple assignments.<br>
<br>
I&#39;d say bitbake is behaving as it was written to behave. I&#39;m not su=
re<br>
its ideal but we probably do rely on it in places.<br>
<br>
&gt; Should at least the documentation be updated?<br>
<br>
Yes, and we should add some tests for it to better &quot;document&quot; it.=
<br>
<br>
There is a patch on the bitbake list which tweaks the docs already but<br>
I&#39;d like to fix the example too.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--000000000000f6657f059d5dc195--
