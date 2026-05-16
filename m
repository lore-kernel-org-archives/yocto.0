Return-Path: <stefan@seefeld.name>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7953ECD4F3C
	for <webhook@archiver.kernel.org>; Sat, 16 May 2026 21:48:04 +0000 (UTC)
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.13713.1778968074136811504
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 May 2026 14:47:54 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gmail.com, ip: 74.125.224.48, mailfrom: stefan.seefeld@gmail.com)
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-65dd9b25829so892014d50.3
        for <yocto@lists.yoctoproject.org>; Sat, 16 May 2026 14:47:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778968073; cv=none;
        d=google.com; s=arc-20240605;
        b=POn+AXT+SybkMi+lVRvzr9hF020Yeo1hgVZY2uOSYhoTrMU0twPdSjDAJsnsqEhpyd
         Uroz6XlBoSvgZjDdXO7w3hzI+LTe2KpFPT70ISlA847+gFqrkZoJI0uDb9dC3EFkXoAJ
         maO/fqTitO15BNPk6MRUzTtDlISmgYm2P7ivuAKS6VcLTjiqV07cLnDubjHsMqJXczNn
         w04vL6OlJv/JV5Q7vRrjoY+1/HnCB8oIlYHj1thx/BJO7RQQ/nRGgwP/KgJN74QOSW0I
         BaH8/oKYlGQchu04sknDfIakDJ4L1Ido4pmq8XDNMQFKn2ergwbbJjiJiWsrkYoZY2ue
         abkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version;
        bh=J/60K9kVUvhubB0+4dwScx/Djnyk5a9YAXejQlmsl3c=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=WVVCJSzHWbAfToVBvRiwjwwW4ttc/Jja5K3BGZyhldK6/Od8hHNsM9lXCsrnxnOFGG
         sHL/MO5seOe0Wg2IlkfVelGoq/eHF4BqyqjG9Dd29R+7NM29dWbIQ3NqsEgWB96VeSwH
         IBOfE3bTOv2Y9FOSqbEVKRDRgYu3uRU0h6A81OC2xypfR7Vf5E6+UA21QjTUULkX+GL0
         zZCWqo2ZXtlgg7+L54xlSJUGHcL0Tz2v/Uax4N8Hd7s0+XiUKw2N+Zn1CGnZ3ad0AXKv
         ZqLqE5D1urcliBBB4aQb8oOwmnQxeN+ZjDVDToGXrRx/S0ouEpzDyXWlnHSSvcLi+iZN
         oTZQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778968073; x=1779572873;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J/60K9kVUvhubB0+4dwScx/Djnyk5a9YAXejQlmsl3c=;
        b=ToJhUUERCvPS8FkM90FrmwlmRbLNdUHeoPXCss69l4fwyBMm8SAmLC67YW+Ht6x5Fn
         8J9P//i9lupqn5skfbKASHJaOIdha843y2K7tCPfJCYy9IzqTEEKjbgAR0ggCszRSFsR
         5CaWECq/ny2GclQ85G/Eh6rnzy+Jn6na2yqBDrlQ5DpzP4jA/pqIWycBQ1QlnOPtTmIx
         cRsU18Pif2ekVn0R/4Z0xNX9jZ9iDj/xXWl5dX+A0WD0RWFbTBAH/+Uuz1pK/hn+ivAv
         xJ7PthSOK8UIKmr/Pj+n+rcl9h+G/5t+3kH2jGL45gVNJGx3Jasndn99Stou1OTPWbjY
         uzZQ==
X-Gm-Message-State: AOJu0YxvlZAhnrkuZ/7v7SLRN1GcxUzIdbz24hhYG8vlb2n4GX9qNxrL
	IKhRYvTC5F+qAgkY4lhZFhcYPpk31N4eI5Wwrn9OIr/5aROkM59OpoRDecgtNSOm1tZb9t9BQSt
	NdaSMZLvFoNnnyr28CN/lzb+ftmUWEwNvvc67pl4=
X-Gm-Gg: Acq92OHIXwcpVy1geQLW5m3W5zojXO8lD2Fm4RTJRCc5fb3UbUWxvFBxN+V1t9ouBmK
	r9EWAjJ5c2rJ9pqKUdsge+Rgkf92zJkXURY+j10WXImviQWgZYrPTwYaeDVGuWBYNaMY9BOXB26
	AXEMVsIv1KvJMWH8n/k2PA1q7DvbfpR8vUYC6sQFL1vUkgTU5yMICugPc7yyITAp08fb6hzWXn6
	3fgvY379PHGvCrGdO4cnzI5RcjbHtstyk9fb6EGMxKsLB5+5mEBQW+u9DzVcfBIwtT7/I/n30AC
	3cq47Srx9F5oVmBGwjgTWDfG5Yp0oRjdnOt+Y9/6MgsBtYGI8xbqIdNT9VmDkq/kRn3RZ3MA/RM
	s1A==
