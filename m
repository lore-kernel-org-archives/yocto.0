Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web11.6917.1580384130472906356
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 03:35:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WRB0Mcl3;
 spf=pass (domain: gmail.com, ip: 209.85.210.53, mailfrom: onea.alex@gmail.com)
Received: by mail-ot1-f53.google.com with SMTP id g64so2742454otb.13
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2020 03:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=QwY+bqcMe+G3Nnhj9HB3znoOxDes15zdXUaCAfhGAyc=;
        b=WRB0Mcl3rxRnlosIig6rB+HtEW8sKi+m88XqNcJkUrJJiiIjlQXncxwymAuYtrwjIL
         Fki/LnmAE8eEWyB2lVsmwjzk3A+nhBu7oj15dExHntLLJcD79hsbwS2P3aQELkaGxobM
         89ynhAdosrqHg4A/0abTx4ExCBkqrBmQo0hyejwAfJn4bi5voIECWTIofSodCWDghN4Q
         EH3ymQLmiJL1uuC8JudurCerIRD2OtSMs4Zag1pUJd9PMpYYN2p0S6lF9+15eUdRQFPG
         4cjWZtu9rnBhs+FeZ3CIGVbuwmXp8bpNytcb5yR14I6V5RctTIZFcp26FfYEe5GIGytg
         lVsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=QwY+bqcMe+G3Nnhj9HB3znoOxDes15zdXUaCAfhGAyc=;
        b=A/0VB+OdcUYnwjriDFE2keJrfrJKm3QAzPPTGW56nRZAGCrhs/3aWz+L05dKLU1F9+
         e/R4mKc067w1s4D24yxbEJUnU6VUfIJVzo1Hc37NuwU9p/qGLAUb6sVlMZLkAasDbTCo
         OSfv+EiYZHrVCQFBwjB/Q+epT7DInUr5XrDGmMXj2H9Wp+5caIWkd0IbB/KARWgf4WIg
         TSIN/rZUDIrz0iSF3uT7ZifThrPXUzhBQKuRy3V2sqoVVEAivoG+CX8aOaVBFwubRnqy
         /VhJM+X8VElELENXFpYnd+IVbbYRm80RdClsQINei9cojolb1yM2k0LIBBAaUBoiYe+Z
         Zptg==
X-Gm-Message-State: APjAAAXg417Z8d+wZW7L76YHEEImvGLsDaHqhHKutw7gCnzZF79GlOcM
	cr7omF53FGDuVpuZuD1OkC9vY0pUIhhhfs49wIK2lcY60Bc=
X-Google-Smtp-Source: APXvYqyfYuZ7hFpd5jvfiLRhK7kVo7HMKZso4+bmvMVa64h15zP2yz89qkN87wJWhw8p52jwwWiOr+V3PtdAcXZWQJA=
X-Received: by 2002:a9d:6c8d:: with SMTP id c13mr3140549otr.277.1580384129496;
 Thu, 30 Jan 2020 03:35:29 -0800 (PST)
MIME-Version: 1.0
From: "Alexandru N. Onea" <onea.alex@gmail.com>
Date: Thu, 30 Jan 2020 13:32:38 +0200
Message-ID: <CAJgSc4xZ9Jhyqba1dufKh5h2WHidw5evus5Yo_obr2vdrxDOPQ@mail.gmail.com>
Subject: [yocto] Bitbake immediate assignment behavior
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a5b87a059d59da24"

--000000000000a5b87a059d59da24
Content-Type: text/plain; charset="UTF-8"

Hello community,

Let's consider the following example in a bb file:

X = "1"
A := "X is '${X}' and Y is '${Y}'"
B = "X is '${X}' and Y is '${Y}'"
X = "2"
Y = "3"

According to the bitbake user manual, section 3.1.7 [1], the expected
values for A and B after parsing is done, are

A="X is '1' and Y is ''"
B="X is '2' and Y is '3'"

meaning that, since Y is not defined at the time of parsing the
assignment to A, it is replaced with blank, while X is substituted with the
value that it had at that time. On the other hand, B will substitute the
last defined values for both X and Y.

However, if I run the following example through bitbake, I get the
following result:

A="X is '1' and Y is '3'"
B="X is '2' and Y is '3'"

