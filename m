Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.8816.1580833968952062604
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 08:32:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=WonpDMSY;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: ryan.harkin@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EEBBE016B8; Tue,  4 Feb 2020 08:32:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D3A3E016B6
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2020 08:32:45 -0800 (PST)
Received: by mail-qk1-f196.google.com with SMTP id g3so9948496qka.1
        for <yocto@yoctoproject.org>; Tue, 04 Feb 2020 08:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OuD/DQ4eagsMA0inyuR5gl7g4dPFfC0rm6CsWxXFZcE=;
        b=WonpDMSYiwOffSFZy9arQkzGQLBtXJsUWTyt0ZwtjK43OLZPW39VsAGb+6ss/YzTxz
         X7ISeYVcSi0SG1XyujmrszYPke6ftQoeSOoDxq3e/gOU4oZv+WERIwCSKyWjmIDJ4E15
         2t8lWI45ZQEz/4by7TEkgsowQIZJsOzK/SqWTi4SAC73XPH7OBLFNHDVwgOSReIL2UOq
         qawL8wGWK9HERyeAijf3x2ocAOO/ovrFqQNEDefxZbg1xwPCVvdIhjLf7nVWu5llEoUn
         dxNl7nFpEG4/8XK/gpicIrMuNEY+Yvc+l9xkQfNjBDfpHjfieehFCGJuXDA8MPMxiuBf
         LcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OuD/DQ4eagsMA0inyuR5gl7g4dPFfC0rm6CsWxXFZcE=;
        b=eStMvp7USbT8OR2DKkIPeCiK+WT6Xteppx2uPXGL9/LUTWbMXQ7qPlXled36FQ+Ggo
         sfCR6wQWFaJThWVQ/YIX1m8LGuaUAR3V3VA0F3psdUU1fGjQa+EIO0EfX2mGq5kH2fmT
         2dKXsGDG2Dl2KCAAhtXyH6xehzoNXpYT91kZcFgI/sr2D6LymM+v0OLwvbmFXLc3pJTx
         RMOuVMAAUanyHUE5ZZj5VWeKuD2wL6TeHSKlD1FEjYqV+yi76hKzGISnc9d/NVEaOnRu
         uLZnbQUSginSVqflgCDMJYK7elCYq+SakSCQe2cHGNPpBBsZS5VfsgMLdMoD6w0pWCA5
         U+Tw==
X-Gm-Message-State: APjAAAU3ThFhMoLDT9gPhNiv4IcxFpSJMtipy2AnqrSNCJn+BwPqH1eJ
	X3/0Aq71ki2Km7nIKIltEmAvLQHYfqi8fCMGddYVXRdV
X-Google-Smtp-Source: APXvYqzWVmvOUOJuKwasMY55oH1FCZuVQH1xMO2U9BRCFQZOMNho8RnCwIxMeQdCBb4/dpIuJZbb/8UTJil1sVoO8Qo=
X-Received: by 2002:a37:488f:: with SMTP id v137mr28514807qka.16.1580833965337;
 Tue, 04 Feb 2020 08:32:45 -0800 (PST)
MIME-Version: 1.0
References: <CAD0U-h+q4k-EywV8XEfZ2nsoHoRQaNyRy77E2kRLuos8dAmNTA@mail.gmail.com>
 <20200204085153.6wsex564rtrknfuq@qschulz> <CAD0U-h+0L_X3mS4ttcPSiRwfM7TJtPgg-hutEg0Nfp_UENL41w@mail.gmail.com>
 <20200204161517.hopwyv5nbb7yytsb@qschulz>
In-Reply-To: <20200204161517.hopwyv5nbb7yytsb@qschulz>
From: "Ryan Harkin" <ryan.harkin@linaro.org>
Date: Tue, 4 Feb 2020 16:32:34 +0000
Message-ID: <CAD0U-h+mpWJ5qQX16N9Z+M19fS4kN+LGUofnCOKFqmtmT+a2_Q@mail.gmail.com>
Subject: Re: [yocto] Building and selecting multiple kernel versions
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@yoctoproject.org, Nicolas Dechesne <nicolas.dechesne@linaro.org>
Content-Type: multipart/alternative; boundary="000000000000f40395059dc29680"

--000000000000f40395059dc29680
Content-Type: text/plain; charset="UTF-8"

