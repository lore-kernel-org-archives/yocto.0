Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.2357.1625778519823536523
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jul 2021 14:08:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@voting-works.20150623.gappssmtp.com header.s=20150623 header.b=WohjKRly;
 spf=none, err=SPF record not found (domain: voting.works, ip: 209.85.216.45, mailfrom: bernhard@voting.works)
Received: by mail-pj1-f45.google.com with SMTP id fs7so4522548pjb.2
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jul 2021 14:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=voting-works.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=1YnzyDYUMB/sHG1vxWrI6hTMUyl2PaFRMLMTCdg+RgA=;
        b=WohjKRlyNJYrHvF3/x9irw3lRCNTnZZyd/G1IWRusF9RYLWPXdOGGIZYAJefRuHxmS
         pOoyTK2e+cNWrdoxP4eJBKWe/YLPn7FCCtHMvDfPHvJRbhqr/6BF/iP9VjthBC9jv8dy
         9h6lA4uVx7LvJGEoDSeFtuPwv6h7peKhnshGDNVX2j8FQJ4otxJElTdZs3mOd7WQw0A7
         o6tKsqaoAcB8jdQOv3nTa5JccusGLxs7X1wL4vuj1QAGcWYojfyst2EJ7zPsyaVpBEQb
         xGXt8TbcPIZ1aMkfRp2QklRCb+FGp4FPoJJyODcv64ZDClFCjlcPPZjooHnuOSOt+8No
         sMLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1YnzyDYUMB/sHG1vxWrI6hTMUyl2PaFRMLMTCdg+RgA=;
        b=CPr59eyxDtnpHe1R/F7Q0bzjRO2eMYuFWufHktUgPccAv++xjdEq/rieRaVdKxO8o+
         AkrHTzGGdD0ny/ERbtP4MgZUuxxOCCbI3W2ntCbYd16oiEpLuA4EHs8HI5BKGThrD4oj
         TCEqtxHCxpMyUVyl8EaxHnsTWFXr9zAEkZaYtVajr1tZVi7KElrzE1XgwFLPOYMMgLJo
         vGsdcwRW9b0/imBIqqi2gLZ/dmi/naYaqB/OPngf51F1ydOUHrCL7QJGUrvUjPTxtliL
         Zb3W5oTZ7vCpcvBN7wEI5vamN3qOyAaGDJoq9st8ryjP/ocsFazXvzd9mGJlQEulFH2+
         e2hA==
X-Gm-Message-State: AOAM531wWux8fI2BPN3XoAeiCX3uelmB5HJ9WiHv8RXxvgfTY9QjEegC
	X4OJ5sVvjmNvCAK4uX6Z+aMr6sUYQueDJE/2VPHpzxvwQSJXx9Y+
X-Google-Smtp-Source: ABdhPJyd1bak1hTWbd7LDhspKFGHz8amrPH0ZlVTWPE1bOtRfVm+Jltz/FPsqmBeK4JJPaUmwLlCuy6IUhPmEpQOhs0=
X-Received: by 2002:a17:902:9004:b029:f0:b40d:38d with SMTP id
 a4-20020a1709029004b02900f0b40d038dmr27611209plp.85.1625778518873; Thu, 08
 Jul 2021 14:08:38 -0700 (PDT)
MIME-Version: 1.0
From: bernhard@voting.works
Date: Thu, 8 Jul 2021 17:08:28 -0400
Message-ID: <CANSkjvcK_7kNxNuYuABXoZ3LJZihUNLMv9Vs_umKeKrnAFN97w@mail.gmail.com>
Subject: Installing a .deb produced by npm during build
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000019ec5b05c6a30f82"

--00000000000019ec5b05c6a30f82
Content-Type: text/plain; charset="UTF-8"

Hi,

I've been struggling to add a debian package to my build. I'm trying to
build this app and install it on the target:
https://github.com/votingworks/kiosk-browser

It's a node app built with yarn, and I've found the instructions in the
manual to be a bit off the mark for what I'm trying to do. I want to:

   1. Fetch and build the app using its own makefile
   2. Install the output debian package in the target during buildtime

