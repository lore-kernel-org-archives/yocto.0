Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web09.3606.1605946884673014050
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 00:21:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=P+HpJjFC;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: chuckwolber@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id w14so10171844pfd.7
        for <yocto@lists.yoctoproject.org>; Sat, 21 Nov 2020 00:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Af7gofXdjne4ScYkimPGN746xOwpP+FGX6wR7AoX2fg=;
        b=P+HpJjFCrxlZ2eRbzqyC6VEKtDc3oC+RCcoxdpojr5L37TF17Xu3lwkndA5pe7Avaa
         L1FxsBcro/n6b84fl15gN+Q695DOHi/DS9KMzvvW7TkGbfc4ExQO2m+1bEtpA5C9OCbT
         Dlz+enKwE6DoeUAEua9ZXlMjvVENvISbVdQcJq0/7ExukkwiA4Gcnl7L+6V4868IK3Fx
         KVLpFxuPmd27nY+awEOEMCFuBR9l9od5l5KwflKM4xKLxKIrxWoIacvHemApr4Q/6lwv
         B4CORDqM4NcFY+7pe0eoD9IeD6KCguY7UTFrYRZl5EC+rqvmTPBIfjhfLLVofVU5k0Kv
         Tm6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Af7gofXdjne4ScYkimPGN746xOwpP+FGX6wR7AoX2fg=;
        b=IbF8WT/lx8aYrGqdKbB3UBBa3cU9AIWrqTMWJ73FfnQv7fAIwcSNfTwE2YKpn+c5Yq
         rvmaCvShk8qUc/4lhZSpGDbl1Axz5nQ/4jw9KxrDRDfMADvpXBGxtvECyGzjuZhMJ8ZZ
         twF+ZwGFPKCE0hK9m5klfQiYSomnmudckzo94152rll5Pf0DIM2whRBsJDYH1SMHGTPN
         Ba3IEYmszE54khSWk87lYB2b4Z70UPkbsh1U2Ge0Bm/f6mdVkLey5cn4kUmiIPo7d0RG
         P9xiDsVo0c0NTqT70rIZymnHJZrxS/Ri5yFooZjSyEBWow/jIhFe7bHoh3nxuBorWEf+
         WUrg==
X-Gm-Message-State: AOAM530HT4Q/HMKr3M+cys19cQp9qdyt2BuQPYO018gALOwuW7TnY2+s
	vgWD6Su2WuijcDy6umeZdNLzCx7sz/UMXbNpfFI=
X-Google-Smtp-Source: ABdhPJzBn0/9G6B4+CMmwx9rkajv2Z7CkKGlSLXeeqk4ZBRPpCfED2FVyBbWyWRvvYbJdM86KYXT6vb2ur6J60ZJANg=
X-Received: by 2002:a62:14b:0:b029:18a:df47:4133 with SMTP id
 72-20020a62014b0000b029018adf474133mr16701175pfb.72.1605946884024; Sat, 21
 Nov 2020 00:21:24 -0800 (PST)
MIME-Version: 1.0
References: <SGGF.1605926973795518137.Lv2i@lists.yoctoproject.org>
In-Reply-To: <SGGF.1605926973795518137.Lv2i@lists.yoctoproject.org>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Sat, 21 Nov 2020 00:21:12 -0800
Message-ID: <CAB=6tBTXBc+77Eh0hDKGLtWDzU+PwFr1HRAeica-4ckftO33GQ@mail.gmail.com>
Subject: Re: [yocto] Best convention for FILES variable
To: rustyhowell@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008ceddb05b499a5a3"

--0000000000008ceddb05b499a5a3
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 20, 2020 at 6:49 PM <rustyhowell@gmail.com> wrote:

> Hello,
> I am relatively new to yocto, and I am working on several recipes at the
> moment and I'm wondering about using wildcards in my FILES_{PN} list. None
> of the packages have more than 5 or 6 files to package. They could easily
> be covered with two wildcard entries, but I wonder if there is benefit to
> listing each file explicitly. Thanks for the help.  Example below:
>
> FILES_fooz = "\
>     */fooz* \
>     */*/fooz* \
> "
>
> vs
>
> FILES_fooz = "\
>    /lib/foozlib.so \
>    /usr/lib/foozlib-2.so \
>    /usr/bin/fooz \
>    /bin/fooz \
>    /usr/share/fooz \
> "
>
>
Both will work, although you do run the risk of accidentally globbing files
that you do not mean to include, but perhaps you know your recipes well
enough that that is not a factor.

