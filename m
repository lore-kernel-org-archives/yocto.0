Return-Path: <kjeld.flarup@liberalismen.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DA58C02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 15:02:49 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.12629.1737126161389468623
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 07:02:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@liberalismen-dk.20230601.gappssmtp.com header.s=20230601 header.b=XghhpDT1;
 spf=none, err=permanent DNS error (domain: liberalismen.dk, ip: 209.85.218.45, mailfrom: kfc@liberalismen.dk)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ab34a170526so305401566b.0
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 07:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=liberalismen-dk.20230601.gappssmtp.com; s=20230601; t=1737126160; x=1737730960; darn=lists.yoctoproject.org;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t+ECHc5BVJKcNHfPulFchh3pXzonT7JfKKXy4S/6Kds=;
        b=XghhpDT1H1HpDGB5+ZIW5StPwRA/GryM+iszRnczqO4FkIACNgVPQVOVQ3899nRAU0
         QDKjboPFqEt7zyZoHyP3MnMIMqc0kl5eeOe9KorYAgTcutRwrtF80jTLinD1UPUCOldv
         9F8beOErk8xLzmnR5pCgdL9YMwCM7Vg2cWmdmL6fIuQqtO+jSP2UZncFuUMEkLnUqwGn
         DiNICJmwPfjiFwQuPDNPF+lhFV6XdsyytD8puECrzxg+GG77nwWTOGT0cpCWM1/Nm7E2
         WyH4L5R/8HC3w6+O/KLdNucTOz+/wBrJ50ekcWO9od7pN9Z/BtWscMQLF0sbWTu81FBs
         MN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737126160; x=1737730960;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t+ECHc5BVJKcNHfPulFchh3pXzonT7JfKKXy4S/6Kds=;
        b=aI5+Z7NTsEiOTEKq8BJtnK4/XFWlE2sBOqweineB/nrcrp/+RK5O1qBw5f8lnan3Jv
         dedcq+fzI5C3iDSO4UYmv3NIk4ZwCnb6UpGyjGvf2hNR2YVFF6vNWuRf/dsOC/A11fLo
         yvGZqEAZexPNC5nuPrcmdku6gOlVQeFgj0L3I1TGGTdck4zqsBkaUsW2iNDz+JTyiROE
         VxNxF17WdqPZH9qBuQgcske07z5rPLYkH6XNmYSDCBaUUlX/P7wyKyPa1VN5evZREmfF
         ZRTNgcJqLQQIg0HYHm3KMmaB0p9UsdOSGVZ9KgVmbamQWIqYBGa5aXu+bHtJTDuWqnqT
         PycA==
X-Gm-Message-State: AOJu0YycoAJ1UlDFe0FH0wmFJdOm3XFmht7Kxz/O4rd0Vp3tDPcCvJVp
	58Xlt/PmO5EafyfFZWPaEQJSh0gKqL4/IqGdskqu662AH2D2DMC90JMRQ9rIiS81+hY4P+gFwgr
	siR+MYLUeOjgCUebwgGEWZlFbm4evvs/Kl1V9r22xy5De6qp2
X-Gm-Gg: ASbGncuTBjsySbDW0jP1eZzY/Mn8rhr5psVhauiT+El+ZtD7ERjdsx98AcULMjmGbwO
	GX0ru9QbWqec75Shnhw95XuGqtF9i+Agog6c=
X-Google-Smtp-Source: AGHT+IEHsmc4NyWS0aLJ37RmoTB1TB8m794KeEgpIDocxY1MfS7/m+gDmblbM2HQcTvnQnvLB5UJm3QLC3ppieu00u4=
X-Received: by 2002:a17:907:9710:b0:aa6:a21b:2a9 with SMTP id
 a640c23a62f3a-ab38b3e2ed0mr333484366b.57.1737126159047; Fri, 17 Jan 2025
 07:02:39 -0800 (PST)
