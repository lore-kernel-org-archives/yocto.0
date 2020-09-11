Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web10.4004.1599814465282380651
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 01:54:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PNYn+6yw;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id y194so4981015vsc.4
        for <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2020 01:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=jg0U1+1GmDwtPx8blCJ6ujmfj33H+xz0rMmaaHyrLFg=;
        b=PNYn+6ywQDI3VcC/++Wj5bgIh7TcYxcopmUqxOwgxQEa7i/Z7UsJvjbD+NH5BGAtg/
         Zxu4OinIP98gIJ8EoNOVIbjsQ06NAl2iWPi8b+fCaYL1IzFR1KBOUQKlGjaELrHLAv+c
         4NFvXxdEj/DTXaDB6oJgMaigce29XS6V2RW+yIVrdQoTDkTBI1z70Sv/y1s8YTbjppA7
         TgkQbhpt32S0Fsabr/gV9ltKSz865vXyq9GAf+0xAGkAMdpJHAyiJs8ufyPycqmo2YZF
         MP1SAnTrhbqXzpFI2lxMtzObCSR4IKp8/8lCf03prU1Qzvrrk/NArk6ogNJ9lqyo73O+
         oVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jg0U1+1GmDwtPx8blCJ6ujmfj33H+xz0rMmaaHyrLFg=;
        b=PPzhJr2rXowYXVw1t/lkTxZAGzzRgrfKbI2v3eEk/46Rb/W8sRmSqtJ/68l3leTh8J
         yKzS9VsVwsMEUjo3Cyxdt9A5ywJ4sPMRHfLzzcXT00roAk+NFMsQEfMi5G8esvZoRRjk
         D0TQqszo9kE3x6Z7Wx7dOY7dZQFE0oxzU/hXcV+w/aWIrHXzgpZE8aydin7z0OhBj83H
         +eGeGw3TA8nu3S5lMLqOkDJhcUeXd0R3w91a8r7JUUc4rt6OYiCf7sdKnbUvMx700dOv
         ik4rTNJGQYuV5TwydcFdvgokxVTW/NpgXPWm4AXBskPUkp6wTK4sN8AcVm/AycLoidYD
         GO+A==
X-Gm-Message-State: AOAM5328FJ8QA6k+Gd9wvLhdV88u44X+0YMP7Vf9vNLGGmiscyXtOJEb
	XhJZoKzd6taqz+sLv7419wyfzQq6mVvWfx1Bo2pqn+v00nUT1w==
X-Google-Smtp-Source: ABdhPJxKI0jx8AKTO7XHn2wHt6kAEQLqDpCwz8ONWq7DJQ8rW3Wv+EwN5FY6d0auHMSjLNXDk1jdmZMFFrCJZTiiGZs=
X-Received: by 2002:a67:31cb:: with SMTP id x194mr503000vsx.28.1599814464137;
 Fri, 11 Sep 2020 01:54:24 -0700 (PDT)
MIME-Version: 1.0
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
Date: Fri, 11 Sep 2020 10:53:48 +0200
Message-ID: <CAHwRhWb9uMoJW8kkQse3z4v1gDY9EqMyyrrdcA3i=Mt62LWaKA@mail.gmail.com>
Subject: vwdial
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d76c4305af05d45e"

--000000000000d76c4305af05d45e
Content-Type: text/plain; charset="UTF-8"

I changed the vwdial recipy file for what I've found on openembedded.
I think now the error is only with *wvstreams*







*NOTE: Resolving any missing task queue dependenciesERROR: Nothing PROVIDES
'wvstreams' (but
/home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-connectivity/wvdial/wvdial_1.61.bb
<http://wvdial_1.61.bb> DEPENDS on or otherwise requires it)ERROR:
wvstreams was skipped: Recipe is blacklisted: BROKEN: fails to build with
gcc-6 - the recipe will be removed on 2017-09-01 unless the issue is
fixedNOTE: Runtime target 'wvdial' is unbuildable, removing...Missing or
unbuildable dependency chain was: ['wvdial', 'wvstreams']ERROR: Required
build target 'core-image-barix-sdk' has no buildable providers.Missing or
unbuildable dependency chain was: ['core-image-barix-sdk', 'wvdial',
'wvstreams']*

--000000000000d76c4305af05d45e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:#333399"><div =
class=3D"gmail_default" style=3D"color:rgb(51,51,153)">I changed the vwdial=
 recipy file for what I&#39;ve found on openembedded.<br></div><div class=
=3D"gmail_default" style=3D"color:rgb(51,51,153)">I think now the error is =
only with <b>wvstreams</b><br></div><div class=3D"gmail_default" style=3D"c=
olor:rgb(51,51,153)"><br></div><div class=3D"gmail_default" style=3D"color:=
rgb(51,51,153)"><i>NOTE: Resolving any missing task queue dependencies<br>E=
RROR: Nothing PROVIDES &#39;wvstreams&#39; (but /home/kerenyiz/oe-core/buil=
d/../stuff/meta-openembedded/meta-oe/recipes-connectivity/wvdial/<a href=3D=
"http://wvdial_1.61.bb" target=3D"_blank">wvdial_1.61.bb</a> DEPENDS on or =
otherwise requires it)<br>ERROR:
 wvstreams was skipped: Recipe is blacklisted: BROKEN: fails to build=20
with gcc-6 - the recipe will be removed on 2017-09-01 unless the issue=20
is fixed<br>NOTE: Runtime target &#39;wvdial&#39; is unbuildable, removing.=
..<br>Missing or unbuildable dependency chain was: [&#39;wvdial&#39;, &#39;=
wvstreams&#39;]<span class=3D"gmail-im"><br>ERROR: Required build target &#=
39;core-image-barix-sdk&#39; has no buildable providers.<br></span>Missing =
or unbuildable dependency chain was: [&#39;core-image-barix-sdk&#39;, &#39;=
wvdial&#39;, &#39;wvstreams&#39;]</i></div></div></div>

--000000000000d76c4305af05d45e--