Personally, I find that being explicit makes a lot more sense for a few
reasons:

   - Stuff changes, and I _want_ a build error or warning to let me when it
   changes and someone forgot to update the recipe.
   - The grep command is your friend. If you glob, you lose a lot of
   fidelity there.
   - If you want to refactor a recipe into separate packages later, you
   probably need to do a lot of head scratching to pin down all of the files
   generated in the build.

And finally, I have adjusted to using the following pattern, and found that
it has improved maintainability a great deal. It applies to DEPENDS and
RDEPENDS as well. Yes, it is a bit tedious, but the benefits far outweigh
the cost (IMHO).

FILES_fooz += " lib/foozlib.so"
FILES_fooz += " /usr/lib/foozlib-2.so"
FILES_fooz += " /usr/bin/fooz"
FILES_fooz += " /bin/fooz"
FILES_fooz += " /usr/share/fooz"

This pattern is invaluable when you start accumulating a lot of recipes. A
recursive grep (grep -r) across a directory tree, will immediately tell you
that (for example), /bin/fooz is file in the fooz package and it is
referenced in the fooz_1.3.2.bb recipe.

..Ch:W..

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--0000000000008ceddb05b499a5a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Nov 20, 2020 at 6:49 PM &lt;<a hr=
ef=3D"mailto:rustyhowell@gmail.com">rustyhowell@gmail.com</a>&gt; wrote:<br=
></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hello, <br>I am relatively new to yocto, and I am working on sev=
eral recipes at the moment and I&#39;m wondering about using wildcards in m=
y FILES_{PN} list. None of the packages have more than 5 or 6 files to pack=
age. They could easily be covered with two wildcard entries, but I wonder i=
f there is benefit to listing each file explicitly. Thanks for the help.=C2=
=A0 Example below:<br>
<pre>FILES_fooz =3D &quot;\<br>    */fooz* \<br>    */*/fooz* \<br>&quot;</=
pre>
vs<br>
<pre>FILES_fooz =3D &quot;\<br>=C2=A0=C2=A0 /lib/foozlib.so \<br>=C2=A0=C2=
=A0 /usr/lib/foozlib-2.so \<br>   /usr/bin/fooz \<br>   /bin/fooz \<br>   /=
usr/share/fooz \<br>&quot;</pre>
</blockquote></div><div><br></div><div>Both will work, although you do run =
the risk of accidentally globbing files that you do not mean to include, bu=
t perhaps you know your recipes well enough that that is not a factor.</div=
><div><br></div><div>Personally, I find that being explicit makes a lot mor=
e sense for a few reasons:</div><div><ul><li>Stuff changes, and I _want_ a =
build error or warning to let me when it changes and someone forgot to upda=
te the recipe.<br></li><li>The grep command is your friend. If you glob, yo=
u lose a lot of fidelity there.</li><li>If you want to refactor a recipe in=
to separate packages later, you probably need to do a lot of head scratchin=
g to pin down all of the files generated in the build.<br></li></ul><div>An=
d finally, I have adjusted to using the following pattern, and found that i=
t has improved maintainability a great deal. It applies to DEPENDS and RDEP=
ENDS as well. Yes, it is a bit tedious, but the benefits far outweigh the c=
ost (IMHO).<br></div><div><br></div><div>FILES_fooz +=3D &quot; lib/foozlib=
.so&quot;</div><div>FILES_fooz +=3D &quot; /usr/lib/foozlib-2.so&quot;</div=
><div>FILES_fooz +=3D &quot; /usr/bin/fooz&quot;</div><div>FILES_fooz +=3D =
&quot; /bin/fooz&quot;</div><div>FILES_fooz +=3D &quot; /usr/share/fooz&quo=
t;</div><div><br></div><div>This pattern is invaluable when you start accum=
ulating a lot of recipes. A recursive grep (grep -r) across a directory tre=
e, will immediately tell you that (for example), /bin/fooz is file in the f=
ooz package and it is referenced in the <a href=3D"http://fooz_1.3.2.bb">fo=
oz_1.3.2.bb</a> recipe.<br></div></div><div><br></div><div>..Ch:W..<br></di=
v><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><b><span style=3D"font-family:monospace">&quot;Perfection must be reache=
d by degrees; she requires the slow hand of time.&quot; - Voltaire</span></=
b></div></div></div></div>

--0000000000008ceddb05b499a5a3--
