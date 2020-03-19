Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web11.1497.1584641374023326764
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 11:09:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=cuOFrMYt;
 spf=pass (domain: blade-group.com, ip: 209.85.167.177, mailfrom: yann.dirson@blade-group.com)
Received: by mail-oi1-f177.google.com with SMTP id j5so3730229oij.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 11:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e6EDuWsUS4ISQLnRGV8XjL5dV2uOAlGPG4TWOiggAS0=;
        b=cuOFrMYtGPCqwyz4o73GXx4iGQ7bJEV9cVRnt48cbflpbRicvNO+umteabzdqzV4Fh
         GV7/k3ukvIZDkFzLWpHNtObd3sWbeIAH8NFAPBb9fN/Hr/ECEmqgsIk20P2zferSkKM6
         LKzLRcUSmt+t17q1AC82/fAOUeSkiSVKNsaBN6TzUekH809y2X4qoLa0ucMe6amhZE9j
         YHuB2zCQ4cBQXdRiaQeEFaHXBuLo/0mWUXJDWVcj5w8z7qesrfCcVYhinvwQyS4QDYnP
         nzf6byjXQNbT2vyNKiAMIsWzAO0oQXhMrkTMxvoSB7jvmwZz82dQBwada44CFne7wcQV
         zVWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e6EDuWsUS4ISQLnRGV8XjL5dV2uOAlGPG4TWOiggAS0=;
        b=cYMN9w4uPSowxzBGk7hKu5PJeS3Ne/tFzt6jReCT7dsB7cQZ7NkMteZ2pfeSOl1bV6
         z/t+hvR0HQEKuFprbroVbRpbkKxKIBmpMPUzoGCu2P7UHrID2LglZ51MQZIFogn/QYGR
         OEBoAjNfN2SqpnHmUlr5Dmzgcdi/Nw9R+C/rz5YoiAOSF3qTY9jzmUy09Hl+8aSR8OOh
         LeJvp19Q8+HCvUCo9dkiqBYuhL+PR3m3jxwKQsg45TN4lPeRHr29dFcdJEuXyirxj55b
         Dt587xbu9XDEzGTzGF8y1ncBBnyMw3KNyuMjX0B+ECv6rKbaCEUY1uXBEYfKAUxoP8qS
         3z7w==
X-Gm-Message-State: ANhLgQ3orFhAJLvY60JmvVuCSIIF+Aes65avyF6lKFA+g03Yzrku5ORP
	PueE1nuz0f+JjbJ9/TQiY/nOW4FBTKad3L/Rw29naA==
X-Google-Smtp-Source: ADFU+vu81Dbe4oWN3MzB9UYxTL01VShytFywWqoNC5DfL0IYygCH1TMAY8BYSkYQhCaDvl3zBDi2w/rzfBoqLNLq9vk=
X-Received: by 2002:aca:5e0b:: with SMTP id s11mr3239279oib.111.1584641373346;
 Thu, 19 Mar 2020 11:09:33 -0700 (PDT)
MIME-Version: 1.0
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl> <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
 <20200319080514.GR104502@korppu> <bcab55b919af5da30e9b8fe3db0cc6537ac3f785.camel@linuxfoundation.org>
 <8d295b32-e2f9-9d95-f866-1f9061617450@topic.nl> <CA+4=imbpXksEiCtmadKaqdLR-QU4pst=Wf1_SHKtLqeZhVTpWQ@mail.gmail.com>
 <a206421cae44e76e8bfdabf66affb95103b03e71.camel@linuxfoundation.org>
In-Reply-To: <a206421cae44e76e8bfdabf66affb95103b03e71.camel@linuxfoundation.org>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Thu, 19 Mar 2020 19:09:21 +0100
Message-ID: <CA+4=imb+WTj8=6TEHExVtV0yAABaD4AKin8dt6Mpc4t2i-5fFQ@mail.gmail.com>
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Mike Looijmans <mike.looijmans@topic.nl>, Mikko Rapeli <mikko.rapeli@bmw.de>, ross@burtonini.com, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000027b1df05a1391221"

--00000000000027b1df05a1391221
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeu. 19 mars 2020 =C3=A0 18:04, Richard Purdie <
richard.purdie@linuxfoundation.org> a =C3=A9crit :

