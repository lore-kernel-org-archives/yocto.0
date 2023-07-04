Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1747FEB64D9
	for <webhook@archiver.kernel.org>; Tue,  4 Jul 2023 21:47:52 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.4544.1688507269275864145
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jul 2023 14:47:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=k1EMaGm+;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-4fb863edcb6so9848378e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 04 Jul 2023 14:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688507267; x=1691099267;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MJrC9IzR1DPOVVQsGzMu4fWXoqHcMQ5ZqQD6ysiV4fM=;
        b=k1EMaGm+VQlvVb0YT3v5IUHpbUvrtgZX6ZmnEbi6hIO3Vrb0lLV9uHGxeE/v0bqDP7
         wTGYbJZY0O/J0f9NPWoXKVnJDYQod+hqeHy4hytnvjHTM58+t0vYYmiuLa2bvY0jQuNl
         Qu2uTrG1gMKhmh9LjJA03dF/TFnOlvnUIYfeTEJkXmaUcCl83uGrPT1XN0auqtta9QD7
         DogS23aAEQkP434CJy+owGaGViPr/gUCE5s9c5BpKi3w39VYFFuSOuAB8XV7nVDMj/Ev
         Ov37TQzeb6J6KEXzPV4Sab0lAcL3PoPdioxiq/rKWGHCnP3rvR1Eo9YbplArisAxPFTM
         ljSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688507267; x=1691099267;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MJrC9IzR1DPOVVQsGzMu4fWXoqHcMQ5ZqQD6ysiV4fM=;
        b=JmQn7LvmGAaJzR8MGZv1Z986Km88XmUARhC01CxIKxW7PS5wpfmXLXsfWoHGQFxRpl
         St6SQ2oFYbynbI9a3Q0qp3aX9OUmxRQ9SqmhQoGCWNRmJbL6YNXBS+SXu0X5c6HN0zpc
         +WZ9scLUYoBoV3LrXsjVw/1cuRDyXCsdgeHpP94JsRLBa+nATNwKm3Db1B4j1EaujFrt
         zweqMI5VZNzf68QaniBedK627yZfySnRl9WH4wFwKtPpxM9RO0/qzFEPKXK6dxe+tELp
         9SStp5irb1kqCFnsWqVHF1hwq5pRpBmy2NTlXsWqI+oekmzuc3QbyriEy6ftYfGo+V0F
         xJiw==
X-Gm-Message-State: ABy/qLbccMlEfjg6lDH9QL/P/L2i1Bc9BQ15E3K6O9Gh2rBitAWBetBN
	l81vC4bPnwviZRLkf0qsfxwXhxIJK8SzQpoeHqarETPFyH0=
X-Google-Smtp-Source: APBJJlHMiVzzhGBP7BBjcXj1R7ks7upjVBW9uzo3C4DginVyeZh+Q4TZmbeWwDpvgAcEVK0AsB6nTf8DDRLMGL+TVtM=
X-Received: by 2002:a05:6512:308a:b0:4fb:89bb:bcc4 with SMTP id
 z10-20020a056512308a00b004fb89bbbcc4mr11638143lfd.51.1688507266500; Tue, 04
 Jul 2023 14:47:46 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 4 Jul 2023 23:47:34 +0200
Message-ID: <CAAfyv372m-GwXnyJU+Gw_qg7pwdBfM49coXYrfEJNZ6L7eh2-A@mail.gmail.com>
Subject: poky master weston failed to start
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d20e0505ffb03b7b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jul 2023 21:47:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60514

--000000000000d20e0505ffb03b7b
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using tip of poky master and build weston image for bananapi-m64 board.
Board boots fine but weston is not started and in log I see:

 Jul 04 21:42:28 bananapi-m64 systemd[1]: Starting Weston, a Wayland
compositor, as a system service...
[  306.464755] audit: type=1006 audit(1688506948.933:18): pid=377 uid=0
old-auid=4294967295 auid=1000 tty=(none) old-ses=4294967295 ses=10 res=1
[  306.477778] audit: type=1300 audit(1688506948.933:18): arch=c00000b7
syscall=64 success=yes exit=4 a0=8 a1=fffffcdd7050 a2=4 a3=1 items=0 ppid=1
pid=377 auid=1000 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0
tty=(none) ses=10
 comm="(systemd)" exe="/lib/systemd/systemd" key=(null)
