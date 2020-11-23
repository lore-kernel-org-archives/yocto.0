Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.28842.1606097819142228630
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Nov 2020 18:16:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WKnod2iY;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: coder.callahan@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id e139so21685269lfd.1
        for <yocto@lists.yoctoproject.org>; Sun, 22 Nov 2020 18:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=X/T6VcMVciJrhs8NrMfo544qVZ4rkf9FZBz0QLx5niI=;
        b=WKnod2iYHutUlK4OwdUy7g/gkIvNjbsC+4xsfUyG+NbQFgr/fQnLazlERD20qE0iQ4
         3Xmip5ApLlyzcyYj43slqFKbhKqEtj0Pt1hh8XKfTUbV4d5xnNlrZxUqXJvAkvG3TuXd
         Z5Qt+3k95FSwHOmb1f4j7BcCIfK/GurN/h9e5CMyoPy9k/R9XJaiH6kGs9l3Nb/X6h0a
         To/dfW5iqdFGv+r1L7JquAs3NRv98p9POv7Ceq4IKs7bycRibw0k8qriZFSq9LgXiap9
         XhlxCfApY7J2z2Cns6OfjEY2oUy07X/T4BqWu3sIWPh3bDJWDDuVUgRLhfmD9lW45cvO
         vuKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=X/T6VcMVciJrhs8NrMfo544qVZ4rkf9FZBz0QLx5niI=;
        b=JeoHUAdh5Xq5BTfl9Gi48uzYA/k4+ioZ6i4x6ey6uNx/xQ4OC6eb2cfoZ76BZzFdwZ
         mbLasiiSQzBg+e9m6r3fBMJ55K+ORGOEae34p1PDYcHi0ALjUjYX9JNT9jXCGr16M63W
         KSV9scHbTNuHng9w30IOn9ggKwR+KecJF2tusgPt2UjarPbiDaSPrSf6g5NDFDWWpHp8
         1yPnKaQW2i3rGTm2U10RHguGBORRtGFXR4fBVohrT5tl6wEDUhCAId86SM/SaOkL01Me
         9VMygb8jkZqX68MnIgRy5V2+M8j2AmA+3HqLoUFQLruzuU/zF/yMhUprkdeUDX5a6olp
         dUFQ==
X-Gm-Message-State: AOAM531qlB8uPA6GwBgc1vpHAkEl0TK566BBQECMgJEUcRch3yJ7T3Oq
	8KbmpcQLbAuoX9j6H9bd5CrHjEY9GLmrvsmEgxivYGdhjhM=
X-Google-Smtp-Source: ABdhPJwizmirmKQASKd7oFEbcIHFdSmwP/STNdfOyy5ea+J79LWFPx9QuvyWKiR1q1FH2YKa4//TRvYbcWmkAj11g+o=
X-Received: by 2002:a19:8605:: with SMTP id i5mr13664598lfd.15.1606097817360;
 Sun, 22 Nov 2020 18:16:57 -0800 (PST)
MIME-Version: 1.0
From: "Michael Callahan" <coder.callahan@gmail.com>
Date: Sun, 22 Nov 2020 19:16:45 -0700
Message-ID: <CADm5WxOUQO5za65bAvfN-2F1DnuOLg6unLUmD0k46W6Dj37c_A@mail.gmail.com>
Subject: Python function caching question
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

I am having trouble with sstate caching of my os-release.bbappend and
am stuck.  The simple example file looks like something below, where I
am setting a variable from a computed python function.  What's the magic
to make the find_version(d) always run but do_compile to only run if
VERSION changes?  I basically want something like
`find_version[nostamp]="1"` but that seems to only work for tasks.

def find_version(d):
    import subprocess
    cmd = "git describe --long"
    return subprocess.check_output(cmd).rstrip().decode('utf-8')

VERSION = "${@find_version(d)}"
# do_compile uses $VERSION
