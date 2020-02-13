Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web10.8763.1581611764397968849
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 08:36:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jNHxqNv+;
 spf=pass (domain: gmail.com, ip: 209.85.222.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id 73so2481856uac.6
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2020 08:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=w3UnMB7OqyT23Axjleli5OL9Fuyy29NMcPMLqrIrTt0=;
        b=jNHxqNv+4KBogpWkTA5Cl8nLnZWoLjmeIAmbzDGeY9nN0udcJwvhDmgb/+QcCgipAC
         WGnbrshXnE09orcFpJ2zQ5Or+yZgClCVM+sKUExw0rlNc+50DPAfmmmX0iYUjadlrJau
         x+ZZgEIONFr6kMRDe+6zsF3FGQ0/iHZmhy9fTZWaa235of9jsBljIFuHRb55Cd/XXl4E
         t5GWvkLO3JOESR2LlHMzh3WFd+nj2ErQv6Aw55KaZzJVbJ6H52YyXlqbSJwlh0wlEClo
         0rzdKlFB1Ikrcvku3nadmKHmv6GZMPat9EBxfQniO1ehz7pARgubv+GDlonPHPNJt2lO
         +RhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=w3UnMB7OqyT23Axjleli5OL9Fuyy29NMcPMLqrIrTt0=;
        b=H0fSuRVb7OOAZSksutLn07Wyvmfri07ZqT4xwF0BiFFlIT04mwleqhpRCxpVDsQKAP
         l6l1GCsiT/wwFhaXeCMYi6371PKUsF+kw1LrvDqsKIHcKUYyQtJJhlIE4YOFku5G/3d3
         XqSHo3rqYyYABX4V8r3YgUTOzomegd8Ff/xt5twqq6VOFZqFhsvnuheskRhFMYtF+nlo
         HEwBOBgQRIW5zbezpB/JngUdqOo6plcbceOrpJ9gpQ+eqhpEt/Vh42ShbyqNTM9zUTeN
         qmT/aahPISsZa74mUWnCEF0/115QGW6GaZlWkRq7RvhRuP2Lj0bFo3vE+Ou4bsbL+oHV
         M6eg==
X-Gm-Message-State: APjAAAWBk3lSEujZWvZTdAByo9r0f0Ugi/kwZSxmWX9X9jOqgBvhDFeF
	wkWSg+AQ+GhicbIMU5xW8vBGLYlO1daKeqqYInI=
X-Google-Smtp-Source: APXvYqzRM1KYWsk0hs1uPgJvwkCT8fm+hX93/+tURH58WgOefd3YU+5EsxO23nXPwIRP49MsDkGHQBhfDhgFe2OPhDA=
X-Received: by 2002:ab0:3381:: with SMTP id y1mr7471523uap.93.1581611763596;
 Thu, 13 Feb 2020 08:36:03 -0800 (PST)
MIME-Version: 1.0
References: <jcV0.1581611366748662864.JIcy@lists.yoctoproject.org>
In-Reply-To: <jcV0.1581611366748662864.JIcy@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 13 Feb 2020 17:36:32 +0100
Message-ID: <CANNYZj9myYbCLMAv-4xrQUVdOWLhfwn7HZNzj4s2S511Qq4rrQ@mail.gmail.com>
Subject: Re: [yocto] Incrementally building constantly changing application source in a workflow-friendly way with #yocto
To: Pieter Smith <smipi01@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000578348059e77af8e"

--000000000000578348059e77af8e
Content-Type: text/plain; charset="UTF-8"

You can specify a directory relative to the one the recipe is in in
SRC_URI. Bitbake will checksum all files in it (so will trigger a re-build
if they change), and will copy the directory into the $WORKDIR. I have
never actually tried this, but I'd start there, maybe with a hello world
type project for proof of concept.

Alex

On Thu, 13 Feb 2020 at 17:29, Pieter Smith <smipi01@gmail.com> wrote:

> I am defining a meta-layer with our business logic (applications), one or
> two recipes and an image definition. I would like to maintain the C/C++
> sources with this meta-layer in a single repository, because they are
> tightly coupled from a lifecycle perspective.
>
> Is there a way to always build the current state of the source-code from a
> path relative to the recipe.bb file in a workflow friendly way? After
> scouring the web and mailing lists for days, I have no satisfactory answer.
> With OpenWRT, Buildroot 2 and ptxdist this was extremely simple to achieve.
>
> My requirements are:
>
>    1. Treat the meta-layer, it's recipes and images as well as package
>    source-code as a monolithic whole with a single lifecycle within a single
>    git repository,
>    2. Have the current checked out state of git repository built whenever
>    I bake an image,
>    3. Not have things fall apart when I check-out in another location.
>
> I do not mind having to do a commit before each build so that the state
> can be tracked, but having to push and edit the recipe with the new commit
> ID so every change can be built deployed and tested is driving me nuts,
> especially since some changes are cross application, requiring an atomic
> update of both applications. 
>

--000000000000578348059e77af8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can specify a directory relative to the one the recipe=
 is in in SRC_URI. Bitbake will checksum all files in it (so will trigger a=
 re-build if they change), and will copy the directory into the $WORKDIR. I=
 have never actually tried this, but I&#39;d start there, maybe with a hell=
o world type project for proof of concept.<div><br></div><div>Alex</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, 13 Feb 2020 at 17:29, Pieter Smith &lt;<a href=3D"mailto:smipi01@gmail=
.com">smipi01@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-=
style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">I am defin=
ing a meta-layer with our business logic (applications), one or two recipes=
 and an image definition. I would like to maintain the C/C++ sources with t=
his meta-layer in a single repository, because they are tightly coupled fro=
m a lifecycle perspective.<br><br>Is there a way to always build the curren=
t state of the source-code from a path relative to the <a href=3D"http://re=
cipe.bb" target=3D"_blank">recipe.bb</a> file in a workflow friendly way? A=
fter scouring the web and mailing lists for days, I have no satisfactory an=
swer. With=C2=A0OpenWRT, Buildroot 2 and ptxdist this was extremely simple =
to achieve.<br><br>My requirements are:<br>
<ol>
<li>Treat the meta-layer, it&#39;s recipes and images as well as package s=
ource-code as a monolithic whole with a single lifecycle within a single gi=
t repository,</li>
<li>Have the current checked out state of git repository built whenever I =
bake an image,</li>
<li>Not have things fall apart when I check-out in another location.</li>
</ol>
I do not mind having to do a commit before each build so that the state ca=
n be tracked, but having to push and edit the recipe with the new commit ID=
 so every change can be built deployed and tested is driving me nuts, espec=
ially since some changes are cross application, requiring an atomic update =
of both applications.
<br>
</blockquote></div>

--000000000000578348059e77af8e--