MIME-Version: 1.0
References: <CACRoYp_pFeOTE9VYZh+tsvrXbgXXX2YgsCCSDt06CB1BrUcpzg@mail.gmail.com>
 <9114649f-4ed7-4691-a76f-b3b8aaea5d90@cherry.de>
In-Reply-To: <9114649f-4ed7-4691-a76f-b3b8aaea5d90@cherry.de>
From: Kjeld Flarup <kjeld.flarup@liberalismen.dk>
Date: Fri, 17 Jan 2025 16:02:27 +0100
X-Gm-Features: AbW1kvbT9zEz9nLpjiUKpgHNedwlunB8R4RQGjAH5eBIlQ2Xb-p5MIKxliWYE_8
Message-ID: <CACRoYp9ra6a8=V5i3mpUQN+wnsZ94hLxoDtX3ds3-ZXo9K2knA@mail.gmail.com>
Subject: Re: [yocto] do_unpack:append
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a3f8af062be83395"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 15:02:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64584

--000000000000a3f8af062be83395
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the alternatives Quentin

--------------------- Med Liberalistiske Hilsner ----------------------

   Civilingeni=C3=B8r, Kjeld Flarup - Mit sind er mere =C3=A5bent end min t=
egnebog
   Sofienlundvej 6B, 7560 Hjerm, Tlf: 40 29 41 49
   Den ikke akademiske hjemmeside for liberalismen - www.liberalismen.dk



Den fre. 17. jan. 2025 kl. 15.57 skrev Quentin Schulz <
quentin.schulz@cherry.de>:

> Hi,
>
> On 1/17/25 3:25 PM, Kjeld Flarup via lists.yoctoproject.org wrote:
> > You don't often get email from kjeld.flarup=3D
> liberalismen.dk@lists.yoctoproject.org. Learn why this is important<
> https://aka.ms/LearnAboutSenderIdentification>
> > I try to write an append for do_unpack
> > do_unpack:append() {
> >    echo Hello
> > }
> >
> > But it looks like it is parsed as Python
> >
> >                       parser =3D bb.codeparser.PythonParser(key, logger=
)
> >      >                parser.parse_python(value,
> filename=3Dvarflags.get("filename"), lineno=3Dvarflags.get("lineno"))
> >                       deps =3D deps | parser.references
> >    File "/tmp/yocto/meta-poky/bitbake/lib/bb/codeparser.py", line 358,
> in PythonParser.parse_python(node=3D"\n
> bb.build.exec_func('base_do_unpack', d)\n  echo Hello\n", lineno=3D1,
> filename=3D'autogenerated', fixedhash=3DNone):
> >               node =3D "\n" * int(lineno) + node
> >      >        code =3D compile(check_indent(str(node)), filename, "exec=
",
> >                              ast.PyCF_ONLY_AST)
> >    File "autogenerated", line 3
> >      echo Hello
> >                ^
> > IndentationError: unindent does not match any outer indentation level
> >
> > Isn't this possible using shell
> >
>
> Tasks can be python or shell, here do_unpack is Python, so you need to
> write Python code in :prepend or :append.
>
> Depending on your usecase, you can simply add a new task and insert it
> between do_unpack and the next task depending on this change for example.
>
> Another option is to use bb.build.exec_func() from Python code to
> execute a shell function, though I don't think this is widely used
> outside of core code (and I haven't used it myself, so maybe not the
> best practice either).
>
> You can also have shell functions run after the python task is run,
> those are added with:
>
> do_unpack[prefuncs] +=3D "my-shell-func another-shell-func"
> do_unpack[postfuncs] +=3D "my-shell-func yet-another-shell-func"
>
> c.f.
>
> https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-ma=
nual-metadata.html#variable-flags
>
> Cheers,
> Quentin
>

