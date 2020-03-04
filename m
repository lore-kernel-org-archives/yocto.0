Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
 by mx.groups.io with SMTP id smtpd.web11.1765.1583281986309917044
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 16:33:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=S0M9bLe8;
 spf=pass (domain: assonance.org, ip: 209.85.167.194, mailfrom: aaron@assonance.org)
Received: by mail-oi1-f194.google.com with SMTP id g6so339818oiy.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 16:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aI1MDYCesWO8xgnvBLhQsAPYH8Jb4xsvmRIhfccMvro=;
        b=S0M9bLe8BYaIfAU7QquP/VodNxn7YTJsT3WYIOA4qX1aeiGfnLy6QV5kfFaJCtgEj5
         annAWh82MpKPmdNHIjArYT5ibOHDLZ3Is+c2QaKiTS1cBZHUHKTa7S9py57PUkAbY4a4
         /lEXFs9AGwZXtE/L6I4Dx2iv5xTN7LA35AugomRkqCi2Kalht4mmBIJoHU8dWq4DTtHy
         qYP917LDxNfSE1dfMNIcKvA5LQgpqn8/nhEfcNb8yII0w0ejS5ExzLL/vZt+gWXeC7GM
         NAuXjDtVL3dLwdGk9pR5cvxmEzhTTGt5nChPVT/tSF5cWeWoenHL0nqzN+owx77Om+hX
         1nGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aI1MDYCesWO8xgnvBLhQsAPYH8Jb4xsvmRIhfccMvro=;
        b=gEYNW/GTkBGOX0DatpG+wYZD0hhWpJz0uG5uXDdRCyhhcKE8Og0LEZCt4vQ1h/a31S
         D9AZLfxJmnYeQZ31qCn0gvI7n/11GKmJbhu8mXcf6lP4TcXPQ5Y7rHchLzT/yn2Njxlk
         G6WIrD6MkAfjvPMiTlGugKKF56jP16SPa+PaoaP/ug+D92Lrft6AztYUC0zu+Ct8afBO
         1uh7cnhBJY8X3PuHMtK+TGyKWWDzXzGyATRWWO5rPR4doMl+60Ldm8Osf2xQJYxBvU7o
         7u+ad2WFsYP7zqubfSUVEQl6q7AB3/NMbwqpfGVwfMnuYUrazYGjqwgI4YcZYjdhK6Cr
         ZWiw==
X-Gm-Message-State: ANhLgQ1jL7MUtFbqOsDEuDVHGljmfdYbrRvX/G0nGk9YVB6tqgZmwiq5
	y+iT7kfU4pMpA4Y0hrp8Yl0FZVXOH+Ui6pgQm0H60g==
X-Google-Smtp-Source: ADFU+vsb3/aDOmFUk1YiSUoL578g2fQ8sSK4DLj06z9unYDPcZPxab5i7tnUF2Mn/0XP1sBQ/f9V0AygnL8v790BUJQ=
X-Received: by 2002:a54:4085:: with SMTP id i5mr85734oii.17.1583281985494;
 Tue, 03 Mar 2020 16:33:05 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCU2vdL52FmU3pG3gARHGA0tLhdgGRr=7uH+FbP3_T9kyA@mail.gmail.com>
 <CAFSZm+iYmsh4GA1_CqDAw13EK2L7H0z-DxokgOZtrRfYP9S7PQ@mail.gmail.com> <CAK4PFCWYu4JwH7kD36OB_cRPuwxuwQL325wct4a8e6y4zA+fVg@mail.gmail.com>
In-Reply-To: <CAK4PFCWYu4JwH7kD36OB_cRPuwxuwQL325wct4a8e6y4zA+fVg@mail.gmail.com>
From: "Joel A Cohen" <aaron@assonance.org>
Date: Tue, 3 Mar 2020 19:32:54 -0500
Message-ID: <CAFSZm+haWSQepkSYd5LwXZNyUJ_PQn5=mH65o7b1BW1DMPetxQ@mail.gmail.com>
Subject: Re: [yocto] way to make do_devshell changes permanent?
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000053367c059ffc9083"

--00000000000053367c059ffc9083
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The =E2=80=9Cgit commit=E2=80=9D step is just how you tell devtool about yo=
ur changes. Each
commit will result in a patch file in your layer (conversely, each patch
file ends up as a commit in the sources directory after your initial
=E2=80=9Cdevtool modify=E2=80=9D)

