Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web11.8340.1592577551616628115
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 07:39:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nlk8EN+6;
 spf=pass (domain: gmail.com, ip: 209.85.221.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id y23so2334794vkd.13
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 07:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XwfH9+kO1qYPi8ptW+INA9FkvPsaXZ1MvyK5JY5HK6Q=;
        b=Nlk8EN+6VP2AtAXfMmVwqsBQVLhiwo+cTfp7jtYd1dVkp2hSe97fswNr4RHZSkmOOJ
         IFrVluwKqIB80iybUOQS2XkUamR/+oeDcHvoZgS50eBs4rtuZaiyI6IRTayaxjgpN0qf
         tT8nVDSmOuFAuZ0Aj6nJuI978eNA5wSvIEEeT3gSR3uRmeIqrWzBnJ2TIiGy2z7JO+l3
         2jxh66AHBTaD0ya+epfhn6088NT6Gf4Gw6ltdTWEjAxrngYJ6upSYSeZBkHatwJOhafG
         nw56w8wn1Bbknny4IggoXiKVu32DjmhGs6JBGFvQaUBAmXLLn8ViOmhy6VZ2nSlqCcVQ
         KlDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XwfH9+kO1qYPi8ptW+INA9FkvPsaXZ1MvyK5JY5HK6Q=;
        b=HbQKMZWi/w0y56cc0s1mu3elidw+qaZigTQkwOwibwGhUVMkr9sAenD23qsXpDo1hQ
         Zf9NxG9nQpWqswmWUwQae7rlgVbaXEncbE+xWMWi0hh+v81b2zRhqOu5dYhVT469N0Xm
         eDBr4zXs9gw6wcQv2aYuObB9xBLi5R2oyCYsN6EME+BLdDY/5zngpCbvvtA7otm7f+s6
         unDy0KJWC8Kt8xNvrXxUK6GQz2YOmfu9ydIdX+pok3jNk2OuduanlAbW4OkX0jXgOsMN
         42oHZVzB3EijXh7lEuw1vUyLTN8ri4yu+m2yvDmPWf1R4694wEEzEPxgFf7tg4vPaQjp
         LMYA==
X-Gm-Message-State: AOAM532pT/fPXi6QRtyagwPe4/sPQn1dc7sL6OU+KVh8juOOb0YRZaGO
	GvfJbgi+/5WWblgXQ602EUBnuaICFsxzanlAEFDfWyL6
X-Google-Smtp-Source: ABdhPJzCoxl5cj+QmJvOffJsIZEL1U1/Io7HqdtZq8Q31OdGF+EdyfT0OBR0sdkGPvjaBNrN/x+TmhIUlNoBTY9Fxo4=
X-Received: by 2002:a1f:2c0d:: with SMTP id s13mr7776532vks.9.1592577550642;
 Fri, 19 Jun 2020 07:39:10 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR11MB3268E2BB9A442B0890DA3C9DAE980@BL0PR11MB3268.namprd11.prod.outlook.com>
 <CANNYZj_0BYuNgmO3MHm0vEgu6qQut2vk984fRFPQGuRCy+=W1Q@mail.gmail.com> <4f66cf05-c142-188c-0661-8e446c81c67f@2net.co.uk>
In-Reply-To: <4f66cf05-c142-188c-0661-8e446c81c67f@2net.co.uk>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 19 Jun 2020 16:38:59 +0200
Message-ID: <CANNYZj9XG7MiVg8NPTnE0g+qu1sXMefQM6yCaT4iik8TENDn+Q@mail.gmail.com>
Subject: Re: [yocto] Distro upgrade strategies
To: chris@2net.co.uk
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002ef22705a870db28"

--0000000000002ef22705a870db28
Content-Type: text/plain; charset="UTF-8"

Right. Where I work, the updates would be performed through an A/B
partition scheme: if the update is botched, it is always possible to roll
back. This doubles the disk space requirement, but is far more robust.

Alex

On Fri, 19 Jun 2020 at 16:35, csimmonds <chris@2net.co.uk> wrote:

> I would like to add that this is a design decision. Package updates, be
> they based on rpm, deb, or ipk, are not atomic. Which means that if you
> power off during an update the system will usually not boot afterwards.
> This is not a problem with servers in data centers with redundant power
> supplies and whatever, but it is a problem for an embedded device on the
> top of a mountain or at the bottom of the sea. OpenEmbedded/Yocto
> Project expect the update will be done by programming a new root
> filesystem image. There are several ways to do this, including OTA
> solutions like swupdate and mender.io.
>
> HTH,
> Chris
>
> On 19/06/2020 15:05, Alexander Kanavin wrote:
> > Yocto does not support or test upgrading from one yocto release to the
> > next through dnf. Nothing conceptually prevents it, but you need to set
> > up and test such upgrades yourself, and send any needed fixes upstream.
> >
> > Alex
> >
> > On Fri 19. Jun 2020 at 14.16, Hugh Boddington
> > <hboddington@orangephotonics.com
> > <mailto:hboddington@orangephotonics.com>> wrote:
> >
> >     Hello all,
> >
> >     I'm struggling conceptually with a recommended upgrade strategy for
> >     our distribution (i.e. the resultant distribution on an ARM-based
> >     embedded device, not the development SDK itself).  I had initially
> >     assumed that a package manager (we're using DNF) could be used to
> >     upgrade a distribution from one version to the next, but every time
> >     I've used it to try to deploy a large upgrade (e.g.,  Zeus->Dunfell)
> >     I've run into problems.  Currently, if I try to use DNF to upgrade
> >     from a Zeus-based distribution my DNF installation breaks
> >     ("ModuleNotFoundError: No module named 'dnf'") and I can't even shut
> >     the device down ("/run/initctl: No such file or directory").
> >     However, if I install the Dunfell-based distribution from a raw
> >     image (without upgrading through Zeus) then everything works fine.
> >     I'm not getting an errors in my build or indication that something
> >     went wrong, but obviously something is amiss.
> >
> >     Questions:
> >       1) Am I missing something?  Is it reasonable to expect that I can
> >     upgrade the whole distro using DNF?  I've read the wiki page about
> >     System Updates (https://wiki.yoctoproject.org/wiki/System_Update)
> >     and DNF (or any other package manager) is not listed - does that
> >     imply it's not up to the job?
> >       2) If I do continue using DNF, how do I troubleshoot the above
> >     issues?  I don't mean specifically those issues, but I want to learn
> >     to fish.  Some packages got broken.  Was it caused by the distro I'm
> >     upgrading from?  To?  What's the best way of tracing it back?  I
> >     tried looking through the various commits but obviously there were a
> >     lot of changes made from one distro to another.  The above scenario
> >     seems also to be a perfect storm because now that DNF is broken I
> >     don't have a mechanism to downgrade anything.
> >
> >     I can't help but think that I'm swimming against the current here,
> >     or that I've done something fundamentally wrong - I'd appreciate any
> >     insight or advice.  Thank you!
> >
> >     Hugh
> >
> >
> >
> >
>
>
> --
> Chris Simmonds, trainer and consultant at 2net
> http://www.2net.co.uk
> Author of "Mastering Embedded Linux Programming"
> 
>

--0000000000002ef22705a870db28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Right. Where I work, the updates would be performed t=
hrough an A/B partition scheme: if the update is botched, it is always poss=
ible to roll back. This doubles the disk space requirement, but is far more=
 robust.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 19 Jun 2020 at 16:3=
5, csimmonds &lt;<a href=3D"mailto:chris@2net.co.uk">chris@2net.co.uk</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I woul=
d like to add that this is a design decision. Package updates, be<br>
they based on rpm, deb, or ipk, are not atomic. Which means that if you<br=
>
power off during an update the system will usually not boot afterwards.<br=
>
This is not a problem with servers in data centers with redundant power<br=
>
supplies and whatever, but it is a problem for an embedded device on the<b=
r>
top of a mountain or at the bottom of the sea. OpenEmbedded/Yocto<br>
Project expect the update will be done by programming a new root<br>
filesystem image. There are several ways to do this, including OTA<br>
solutions like swupdate and <a href=3D"http://mender.io" rel=3D"noreferrer=
" target=3D"_blank">mender.io</a>.<br>
<br>
HTH,<br>
Chris<br>
<br>
On 19/06/2020 15:05, Alexander Kanavin wrote:<br>
&gt; Yocto does not support or test upgrading from one yocto release to th=
e<br>
&gt; next through dnf. Nothing conceptually prevents it, but you need to s=
et<br>
&gt; up and test such upgrades yourself, and send any needed fixes upstrea=
m.<br>
&gt; <br>
&gt; Alex<br>
&gt; <br>
&gt; On Fri 19. Jun 2020 at 14.16, Hugh Boddington<br>
&gt; &lt;<a href=3D"mailto:hboddington@orangephotonics.com" target=3D"_bla=
nk">hboddington@orangephotonics.com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:hboddington@orangephotonics.com" target=
=3D"_blank">hboddington@orangephotonics.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hello all,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;m struggling conceptually with a recommended=
 upgrade strategy for<br>
&gt;=C2=A0 =C2=A0 =C2=A0our distribution (i.e. the resultant distribution =
on an ARM-based<br>
&gt;=C2=A0 =C2=A0 =C2=A0embedded device, not the development SDK itself).=
=C2=A0 I had initially<br>
&gt;=C2=A0 =C2=A0 =C2=A0assumed that a package manager (we&#39;re using DN=
F) could be used to<br>
&gt;=C2=A0 =C2=A0 =C2=A0upgrade a distribution from one version to the nex=
t, but every time<br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;ve used it to try to deploy a large upgrade =
(e.g.,=C2=A0 Zeus-&gt;Dunfell)<br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;ve run into problems.=C2=A0 Currently, if I =
try to use DNF to upgrade<br>
&gt;=C2=A0 =C2=A0 =C2=A0from a Zeus-based distribution my DNF installation=
 breaks<br>
&gt;=C2=A0 =C2=A0 =C2=A0(&quot;ModuleNotFoundError: No module named &#39;d=
nf&#39;&quot;) and I can&#39;t even shut<br>
&gt;=C2=A0 =C2=A0 =C2=A0the device down (&quot;/run/initctl: No such file =
or directory&quot;).=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0However, if I install the Dunfell-based distributi=
on from a raw<br>
&gt;=C2=A0 =C2=A0 =C2=A0image (without upgrading through Zeus) then everyt=
hing works fine.=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;m not getting an errors in my build or indic=
ation that something<br>
&gt;=C2=A0 =C2=A0 =C2=A0went wrong, but obviously something is amiss.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Questions:<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 1) Am I missing something?=C2=A0 Is it reas=
onable to expect that I can<br>
&gt;=C2=A0 =C2=A0 =C2=A0upgrade the whole distro using DNF?=C2=A0 I&#39;ve=
 read the wiki page about<br>
&gt;=C2=A0 =C2=A0 =C2=A0System Updates (<a href=3D"https://wiki.yoctoproje=
ct.org/wiki/System_Update" rel=3D"noreferrer" target=3D"_blank">https://wik=
i.yoctoproject.org/wiki/System_Update</a>)<br>
&gt;=C2=A0 =C2=A0 =C2=A0and DNF (or any other package manager) is not list=
ed - does that<br>
&gt;=C2=A0 =C2=A0 =C2=A0imply it&#39;s not up to the job?<br>
&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 2) If I do continue using DNF, how do I tro=
ubleshoot the above<br>
&gt;=C2=A0 =C2=A0 =C2=A0issues?=C2=A0 I don&#39;t mean specifically those =
issues, but I want to learn<br>
&gt;=C2=A0 =C2=A0 =C2=A0to fish.=C2=A0 Some packages got broken.=C2=A0 Was=
 it caused by the distro I&#39;m<br>