Although unexpected and a bit counter-intuitive at first, the result is
easily explained by the fact that, according to section 3.1.4 [2], an
undefined variable expansion results in keeping the actual literal string
in place, in our case "${Y}", which probably leads, at the end of the
parsing, to a re-evaluation of A and, since now Y is defined, the
substitution of that literal with the last value that has been assigned to
Y (i.e. 3).

Question: is this behavior intentional? Or is it a bug? The documentation
for the immediate assignment states that we should expect undefined
variables to be substituted with blank while in practice they obey the
rules of the simple assignments.

Should at least the documentation be updated?

PS. I ran the same example through GNU Make since it also implements the
concept of immediate assignment and make does replace undefined variables
with blank. It seems that bitbake has a different perspective on this
concept.

Looking forward to your feedback on this.

PS2. The question might be too bitbake specific for this list. Let me know
if I should post it to the bitbake dedicated list instead.

[1]
https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user-manual.html#immediate-variable-expansion
[2]
https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user-manual.html#variable-expansion

Alexandru N. Onea

--000000000000a5b87a059d59da24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello community,<div><br></div><div>Let&#39;s consider the=
 following example in a=C2=A0bb file:</div><div><br></div><div>X =3D &quot;=
1&quot;<br>A :=3D &quot;X is &#39;${X}&#39; and Y is &#39;${Y}&#39;&quot;<b=
r>B =3D &quot;X is &#39;${X}&#39; and Y is &#39;${Y}&#39;&quot;<br>X =3D &q=
uot;2&quot;<br>Y =3D &quot;3&quot;<br></div><div><br></div><div>According t=
o the bitbake user manual, section 3.1.7 [1], the expected values for A and=
 B after parsing is done, are=C2=A0</div><div><br></div><div>A=3D&quot;X is=
 &#39;1&#39; and Y is &#39;&#39;&quot;</div><div>B=3D&quot;X is &#39;2&#39;=
 and Y is &#39;3&#39;&quot;</div><div><br></div><div>meaning that, since Y =
is not defined at the time of parsing the assignment=C2=A0to A, it is repla=
ced with blank, while X is substituted with the value that it had at that t=
ime. On the other hand, B will substitute the last defined values for both =
X and Y.</div><div><br></div><div>However, if I run the following example t=
hrough bitbake, I get the following result:</div><div><br></div><div><div>A=
=3D&quot;X is &#39;1&#39; and Y is &#39;3&#39;&quot;</div><div>B=3D&quot;X =
is &#39;2&#39; and Y is &#39;3&#39;&quot;</div><div></div></div><div><br></=
div><div>Although=C2=A0unexpected and a bit counter-intuitive at first, the=
 result is easily explained by the fact that, according to section 3.1.4 [2=
], an undefined variable expansion results in keeping the actual literal st=
ring in place, in our case &quot;${Y}&quot;, which probably=C2=A0leads, at =
the end of the parsing, to a re-evaluation of A and, since now Y is defined=
, the substitution of that literal with the last value that has been assign=
ed=C2=A0to Y (i.e. 3).</div><div><br></div><div>Question: is this behavior =
intentional? Or is it a bug? The documentation for the immediate assignment=
 states that we should expect undefined variables to be substituted with bl=
ank while in practice they obey the rules of the simple assignments.</div><=
div><br></div><div>Should at least the documentation be updated?</div><div>=
<br></div><div>PS. I ran the same example through GNU Make since it also im=
plements the concept of immediate assignment and make does replace undefine=
d variables with blank. It seems that bitbake has a different perspective o=
n this concept.</div><div><br></div><div>Looking forward to your feedback o=
n this.</div><div><br></div><div>PS2. The question might be too bitbake spe=
cific for this list. Let me know if I should post it to the bitbake dedicat=
ed list instead.</div><div><br></div><div>[1]=C2=A0<a href=3D"https://www.y=
octoproject.org/docs/latest/bitbake-user-manual/bitbake-user-manual.html#im=
mediate-variable-expansion">https://www.yoctoproject.org/docs/latest/bitbak=
e-user-manual/bitbake-user-manual.html#immediate-variable-expansion</a></di=
v><div>[2]=C2=A0<a href=3D"https://www.yoctoproject.org/docs/latest/bitbake=
-user-manual/bitbake-user-manual.html#variable-expansion">https://www.yocto=
project.org/docs/latest/bitbake-user-manual/bitbake-user-manual.html#variab=
le-expansion</a></div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Alexa=
ndru N. Onea</div></div></div></div></div>

--000000000000a5b87a059d59da24--