On Tue, 4 Feb 2020 at 16:15, Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Ryan,
>
> On Tue, Feb 04, 2020 at 04:00:01PM +0000, Ryan Harkin wrote:
> > Hi Quentin,
> >
> > Thanks for your reply.
> >
> > On Tue, 4 Feb 2020 at 08:51, Quentin Schulz <
> > quentin.schulz@streamunlimited.com> wrote:
> >
> > > Hi Ryan,
> > >
> > > On Mon, Feb 03, 2020 at 05:34:23PM +0000, Ryan Harkin wrote:
> > > > Hello all,
> > > >
> > > > I'm looking for advice on how to support multiple kernel versions in
> my
> > > > distro with minimal changes, and minimal disruption to my users.
> > > >
> > > > Some background:
> > > >
> > > > I have a legacy Sumo based distro with an image config, and a machine
> > > > config, with the machine using a 4.9 kernel. Last year, I upgraded
> > > > everything to Warrior, and moved to a 4.19 kernel.
> > > >
> > > > Some of my users who are migrating from Sumo, wish to keep their 4.9
> > > > kernel. So I'm trying to work out how to handle this in the simplest
> way.
> > > >
> > > > I know that I can add a 4.9 recipes to my Warrior branches, set
> > > > PREFERRED_VERSION in my distro.conf. But I don't want to change the
> > > default
> > > > preferred version globally. And I don't really want users to update
> the
> > > > distro.conf. Ideally, they should be able to take what I give them
> and
> > > > "just" build it to get a 4.9 or 4.19 variant.
> > > >
> > >
> > > You can make two machine configuration files. One with
> > > PREFERRED_VERSION_virtual/kernel = "4.9%" and the other with 4.19.
> > >
> > > They pick the correct machine when building, they should expect the
> > > correct kernel in output. Only applies to images built for this machine
> > > so I guess that's what you're looking for?
> > >
> >
> > Yes, this works.
> >
> > Trying it showed a few small problems. Eg. I have a package that only
> builds
> > for the 4.19 kernel, and needs to be excluded for 4.9. That's something I
> > can
> > handle in the recipes using the machine type, of course.
> >
>
> It depends on what exactly does this recipe represent? A kernel module?
> In which case, you can put it in your machine configuration file under
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS or RRECOMMENDS and omit it for 4.9.
>
> We have a way to specify runtime dependencies on specific versions:
>
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-RDEPENDS
>
> I unfortunately have no idea if Yocto supports such a thing in DEPENDS.
>
>
Good tips, thanks again! I'll have a play with it.


> >
> > >
> > > > Ideally, I don't want to *have* to build both kernels and then
> create two
> > > > images. I expect that will cause confusion and lead to people
> flashing
> > > the
> > > > wrong images. So I'd prefer it to be either/or. Of course, I have to
> test
> > > > all of this, so I want to be able to build both variants in CI, which
> > > makes
> > > > editing distro.conf even more  unattractive.
> > > >
> > >
> > > Same image (POV of bitbake <image>) but different machines, does that
> > > match your requirements?
> > >
> > > FWIW, you can pass MACHINE= to the command line just before bitbake
> > > <image> making it rather obvious which machine they pick.
> > >
> >
> > Incidentally, that didn't work for me, but that's a symptom of how we
> setup
> > the environment, where local.conf sets MACHINE. I changed it to "MACHINE
> ?=
> > ",
> > thinking it would let me override it via the shell. But it didn't.
> Strange,
> > but not a
> > big problem.
> >
>
> To check who's setting it, run `bitbake <somesimplerecipe> -e | less` and
> look
> for the line starting with MACHINE=. Then you have the whole bitbake
> logic to set it above that line. That could help you find out what's
> happening.
>

Actually, it does work like this:

export MACHINE=xyz
bitbake image

But not like this:

MACHINE=xyz bitbake image

No big deal, but I expected the last one to work.


> Quentin
>

--000000000000f40395059dc29680
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, 4 Feb 2020 at 16:15, Quentin =
Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com">quentin.sc=
hulz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hi Ryan,<br>
<br>
On Tue, Feb 04, 2020 at 04:00:01PM +0000, Ryan Harkin wrote:<br>
&gt; Hi Quentin,<br>
&gt; <br>
&gt; Thanks for your reply.<br>
&gt; <br>
&gt; On Tue, 4 Feb 2020 at 08:51, Quentin Schulz &lt;<br>
&gt; <a href=3D"mailto:quentin.schulz@streamunlimited.com" target=3D"_blank=
">quentin.schulz@streamunlimited.com</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; Hi Ryan,<br>
&gt; &gt;<br>
&gt; &gt; On Mon, Feb 03, 2020 at 05:34:23PM +0000, Ryan Harkin wrote:<br>
&gt; &gt; &gt; Hello all,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;m looking for advice on how to support multiple kernel=
 versions in my<br>