[  306.504195] audit: type=1327 audit(1688506948.933:18):
proctitle="(systemd)"
[  306.942909] audit: type=1006 audit(1688506949.409:19): pid=375 uid=0
old-auid=4294967295 auid=1000 tty=tty7 old-ses=4294967295 ses=11 res=1
[  306.955818] audit: type=1300 audit(1688506949.409:19): arch=c00000b7
syscall=64 success=yes exit=4 a0=8 a1=fffffcdd7050 a2=4 a3=1 items=0 ppid=1
pid=375 auid=1000 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0
tty=tty7 ses=11 c
omm="(weston)" exe="/lib/systemd/systemd" key=(null)
[  306.981861] audit: type=1327 audit(1688506949.409:19):
proctitle="(weston)"
root@bananapi-m64:~# [  307.474004] audit: type=1701
audit(1688506949.941:20): auid=1000 uid=1000 gid=1000 ses=11 pid=375
comm="weston" exe="/usr/bin/weston" sig=11 res=1
Jul 04 21:42:29 bananapi-m64 systemd[1]: Started Weston, a Wayland
compositor, as a system service.
Jul 04 21:42:29 bananapi-m64 systemd[1]: weston.service: Main process
exited, code=killed, status=11/SEGV
Jul 04 21:42:29 bananapi-m64 systemd[1]: weston.service: Failed with result
'signal'.


When try to run command manually I'm getting:
root@bananapi-m64:~# /usr/bin/weston --debug --modules=systemd-notify.so
Date: 2023-07-04 UTC
[21:43:49.208] weston 12.0.1
               https://wayland.freedesktop.org
               Bug reports to:
https://gitlab.freedesktop.org/wayland/weston/issues/
               Build: 12.0.1
[21:43:49.208] Command line: /usr/bin/weston --debug
--modules=systemd-notify.so
[21:43:49.208] OS: Linux, 6.1.9, #1 SMP PREEMPT Wed Feb  1 07:38:58 UTC
2023, aarch64
[21:43:49.208] Flight recorder: enabled
[21:43:49.208] Using config file '/etc/xdg/weston/weston.ini'
WARNING: debug protocol has been enabled. This is a potential
denial-of-service attack vector and information leak.
[21:43:49.209] Output repaint window is 7 ms maximum.
[21:43:49.209] Loading module '/usr/lib/libweston-12/wayland-backend.so'
[21:43:49.255] Error: Failed to connect to parent Wayland compositor: No
such file or directory
               display option: (none), WAYLAND_DISPLAY=/run/wayland-0
[21:43:49.255] fatal: failed to create compositor backend

Any idea what I'm missing to make it working? On mickledore weston works
just fine.

Thanks and BR,

