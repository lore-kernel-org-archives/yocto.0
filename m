Received: from mail.deif.com (mail.deif.com [87.54.42.111])
 by mx.groups.io with SMTP id smtpd.web10.6343.1593765104455298279
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 01:31:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@deif.com header.s=s1024 header.b=RiZyiCeP;
 spf=pass (domain: deif.com, ip: 87.54.42.111, mailfrom: kfa@deif.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
    s=s1024; d=deif.com;
    h=from:to:cc:subject:date:message-id:references:in-reply-to:content-type:
      mime-version;
    bh=KJ1xCZsfeNG1KGSJI6co+HcOkno=;
    b=RiZyiCePCJ1bVRkJOKGLw/FG5bD2o/uOOjLDNp3B9iahwFHZM+8ALEWB06Efz4
      DgYc10sX2u8t8cEuYjU5EfIeWOl1N/rXC50VFNOfzdHyVPeJyAl6qp1OVWQDxl
      c5B00wSJjLo2c4DdBdf4HF/w0q7Xh9aDtraIopPgAIUuy+4=
From: "Kjeld Flarup" <kfa@deif.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Build hangs
Thread-Topic: [yocto] Build hangs
Thread-Index: AQHWURD4NqJ/9tBjE0KrTvrPOenCZ6j1YzkAgAAij78=
Date: Fri, 3 Jul 2020 08:31:40 +0000
Message-ID: <0bc94de0be784f30819318c9626c6bb1@deif.com>
References: <bNRG.1593763627322531824.X25r@lists.yoctoproject.org>,<CANNYZj_qwBq2byWJ6=_FKAuwhFpY0aHD5YOw5a=R0QefNLQHoA@mail.gmail.com>
In-Reply-To: <CANNYZj_qwBq2byWJ6=_FKAuwhFpY0aHD5YOw5a=R0QefNLQHoA@mail.gmail.com>
Accept-Language: en-US, da-DK
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Alex

Thanks for Your suggestion, but there is actually only these three process=
es running.

user        53     1  1 07:37 pts/0    00:00:03 python3 /home/user/meta-po=
ky/bitbake/bin/bitbake machine
user        59     1  4 07:37 ?        00:00:14 python3 /home/user/meta-po=
ky/bitbake/bin/bitbake machine
user       449    59  5 07:39 ?        00:00:11 python3 /home/user/meta-po=
ky/bitbake/bin/bitbake-worker decafbad

Regards
Kjeld Flarup



________________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Friday, July 3, 2020 10:25
To: Kjeld Flarup
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Build hangs

You can try to list the process tree with ps axjf, and the innermost under=
 do_install is probably the one that is stuck. Then you can attach gdb to i=
t to see what it is doing.

Alex

On Fri, 3 Jul 2020 at 10:07, Kjeld Flarup via lists.yoctoproject.org<http:=
//lists.yoctoproject.org> <kfa=3Ddeif.com@lists.yoctoproject.org<mailto:dei=
f.com@lists.yoctoproject.org>> wrote:
I sometimes encounters this situation, where a task is running forever. Th=
is example only one task, but I have seen 6 tasks which have been running f=
or 10+ minutes

Currently  1 running tasks (680 of 2941)  23% |###########################=
                                                                           =
                 |
0: openssl-native-1.1.1d-r0 do_install - 6m17s (pid 6007)

When I look into the docker container I see only these processes
user@yocto:~$ ps -ef
UID        PID  PPID  C STIME TTY          TIME CMD
user         1     0  0 07:37 pts/0    00:00:00 /bin/bash scripts/ci.sh pd=
systems prepare_artifacts
user        53     1  1 07:37 pts/0    00:00:03 python3 /home/user/meta-po=
ky/bitbake/bin/bitbake machine
user        59     1  4 07:37 ?        00:00:14 python3 /home/user/meta-po=
ky/bitbake/bin/bitbake machine
user       414     0  0 07:38 pts/1    00:00:00 bash
user       449    59  5 07:39 ?        00:00:11 python3 /home/user/meta-po=
ky/bitbake/bin/bitbake-worker decafbad
user     15205   414  0 07:42 pts/1    00:00:00 ps -ef

Usually I can fix this by deleting all of by build folder, which of course=
 is annoying as it takes a loong time. Just deleting caches does not help.

Anybody has an idea of why this happens.

Kjeld Flarup