My recipe is below, but as best I can tell all it does right now is package
the source directory and put it on the image. DPKG reports that it's
installed, but I can't seem to run the app. I'm sure I'm confused a bit
about the build process, and perhaps I'm not invoking a task when I should?

Any pointers would be greatly appreciated.

All the best,
Matt

P.S. Here's the recipe:

# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order
to be fully functional.
# (Feel free to remove these comments when editing.)

SUMMARY = "Generic kiosk-mode browser."
# WARNING ommitted for brevity ...

LICENSE = "Unknown & MIT & ISC"
LIC_FILES_CHKSUM = "file://LICENSE;md5=e49f4652534af377a713df3d9dec60cb \
                    ... Licensing stuff that I'm omitting for brevity ...

file://node_modules/xrandr-parse/package.json;md5=671eb8501a73fbcd413813c4832bb560"

SRC_URI = " \
    git://github.com/votingworks/kiosk-browser.git;protocol=https \
    npmsw://${THISDIR}/${BPN}/npm-shrinkwrap.json \
    "

# Modify these as desired
PV = "1.0.0+git${SRCPV}"
SRCREV = "c85708f50747c595878d4bc6da6edf72203f87ae"

S = "${WORKDIR}/git"

inherit npm

RDEPENDS_${PN} = "\
    bash \
"

DEPENDS = "\
    libusb \
    dpkg \
"

LICENSE_${PN} = "Unknown"
... Licensing stuff that I'm omitting for brevity ...

EOF

--00000000000019ec5b05c6a30f82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;ve been struggling=
 to add a debian package to my build. I&#39;m trying to build this app and =
install it on the target: <a href=3D"https://github.com/votingworks/kiosk-b=
rowser">https://github.com/votingworks/kiosk-browser</a></div><div><br></di=
v><div>It&#39;s a node app built with yarn, and I&#39;ve found the instruct=
ions in the manual to be a bit off the mark for what I&#39;m trying to do. =
I want to:</div><div><ol><li>Fetch and build the app using its own makefile=
</li><li>Install the output debian package in the target during buildtime<b=
r></li></ol><div>My recipe is below, but as best I can tell all it does rig=
ht now is package the source directory and put it on the image. DPKG report=
s that it&#39;s installed, but I can&#39;t seem to run the app. I&#39;m sur=
e I&#39;m confused a bit about the build process, and perhaps I&#39;m not i=
nvoking a task when I should? <br></div><div><br></div><div>Any pointers wo=
uld be greatly appreciated.</div><div><br></div><div>All the best,</div><di=
v>Matt</div><div><br></div><div>P.S. Here&#39;s the recipe: <br></div><div>=
<br></div><div><pre># Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.
# (Feel free to remove these comments when editing.)

SUMMARY =3D &quot;Generic kiosk-mode browser.&quot;
# WARNING ommitted for brevity ...

LICENSE =3D &quot;Unknown &amp; MIT &amp; ISC&quot;
LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3De49f4652534af377a713df3d9de=
c60cb \<br>                    ... Licensing stuff that I&#39;m omitting fo=
r brevity ...
                    file://node_modules/xrandr-parse/package.json;md5=3D671=
eb8501a73fbcd413813c4832bb560&quot;

SRC_URI =3D &quot; \
    git://<a href=3D"http://github.com/votingworks/kiosk-browser.git;protoc=
ol=3Dhttps">github.com/votingworks/kiosk-browser.git;protocol=3Dhttps</a> \
    npmsw://${THISDIR}/${BPN}/npm-shrinkwrap.json \
    &quot;

# Modify these as desired
PV =3D &quot;1.0.0+git${SRCPV}&quot;
SRCREV =3D &quot;c85708f50747c595878d4bc6da6edf72203f87ae&quot;

S =3D &quot;${WORKDIR}/git&quot;

inherit npm<br><br>RDEPENDS_${PN} =3D &quot;\<br>    bash \<br>&quot;<br><b=
r>DEPENDS =3D &quot;\<br>    libusb \<br>    dpkg \<br>&quot;

LICENSE_${PN} =3D &quot;Unknown&quot;<br>... Licensing stuff that I&#39;m o=
mitting for brevity ...<br></pre><pre>EOF
</pre></div></div></div>

--00000000000019ec5b05c6a30f82--
