Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10969.1599273149937317289
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Sep 2020 19:32:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=PvqrxULs;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id F128138C026C
	for <yocto@yoctoproject.org>; Fri,  4 Sep 2020 19:32:28 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id a8so2290151ilk.1
        for <yocto@yoctoproject.org>; Fri, 04 Sep 2020 19:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=9YC1Y5sqxRupiyfcfXzwizYOTDp7ObE/glifAiF6XWA=;
        b=PvqrxULsASHR6EapAgg0nAxJnYcTDu49L4K03Q5/x3lhzoEWot125SSE/AH1J+6uOI
         cY0e07s8f+ycCcV0TVNOJHfkaajz8ScqQGqv73fSDBfGVYv+UB7/cqQmbcJ6B5OowMop
         VSpGobbIxOucpaHBO3ECLHKRW5foBNNdR6Y/E+v+s9nhtcesbyUTexdKvN2AaT+k7RX4
         Pl7TM/BUEaVKK6wioj1kl4MxxgSNI1baaIx1uaLQRiEwKYYaG9KFOaSF4O1IBzB7rutR
         63JIM+W3y0NSO4t/h5HubiMLJu6UpVgrTvmx+wISpPHXB33B148GuFDUtT9XnFmdON2J
         DeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=9YC1Y5sqxRupiyfcfXzwizYOTDp7ObE/glifAiF6XWA=;
        b=tqspN76j7k0fPAAwUFc+g3pmar1fsoSMBBq4bork29CHo6E5Y/B3PIy0ksT+IaNEHH
         VXQlokoEjocUXyYuNcOY5wldI1n8FRbdYgKo6CT0m6jyRHHT9b+eYD5suwqhlcDYr9dP
         j2u/APGcCy/xGLyvWgjnu2hovO68mEcF18N2IcN3uXr8Oc7Scxlt/lSV6aaQk3VklK8k
         keajbzIGEn8CfG20/MERb5R5/LvnmD4PdrVgkYsUdBDfXONRjVLXdKT0XnGz9zOKtrF9
         9qad1hMAx/hvc0OkLLsWDINWFkglKU25pyeS5yBi4rIVC4lfrrhJ1Kl4Yw6N8C05ixHk
         EWdw==
X-Gm-Message-State: AOAM531b8FMMJfvQNUOerzrNEyoVSUILVnyvXQMn7PLwmqZWLT8e76va
	8KR4yu9bYE0wiN8Ct7dpU8LnJbAr87Y=
X-Google-Smtp-Source: ABdhPJxfmMQBuO9w7IvkRpY9YaQfOGmLrBGo7zrnKOa1+Tzgm5C6mQ6A2ZlpO0x5Jo72JSgCfs209A==
X-Received: by 2002:a05:6e02:c26:: with SMTP id q6mr2657106ilg.235.1599130719051;
        Thu, 03 Sep 2020 03:58:39 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id j20sm1315937ilg.20.2020.09.03.03.58.37
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 03:58:38 -0700 (PDT)
Date: Thu, 3 Sep 2020 06:58:33 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for September 1, 2020
Message-ID: <20200903105833.GA35567@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for September 1, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Stephen Jolly, Jan-Simon M=C3=B6ller, Alejandro H, Bruce
Ashfield, Armin Kuster, Richard Purdie, David Reyna, Steve Sakoman, Micha=
el
Halstead, Ross Burton, Paul Barker, Mark Morton, Scott Murray, Jeremy
Puhlman, Joshua Watt, Jon Mason, Randy MacLeod

=3D=3D notes =3D=3D
- entered m3 feature freeze
- working on a couple patches for 3.2
- bitbake server startup changed to avoid recently discovered issues will=
 wait
    for 3.3 to make default
- one more round of recipe upgrades before m3 build (later this week)
- -fno-common back to gcc10 default
- still some AB issues
- looking for help with unassigned bugs

=3D=3D general =3D=3D
RP: list of 3.2 things:
Mark=E2=80=99s hash equivalency prserv fix
RP: where are we with bind?
Armin: haven=E2=80=99t gotten around to sending them
RP: please do so
RP: want to get more of the AUH upgrades in too.
RP: Alex has queued up the rest.
RP: high priority bitbake bug on startup that needs to go in
docs changes, we want to cut over to sphinx before m3

TrevorW: what=E2=80=99s the -fno-common issue?
RP: gcc changed defaults with gcc10, caused namespaces to overlap (and co=
de
    builds to fail), we temporarily switched away from the new default, w=
aited
    for upstream and created patches, now we can switch back to gcc10=E2=80=
=99s
    default

Joshua: what still needs to be done with the docs?
RP: check Nico=E2=80=99s doc. right now: mostly marking up the code secti=
ons. please
    coordinate on the mailing list

PaulB: will be giving a talk at the upcoming Linaro Connect on license
    compliance with Yocto, Linaro Connect (virtual) is supposed to be fre=
e to
    attend this year

RP: i=E2=80=99ve heard that YP was mentioned at last week=E2=80=99s Plumb=
ers, does anyone
    know when/where it could have been mentioned?
(various): not sure
Scott: I don=E2=80=99t see Khem here, maybe he was talking about it?
TrevorW: Alistair Francis is a contributor to YP and RISC-V, it could hav=
e
    been brought up in relation to that. the RISC-V YP BSP carries a lot =
of
    patches

Randy: Saul Wold is joining WR today!
RP: glad to hear he=E2=80=99s returning to YP
