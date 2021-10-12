Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26122C433F5
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 16:27:44 +0000 (UTC)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com
 [209.85.222.44])
 by mx.groups.io with SMTP id smtpd.web09.16490.1634056063500243008
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 09:27:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: gmail.com, ip: 209.85.222.44, mailfrom: fede.evol@gmail.com)
Received: by mail-ua1-f44.google.com with SMTP id h4so19610278uaw.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 09:27:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ykF4gqwT/7P4cQPnZQ1qLQu3ODgf13QS/YI8Lwz9pr4=;
        b=hG2jJwlCvQFtoaoAJStcXyKyhZy4JxSFTekIjDF3TcHycm1kgbkCJyFt3J95a7aBt9
         z8MsYKiLWpisrP1VUyKM0jg86gF5kRNbQj7JX76H1juQyjTLat+Bu8W9NkcOREglfiIx
         EMKm2Yfl0zF8vM2HLoD4LLIvHpV/LZFoJ6zt7jWPeNeCPZYy0vXl6FHy/IzHR05y14Ns
         S0B+hU48VMsxajxVrWsaowxqiJQjDDCbTgyOaWSD84J9B2fInDcUCndeWHW5XdflkF80
         EZcheQqQuY/AQlRcdFhz5HFamqNIx2/DVQaB92GTP8A5pyijMQo9icP80ffVvFxssSh1
         GqFw==
X-Gm-Message-State: AOAM532YUGY1tSyvvhdBHSgOOMKBYEwWjimHLj90U/JxEBLlum8Dgvzs
	vH8WdeJ/NfCdhpyz05Ih4sRKAjJTB2yN4unuG1tBuqURuTCG7A==
X-Google-Smtp-Source: 
 ABdhPJwS9HTPzq9kp3D9FMZpc9TQ1nlLMg0/LMtbSltivMxDePio1YdtuY1nOBNnlwYYOPQnZ3CFoblawZBdgvh8oYs=
X-Received: by 2002:a67:2e16:: with SMTP id u22mr31833140vsu.61.1634056062392;
 Tue, 12 Oct 2021 09:27:42 -0700 (PDT)
MIME-Version: 1.0
From: Federico Pellegrin <fede@evolware.org>
Date: Tue, 12 Oct 2021 18:27:30 +0200
Message-ID: 
 <CAM6O0ZhZKspmeE02cgh1coOvjMUmhdUTMR8en3UbpJm3SL5fhA@mail.gmail.com>
Subject: util-linux and --enable-raw with recent kernels
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000024770205ce2a53cf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 16:27:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55041

--00000000000024770205ce2a53cf
Content-Type: text/plain; charset="UTF-8"

Hello,
Running on a quite recent kernel (5.14.10 from Fedora 34) I've came across
a problem when building util-linux (2.35.2) native, namely in the configure
phase:

configure: error: raw selected, but required raw.h header file not available

After a bit or research I believe it is due to:
https://www.mail-archive.com/debian-bugs-dist@lists.debian.org/msg1820154.html

Which is related to the change in the recent kernels here:
https://github.com/torvalds/linux/commit/603e4922f1c81fc2ed3a87b4f91a8d3aafc7e093#diff-10d697dff14540ee1eb6539dcc53b2b88844b6187c1995c0698ba0936754304a
where the raw.h file was indeed removed.

As per first link it may not be obvious to fix, and don't see an upstream
fix for it, but from the Yocto perspective my current workaround is
basically just to remove "--enable-raw" from the EXTRA_OECONF to disable
the raw feature.

While the whole image seemed to build fine with this, I'm not very sure if
that configuration option had a precise use (which maybe it's being
skipping in my specific build) or not, so I wanted to ask the experts if
there is any opinion on this and/or should I do a merge request that
removes it to handle this problem, at least until there is a better
solution upstream in util-linux?

Many thanks,
Federico

--00000000000024770205ce2a53cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello,</div><div>Running on a quite re=
cent kernel (5.14.10 from Fedora 34) I&#39;ve came across a problem when bu=
ilding util-linux (2.35.2) native, namely in the configure phase:</div><div=
><br></div><div>configure: error: raw selected, but required raw.h header f=
ile not available</div><div><br></div><div>After a bit or research I believ=
e it is due to:</div><div><a href=3D"https://www.mail-archive.com/debian-bu=
gs-dist@lists.debian.org/msg1820154.html">https://www.mail-archive.com/debi=
an-bugs-dist@lists.debian.org/msg1820154.html</a></div><div><br></div><div>=
Which is related to the change in the recent kernels here:</div><div><a hre=
f=3D"https://github.com/torvalds/linux/commit/603e4922f1c81fc2ed3a87b4f91a8=
d3aafc7e093#diff-10d697dff14540ee1eb6539dcc53b2b88844b6187c1995c0698ba09367=
54304a">https://github.com/torvalds/linux/commit/603e4922f1c81fc2ed3a87b4f9=
1a8d3aafc7e093#diff-10d697dff14540ee1eb6539dcc53b2b88844b6187c1995c0698ba09=
36754304a</a></div><div>where the raw.h file was indeed removed.<br></div><=
div><br></div><div>As per first link it may not be obvious to fix, and don&=
#39;t see an upstream fix for it, but from the Yocto perspective my current=
 workaround is basically just to remove &quot;--enable-raw&quot; from the E=
XTRA_OECONF to disable the raw feature.</div><div><br></div><div>While the =
whole image seemed to build fine with this, I&#39;m not very sure if that c=
onfiguration option had a precise use (which maybe it&#39;s being skipping =
in my specific build) or not, so I wanted to ask the experts if there is an=
y opinion on this and/or should I do a merge request that removes it to han=
dle this problem, at least until there is a better solution upstream in uti=
l-linux?</div><div><br></div><div>Many thanks,</div><div>Federico<br></div>=
</div>

--00000000000024770205ce2a53cf--