> On Thu, 2020-03-19 at 17:29 +0100, Yann Dirson wrote:
> >
> >
> > Le jeu. 19 mars 2020 =C3=A0 17:07, Mike Looijmans <mike.looijmans@topic=
.nl>
> a =C3=A9crit :
> > > On 19-03-2020 12:04, Richard Purdie via Lists.Yoctoproject.Org wrote:
> > > >> , fetch, configure, package and rootfs tasks.
> > > >
> > > > Sadly these tasks are much harder.
> > >
> > > It would be really great if some sort of "weight" could be attached t=
o
> a
> > > task. This relates to memory usage.
> > >
> > > My system has 16 cores but only 8GB RAM. With both parallelization
> > > options to "16", I might end up with 16 compile tasks running 16
> compile
> > > threads each, i.e. 256 running processes. In practice this doesn't
> > > actually happen, but the memory load gets high sometimes, so I reduce
> > > the TASKS to 8 at most. That has kept my system out of swap trouble
> for
> > > the time being.
> >
> > This could be neatly handled by using the GNU-make job-server mechanism=
.
> > If bitbake itself would provide a jub-server, all make-based recipes
> would
> > automatically get their jobs properly limited.  There is a (sadly not
> merged yet)
> > MR [1] for ninja tu gain job-server support as well, through which we
> should have
> > a pretty good coverage of the recipes set (as a backend for cmake,
> meson, and more).
> >
> > [1] https://github.com/ninja-build/ninja/issues/1139
>
> You mean like:
>
>
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Drpurdie/wip=
queue4&id=3Dd66a327fb6189db5de8bc489859235dcba306237
>
> ? :)
>
>
Awesome :)

Sadly we never fixed all the issues to let that merge.
>

The problems listed in the commit message don't amount to much at first
glance. Any other issues
that got visible only later ?

--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--00000000000027b1df05a1391221
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 19 mars 2020 =C3=A0=C2=
=A018:04, Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a>&gt; a =C3=A9crit=C2=A0:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">On Thu, 2020-03-19 a=
t 17:29 +0100, Yann Dirson wrote:<br>
&gt; <br>
&gt; <br>
&gt; Le jeu. 19 mars 2020 =C3=A0 17:07, Mike Looijmans &lt;<a href=3D"mailt=
o:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</a>&gt=
; a =C3=A9crit :<br>
&gt; &gt; On 19-03-2020 12:04, Richard Purdie via <a href=3D"http://Lists.Y=
octoproject.Org" rel=3D"noreferrer" target=3D"_blank">Lists.Yoctoproject.Or=
g</a> wrote:<br>
&gt; &gt; &gt;&gt; , fetch, configure, package and rootfs tasks.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Sadly these tasks are much harder.<br>
&gt; &gt; <br>
&gt; &gt; It would be really great if some sort of &quot;weight&quot; could=
 be attached to a <br>
&gt; &gt; task. This relates to memory usage.<br>
&gt; &gt; <br>
&gt; &gt; My system has 16 cores but only 8GB RAM. With both parallelizatio=
n <br>
&gt; &gt; options to &quot;16&quot;, I might end up with 16 compile tasks r=
unning 16 compile <br>
&gt; &gt; threads each, i.e. 256 running processes. In practice this doesn&=
#39;t <br>
&gt; &gt; actually happen, but the memory load gets high sometimes, so I re=
duce <br>
&gt; &gt; the TASKS to 8 at most. That has kept my system out of swap troub=
le for <br>
&gt; &gt; the time being.<br>
&gt; <br>
&gt; This could be neatly handled by using the GNU-make job-server mechanis=
m.<br>
&gt; If bitbake itself would provide a jub-server, all make-based recipes w=
ould<br>
&gt; automatically get their jobs properly limited.=C2=A0 There is a (sadly=
 not merged yet)<br>
&gt; MR [1] for ninja tu gain job-server support as well, through which we =
should have<br>
&gt; a pretty good coverage of the recipes set (as a backend for cmake, mes=
on, and more).<br>
&gt; <br>
&gt; [1] <a href=3D"https://github.com/ninja-build/ninja/issues/1139" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/ninja-build/ninja/issu=
es/1139</a><br>
<br>
You mean like:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Drp=
urdie/wipqueue4&amp;id=3Dd66a327fb6189db5de8bc489859235dcba306237" rel=3D"n=
oreferrer" target=3D"_blank">http://git.yoctoproject.org/cgit.cgi/poky-cont=
rib/commit/?h=3Drpurdie/wipqueue4&amp;id=3Dd66a327fb6189db5de8bc489859235dc=
ba306237</a><br>
<br>
? :)<br>
<br></blockquote><div><br></div><div>Awesome :)</div><div> <br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
Sadly we never fixed all the issues to let that merge.<br clear=3D"all"></b=
lockquote><div><br></div><div>The problems listed in the commit message don=
&#39;t amount to much at first glance. Any other issues</div><div>that got =
visible only later ?<br></div></div><br>-- <br><div dir=3D"ltr" class=3D"gm=
ail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" targ=
et=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shadow -- <a href=3D"=
http://shadow.tech" target=3D"_blank">http://shadow.tech</a><br><br></div><=
/div>

--00000000000027b1df05a1391221--
