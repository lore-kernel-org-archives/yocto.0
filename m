Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.4466.1612835084815019999
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 17:44:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WGPsSOU8;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: pwicks86@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 18so6686486oiz.7
        for <yocto@lists.yoctoproject.org>; Mon, 08 Feb 2021 17:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Fjjzm99V8R5D5XENAs2hfZ0IRFqb6AEhpaOekcuqSSE=;
        b=WGPsSOU8LTLVBMkWIL02zrOGsZnSgQqFzwAneYcnbPaGdwN0J5+s/XHBcaddrfVSxj
         5e3UPHbWzn8HDMtn79JrOgHiq1rjQYiU+75EUKLo2wvJWj7tb4R4S86OVXW2SWrxThpd
         S7iwxBRqMdyfInEMrJyOu4CsQ8FXvgiaQDUS1x02ZrQeYpyEdWJQq2y/S4IeSt89I8rO
         buGFKk8qCgmtDyyHcp0ECG3DsIK9KNDh9//SaWLdM5PzzPWGucs+GZigDnkDcZJHlE2q
         jTHOYbSworUILLipGFVEGni1YV3HM9iX5P2mAYHxB7ARTsWci+8M3u6QfG4pRqz9j/u0
         +OUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Fjjzm99V8R5D5XENAs2hfZ0IRFqb6AEhpaOekcuqSSE=;
        b=pVvityAodRorTWuFkEJhMc4AE85oCZN+4soxl/ShtVMlP+kD3WVdNNaEOmvKMJe/Of
         M2tolJLaDFGUp2NGKiNa/aieZCd3u3nWpPczdtSjRmT3jDw1TogtdbG62s/WCxEXmUk1
         p7uiFG49Rwn2gziBL9mS2D1XrCb7Ovz/8FzU3vat2meGJX61yhGiaFNLLlqmqqNdqbzJ
         cJaCkYtlfrMdJcsTONjtmuw+sou9NiEcS/jqKXTYFeANBraPPCnfz/zIpiroNC3RA9Pp
         rzECeKbPWDi2ZmVyk5bOMp8B7GW97A1jDKzUWf4pPRo+dMBGk0iMgEVg0dC+v6kpAb2k
         hbMQ==
X-Gm-Message-State: AOAM533opwIWzQ6XtmBabTwFUbey5xXtiLNf4UlFCDd5BYfIxVTyTEh1
	qqlRa6u1j1mt+WwBX20SD5x2uW/dpAntYh0aDmR0Z++u
X-Google-Smtp-Source: ABdhPJxPK5cde+CpJkYN2t46b2xQs8pa/4Vj6ON4IAA3+YhmBL7Ha6H6p3cTuWB0XD9s8fc3oVFPZYoxkLet8pz7u4g=
X-Received: by 2002:aca:3306:: with SMTP id z6mr979396oiz.141.1612835083851;
 Mon, 08 Feb 2021 17:44:43 -0800 (PST)
MIME-Version: 1.0
From: pwicks86@gmail.com
Date: Mon, 8 Feb 2021 17:44:07 -0800
Message-ID: <CAOC70tueSmmwFXr6p3Y4oqqNUH7cDMHWj0QiHdjbPqhpOcK3LA@mail.gmail.com>
Subject: Install systemd unit file into image from source?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000411af705badd6ede"

--000000000000411af705badd6ede
Content-Type: text/plain; charset="UTF-8"

I've got an application that I'd like to install into my custom image and
that application has a couple of associated systemd unit files that should
be installed as well. The application itself is a very simple cmake
project. The relevant bits of the recipe file look something like this:

```
<standard variables go here>

SRC_URI = "<git address goes here>"

S = "${WORKDIR}/git"

inherit systemd
SYSTEMD_AUTO_ENABLE = "enable"
# the service files are stored in the git repository in the misc folder
SYSTEMD_SERVICE_${PN} = "${S}/misc/testapp@.service ${S}/misc/testapp-extra@
.service"

do_install_append() {
    install -d ${D}${systemd_unitdir}/system
    install -m 0644 ${S}/misc/testapp@.service
${D}${systemd_unitdir}/system/
    install -m 0644 ${S}/misc/testapp-extra@.service
${D}${systemd_unitdir}/system/
}

inherit cmake
```

When i try to do do `bitbake testapp` to try out the recipe, I get an error
telling me that: SYSTEMD_SERVICE_testapp value
/projects/poky/build/tmp/work/core2-64-poky-linux/testapp/0.1-r0/git/misc/testapp@.service
does not exist.

I'm using yocto 3.2.1 if that matters.
-Paul Wicks

--000000000000411af705badd6ede
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve got an application that I&#39;d like to install i=
nto my custom image and that application=C2=A0has a couple of associated sy=
stemd unit files that should be installed as well. The application itself i=
s a very simple cmake project. The relevant bits of the recipe file look so=
mething like this:<br><br><div>```</div><div>&lt;standard variables go here=
&gt;<br><br>SRC_URI =3D &quot;&lt;git address goes here&gt;&quot;<br><br>S =
=3D &quot;${WORKDIR}/git&quot;<br><br>inherit systemd<br>SYSTEMD_AUTO_ENABL=
E =3D &quot;enable&quot;</div><div># the service files are stored in the gi=
t repository=C2=A0in the misc folder<br>SYSTEMD_SERVICE_${PN} =3D &quot;${S=
}/misc/testapp@.service ${S}/misc/testapp-extra@.service&quot;<br><br>do_in=
stall_append() {<br>=C2=A0 =C2=A0 install -d ${D}${systemd_unitdir}/system<=
br>=C2=A0 =C2=A0 install -m 0644 ${S}/misc/testapp@.service ${D}${systemd_u=
nitdir}/system/</div><div>=C2=A0 =C2=A0 install -m 0644 ${S}/misc/testapp-e=
xtra@.service ${D}${systemd_unitdir}/system/<br>}<br><br>inherit cmake<br>`=
``</div><div><br></div><div>When i try to do do `bitbake testapp` to try ou=
t the recipe, I get an error telling me that: SYSTEMD_SERVICE_testapp value=
 /projects/poky/build/tmp/work/core2-64-poky-linux/testapp/0.1-r0/git/misc/=
testapp@.service does not exist.</div><div><br></div><div>I&#39;m using yoc=
to 3.2.1 if that matters.=C2=A0<br><div><div dir=3D"ltr" data-smartmail=3D"=
gmail_signature">-Paul Wicks</div></div></div></div>

--000000000000411af705badd6ede--
