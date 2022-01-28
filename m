Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E78C433EF
	for <webhook@archiver.kernel.org>; Fri, 28 Jan 2022 09:47:02 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 by mx.groups.io with SMTP id smtpd.web11.5266.1643363221758004800
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 01:47:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HX4qTIdl;
 spf=pass (domain: gmail.com, ip: 209.85.166.50,
 mailfrom: hrsourabh011@gmail.com)
Received: by mail-io1-f50.google.com with SMTP id y84so7088789iof.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 01:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b4C5K6vuAtlp8Cjuw5g11g/JmEOEgG1FbIfEuwTkHuw=;
        b=HX4qTIdlWBH5XkzGliW+JHK7vg4yCNI+t7TeyEPADKrOfWSLo6Jrs7p7p4coxjdq7B
         pBUJXFjdokRDhBn/a2CD0hlsgluywBJY6Sdeo5mc3OyPVde6uIg8PJLgNwE13cpqzN3Q
         vgcwbF8LjhsG32ZUfpT9CtQEW7VvJms2MgnFQ/ZRFGiwsxewd6tVTOjIsFZawMMG6vOq
         EeF0zdJsIdMwo+QE4rUIIlkXjEzIcmWjAEWcdxIyM+k3ApT6XfrCHBbZLyJIkzpF+y4z
         KRczDT50bVZeG9f7cmE+MRMf1m1shLqEljBKTm9+/F+Cf3XV4/fqoiV+QelJPrvt/K2T
         01vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b4C5K6vuAtlp8Cjuw5g11g/JmEOEgG1FbIfEuwTkHuw=;
        b=JZoC5XBHXLri8r8aBni+jb5UyJEqPFqJ+4VnYXUsxSUOyp3Z3qkHy8DxXnDtYuveVJ
         2ckNwG7GEWGwrCweEsfnqUYyDjyxzVIexPh6vTNUTZTbpiFVZ7f5M9kzaxY0jGUTydFJ
         m/lVAOtVENC/gwCY9Ny9j9DUg6TEytK50U48AnO+IPc7zJ3vJgcZ2GCZe/rotkVukOKK
         j92m/G30DvVo4ZNCREgppsqv/DU/sjyWZxub8jPxtNy9QrmJJ+Po92TYz0p4mCX4CG1S
         o/XsvxjPNuhwrBjaP5bwyyTXDGuISz7GfBzuw+UL8wuos+RrjmOyKU58X1BvcEJ4p7nA
         NtbQ==
X-Gm-Message-State: AOAM531GKNrI+tjG66EIRi5ppGxy6vz9V6BdB/NZAl0daF0NADeZzaiV
	I9vWArqVfEEui5fAfkFB3voRk1bN0p8wo4Ow+HESRf6K
X-Google-Smtp-Source: 
 ABdhPJwaEK+MmqtOoJ6rRlENMo2g+kANBh7nIKzzVUjwvTOTh++6bJEiUL5COhEO8EB14imYObJc6Df7S4Bhq1lqNeQ=
X-Received: by 2002:a5e:c108:: with SMTP id v8mr4571171iol.60.1643363221118;
 Fri, 28 Jan 2022 01:47:01 -0800 (PST)
MIME-Version: 1.0
References: <uhQ4.1643181389477081324.P09X@lists.yoctoproject.org>
 <664d7ef6f28584b0d7310774ad48660437562589.camel@delisys.ch>
In-Reply-To: <664d7ef6f28584b0d7310774ad48660437562589.camel@delisys.ch>
From: Sourabh Hegde <hrsourabh011@gmail.com>
Date: Fri, 28 Jan 2022 10:46:50 +0100
Message-ID: 
 <CADYjeSsxC=LzFMLGTZy1u4m_MfNsHJ3Nq3Y+zYwY_toJYZFhMg@mail.gmail.com>
Subject: Re: [yocto] Fetch private gitlab repo using ssh with Yocto recipe
 #bitbake
To: Nicolas Jeker <n.jeker@delisys.ch>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000008237f05d6a15184"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jan 2022 09:47:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56007

--00000000000008237f05d6a15184
Content-Type: text/plain; charset="UTF-8"

Hi Nicolas,

Thanks for your answer.

That's great. Even I am building inside a docker container. I tried with
creating a "config" file in .ssh directory. But I still have same issue.

