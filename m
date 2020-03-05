Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web09.8222.1583382983783228069
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 20:36:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@assonance-org.20150623.gappssmtp.com header.s=20150623 header.b=oujNpm+I;
 spf=pass (domain: assonance.org, ip: 209.85.210.43, mailfrom: aaron@assonance.org)
Received: by mail-ot1-f43.google.com with SMTP id i14so4438347otp.5
        for <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2020 20:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=assonance-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U3VTkeBeACp9tOCw+EOegd1l6pEDqjxcvvCvdVbK4do=;
        b=oujNpm+I05cxRxuFDAAIxPP/hTl+mitKimIlnfAxcbeg6AvM60NJNoiZwB6diqcd/c
         yqn3lu83IWqbDVKx6eAi/6w27rcWsw0348hVe+SpyExYSmHnutpuN40W3R32jL+/i+2M
         g3dKp2BlowllFHOR4mxZ6t30lkseVDksUh+chcvucvB+irBeMXBPXXFxzP9oS9DEf0WN
         fI8xcFCIP9yzO2IM72+bOwr522ujeiaa+6MMgr4pphwd0DKPVheHpxwbp8qHUBgO6CmQ
         I1HFtqM6FS4FmoM1TDJwU41magQIYaAiFzBkrg4/4kMFgtxLhkCpw3xn22+CJ52mHfDl
         DLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U3VTkeBeACp9tOCw+EOegd1l6pEDqjxcvvCvdVbK4do=;
        b=DKTZQGE3TN13GLmIUOIe4m9aHO2ePqNvf8chLrQ7fS7RJCx0palgJdVvk/Ecv6pLgw
         DH0lxVQou0v+R7UuXzcH4TsjNFMyZaN6ef2XbGzkpV156raN+rmpyA5ff6WyI27MsYDh
         tR7jJPK7DOpoWpUB45Cz5uo+1VT/r221Gb0QecQIHlndiULbClCQmzAN4NHSiQ7OSTLz
         KGzK/Jhc48gpBD45dTH0j5tNRsztyT/vqE2Aw2eFBrXg/MKq16F8UFAK5zJVKrhUEBVL
         cCWcalYaSE5ohA7G7UW7EmcFjwBQSawng1eGD3oqVtkReZAh2HJ6BC5iVot98EJprKq0
         V4Mw==
X-Gm-Message-State: ANhLgQ36kFPJ+aRo4hIGYR+78o1/buQgFv/fZ8J+KlIKCTOimGxni3PU
	eiY0XfwIAO0crYN7gh/CiMLfVNL4ncmRy4mhmSAYRA==
X-Google-Smtp-Source: ADFU+vuncwULzU8t959fDVoR8LD0r2NBglRmweaclPgXtJ72zvZCefn/V1trZNPkMCVTEdcMxzFMHnuLE01Jx6cKx+M=
X-Received: by 2002:a9d:ecc:: with SMTP id 70mr5022596otj.182.1583382982835;
 Wed, 04 Mar 2020 20:36:22 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCU2vdL52FmU3pG3gARHGA0tLhdgGRr=7uH+FbP3_T9kyA@mail.gmail.com>
 <CAFSZm+iYmsh4GA1_CqDAw13EK2L7H0z-DxokgOZtrRfYP9S7PQ@mail.gmail.com>
 <CAK4PFCWYu4JwH7kD36OB_cRPuwxuwQL325wct4a8e6y4zA+fVg@mail.gmail.com>
 <CAFSZm+haWSQepkSYd5LwXZNyUJ_PQn5=mH65o7b1BW1DMPetxQ@mail.gmail.com> <CAK4PFCU6bAiJMM9YjKxS0Yw=cnGkf1y+GEn1Fc6qCbmSebvRgA@mail.gmail.com>
In-Reply-To: <CAK4PFCU6bAiJMM9YjKxS0Yw=cnGkf1y+GEn1Fc6qCbmSebvRgA@mail.gmail.com>
From: "Joel A Cohen" <aaron@assonance.org>
Date: Wed, 4 Mar 2020 23:36:08 -0500
Message-ID: <CAFSZm+jJ0nkWDVX8K0SNA1W+WtDy2OjN8b1yiHDriffXm+y7SA@mail.gmail.com>
Subject: Re: [yocto] way to make do_devshell changes permanent?
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003c50c405a0141485"

--0000000000003c50c405a0141485
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 4, 2020 at 10:53 PM Kent Dorfman <kent.dorfman766@gmail.com>
wrote:

> On 3/3/20, Aaron Cohen <aaron@assonance.org> wrote:
> >> > # Once satisfied with changes:
> >> > 3) git add $BUILDDIR/workspace/sources/<recipe> && git commit -m
> "Added
>
> Does the git add have to be done as specified above?  I made changes
> and inside the directory where the changes occured I just did a git
> add -am "my message", but it didn't save my changes when I rebuilt the
> image.
>

I guess this should be more like:
3) cd $BUILDDIR/workspace/sources/<recipe> && git add ... && git commit ...

because I don't think git works correctly from outside the repository.


> Also, the devtool finish seems really horky.  devtool modify <recipe>
> checks out the package, but why is it necessary to explicitly specify
> a layer when you finish?  It's hard enough knowing what layer a recipe
> is coming from in the first place, with all the inheritance, layer
> priorities, and bbappends. D'oh!  In some ways seems needlessly
> complex: ie flexibility at the expense of elegance.
>

You actually don't want to "devtool finish" while you're still playing with
the recipe.

While you're in the "devtool modify" state, bitbake will prefer the source
code within your workspace (you shouldn't need to "git commit" either while
at this stage). "devtool finish" tries to automatically update your recipe,
but also removes the association with the source code in your workspace
directory (it doesn't delete the directory within your workspace as a
safety measure though).

You have to specify the layer to save your changes to, because ideally, you
are either the owner of the recipe, in which case you should know exactly
which layer to save changes, or if you're not the owner of the recipe, the
"correct" thing to do is make a bbappend in your own layer with patch files
for the source code changes. If you're not the owner, your life will be
easier in the end if you don't change the recipe in your copy of the layer.

--Aaron

--0000000000003c50c405a0141485
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 4, 2020 at 10:53 PM Kent Dorf=
man &lt;<a href=3D"mailto:kent.dorfman766@gmail.com">kent.dorfman766@gmail.=
com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">On 3/3/20, Aaron Cohen &lt;<a href=3D"mailto:=
aaron@assonance.org" target=3D"_blank">aaron@assonance.org</a>&gt; wrote:<b=
r>&gt;&gt; &gt; # Once satisfied with changes:<br>
&gt;&gt; &gt; 3) git add $BUILDDIR/workspace/sources/&lt;recipe&gt; &amp;&a=
mp; git commit -m &quot;Added<br>
<br>
Does the git add have to be done as specified above?=C2=A0 I made changes<b=
r>
and inside the directory where the changes occured I just did a git<br>
add -am &quot;my message&quot;, but it didn&#39;t save my changes when I re=
built the<br>
image.<br></blockquote><div><br></div><div>I guess this should be more like=
:</div><div>3) cd $BUILDDIR/workspace/sources/&lt;recipe&gt; &amp;&amp; git=
 add ... &amp;&amp; git commit ...</div><div><br></div><div>because I don&#=
39;t think git works correctly from outside the repository.</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Also, the devtool finish seems really horky.=C2=A0 devtool modify &lt;recip=
e&gt;<br>
checks out the package, but why is it necessary to explicitly specify<br>
a layer when you finish?=C2=A0 It&#39;s hard enough knowing what layer a re=
cipe<br>
is coming from in the first place, with all the inheritance, layer<br>
priorities, and bbappends. D&#39;oh!=C2=A0 In some ways seems needlessly<br=
>
complex: ie flexibility at the expense of elegance.<br></blockquote><div><b=
r></div><div>You actually don&#39;t want to &quot;devtool finish&quot; whil=
e you&#39;re still playing with the recipe.</div><div><br></div><div>While =
you&#39;re in the &quot;devtool modify&quot; state, bitbake will prefer the=
 source code within your workspace (you shouldn&#39;t need to &quot;git com=
mit&quot; either while at this stage). &quot;devtool finish&quot; tries to =
automatically update your recipe, but also removes the association with the=
 source code in your workspace directory (it doesn&#39;t delete the directo=
ry within your workspace as a safety measure though).</div><div><br></div><=
div>You have to specify the layer to save your changes to, because ideally,=
 you are either the owner of the recipe, in which case you should know exac=
tly which layer to save changes, or if you&#39;re not the owner of the reci=
pe, the &quot;correct&quot; thing to do is make a bbappend in your own laye=
r with patch files for the source code changes. If you&#39;re not the owner=
, your life will be easier in the end if you don&#39;t change the recipe in=
 your copy of the layer.</div><div><br></div><div>--Aaron</div><div><br></d=
iv><div><br></div><div><br></div><div>=C2=A0</div></div></div>

--0000000000003c50c405a0141485--
