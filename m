Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web11.3242.1584560458106351738
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 12:40:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UYi1jQEN;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: easmith5555@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id l14so24821337ilj.8
        for <yocto@lists.yoctoproject.org>; Wed, 18 Mar 2020 12:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=exfGXYlqXtgGS7FNtNrKvwGKUO9P3u+kh89oWUd7Krc=;
        b=UYi1jQENo8NACSNC2HL/c1IN/aAjwGE1bOPFR74iasRkO2uq01dFi2usze/H44f0bz
         5u4MsDgurCFyMEzFVfrV+WZgwA8AOGPnI1aKtILBtkvSPMyqDPGufJxw1mk9cwST9ZVS
         SSYUruvT7JJCu160a1YIW1f51DkDjFRZ6/LmgvTXm58bbEGnj7E5fLooK2EBO+egZZi5
         +uMNc3tRhrNBLFK8CjAQzgwoz4Rj/kDXcBchizyU8ORtbhCFNMaA8jFx7ZfaAzjEbn9H
         F7S5Ay+z7UfntGX7o8/EE/k4qAMjxC3A7+2jhK5Dn9BIH9i68VBUOPWK5nJykjCFrDMZ
         ig+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=exfGXYlqXtgGS7FNtNrKvwGKUO9P3u+kh89oWUd7Krc=;
        b=qsJYhf6pgmHI/Krf02S/mWirbR3zLEOgqLTAQUEqmFe2e61EzGslBVcFjFi4MyrC41
         hc5HUx9Mm5MZbauATZlv+2bLQMNXYELiMfoE3iS1L4Xfi8MCSlcLnJTC6A+Q8bv1s+40
         3ndFn6LoCmWsbiFS4WO5Ldwm2KUDpNne243kfplEysGwbm3/ifMdPGUU2yTSm0RktSEL
         3XeG2K3t1FRcP5FBtXmWl7sGsq9h6qvJRx7ElWaViT7HXkw4WUWD1gXQl3m9BaHPYW6F
         z+R5TE8rq0t+BnXiGsNbq6XGywBxZ35V5D2DnKfQmuAOr0Ocn86vAhmhCHADTyQPWzbo
         Zovw==
X-Gm-Message-State: ANhLgQ0xC/vLaPYl8ZK5poxztqC0Ss1dkMesqk9JF2uieSaMRXg60sOI
	NU6bZMHczppUsK+TXRKpvXNV5DZziWeAaJCwn+s=
X-Google-Smtp-Source: ADFU+vtOSO97CbjHjQqCu6HmAdqp6GtDBVxeWY788UMfBt7mPpGlEY+4TA8clMgtW+lxQKeSAXAQTFMfttWG1wTRBn4=
X-Received: by 2002:a92:cc42:: with SMTP id t2mr5185472ilq.154.1584560457419;
 Wed, 18 Mar 2020 12:40:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
 <20200317160443.6pyp7zuonargxrux@qschulz> <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
 <CAGbd71QqDTLU0nAz1aV0FuXQtArCeV2Z65RaTQ3Q7wE2daNE9w@mail.gmail.com>
 <CAAV2bM0ExWhQx8hmnxbCc9jvpM5UHUY0pdqCbsyZQTt3w2KEAA@mail.gmail.com>
 <15FD3752830F21C1.15339@lists.yoctoproject.org> <CAGbd71QQievdwbETfKH7JbeRGHALHhukQkPY4oND36YUen3-Qw@mail.gmail.com>
 <CAAV2bM080EARso6YiaoT55h1v_xfwMG3T-ha8DndQu_Wpkn_zw@mail.gmail.com> <20200318153722.p7n5ppx62savb75n@qschulz>
In-Reply-To: <20200318153722.p7n5ppx62savb75n@qschulz>
From: "Emily" <easmith5555@gmail.com>
Date: Wed, 18 Mar 2020 14:40:45 -0500
Message-ID: <CAAV2bM1FjBtm34cSP+fqFhU+XNE0Jd=kfes9sd+-wLL4APLeFw@mail.gmail.com>
Subject: Re: [yocto] How to PROVIDE boost-python
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Laurent Gauthier <laurent.gauthier@soccasys.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000308eb905a1263b35"

--000000000000308eb905a1263b35
Content-Type: text/plain; charset="UTF-8"

Hi Laurent and Quentin -

Thank you both so much for your help!

I did just end up patching the source code for my recipe - I had to both
add the 3 and remove the -mt, and the OS does build now! If the sw does
what I need it to is another question, but we shall see.

Thanks again!
Emily