Can you please let me know how to "forward SSH_AGENT into it to be able
to fetch from internal projects without the need to mount the key into the
container."? I never did that before.

Thanks in advance.

On Fri, Jan 28, 2022, 10:42 Nicolas Jeker <n.jeker@delisys.ch> wrote:

> On Tue, 2022-01-25 at 23:16 -0800, hrsourabh011@gmail.com wrote:
> > I am trying to fetch a private gitlab repo within Yocto image recipe
> > using SSH protocol. In my image recipe I have passed SRC_URI as:
> >
> > SRC_URI = " \
> >         gitsm://git@git.example.com:2224/blah/blah/blah/blah;protocol
> > =ssh;branch=master \
> > "
>
> I use almost the same, just without submodules.
>
> SRC_URI =
> "git://git@git.example.com:1234/group/project.git;protocol=ssh"
>
> It should "just work" if ssh is able to find your key. I often build in
> a docker container, so I have to forward SSH_AGENT into it to be able
> to fetch from internal projects without the need to mount the key into
> the container. I don't really have any insight for builds outside
> docker, if git clone works, the bitbake fetcher should too.
>
> > But this results in the error:
> >
> <snip>
> >
> > But I am able to clone the repo using git clone.
> > SSH key is already added to the Gitlab. There is no config file in my
> > ~/.ssh. Do I need to create a config file? What should be the content
> > of the config file?
>
> You should not need a ssh config file.
>
> > Can anyone please let me know how to resolve this?
> > Thanks in advance.
>
>

--00000000000008237f05d6a15184
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Nicolas,<div dir=3D"auto"><br></div><div dir=3D"auto">=
Thanks for your answer.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
That&#39;s great. Even I am building inside a docker container. I tried wit=
h creating a &quot;config&quot; file in .ssh directory. But I still have sa=
me issue.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Can you please=
 let me know how to &quot;forward SSH_AGENT into it to be able</div><div di=
r=3D"auto">to fetch from internal projects without the need to mount the ke=
y into the container.&quot;? I never did that before.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Thanks in advance.</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 28, 2022=
, 10:42 Nicolas Jeker &lt;<a href=3D"mailto:n.jeker@delisys.ch">n.jeker@del=
isys.ch</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, 2022=
-01-25 at 23:16 -0800, <a href=3D"mailto:hrsourabh011@gmail.com" target=3D"=
_blank" rel=3D"noreferrer">hrsourabh011@gmail.com</a> wrote:<br>
&gt; I am trying to fetch a private gitlab repo within Yocto image recipe<b=
r>
&gt; using SSH protocol. In my image recipe I have passed SRC_URI as:<br>
&gt; <br>
&gt; SRC_URI =3D &quot; \<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0gitsm://<a href=3D"htt=
p://git@git.example.com:2224/blah/blah/blah/blah;protocol" rel=3D"noreferre=
r noreferrer" target=3D"_blank">git@git.example.com:2224/blah/blah/blah/bla=
h;protocol</a><br>
&gt; =3Dssh;branch=3Dmaster \<br>
&gt; &quot;<br>
<br>
I use almost the same, just without submodules.<br>
<br>
SRC_URI =3D<br>
&quot;git://<a href=3D"http://git@git.example.com:1234/group/project.git;pr=
otocol=3Dssh" rel=3D"noreferrer noreferrer" target=3D"_blank">git@git.examp=
le.com:1234/group/project.git;protocol=3Dssh</a>&quot;<br>
<br>
It should &quot;just work&quot; if ssh is able to find your key. I often bu=
ild in<br>
a docker container, so I have to forward SSH_AGENT into it to be able<br>
to fetch from internal projects without the need to mount the key into<br>
the container. I don&#39;t really have any insight for builds outside<br>
docker, if git clone works, the bitbake fetcher should too.<br>
<br>
&gt; But this results in the error:<br>
&gt; <br>
&lt;snip&gt;<br>
&gt; <br>
&gt; But I am able to clone the repo using git clone.<br>
&gt; SSH key is already added to the Gitlab. There is no config file in my<=
br>
&gt; ~/.ssh. Do I need to create a config file? What should be the content<=
br>
&gt; of the config file?<br>
<br>
You should not need a ssh config file.<br>
<br>
&gt; Can anyone please let me know how to resolve this?<br>
&gt; Thanks in advance.<br>
<br>
</blockquote></div>

--00000000000008237f05d6a15184--