--000000000000a3f8af062be83395
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the alternatives Quentin</div><div><div di=
r=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr"><p>--------------------- Med Liberalistiske Hilsner ----------=
------------</p><pre cols=3D"72">   Civilingeni=C3=B8r, Kjeld Flarup - Mit =
sind er mere =C3=A5bent end min tegnebog
   Sofienlundvej 6B, 7560 Hjerm, Tlf: 40 29 41 49
   Den ikke akademiske hjemmeside for liberalismen - <a href=3D"http://www.=
liberalismen.dk" target=3D"_blank">www.liberalismen.dk</a>

</pre></div></div></div><br></div><br><div class=3D"gmail_quote gmail_quote=
_container"><div dir=3D"ltr" class=3D"gmail_attr">Den fre. 17. jan. 2025 kl=
. 15.57 skrev Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz@cherry.de=
">quentin.schulz@cherry.de</a>&gt;:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi,<br>
<br>
On 1/17/25 3:25 PM, Kjeld Flarup via <a href=3D"http://lists.yoctoproject.o=
rg" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<=
br>
&gt; You don&#39;t often get email from kjeld.flarup=3D<a href=3D"mailto:li=
beralismen.dk@lists.yoctoproject.org" target=3D"_blank">liberalismen.dk@lis=
ts.yoctoproject.org</a>. Learn why this is important&lt;<a href=3D"https://=
aka.ms/LearnAboutSenderIdentification" rel=3D"noreferrer" target=3D"_blank"=
>https://aka.ms/LearnAboutSenderIdentification</a>&gt;<br>
&gt; I try to write an append for do_unpack<br>
&gt; do_unpack:append() {<br>
&gt;=C2=A0 =C2=A0 echo Hello<br>
&gt; }<br>
&gt; <br>
&gt; But it looks like it is parsed as Python<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0parser =3D bb.codeparser.PythonParser(key, logger)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 parser.parse_python(value, filename=3Dvarflags.get(&quot;filenam=
e&quot;), lineno=3Dvarflags.get(&quot;lineno&quot;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0deps =3D deps | parser.references<br>
&gt;=C2=A0 =C2=A0 File &quot;/tmp/yocto/meta-poky/bitbake/lib/bb/codeparser=
.py&quot;, line 358, in PythonParser.parse_python(node=3D&quot;\n=C2=A0 =C2=
=A0 bb.build.exec_func(&#39;base_do_unpack&#39;, d)\n=C2=A0 echo Hello\n&qu=
ot;, lineno=3D1, filename=3D&#39;autogenerated&#39;, fixedhash=3DNone):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0node =3D &quot;\=
n&quot; * int(lineno) + node<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 code =3D compile(c=
heck_indent(str(node)), filename, &quot;exec&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ast.PyCF_ONLY_AST)<br>
&gt;=C2=A0 =C2=A0 File &quot;autogenerated&quot;, line 3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 echo Hello<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
&gt; IndentationError: unindent does not match any outer indentation level<=
br>
&gt; <br>
&gt; Isn&#39;t this possible using shell<br>
&gt; <br>
<br>
Tasks can be python or shell, here do_unpack is Python, so you need to <br>
write Python code in :prepend or :append.<br>
<br>
Depending on your usecase, you can simply add a new task and insert it <br>
between do_unpack and the next task depending on this change for example.<b=
r>
<br>
Another option is to use bb.build.exec_func() from Python code to <br>
execute a shell function, though I don&#39;t think this is widely used <br>
outside of core code (and I haven&#39;t used it myself, so maybe not the <b=
r>
best practice either).<br>
<br>
You can also have shell functions run after the python task is run, <br>
those are added with:<br>
<br>
do_unpack[prefuncs] +=3D &quot;my-shell-func another-shell-func&quot;<br>
do_unpack[postfuncs] +=3D &quot;my-shell-func yet-another-shell-func&quot;<=
br>
<br>
c.f. <br>
<a href=3D"https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbak=
e-user-manual-metadata.html#variable-flags" rel=3D"noreferrer" target=3D"_b=
lank">https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-use=
r-manual-metadata.html#variable-flags</a><br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--000000000000a3f8af062be83395--

