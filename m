Received: from mail.deif.com (mail.deif.com [87.54.42.111])
 by mx.groups.io with SMTP id smtpd.web10.6978.1593769009162098934
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 02:36:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@deif.com header.s=s1024 header.b=MzfBZQRe;
 spf=pass (domain: deif.com, ip: 87.54.42.111, mailfrom: kfa@deif.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
    s=s1024; d=deif.com;
    h=from:to:subject:date:message-id:references:in-reply-to:content-type:
      mime-version;
    bh=sGfvjA7rrlVuACeKpaK/NWPQuNI=;
    b=MzfBZQReq3+2E91lM+darYjsMCuuL23vhr36r1wy+jMN7RQ1EdK6GNKFOad/ET
      lT7mDKWm/txWcUxLAQGXJGR97Q6/uMskfIGC+oJbceue9qV3pUEGl3xODD5fsJ
      F01gSdbL1sUb+gcyCdZLTdNnO7JxOT9f/0lD56Ub9LcQ/Ws=
From: "Kjeld Flarup" <kfa@deif.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Build hangs
Thread-Topic: [yocto] Build hangs
Thread-Index: AQHWURD4NqJ/9tBjE0KrTvrPOenCZ6j1ippx
Date: Fri, 3 Jul 2020 09:36:45 +0000
Message-ID: <582fde577ff644f5af92d82853472c67@deif.com>
References: <bNRG.1593763627322531824.X25r@lists.yoctoproject.org>
In-Reply-To: <bNRG.1593763627322531824.X25r@lists.yoctoproject.org>
Accept-Language: en-US, da-DK
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I found a cause for the error (this time)

In bitbake-cookerdaemon.log I found
recipes-codesys/codesysruntime/codesysruntime.bb: needs merge
recipes-codesys/codesysruntime/codesysruntime.bb: needs merge
recipes-codesys/codesysruntime/codesysruntime.bb: needs merge
recipes-codesys/codesysruntime/codesysruntime.bb: needs merge
recipes-codesys/codesysruntime/codesysruntime.bb: needs merge
recipes-codesys/codesysruntime/codesysruntime.bb: needs merge
recipes-codesys/codesysruntime/codesysruntime.bb: needs merge
recipes-codesys/codesysruntime/codesysruntime.bb: needs merge

After doing a git add on this file the build continued.

I'm however pretty sure that this was not the error in other cases where I =
experienced this.
In general bitbake does seem to ignore reporting some errors.

Regards
Kjeld Flarup



________________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Kjeld Flarup via lists.yoctoproject.org <kfa=3Ddeif.com@lists.yoctoproj=
ect.org>
Sent: Friday, July 3, 2020 10:07:07 AM
To: yocto@lists.yoctoproject.org
Subject: [yocto] Build hangs

I sometimes encounters this situation, where a task is running forever. Thi=
s example only one task, but I have seen 6 tasks which have been running fo=
r 10+ minutes

Currently  1 running tasks (680 of 2941)  23% |########################### =
                                                                           =
                |
0: openssl-native-1.1.1d-r0 do_install - 6m17s (pid 6007)

When I look into the docker container I see only these processes
user@yocto:~$ ps -ef
UID        PID  PPID  C STIME TTY          TIME CMD
user         1     0  0 07:37 pts/0    00:00:00 /bin/bash scripts/ci.sh pds=
ystems prepare_artifacts
user        53     1  1 07:37 pts/0    00:00:03 python3 /home/user/meta-pok=
y/bitbake/bin/bitbake machine
user        59     1  4 07:37 ?        00:00:14 python3 /home/user/meta-pok=
y/bitbake/bin/bitbake machine
user       414     0  0 07:38 pts/1    00:00:00 bash
user       449    59  5 07:39 ?        00:00:11 python3 /home/user/meta-pok=
y/bitbake/bin/bitbake-worker decafbad
user     15205   414  0 07:42 pts/1    00:00:00 ps -ef

Usually I can fix this by deleting all of by build folder, which of course =
is annoying as it takes a loong time. Just deleting caches does not help.

Anybody has an idea of why this happens.

Kjeld Flarup

