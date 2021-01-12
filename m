Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web09.10301.1610464178496799521
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 07:09:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VonUFEO0;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: icegood1980@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id n26so3986688eju.6
        for <yocto@lists.yoctoproject.org>; Tue, 12 Jan 2021 07:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=uoZibJXUmzG3CdDXGYCTAQn5XeoA3xvBH2YikyHJ4IE=;
        b=VonUFEO0gRaproOaTzVAEsBB4uTd2ShW2boZl+D9LBOh+XOqro6I4UVECpx9dmikfn
         ISALORCXCAkaOK+VIfwVFugw4ECAi6IlGE4Cz25hwlSJJ208gFex2S7nizF3Ew1Y+av9
         zSPcSgciEsLJDZz2TBQWYUOeUd8sYwS5JRXwlfm99lYgBj0o8MQqjirPFYYOz++IyMun
         FTqXFeWuSxJ7s1ml6EZgLX4IEuIMvevnQpD6GXrBpIZHNFnoZUupcVxk8z+qlSokjZ4b
         3xAYRyfo8LSeo2EIakljHcP7i+KBcUoQF4u1Hq50dZN4npXy166Jc5+EYy8f51/mLm3E
         +Ygw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=uoZibJXUmzG3CdDXGYCTAQn5XeoA3xvBH2YikyHJ4IE=;
        b=UDYDQsXOAHkL1Jr5h39aYG9hG2PH/+anHqrnFTSgBh9lNA/L3KFrz1W6iIw3NhVLwa
         gETk2lNXYl0xKTdLmErXVyzufHU5WzpIzwKaERnnqAvYDd5cZXkOGk/ROT18e2a2gzrp
         XsT8z1flluDByKEiL3naHcZdPCD7rSGOCutKFI8HCJRXXfoVRUvm1Y4QdH9aRC9sMsqI
         DH9TeCffyav+2gznAhYcAs5/DhJKaf69IjwZ3Cwy+YchOKEuNJ45enF4E1QMlBMFTxAP
         iyTCy5qPWFmUSBWBTarro6JewFlTZv302Yvq2kXLQ3RCgLu+UrIRU5LOUzkIATDeEM70
         sUKg==
X-Gm-Message-State: AOAM530wi8koZrz3/2L7rrWvacmqQ8juDCinyeYBtZqpC+io7cgZLLeM
	jjDYJorDCvaa85Z7ML8GlxrK1ertEtOORER+rSs1EkP8kgq78A==
X-Google-Smtp-Source: ABdhPJwypDuCIB97O5kIX+JGlctLHpZpQsHzW/bHBcEfiXSxig5lgNZ0gf9xMrsC8nw/eDZUvFHCZ3c32Ci105WNmvw=
X-Received: by 2002:a17:906:d930:: with SMTP id rn16mr3639338ejb.412.1610464176698;
 Tue, 12 Jan 2021 07:09:36 -0800 (PST)
MIME-Version: 1.0
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Tue, 12 Jan 2021 17:09:25 +0200
Message-ID: <CAJCbrz4YKYNenmMDPb7jMTq_=mv3h0sVjMCFq4+-Anirbv5yug@mail.gmail.com>
Subject: remove particular device from QB_OPT_APPEND: per-word manner
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002cf98805b8b569e4"

--0000000000002cf98805b8b569e4
Content-Type: text/plain; charset="UTF-8"

Hi there.

I'm working with arm64 target and i want to take control on usb buses on it.
What i'm trying to do is tro remove both bus and hid devices on it via
QB_OPT_APPEND_remove = " -show-cursor -device qemu-xhci -device usb-tablet
-device usb-kbd "

Of course, it doesn't work properly since it removes ALL occurrences of
each word above. In particular, i had "-device VGA,edid=on" that i wanted
to stay.
Instead, i obtained "VGA,edid=on" that lead to boot error. OK, it is clear.
I also tried smth. like

QB_OPT_APPEND_remove = " -show-cursor '-device qemu-xhci' '-device
usb-tablet' '-device usb-kbd -device' "

however nothing was removed here. Can i workaround given issue under *Zeus?*
-- 
Kind regards,
Sergey Ivanov

--0000000000002cf98805b8b569e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi there. <br><br>I&#39;m working with arm6=
4 target and i want to take control on usb buses on it.<br></div>What i&#39=
;m trying to do is tro remove both bus and hid devices on it via<br>QB_OPT_=
APPEND_remove =3D &quot; -show-cursor -device qemu-xhci -device usb-tablet =
-device usb-kbd &quot;<br><br></div>Of course, it doesn&#39;t work properly=
 since it removes ALL occurrences of each word above. In particular, i had =
&quot;-device VGA,edid=3Don&quot; that i wanted to stay. <br></div>Instead,=
 i obtained &quot;VGA,edid=3Don&quot; that lead to boot error. OK, it is cl=
ear. I also tried smth. like<br><br>QB_OPT_APPEND_remove =3D &quot; -show-c=
ursor &#39;-device qemu-xhci&#39; &#39;-device usb-tablet&#39; &#39;-device=
 usb-kbd -device&#39; &quot;<div><div><div> <div><div><br></div><div>howeve=
r nothing was removed here. Can i workaround given issue under <b>Zeus?</b>=
</div><div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature">Kind regards,<br>Sergey Ivanov</div></div></div></div>=
</div></div></div>

--0000000000002cf98805b8b569e4--