X-Received: by 2002:a05:690e:b45:b0:650:dbb:e79c with SMTP id
 956f58d0204a3-65e227d03c1mr9844124d50.40.1778968072905; Sat, 16 May 2026
 14:47:52 -0700 (PDT)
MIME-Version: 1.0
From: Stefan Seefeld <stefan@seefeld.name>
Date: Sat, 16 May 2026 17:47:42 -0400
X-Gm-Features: AVHnY4IQpBTCzuVJcso_RoTF6RdGiwp-UU0xor_ZBeakz0UUA6XiZTTABPNwCgY
Message-ID: <CAOEGfx1pmVB-gP8t9bUiMiq1a3awZbyec6drze6YoNoPzS2tLg@mail.gmail.com>
Subject: yocto git server issues ?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000d68f80651f6489e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 May 2026 21:48:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66569

--0000000000000d68f80651f6489e
Content-Type: text/plain; charset="UTF-8"

Hello,
For a little more than a day my team has been unable to use the yocto git
server, i.e. trying to pull from the `poky` repo resulted in a connection
failure.
``` $ git fetch -v yocto
Looking up git.yoctoproject.org ... done.
Connecting to git.yoctoproject.org (port 9418) ... fatal: unable to connect
to git.yoctoproject.org:
git.yoctoproject.org[0: 104.18.1.115]: errno=Connection timed out
git.yoctoproject.org[1: 104.18.0.115]: errno=Connection timed out
git.yoctoproject.org[2: 2606:4700::6812:73]: errno=Network is unreachable
git.yoctoproject.org[3: 2606:4700::6812:173]: errno=Network is unreachable
```

I just wanted to check whether this is a known issue with the yocto git
server, or whether we need to check elsewhere.

Thank you,

-- 

      ...ich hab' noch einen Koffer in Berlin...

--0000000000000d68f80651f6489e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>For a little more than a day my team=
 has been unable to use the yocto git server, i.e. trying to pull from the =
`poky` repo resulted in a connection failure.</div><div>```






<span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">$ git fetch -v yocto </span><span style=3D"co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">=C2=A0</span><br><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">Looking up <a hr=
ef=3D"http://git.yoctoproject.org">git.yoctoproject.org</a> ... done.</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Connecting to <a href=3D"http://git.yoctoproject.org">git.yoctoproject.o=
rg</a> (port 9418) ... fatal: unable to connect to <a href=3D"http://git.yo=
ctoproject.org">git.yoctoproject.org</a>:</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)"><a href=3D"http://git.yoctoproject.org">git.yoctoproject.org</a>[0: 104.=
18.1.115]: errno=3DConnection timed out</span><span style=3D"color:rgb(0,0,=
0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)"><a href=3D"http://git.yoctoproject.org">git.yoctoproject.org</a>[1: 104.=
18.0.115]: errno=3DConnection timed out</span><span style=3D"color:rgb(0,0,=
0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)"><a href=3D"http://git.yoctoproject.org">git.yoctoproject.org</a>[2: 2606=
:4700::6812:73]: errno=3DNetwork is unreachable</span><span style=3D"color:=
rgb(0,0,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)"><a href=3D"http://git.yoctoproject.org">git.yoctoproject.org</a>[3: 2606=
:4700::6812:173]: errno=3DNetwork is unreachable</span><br></span>

</div><div>```</div><div><br></div><div>I just wanted to check whether this=
 is a known issue with the yocto git server, or whether we need to check el=
sewhere.</div><div><br></div><div>Thank you,</div><br><span class=3D"gmail_=
signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><img src=3D"https:=
//ci3.googleusercontent.com/mail-sig/AIorK4yh4RzsqlxV6irScDGRVZ8a7NRCh_INtp=
PsAHx2Y8v4Vu3VKsI54RFNs3YRZk_2xTTtMMdSCzdNrf5XRUlmF4BkezmtZv-j5c3A4G0hEA"><=
/div><div><pre>      ...ich hab&#39; noch einen Koffer in Berlin...
</pre></div></div></div></div>

--0000000000000d68f80651f6489e--