On Wed, Mar 18, 2020 at 10:37 AM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Emily,
>
> On Wed, Mar 18, 2020 at 10:16:23AM -0500, Emily wrote:
> > Hi Laurent -
> >
> > Unfortunately I don't have full control over the repo that's using
> > boost_python-mt so I'm not sure I can switch it right now.
> >
>
> You can create a patch for it. You can use devtool modify <your-recipe>
> and create the patch from there, you have access to the sources with
> that. devtool build <your-recipe> to check it builds okay.
>
> > I realize this is not a long-term solution, as I'll need to update that
> > code (and my OS) to python3 soon, but for now I've just copied the boost
> > recipe from this commit
> > <
> https://github.com/openembedded/openembedded-core/commit/ef603f41b5df4772bb598ec9d389dd5f858592af#diff-9c24742c4bfe7eb2853f86cce86b91c6
> >
> > to
> > my own layer, and added a BBMASK to the openembedded-core's boost recipe.
> > This seems to work, except I get a QA error from the commit I'm using for
> > the boost recipe now:
> >
>
> I don't think there is a need for BBMASK, you should be able to set
> PREFERRED_VERSION_boost = "1.63.0" in local.conf or your machine
> configuration file.
>
> > ERROR: boost-1.63.0-r1 do_package: QA Issue: boost: Files/directories
> were
> > installed but not shipped in any package:
> >   /usr/lib/libboost_numpy.so.1.63.0
> > Please set FILES such that these items are packaged. Alternatively if
> they
> > are unneeded, avoid installing them or delete them within do_install.
> > boost: 1 installed and not shipped files. [installed-vs-shipped]
> > ERROR: boost-1.63.0-r1 do_package: Fatal QA errors found, failing task.
> > ERROR: boost-1.63.0-r1 do_package: Function failed: do_package
> >
> > I found a log
> > <https://www.yoctoproject.org/irc/%23yocto.2017-03-09.log.html> that
> > mentions this exact error, and also mentions a patch that fixes it - I've
> > tried and thus far failed to find that patch. I'm not sure if this will
> > actually work, but I thought I'd check and see if anyone had any ideas.
> >
>
> If all of this is really temporary you can install it in some package,
> or even create a new package for it. (PACKAGES =+ "boost-numpy",
> FILES_${PN}-numpy = "/usr/lib/libboost_numpy.so.1.63.0").
>
> No more ideas tbh. I would try to patch "your" SW first and see if it
> brings you somewhere, but that's what I would do, each their own way.
>
> Quentin
>

--000000000000308eb905a1263b35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Laurent and Quentin -=C2=A0<div><br></div><div>Thank yo=
u both so much for your help!=C2=A0</div><div><br></div><div>I did just end=
 up patching the source code for my recipe - I had to both add the 3 and re=
move the -mt, and the OS does build now! If the sw does what I need it to i=
s another question, but we shall see.=C2=A0</div><div><br></div><div>Thanks=
 again!=C2=A0</div><div>Emily</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 18, 2020 at 10:37 AM Quentin=
 Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com">quentin.s=
chulz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Hi Emily,<br>
<br>
On Wed, Mar 18, 2020 at 10:16:23AM -0500, Emily wrote:<br>
&gt; Hi Laurent -<br>
&gt; <br>
&gt; Unfortunately I don&#39;t have full control over the repo that&#39;s u=
sing<br>
&gt; boost_python-mt so I&#39;m not sure I can switch it right now.<br>
&gt; <br>
<br>
You can create a patch for it. You can use devtool modify &lt;your-recipe&g=
t;<br>
and create the patch from there, you have access to the sources with<br>
that. devtool build &lt;your-recipe&gt; to check it builds okay.<br>
<br>
&gt; I realize this is not a long-term solution, as I&#39;ll need to update=
 that<br>
&gt; code (and my OS) to python3 soon, but for now I&#39;ve just copied the=
 boost<br>
&gt; recipe from this commit<br>
&gt; &lt;<a href=3D"https://github.com/openembedded/openembedded-core/commi=
t/ef603f41b5df4772bb598ec9d389dd5f858592af#diff-9c24742c4bfe7eb2853f86cce86=
b91c6" rel=3D"noreferrer" target=3D"_blank">https://github.com/openembedded=
/openembedded-core/commit/ef603f41b5df4772bb598ec9d389dd5f858592af#diff-9c2=
4742c4bfe7eb2853f86cce86b91c6</a>&gt;<br>
&gt; to<br>
&gt; my own layer, and added a BBMASK to the openembedded-core&#39;s boost =
recipe.<br>
&gt; This seems to work, except I get a QA error from the commit I&#39;m us=
ing for<br>
&gt; the boost recipe now:<br>
&gt; <br>
<br>
I don&#39;t think there is a need for BBMASK, you should be able to set<br>
PREFERRED_VERSION_boost =3D &quot;1.63.0&quot; in local.conf or your machin=
e<br>
configuration file.<br>
<br>
&gt; ERROR: boost-1.63.0-r1 do_package: QA Issue: boost: Files/directories =
were<br>
&gt; installed but not shipped in any package:<br>
&gt;=C2=A0 =C2=A0/usr/lib/libboost_numpy.so.1.63.0<br>
&gt; Please set FILES such that these items are packaged. Alternatively if =
they<br>
&gt; are unneeded, avoid installing them or delete them within do_install.<=
br>
&gt; boost: 1 installed and not shipped files. [installed-vs-shipped]<br>
&gt; ERROR: boost-1.63.0-r1 do_package: Fatal QA errors found, failing task=
.<br>
&gt; ERROR: boost-1.63.0-r1 do_package: Function failed: do_package<br>
&gt; <br>
&gt; I found a log<br>
&gt; &lt;<a href=3D"https://www.yoctoproject.org/irc/%23yocto.2017-03-09.lo=
g.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/i=
rc/%23yocto.2017-03-09.log.html</a>&gt; that<br>
&gt; mentions this exact error, and also mentions a patch that fixes it - I=
&#39;ve<br>
&gt; tried and thus far failed to find that patch. I&#39;m not sure if this=
 will<br>
&gt; actually work, but I thought I&#39;d check and see if anyone had any i=
deas.<br>
&gt; <br>
<br>
If all of this is really temporary you can install it in some package,<br>
or even create a new package for it. (PACKAGES =3D+ &quot;boost-numpy&quot;=
,<br>
FILES_${PN}-numpy =3D &quot;/usr/lib/libboost_numpy.so.1.63.0&quot;).<br>
<br>
No more ideas tbh. I would try to patch &quot;your&quot; SW first and see i=
f it<br>
brings you somewhere, but that&#39;s what I would do, each their own way.<b=
r>
<br>
Quentin<br>
</blockquote></div>

--000000000000308eb905a1263b35--