Notably, this git repo is only loosely connected to the repo or tarball
from the SRC_URI

=E2=80=94Aaron

On Tue, Mar 3, 2020 at 7:29 PM Kent Dorfman <kent.dorfman766@gmail.com>
wrote:

> On 3/3/20, Aaron Cohen <aaron@assonance.org> wrote:
> > devshell is good for playing around, but I don't know of any blessed wa=
y
> to
> > just have it somehow modify recipes and create patches magically. I'd b=
e
> > interested to hear if there is something like that.
> >
> > The closest to what I think you want is the "devtool" workflow
> > <
> https://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html#using-de=
vtool-in-your-workflow
> >
> >
> >
> > Basically:
> > 1) devtool modify <recipe>
> > 2) hack source in $BUILDDIR/workspace/sources/<recipe>, test as desired
> by
> > using "bitbake <recipe>" or "bitbake <image containing recipe>"
> > # Once satisfied with changes:
> > 3) git add $BUILDDIR/workspace/sources/<recipe> && git commit -m "Added
> > cool changes to recipe"
> > 4) devtool finish <recipe> <your_layer_name>
>
> I'm not sure that the git add is relevant for all recipes though.
> Some of them are simply tarball sources and others are shallow git
> archives.  Should I be confident that yocto will know the difference
> and treat each case correctly?  or more likely I'll assume that
> something was registered and then it doesn't find it's way into the
> build but slips through the cracks?
>
> So the question is whether devtool finish is smart enough to save the
> changes, regardless of whether the source repo is git or tarball.
>

--00000000000053367c059ffc9083
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">The =E2=80=9Cgit commit=E2=80=9D step is just how yo=
u tell devtool about your changes. Each commit will result in a patch file =
in your layer (conversely, each patch file ends up as a commit in the sourc=
es directory after your initial =E2=80=9Cdevtool modify=E2=80=9D)</div></di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Notably, this git repo is o=
nly loosely connected to the repo or tarball from the SRC_URI</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">=E2=80=94Aaron</div><div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 3, 202=
0 at 7:29 PM Kent Dorfman &lt;<a href=3D"mailto:kent.dorfman766@gmail.com">=
kent.dorfman766@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">On 3/3/20, Aaron Cohen &lt;<a href=3D"mailto:aaron@assonance.org" tar=
get=3D"_blank">aaron@assonance.org</a>&gt; wrote:<br>
&gt; devshell is good for playing around, but I don&#39;t know of any bless=
ed way to<br>
&gt; just have it somehow modify recipes and create patches magically. I&#3=
9;d be<br>
&gt; interested to hear if there is something like that.<br>
&gt;<br>
&gt; The closest to what I think you want is the &quot;devtool&quot; workfl=
ow<br>
&gt; &lt;<a href=3D"https://www.yoctoproject.org/docs/2.3/dev-manual/dev-ma=
nual.html#using-devtool-in-your-workflow" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html#using-=
devtool-in-your-workflow</a>&gt;<br>
&gt;<br>
&gt;<br>
&gt; Basically:<br>
&gt; 1) devtool modify &lt;recipe&gt;<br>
&gt; 2) hack source in $BUILDDIR/workspace/sources/&lt;recipe&gt;, test as =
desired by<br>
&gt; using &quot;bitbake &lt;recipe&gt;&quot; or &quot;bitbake &lt;image co=
ntaining recipe&gt;&quot;<br>
&gt; # Once satisfied with changes:<br>
&gt; 3) git add $BUILDDIR/workspace/sources/&lt;recipe&gt; &amp;&amp; git c=
ommit -m &quot;Added<br>
&gt; cool changes to recipe&quot;<br>
&gt; 4) devtool finish &lt;recipe&gt; &lt;your_layer_name&gt;<br>
<br>
I&#39;m not sure that the git add is relevant for all recipes though.<br>
Some of them are simply tarball sources and others are shallow git<br>
archives.=C2=A0 Should I be confident that yocto will know the difference<b=
r>
and treat each case correctly?=C2=A0 or more likely I&#39;ll assume that<br=
>
something was registered and then it doesn&#39;t find it&#39;s way into the=
<br>
build but slips through the cracks?<br>
<br>
So the question is whether devtool finish is smart enough to save the<br>
changes, regardless of whether the source repo is git or tarball.<br>
</blockquote></div></div>

--00000000000053367c059ffc9083--
