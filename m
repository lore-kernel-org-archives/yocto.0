Return-Path: <mcorbin@lunarenergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968A6C3DA64
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 15:55:29 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.46309.1722441319808028474
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 08:55:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lunarenergy.com header.s=google header.b=p8674uOi;
 spf=pass (domain: lunarenergy.com, ip: 209.85.167.53, mailfrom: mcorbin@lunarenergy.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52efdf02d13so9655064e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 08:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lunarenergy.com; s=google; t=1722441317; x=1723046117; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iAyAgMUsWNxyVyysvuIvabau/M/ka9vwEZmAibA4sLc=;
        b=p8674uOirqnIyg91+nbYn1zXgleIcyMBKYh7E3SUar3ueYp1yzRfJ34yeB1ujQWB4T
         SoertpHMXsF0bRS4muNvZAVixwXhkbjOe03Ra7607fKI1InBnj+M12oo0QzQeexHDvyW
         e4xuNMTndsAmuDJIiGrg5eZ5HbfLpjn0vFrZX/Qzza3qggT76WgORb+WJpN96vjjpNoc
         jBCQAk4XWGG/rIUJMq9tL+oCc+1YgTO5gSSqIibv9hGQ8EYo03pqJMgA9RaoAu7L20gB
         XMwz9Xi/GcD0oppcVxHBLIEcutYDglHXMiLaz/Nd6VbkX41njF8ssdTiIP/ux9E6aAFn
         +UwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722441317; x=1723046117;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iAyAgMUsWNxyVyysvuIvabau/M/ka9vwEZmAibA4sLc=;
        b=GfNFAxNSm2iXuWzxbYWxXTA9fy8WELwdG28/7jdB6J2kDXLZ2KomRsce0Ru1HD2rzl
         QIA8olX58LKPJAXulR9HKamxeKOr/Hrd99KpTA9HmnlwDVmGTtfVXt9cBGoPpMpJWKiB
         cpbzJaCh4/5dsFSgDmf5i87530G07yL9a4IkL6rxkW4njK8zFw79CAolHhS4PpILMscz
         EHnD9qdqXncG3M2hNNBNMNL70YvVSzwXyIlWAcPGgiR0okEdvde42h0LhGOyU4vCmGpe
         hac1I9SRtpB7whmWEvpP4aOTBwElsvT18RSFTv6O5A8adcRbbnN2rUpEhRWoX4FGWCp0
         fwdw==
X-Gm-Message-State: AOJu0YwKRgmp/PdkbYDuS6TC3VsLrAN+TCmiSYF4K7h6vlQxkZ35CWPV
	6mYg1tYCmXlxegNvjS+QRanGNNc7DtxqU5EQisenrgxoCejZ4LXhEzG02cW1BNldZriCVaHRW82
	EWIfthtfcHuPwh6L6D4Wu60L2zYg8w6u/cT12r8r2HmAd8gCbkxaHP2F2/qFRaL5rBLPYy8RHWK
	hIxFa6tqjgk9uM4Xonqp4aEFkj5qecZkKjEcJ8NrX4eqs=
X-Google-Smtp-Source: AGHT+IF4qMcs2yis1iCd0zLQP9K9hwKbra7ZzsFP//s2Pv1Cxi8dgNQ6RiRKQplwdQnEUO02JgWO4GT8PEQ2J1QCt1o=
X-Received: by 2002:a2e:b714:0:b0:2ef:17ee:62a2 with SMTP id
 38308e7fff4ca-2f12ee1185bmr118785731fa.14.1722441317134; Wed, 31 Jul 2024
 08:55:17 -0700 (PDT)
MIME-Version: 1.0
From: Mark Corbin <mcorbin@lunarenergy.com>
Date: Wed, 31 Jul 2024 16:55:05 +0100
Message-ID: <CAPfD7wkdkC3Wsu92gcPa9RtQs=hWyxXgKbH4kPfOmEfqhzmJNw@mail.gmail.com>
Subject: Using sshd with a non-bash shell
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000db077b061e8d1eef"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 15:55:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63634

--000000000000db077b061e8d1eef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello

I was wondering whether anybody has any experience of running sshd
successfully on a system with a 'non-bash' shell?

We're using kirkstone 4.0.12 which has openssh 8.9p1 and systemd 250.5.
Both ssh and scp work as expected with '/bin/sh -> bash.bash' on the
target, but with '/bin/sh -> busybox.nosuid' (ash shell) the connections
fail.

The sshd logs on the target show:
Jul 31 15:24:56 hc sshd[17826]: Connection from UNKNOWN port 65535 on
192.168.12.246 port 65535
Jul 31 15:24:56 hc sshd[17826]: debug1: kex_exchange_identification: write:
Broken pipe
Jul 31 15:24:56 hc sshd[17826]: banner exchange: Connection from UNKNOWN
port 65535: Broken pipe

Some extra debug messages that I've added to both systemd and sshd show
that the incoming socket gets closed somewhere between the handover from
the systemd socket service to the systemd sshd service. This results in
sshd being unable to get any peer details.

I can't see anything obvious in either the systemd source or sshd source
that suggest a dependency on bash.

Any ideas gratefully appreciated.

Regards

Mark

--=20

*Mark Corbin *
Senior Software Engineer  |   lunarenergy.com <https://www.lunarenergy.com>
  |  LinkedIn <https://www.linkedin.com/company/lunarenergyinc/>  |
Instagram <https://www.instagram.com/lunarenergyinc/>
[image: Lunar Energy Logo]

--=20
C2:Restricted unless otherwise stated.

--=20








Lunar Energy Limited is a company registered in England and Wales,=C2=A0
authorised and regulated by the Financial Conduct Authority under reference=
=20
number 767876. Company registration number: 05631091. Registered office: 55=
=20
Baker Street, London, England, W1U 7EU

--000000000000db077b061e8d1eef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div><br></div><div>I was wondering whether anybody h=
as any experience of running sshd successfully=C2=A0on a system with=C2=A0a=
 &#39;non-bash&#39; shell?</div><div><br></div><div>We&#39;re using kirksto=
ne 4.0.12 which has openssh 8.9p1 and systemd 250.5.</div><div>Both ssh and=
 scp work as expected with &#39;/bin/sh -&gt; bash.bash&#39; on the target,=
 but with &#39;/bin/sh -&gt; busybox.nosuid&#39; (ash shell) the connection=
s fail.</div><div><br></div><div>The sshd logs on the target show:</div><di=
v>Jul 31 15:24:56 hc sshd[17826]: Connection from UNKNOWN port 65535 on 192=
.168.12.246 port 65535<br>Jul 31 15:24:56 hc sshd[17826]: debug1: kex_excha=
nge_identification: write: Broken pipe<br>Jul 31 15:24:56 hc sshd[17826]: b=
anner exchange: Connection from UNKNOWN port 65535: Broken pipe<br></div><d=
iv><br></div><div>Some extra debug messages that I&#39;ve added to both sys=
temd and sshd show that the incoming socket gets closed somewhere between t=
he handover from the systemd socket service to the systemd sshd service. Th=
is results in sshd being unable to get any peer details.</div><div><br></di=
v><div>I can&#39;t see anything obvious in either the systemd source or ssh=
d source that suggest=C2=A0a dependency on bash.</div><div><br></div><div>A=
ny ideas gratefully appreciated.</div><div><br></div><div>Regards</div><div=
><br></div><div>Mark<br clear=3D"all"><div><br></div><span class=3D"gmail_s=
ignature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div><div><br><span style=3D"color:#264d7=
4;line-height:1.6;font-size:10pt;font-family:&#39;IBM Plex Sans&#39;,sans-s=
erif"><strong>Mark Corbin </strong></span><br><span style=3D"color:#264d74;=
line-height:1.4;font-size:10pt;font-family:&#39;IBM Plex Sans&#39;,sans-ser=
if"> Senior Software Engineer=C2=A0=C2=A0|=C2=A0=C2=A0 <a href=3D"https://w=
ww.lunarenergy.com" target=3D"_blank">lunarenergy.com </a>=C2=A0=C2=A0|=C2=
=A0=C2=A0<a href=3D"https://www.linkedin.com/company/lunarenergyinc/" targe=
t=3D"_blank">LinkedIn</a>=C2=A0=C2=A0|=C2=A0=C2=A0<a href=3D"https://www.in=
stagram.com/lunarenergyinc/" target=3D"_blank">Instagram</a><br></span><img=
 style=3D"padding-top:5px" src=3D"https://storage.googleapis.com/lunarenerg=
y/email-sigs/lunarenergy-logo.png" alt=3D"Lunar Energy Logo" width=3D"100">=
</div></div></div></div></div>

<br>
<font size=3D"1">C2:Restricted unless otherwise stated.</font><br>
<br>






<p><font size=3D"1">Lunar Energy Limited is a company registered in England=
 and Wales,=C2=A0authorised and regulated by the Financial Conduct Authorit=
y under reference number 767876. Company registration number: 05631091. Reg=
istered office: 55 Baker Street, London, England, W1U 7EU</font><br></p>
--000000000000db077b061e8d1eef--

