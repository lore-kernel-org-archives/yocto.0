Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.40811.1606161044779445965
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 11:50:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=d4rHH7Cq;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: lefevre.da@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id e7so2334877wrv.6
        for <yocto@lists.yoctoproject.org>; Mon, 23 Nov 2020 11:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Umv7os8Pb23zm7dmKZFnMA2HkbgTQNfnWx1usRdrcbA=;
        b=d4rHH7CquCi2p33am4dJeQZ4rmiULW7g8p/z5fo3LjTlyDyY9oiRgXJJNqQUKBCErH
         +jwLWoswS/fS9AHUPbbLRh7Q7TxwzFmj0QMwKtomhsAiAhr3sfsILZllVwu5WEobxn6p
         Czjq8lb6uRQe2MnExn/X7XHNDTxJRyIW1BZAkBg2l6UcmhD7hgkjmkQlYFaEXqk8rf9j
         nJDwtplNp8V/Zmp8OO/J8qbOMevEJawnRY6cYzINd4Kh5fW3tiSCpwqVrFDT64MMp+m0
         GB2/j51nVz0Sxh+J4vhdIOldV6mqU0WQAtiCoBrlGIkmCQd/inK7o4Ugwc86Pv3ruZjU
         khUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Umv7os8Pb23zm7dmKZFnMA2HkbgTQNfnWx1usRdrcbA=;
        b=iP01ddN+WsUu3kRa3bFOsf67gbX8mebzScevtNPgTMW1yyIGNptRCEwom6oq/a2TxL
         DvVmmNvGURvVDN6GUtMIOk0Z+Mt8RV4OBGtC9CYpdYJUJhPB2xetAjAkdLcKlUzwPfdH
         AMB9Gg/OakgxAPhhvK/XDOFrRfvKfAycfYA83eBaMPVc8fQ/CnDX3bMHkfrIclo/qCCT
         HgrTULOdguv4ZcZDEtFFy1Q1S9KLm8FlaxBnfXaFtJz9bUoHa7RpIbQ+1ZBP3ePQg8H4
         aK6WHvsTVV5hpYKc0pYoGpCrcKkYBBGv57VZr6amWaCZDoL2GTtQId+F1yrXhsmOGTYT
         r0Lw==
X-Gm-Message-State: AOAM5312Zumnkrdd6eoGfnwTbpp3bHWklcxYsOgtt89VpPmL5vbv72Se
	13YfavJz5NcY9OgA8C0Nxa/aCvyht68IzCoVTpGgLOsqo+vM
X-Google-Smtp-Source: ABdhPJyJNak1NL57Xlr8zr21ESVz44GvwWnGAmbrs0dkGsIIfXw28txmf0UCzuzlqzq7S9TGGeRvh/VB5Qxkkl9Psa0=
X-Received: by 2002:a05:6000:1292:: with SMTP id f18mr1374287wrx.196.1606161042998;
 Mon, 23 Nov 2020 11:50:42 -0800 (PST)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Mon, 23 Nov 2020 21:50:32 +0200
Message-ID: <CA+FhBv_OObLJ9BhtJSw0_nzSUimc0AcSybQ7_FEm+SEzASJSRg@mail.gmail.com>
Subject: Disable systemd-timesyncd.service in image
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006b883605b4cb82a1"

--0000000000006b883605b4cb82a1
Content-Type: text/plain; charset="UTF-8"

Hi,

I would like to have systemd-timesyncd.service as part of an image but have
it disabled by default.

Right now it is enabled by default which causes some issues.

I've tried systemd_%.bbappend

do_install_append() {
    rm "$D/etc/systemd/system/dbus-org.freedesktop.timesync1.service"
    rm
"$D/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service"
}

but those symlinks are not part of the package.

I've tried this to remove the link during the package deployment during
do_rootfs
pkg_postinst_${PN}_append() {
    #!/bin/sh -e
    rm "$D/etc/systemd/system/dbus-org.freedesktop.timesync1.service"
    rm
"$D/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service"
}

But at this stage the links still don't exist.

Which package is actually responsible for enabling the default services /
creating the symlinks? How can we turn some of them off while keeping them
in the image?

Thanks,
-Damien

--0000000000006b883605b4cb82a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I would like to have=C2=A0systemd-t=
imesyncd.service as part of an image but have it disabled by default.</div>=
<div><br></div><div>Right now it is enabled by default which causes=C2=A0so=
me issues.</div><div><br></div><div>I&#39;ve tried systemd_%.bbappend</div>=
<div><br></div><div>do_install_append() {=C2=A0</div><div>=C2=A0 =C2=A0 rm =
&quot;$D/etc/systemd/system/dbus-org.freedesktop.timesync1.service&quot;<br=
></div><div>=C2=A0 =C2=A0 rm &quot;$D/etc/systemd/system/sysinit.target.wan=
ts/systemd-timesyncd.service&quot;</div><div>}</div><div><br></div><div>but=
 those symlinks are not part of the package.</div><div><br></div><div>I&#39=
;ve tried this to remove the link during the package deployment during do_r=
ootfs</div><div>pkg_postinst_${PN}_append() {<br>=C2=A0 =C2=A0 #!/bin/sh -e=
<br>=C2=A0=C2=A0 =C2=A0rm &quot;$D/etc/systemd/system/dbus-org.freedesktop.=
timesync1.service&quot;<br>=C2=A0 =C2=A0 rm &quot;$D/etc/systemd/system/sys=
init.target.wants/systemd-timesyncd.service&quot;<br>}<br></div><div><br></=
div><div>But at this stage the links still don&#39;t exist.</div><div><br><=
/div><div>Which package is actually responsible for enabling the default se=
rvices / creating the symlinks? How can we turn some of them off while keep=
ing them in the image?</div><div><br></div><div>Thanks,</div><div>-Damien</=
div></div>

--0000000000006b883605b4cb82a1--
