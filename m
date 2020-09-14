Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.512.1600122765908955297
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Sep 2020 15:32:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ojiuqIdY;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: chuckwolber@gmail.com)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 21B0D38C0885
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2020 15:32:45 -0700 (PDT)
Received: by mail-pl1-f171.google.com with SMTP id c3so255816plz.5
        for <yocto@yoctoproject.org>; Mon, 14 Sep 2020 15:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hCOmQVrFxr01xUq7ZSn67KkFWNM0y7cwigJK0SvBub4=;
        b=ojiuqIdYdgZA8RfKtI8Kpg5UfqvqL7N9T9dNQwgJSMh0sSmKV0pLJ1pNeVV/j93ioS
         1gVQfEqNtg2zryk2oeoNUdZjfeSWYd3U+0YVTokgLibivc1jd8gWCAYGzobLdShVFSIm
         w6KPSWUM5Dw7XTa60L4oF16dmxkFgDYHnsxgWk+D1Gf4S+BuqtVvPwIJWpT+IMPDKV72
         w7w2Ukh2p0+ylElLad1c2bWyvBlLxHH0KG3DnBI3/hnfdoeCY0cU1npgs14HnPDwyUYh
         J15xEaozcnEQ5LYQ3iYFcbQkCx0sWNSnXxIAQZjPJRYw9pWw35yLwliqM/Un2TVIoUGn
         NteQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hCOmQVrFxr01xUq7ZSn67KkFWNM0y7cwigJK0SvBub4=;
        b=DEZ2ullgPLXLjw4IUnyFp48rHvVMmCu2u2baEUHP6X4LdZCoSnC5LmsVltZOQMlSkK
         j+LSWzCwj50xLfDbS6PTKV9N5aI7uPG0EMgEg/IB845OWVY/HKTxIz2cqfo1Tgyzzm+Z
         yxWIxgUbGkaI7hMHz9YNhXCzvVJxfdBUAtHT4rzebzBnX+woUpvZDkcLQNxktSfrqvlR
         pcYzyIiOBdTeAx/rSYNCzWEKB9jqL2hkZZlCMtXDMl9WYXqI70DMYiCVhjBd0j8MXMr8
         OAQAPdB3rFzQVAN1RzYwiy7US6AjZCXmOhLGGoKInX8iCHGx8YKMABJwIDIQlP0q5PX6
         0+kg==
X-Gm-Message-State: AOAM530fQbGR7+OCguH7rEwBqd95qQq9nCEoIM8u8clhhcAAzcja/gsf
	R+InHGuyjEghRfUUu0OWpEtoDwhjRdhw3FysrOc=
X-Google-Smtp-Source: ABdhPJxvn0qKRrw5KhYH//c7SgLmYFm7OhX5hVIxqpAvZbHE0B2aftGvg9kW10x6+SosbzYOjZQQiVfz+S04YrkrCg0=
X-Received: by 2002:a17:90a:ec0b:: with SMTP id l11mr1315989pjy.144.1600122764589;
 Mon, 14 Sep 2020 15:32:44 -0700 (PDT)
MIME-Version: 1.0
References: <8b4672f4a9ae48278785886362fc5bfe@sakuraus.com>
 <CAB=6tBQUugFx=Zg7W+_i=_WbQ0fhqPv0TZO2ctaoJh+1T_dQUQ@mail.gmail.com> <22e72ecdacbd42d0a4b29ed78d941f3d@sakuraus.com>
In-Reply-To: <22e72ecdacbd42d0a4b29ed78d941f3d@sakuraus.com>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Mon, 14 Sep 2020 15:32:33 -0700
Message-ID: <CAB=6tBQTEbevjKYwhtarrk_GhXgSXVkLQgiFqYPssBTo32j99Q@mail.gmail.com>
Subject: Re: [yocto] Patching file contained in downloaded recipe
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fafd3605af4d9cf6"

--000000000000fafd3605af4d9cf6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 14, 2020 at 3:05 PM Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> Hi Chuck,
>
>
>
> I am patching a recipe that is included with the Yocto system that I
> download. The .system file that I need to modify is in one of the file
> directories that are part of the recipe.
>
>
>
> I have a .bbappend recipe that is being picked up, but because the file
> that I want to patch is part of the recipe and not part of what a recipe
> would download if it were building something from source, the patch syste=
m
> is not finding it.
>


In that case, your best bet is to probably write a do_*_append() function
into the bbappend recipe so you can jump in after one of the build steps
and apply your patch during the appropriate stage. Refer to section 28.1 of
the Mega Manual for all of the build tasks, and pick one that seems
sensible. For example, you can write a do_install_append() function, and
then prepend ${B} to the path that the service file typically shows up at
to access it. From there, it is a simple matter of using typical commands
to apply whatever patch you want.

