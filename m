Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
 by mx.groups.io with SMTP id smtpd.web11.9981.1585066004881087560
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2020 09:06:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QxlaJvMR;
 spf=pass (domain: gmail.com, ip: 209.85.166.173, mailfrom: eripflo@gmail.com)
Received: by mail-il1-f173.google.com with SMTP id e8so17208471ilc.13
        for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2020 09:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ILm0AjGCikLRN93ycv9DVfXEHKbM8Qh2fPW/b/pEFVo=;
        b=QxlaJvMRf1P3ct+V1Ff/Qaacp8bvSJ97n9LmdVaqSEqCpaa4dm/D1FJa0tqirGut9/
         TWS3d43qinb4XyowIv2knDM61hqZqkRyIt+ljUX56nltdghd/j6IP0j3SrHCojwrybIj
         MtgxFQ5V3Av3wB5/i4KIIY54XemnwEUkWuMHg2L8HVqR6T5IWLh1nqHjvK891WVaYaNE
         FBvVri6/Sa5iNBjlMW04IuCrt+gRK2lf11y+Ds3n/Wmx6bYrI4bfmu3Ohx6b3iFeqM3f
         gnoeUSK/uFLsu51nn++mBSH1h63FSh7xtQrCCuqwIFv++dIGv4f9bKlFGte/hpxvk1g5
         iBog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ILm0AjGCikLRN93ycv9DVfXEHKbM8Qh2fPW/b/pEFVo=;
        b=D5fUPEHsetD2WVUa4PY1YFTcE9yRzUEvZ+RRxPyM+Cu49Mhb5Am/Ful4F2QYCmOHyb
         fAwcZxeElZeNRjVeN3YmdK9xI6S9rX90Qoyvap16fYP1A/YmrjhCHt7MWV+xxdCjBsUR
         KCZZq2kBhN6gEURtn6GmYWcEInmCV+lTSm52buMCFHte59GZaF2KW0b2rp/+R8FwwXK8
         L5CiP3JzCcpGgnuBfn9Na36tdAuy+cen1DIxHfVTmIiWCN4G+r8nyziUb3UfO3bn37Mn
         CvKQ+bmMEFWOPaYuhWhFFfNRPrWpREV0m5qzAaA7TXCB5MifnmeIZ9YqaQEilHlq6374
         mpkg==
X-Gm-Message-State: ANhLgQ2MelkaCVXtkTjcjIEbGkvPPh/FDpzJiQqF3SCFl+BHf8nn2daZ
	APjbs9KAYNhlzCz33mdIYXH7RWQEXeZYmA5RyyLEerp3lKo=
X-Google-Smtp-Source: ADFU+vsSfM3sl7QNBSWXkr2PXiz+s6ETE8WVgUhA3HzqDBeJYCSbJYoQCAuuXolR0yGpMYvOWa6ula8Onn6IkJYOqXg=
X-Received: by 2002:a92:3b86:: with SMTP id n6mr26530631ilh.270.1585066004192;
 Tue, 24 Mar 2020 09:06:44 -0700 (PDT)
MIME-Version: 1.0
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Tue, 24 Mar 2020 12:06:33 -0400
Message-ID: <CAGhBkzwEZYNxLmAdD6PbO_P0_QGLE=FpGOhbtOrDZi5EXtsC2w@mail.gmail.com>
Subject: What .c/.h etc files were used to compile?
To: yocto@lists.yoctoproject.org, yocto-infrastructure@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000020268f05a19bf01f"

--00000000000020268f05a19bf01f
Content-Type: text/plain; charset="UTF-8"

Hi,

Is there a way to find out what .c/.h files were used to compile?

I am baking and tried using -D --no-setscene options and piped data into
the file but don't see the .c/.h that were used to compile.

Regards,

Ripu

--00000000000020268f05a19bf01f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"verdana, sans-serif">Hi,</font><div><font fa=
ce=3D"verdana, sans-serif"><br></font></div><div><font face=3D"verdana, san=
s-serif">Is there a way to find out what .c/.h files were used to compile?<=
/font></div><div><font face=3D"verdana, sans-serif"><br></font></div><div><=
font face=3D"verdana, sans-serif">I am baking and tried using -D --no-setsc=
ene options and piped data into the file but don&#39;t see the .c/.h that w=
ere used to compile.</font></div><div><font face=3D"verdana, sans-serif"><b=
r></font></div><div><font face=3D"verdana, sans-serif">Regards,</font></div=
><div><font face=3D"verdana, sans-serif"><br></font></div><div><font face=
=3D"verdana, sans-serif">Ripu</font></div><div><font face=3D"verdana, sans-=
serif"><br></font></div></div>

--00000000000020268f05a19bf01f--