marek


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000d20e0505ffb03b7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m using tip of poky master an=
d build weston image for bananapi-m64=C2=A0board. Board boots fine but west=
on is not started and in log I see:</div><div><br></div><div>=C2=A0Jul 04 2=
1:42:28 bananapi-m64 systemd[1]: Starting Weston, a Wayland compositor, as =
a system service...<br>[ =C2=A0306.464755] audit: type=3D1006 audit(1688506=
948.933:18): pid=3D377 uid=3D0 old-auid=3D4294967295 auid=3D1000 tty=3D(non=
e) old-ses=3D4294967295 ses=3D10 res=3D1<br>[ =C2=A0306.477778] audit: type=
=3D1300 audit(1688506948.933:18): arch=3Dc00000b7 syscall=3D64 success=3Dye=
s exit=3D4 a0=3D8 a1=3Dfffffcdd7050 a2=3D4 a3=3D1 items=3D0 ppid=3D1 pid=3D=
377 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=3D0 fsuid=3D0 egid=3D0 sgid=
=3D0 fsgid=3D0 tty=3D(none) ses=3D10<br>=C2=A0comm=3D&quot;(systemd)&quot; =
exe=3D&quot;/lib/systemd/systemd&quot; key=3D(null)<br>[ =C2=A0306.504195] =
audit: type=3D1327 audit(1688506948.933:18): proctitle=3D&quot;(systemd)&qu=
ot;<br>[ =C2=A0306.942909] audit: type=3D1006 audit(1688506949.409:19): pid=
=3D375 uid=3D0 old-auid=3D4294967295 auid=3D1000 tty=3Dtty7 old-ses=3D42949=
67295 ses=3D11 res=3D1<br>[ =C2=A0306.955818] audit: type=3D1300 audit(1688=
506949.409:19): arch=3Dc00000b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 =
a1=3Dfffffcdd7050 a2=3D4 a3=3D1 items=3D0 ppid=3D1 pid=3D375 auid=3D1000 ui=
d=3D0 gid=3D0 euid=3D0 suid=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=
=3Dtty7 ses=3D11 c<br>omm=3D&quot;(weston)&quot; exe=3D&quot;/lib/systemd/s=
ystemd&quot; key=3D(null)<br>[ =C2=A0306.981861] audit: type=3D1327 audit(1=
688506949.409:19): proctitle=3D&quot;(weston)&quot;<br>root@bananapi-m64:~#=
 [ =C2=A0307.474004] audit: type=3D1701 audit(1688506949.941:20): auid=3D10=
00 uid=3D1000 gid=3D1000 ses=3D11 pid=3D375 comm=3D&quot;weston&quot; exe=
=3D&quot;/usr/bin/weston&quot; sig=3D11 res=3D1<br>Jul 04 21:42:29 bananapi=
-m64 systemd[1]: Started Weston, a Wayland compositor, as a system service.=
<br>Jul 04 21:42:29 bananapi-m64 systemd[1]: weston.service: Main process e=
xited, code=3Dkilled, status=3D11/SEGV<br>Jul 04 21:42:29 bananapi-m64 syst=
emd[1]: weston.service: Failed with result &#39;signal&#39;.<br><div><br></=
div><div><br></div><div>When try to run command manually I&#39;m getting:<b=
r>root@bananapi-m64:~# /usr/bin/weston --debug --modules=3Dsystemd-notify.s=
o<br>Date: 2023-07-04 UTC<br>[21:43:49.208] weston 12.0.1<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://wayland.freedes=
ktop.org">https://wayland.freedesktop.org</a><br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Bug reports to: <a href=3D"https://gitlab.fr=
eedesktop.org/wayland/weston/issues/">https://gitlab.freedesktop.org/waylan=
d/weston/issues/</a><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Build: 12.0.1<br>[21:43:49.208] Command line: /usr/bin/weston --debug=
 --modules=3Dsystemd-notify.so<br>[21:43:49.208] OS: Linux, 6.1.9, #1 SMP P=
REEMPT Wed Feb =C2=A01 07:38:58 UTC 2023, aarch64<br>[21:43:49.208] Flight =
recorder: enabled<br>[21:43:49.208] Using config file &#39;/etc/xdg/weston/=
weston.ini&#39;<br>WARNING: debug protocol has been enabled. This is a pote=
ntial denial-of-service attack vector and information leak.<br>[21:43:49.20=
9] Output repaint window is 7 ms maximum.<br>[21:43:49.209] Loading module =
&#39;/usr/lib/libweston-12/wayland-backend.so&#39;<br>[21:43:49.255] Error:=
 Failed to connect to parent Wayland compositor: No such file or directory<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0display option: (=
none), WAYLAND_DISPLAY=3D/run/wayland-0<br>[21:43:49.255] fatal: failed to =
create compositor backend<br></div><div><br></div><div>Any idea what I&#39;=
m missing to make it working? On mickledore weston works just fine.</div><d=
iv><br></div><div>Thanks and BR,</div><div><br></div><div>marek</div><div><=
br></div><div><br></div><span class=3D"gmail_signature_prefix">-- </span><b=
r><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure">as simple and primitive as possible<br>-------------------------------=
------------------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br=
><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 05=
2 184<br>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http:=
//open-nandra.com" target=3D"_blank">http://open-nandra.com</a></div></div>=
</div>

--000000000000d20e0505ffb03b7b--

