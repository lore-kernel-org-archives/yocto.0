Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web12.3017.1587393132486764915
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Apr 2020 07:32:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: mjo.se, ip: 209.85.219.47, mailfrom: dw@mjo.se)
Received: by mail-qv1-f47.google.com with SMTP id v18so4727216qvx.9
        for <yocto@lists.yoctoproject.org>; Mon, 20 Apr 2020 07:32:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XpSUWeJIIPpcPVhhpIHWngQck5KsxoEJ1agUihTWc0k=;
        b=afYdFVmJyu4a7sN5nwFs0qbgmWPp1RK2L53d/uD0Y5vQyrDbxOcNwcySEDSIq6nlc8
         b2Dm/JNdepViGOSRbaEHcrUsfOC6T1ZA7RK/Td9NNGWJEIjXbANUrnWqoMZ+VGy7k1dr
         D/U36FZaNFIHW9TTfwmWTarfEpWugcKQWAPWkhd/qmc60Ph1tnJjn6NEYK0u7a1SJudI
         O/Qki6xB1Jdx1I69fi5kTd+Ay3cLxwJpu6v6kExLoKWTL48HKhrV/osZECM1GPJ7ZqDV
         jmnplRcM8wOGELKV9pL3cyBdKTnsEVnisrBcp3iQAzTRkrgCm8zEN0PM2MWz7tjAlrE7
         +iWg==
X-Gm-Message-State: AGi0Puaj/7aS+6Nn+58zF24x74OgYugRcdyTdJ+YP+Mp4Znl7Sm5t4kh
	u8/DbRAKvNxsAieHLEs0wpgL1RigmKE4GM7KqEkipHA3hL8=
X-Google-Smtp-Source: APiQypJ644xAN6Q+rBGQ1zcUpsuopTaIxWAoHYZick6pVd3YquJonwCTVbiousRTB1raDX4YjaVQhBjJpDxUTBZnzf8=
X-Received: by 2002:a0c:ea28:: with SMTP id t8mr12128405qvp.174.1587393131361;
 Mon, 20 Apr 2020 07:32:11 -0700 (PDT)
MIME-Version: 1.0
References: <CALxgiWnh2Aw0o=dawV_MsnOPbfm1nzd1WkXPhrHgjYqDxoGzXw@mail.gmail.com>
 <CAAnfSTtTKvwaOSdDW8MX+_gkn5mV+fu8v_kL9VRXGvXfkGu-vg@mail.gmail.com>
In-Reply-To: <CAAnfSTtTKvwaOSdDW8MX+_gkn5mV+fu8v_kL9VRXGvXfkGu-vg@mail.gmail.com>
From: "Mikael Falkvidd" <yocto@mjo.se>
Date: Mon, 20 Apr 2020 16:31:45 +0200
Message-ID: <CALxgiW=1Eyz0+Xjh7ReOJYGBrffBmqB5gY5Cz4YJHE6CLipssA@mail.gmail.com>
Subject: Re: [yocto] Autotools bitbake recepie unexpected parameters
To: Ross Burton <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b6d00a05a3b9c3a1"

--000000000000b6d00a05a3b9c3a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Ross.

The reason I tried to pass --prefix to ./configure was that the install
part was trying to install files at the host instead of the target. I
thought passing the prefix parameter would make the install go to the
target dir.

I'll try your suggestion to patch the Makefile instead. Hopefully that will
result in a PR I can submit to the upstream repository.

Best regards
Mikael

Den m=C3=A5n 20 apr. 2020 kl 16:00 skrev Ross Burton <ross@burtonini.com>:

> On Mon, 20 Apr 2020 at 14:43, Mikael Falkvidd via
> lists.yoctoproject.org <yocto=3Dmjo.se@lists.yoctoproject.org> wrote:
> > EXTRA_OECONF =3D "--prefix=3D${D}/usr/local"
>
> This patch should be relative to the target, so /usr/local.
>
> The entire point of the autotools class is to call the autotools with
> common arguments, which is why it is passing more options.  Note how
> you're setting ***EXTRA***_OECONF.
>
> > I think I need to find why these parameters are passed, and make sure
> they are not passed so ./configure can fall back to just using --prefix.
> > Could anyone give me any hints on how to troubleshoot this?
>
> Why would you want to remove the carefully constructed set of
> arguments and replace them with just your one option?  Your build
> would break, I don't see you passing --target or --host for example
> would be fatal.
>
> I'm not sure why you feel the need to install to /usr/local/ instead
> of /usr.  Anyway, the real problem is that libfec isn't using
> automake, just autoconf.  Thus, it's 'make install' is fundamentally
> broken:
>
> install: all
>   mkdir -p @libdir@
>   ...
>
> At no point does it try to install into a 'destdir' for staging
> without writing directly to your build machine's /usr.  You'll need to
> patch the Makefile to respect a DESTDIR, something like this:
>
>   mkdir -p $(DESTDIR)@libdir@
>
> This sort of problem does suggest that the repository is dead.
>
> Ross
>

--000000000000b6d00a05a3b9c3a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Ross.</div><div><br></div><div>The reason I tr=
ied to pass --prefix to ./configure was that the install part was trying to=
 install files at the host instead of the target. I thought passing the pre=
fix parameter would make the install go to the target dir.<br></div><div><b=
r></div><div>I&#39;ll try your suggestion to patch the Makefile instead. Ho=
pefully that will result in a PR I can submit to the upstream repository.</=
div><div><br></div><div>Best regards</div><div>Mikael<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Den m=C3=A5n=
 20 apr. 2020 kl 16:00 skrev Ross Burton &lt;<a href=3D"mailto:ross@burtoni=
ni.com">ross@burtonini.com</a>&gt;:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On Mon, 20 Apr 2020 at 14:43, Mikael Falkvidd via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;yocto=3D<a href=3D"mailto:mjo.se@lists.y=
octoproject.org" target=3D"_blank">mjo.se@lists.yoctoproject.org</a>&gt; wr=
ote:<br>
&gt; EXTRA_OECONF =3D &quot;--prefix=3D${D}/usr/local&quot;<br>
<br>
This patch should be relative to the target, so /usr/local.<br>
<br>
The entire point of the autotools class is to call the autotools with<br>
common arguments, which is why it is passing more options.=C2=A0 Note how<b=
r>
you&#39;re setting ***EXTRA***_OECONF.<br>
<br>
&gt; I think I need to find why these parameters are passed, and make sure =
they are not passed so ./configure can fall back to just using --prefix.<br=
>
&gt; Could anyone give me any hints on how to troubleshoot this?<br>
<br>
Why would you want to remove the carefully constructed set of<br>
arguments and replace them with just your one option?=C2=A0 Your build<br>
would break, I don&#39;t see you passing --target or --host for example<br>
would be fatal.<br>
<br>
I&#39;m not sure why you feel the need to install to /usr/local/ instead<br=
>
of /usr.=C2=A0 Anyway, the real problem is that libfec isn&#39;t using<br>
automake, just autoconf.=C2=A0 Thus, it&#39;s &#39;make install&#39; is fun=
damentally<br>
broken:<br>
<br>
install: all<br>
=C2=A0 mkdir -p @libdir@<br>
=C2=A0 ...<br>
<br>
At no point does it try to install into a &#39;destdir&#39; for staging<br>
without writing directly to your build machine&#39;s /usr.=C2=A0 You&#39;ll=
 need to<br>
patch the Makefile to respect a DESTDIR, something like this:<br>
<br>
=C2=A0 mkdir -p $(DESTDIR)@libdir@<br>
<br>
This sort of problem does suggest that the repository is dead.<br>
<br>
Ross<br>
</blockquote></div>

--000000000000b6d00a05a3b9c3a1--
