Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web09.2573.1621370982698202487
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 13:49:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sCqs7NqP;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: aymericdumaz@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id q5so11675669wrs.4
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 13:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=xPykJlwLlnRc3lfWqdlBtgTOTNNneeQlIHljqCvPOJY=;
        b=sCqs7NqPrd1sU2QGzQQCCcxL7iNXvBFetW9SeR+rY9G/qUQZ9INmYjJOSszxjFSDjl
         6lMjm97I+mLNwS95iHNkxS2i4xGRztkcJlAbw6CkV95Qft6stD5aTP/YkNYzCAPRvvDy
         CIhkTCGHsxuwYRCc3UvLH6Sdqx/lIo9xptQu2e2exfH2/LEIls5lkDNivEtbS3H08lNW
         AAdzo1jg4reS4ZZBW3Ak7T2trAkupvU8n4Qrc3F5V10NosxcnP4t4QWHhPTeV5uEDyH0
         Sk/u7f2rHE0C4jopeBtKoI3JQClKuXpfOYURxcemAtQUrAZS/6xNNgaMI9FzpRPZqo2f
         kuBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xPykJlwLlnRc3lfWqdlBtgTOTNNneeQlIHljqCvPOJY=;
        b=FSevxUOpYfbhiOLGFSnTwZ2OaWdHqJKCDRo1ttKrGzV/CrquWkMZiVckDM3PRdlSBC
         II7QerCSjNdRLEK0SNv4EC6pekgu3AEQYeoaUYL8iOEh3YYOQxoEVVOWl15GyLH0I0Q5
         A1vSTw8NVYyW+ytRd3O2zh16l9foBuoMMp6WF7sEP9+1inEU300SWyazmw1dteSiYqmA
         w+xDmxC6rBKOJARY7gL7v/zEXx4BIvDxKwjjuWZYN5Q9jE5+tXgkLPD9/k/cbBppky1y
         o944J8kO771uzVMsc4hQ1E/M9K2byUPN1uy/ZDsWm2hHmIOukDYkANujZyO8MF7H9xc+
         J4aQ==
X-Gm-Message-State: AOAM531n07lL7nA2cPFvjmdQiPOivVbNF+rkjKGpNuBFVAKnPCD/ZFlG
	o0ntZTiotU4pYPMk5oUZ+C7RXweFe/BcSsbLfpsPp02A6VI=
X-Google-Smtp-Source: ABdhPJx28p7U/VcIVgMgM+UqAyAqyWX1X5dQHU6hseKnhrNtgBhq7rOqQ0YR2itu96PpgrF7z5OUqeRb4KpZU89fMSU=
X-Received: by 2002:a05:6000:511:: with SMTP id a17mr9485852wrf.351.1621370981051;
 Tue, 18 May 2021 13:49:41 -0700 (PDT)
MIME-Version: 1.0
From: "Aymeric Dumaz" <aymericdumaz@gmail.com>
Date: Tue, 18 May 2021 22:49:30 +0200
Message-ID: <CAESSzZzoLimJK3roTHerDiXojYQPaf_kRs01W2o3FAwyBun_hw@mail.gmail.com>
Subject: Makefile environment variables do not work on some host
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello,

I have created a recipe to call multiple makefile and set a variable
if it's not defined inside them, meaning I set it before "oe_runmake".
It works as expected on a Debian testing, but with a Ubuntu base
chroot it does not.

I have written a simple recipe and the steps I used to configure the
Ubuntu chroot; on Debian I can see "var -bar-" inside log.do_compile,
but on Ubuntu it will only be "var --".
I'm not sure where the bug is located; I'm using Dunfell but I always
thought the host running Yocto was not relevant during the
compilation.
Thanks.

### Ubuntu chroot: download the image [0], extract it and start the
chroot, update it [1], add the en_US.UTF-8 locale [2], install Yocto
dependencies [3], then add an user.

### testvar.bb
SRC_URI = "file://Makefile"
LICENSE = "CLOSED"
S = "${WORKDIR}"

do_compile() {
    FOO=bar oe_runmake
}

### Makefile
all:
    @echo "var -$(FOO)-"

clean:


[0] http://cdimage.ubuntu.com/ubuntu-base/releases/20.04/release/ubuntu-base-20.04.2-base-amd64.tar.gz
[1] apt update && apt upgrade
[2] apt install locales && dpkg-reconfigure locales - select "159" then "3"
[3] apt install python3 python3-distutils binutils chrpath cpio cpp
diffstat g++ gawk gcc git make patch wget xxd