&gt; &gt; &gt; distro with minimal changes, and minimal disruption to my us=
ers.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Some background:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I have a legacy Sumo based distro with an image config, and =
a machine<br>
&gt; &gt; &gt; config, with the machine using a 4.9 kernel. Last year, I up=
graded<br>
&gt; &gt; &gt; everything to Warrior, and moved to a 4.19 kernel.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Some of my users who are migrating from Sumo, wish to keep t=
heir 4.9<br>
&gt; &gt; &gt; kernel. So I&#39;m trying to work out how to handle this in =
the simplest way.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I know that I can add a 4.9 recipes to my Warrior branches, =
set<br>
&gt; &gt; &gt; PREFERRED_VERSION in my distro.conf. But I don&#39;t want to=
 change the<br>
&gt; &gt; default<br>
&gt; &gt; &gt; preferred version globally. And I don&#39;t really want user=
s to update the<br>
&gt; &gt; &gt; distro.conf. Ideally, they should be able to take what I giv=
e them and<br>
&gt; &gt; &gt; &quot;just&quot; build it to get a 4.9 or 4.19 variant.<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; You can make two machine configuration files. One with<br>
&gt; &gt; PREFERRED_VERSION_virtual/kernel =3D &quot;4.9%&quot; and the oth=
er with 4.19.<br>
&gt; &gt;<br>
&gt; &gt; They pick the correct machine when building, they should expect t=
he<br>
&gt; &gt; correct kernel in output. Only applies to images built for this m=
achine<br>
&gt; &gt; so I guess that&#39;s what you&#39;re looking for?<br>
&gt; &gt;<br>
&gt; <br>
&gt; Yes, this works.<br>
&gt; <br>
&gt; Trying it showed a few small problems. Eg. I have a package that only =
builds<br>
&gt; for the 4.19 kernel, and needs to be excluded for 4.9. That&#39;s some=
thing I<br>
&gt; can<br>
&gt; handle in the recipes using the machine type, of course.<br>
&gt; <br>
<br>
It depends on what exactly does this recipe represent? A kernel module?<br>
In which case, you can put it in your machine configuration file under<br>
MACHINE_ESSENTIAL_EXTRA_RDEPENDS or RRECOMMENDS and omit it for 4.9.<br>
<br>
We have a way to specify runtime dependencies on specific versions:<br>
<a href=3D"https://www.yoctoproject.org/docs/current/mega-manual/mega-manua=
l.html#var-RDEPENDS" rel=3D"noreferrer" target=3D"_blank">https://www.yocto=
project.org/docs/current/mega-manual/mega-manual.html#var-RDEPENDS</a><br>
<br>
I unfortunately have no idea if Yocto supports such a thing in DEPENDS.<br>
<br></blockquote><div><br></div><div>Good tips, thanks again! I&#39;ll have=
 a play with it.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
&gt; <br>
&gt; &gt;<br>
&gt; &gt; &gt; Ideally, I don&#39;t want to *have* to build both kernels an=
d then create two<br>
&gt; &gt; &gt; images. I expect that will cause confusion and lead to peopl=
e flashing<br>
&gt; &gt; the<br>
&gt; &gt; &gt; wrong images. So I&#39;d prefer it to be either/or. Of cours=
e, I have to test<br>
&gt; &gt; &gt; all of this, so I want to be able to build both variants in =
CI, which<br>
&gt; &gt; makes<br>
&gt; &gt; &gt; editing distro.conf even more=C2=A0 unattractive.<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Same image (POV of bitbake &lt;image&gt;) but different machines,=
 does that<br>
&gt; &gt; match your requirements?<br>
&gt; &gt;<br>
&gt; &gt; FWIW, you can pass MACHINE=3D to the command line just before bit=
bake<br>
&gt; &gt; &lt;image&gt; making it rather obvious which machine they pick.<b=
r>
&gt; &gt;<br>
&gt; <br>
&gt; Incidentally, that didn&#39;t work for me, but that&#39;s a symptom of=
 how we setup<br>
&gt; the environment, where local.conf sets MACHINE. I changed it to &quot;=
MACHINE ?=3D<br>
&gt; &quot;,<br>
&gt; thinking it would let me override it via the shell. But it didn&#39;t.=
 Strange,<br>
&gt; but not a<br>
&gt; big problem.<br>
&gt; <br>
<br>
To check who&#39;s setting it, run `bitbake &lt;somesimplerecipe&gt; -e | l=
ess` and look<br>
for the line starting with MACHINE=3D. Then you have the whole bitbake<br>
logic to set it above that line. That could help you find out what&#39;s<br=
>
happening.<br></blockquote><div><br></div><div>Actually, it does work like =
this:</div><div><br></div><div>export MACHINE=3Dxyz</div><div>bitbake image=
</div><div><br></div><div>But not like this:</div><div><br></div><div>MACHI=
NE=3Dxyz bitbake image</div><div><br></div><div>No big deal, but I expected=
 the last one to work.</div><div><br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
<br>
Quentin<br>
</blockquote></div></div>

--000000000000f40395059dc29680--