I have no doubt that other, more experienced people on the Yocto project,
may suggest a better target than do_install, so listen to them if any
should jump in and offer sensible correction to what I am saying.


Part of my question was, could I use the PATCHDIR option to specify the
> /lib/systemd/system/file.service file to get the patch to run against the
> =E2=80=98copied=E2=80=99 version of the file?
>

Given the example above, you would simply use
${B}/lib/systemd/system/file.service and use garden variety command line
tools to apply the patch.



> Sorry for the weird =E2=80=9C<reply>=E2=80=A6<reply\>=E2=80=9D blocks, I=
=E2=80=99m stuck with Outlook for
> email and I can=E2=80=99t figure out how to get it to indent the email I=
=E2=80=99m replying
> to and let me comment in line without indenting my replies also.
>


No worries. I used to use mutt and pine, which were really good at inline
posting. Alas, I have moved on to gmail, which is not so good, and comes
into conflict in places such as this. We make-do of course...

..Ch:W..

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000fafd3605af4d9cf6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 14, 2020 at 3:05 PM Greg =
Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com">GWilson@sakurau=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-6797130851735085699WordSection1">
<p class=3D"MsoNormal">Hi Chuck,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-color:currentcolor currentcolor currentcolor blue;bord=
er-style:none none none solid;border-width:medium medium medium 1.5pt;paddi=
ng:0in 0in 0in 4pt"><div><div><div>
<p class=3D"MsoNormal">I am patching a recipe that is included with the Yoc=
to system that I download. The .system file that I need to modify is in one=
 of the file directories that are part of the recipe.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have a .bbappend recipe that is being picked up, b=
ut because the file that I want to patch is part of the recipe and not part=
 of what a recipe would download if it were building something from source,=
 the patch system is not finding it.</p></div></div></div></div></div></div=
></blockquote><div><br></div><div><br></div><div>In that case, your best be=
t is to probably write a do_*_append() function into the bbappend recipe so=
 you can jump in after one of the build steps and apply your patch during t=
he appropriate stage. Refer to section 28.1 of the Mega Manual for all of t=
he build tasks, and pick one that seems sensible. For example, you can writ=
e a do_install_append() function, and then prepend ${B} to the path that th=
e service file typically shows up at to access it. From there, it is a simp=
le matter of using typical commands to apply whatever patch you want.</div>=
<div><br></div><div>I have no doubt that other, more experienced people on =
the Yocto project, may suggest a better target than do_install, so listen t=
o them if any should jump in and offer sensible correction to what I am say=
ing.<br></div><div>=C2=A0</div><div><br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-67971308517=
35085699WordSection1"><div style=3D"border-color:currentcolor currentcolor =
currentcolor blue;border-style:none none none solid;border-width:medium med=
ium medium 1.5pt;padding:0in 0in 0in 4pt"><div><div><div>
<p class=3D"MsoNormal">Part of my question was, could I use the PATCHDIR op=
tion to specify the /lib/systemd/system/file.service file to get the patch =
to run against the =E2=80=98copied=E2=80=99 version of the file?
</p></div></div></div></div></div></div></blockquote><div><br></div><div>Gi=
ven the example above, you would simply use ${B}/lib/systemd/system/file.se=
rvice and use garden variety command line tools to apply the patch.<br></di=
v><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-6797130851735085699Wo=
rdSection1"><div style=3D"border-color:currentcolor currentcolor currentcol=
or blue;border-style:none none none solid;border-width:medium medium medium=
 1.5pt;padding:0in 0in 0in 4pt"><div><div><div><p class=3D"MsoNormal"><u></=
u><u></u></p>

<p class=3D"MsoNormal">Sorry for the weird =E2=80=9C&lt;reply&gt;=E2=80=A6&=
lt;reply\&gt;=E2=80=9D blocks, I=E2=80=99m stuck with Outlook for email and=
 I can=E2=80=99t figure out how to get it to indent the email I=E2=80=99m r=
eplying to and let me comment in line without indenting my replies also.</p=
></div></div></div></div></div></div></blockquote><div><br></div><div><br><=
/div><div>No worries. I used to use mutt and pine, which were really good a=
t inline posting. Alas, I have moved on to gmail, which is not so good, and=
 comes into conflict in places such as this. We make-do of course...<br></d=
iv><div><br></div><div>..Ch:W..<br clear=3D"all"></div></div><br>-- <br><di=
v dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><b><span styl=
e=3D"font-family:monospace">&quot;Perfection must be reached by degrees; sh=
e requires the slow hand of time.&quot; - Voltaire</span></b></div></div></=
div></div>

--000000000000fafd3605af4d9cf6--