&gt;=C2=A0 =C2=A0 =C2=A0upgrading from?=C2=A0 To?=C2=A0 What&#39;s the bes=
t way of tracing it back?=C2=A0 I<br>
&gt;=C2=A0 =C2=A0 =C2=A0tried looking through the various commits but obvi=
ously there were a<br>
&gt;=C2=A0 =C2=A0 =C2=A0lot of changes made from one distro to another.=C2=
=
=A0 The above scenario<br>
&gt;=C2=A0 =C2=A0 =C2=A0seems also to be a perfect storm because now that =
DNF is broken I<br>
&gt;=C2=A0 =C2=A0 =C2=A0don&#39;t have a mechanism to downgrade anything.<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I can&#39;t help but think that I&#39;m swimming a=
gainst the current here,<br>
&gt;=C2=A0 =C2=A0 =C2=A0or that I&#39;ve done something fundamentally wron=
g - I&#39;d appreciate any<br>
&gt;=C2=A0 =C2=A0 =C2=A0insight or advice.=C2=A0 Thank you!<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hugh<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
Chris Simmonds, trainer and consultant at 2net<br>
<a href=3D"http://www.2net.co.uk" rel=3D"noreferrer" target=3D"_blank">htt=
p://www.2net.co.uk</a><br>
Author of &quot;Mastering Embedded Linux Programming&quot;<br>
<br>
</blockquote></div>

--0000000000002ef22705a870db28--
