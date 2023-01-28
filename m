Return-Path: <mail@oripessach.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36C92C38142
	for <webhook@archiver.kernel.org>; Sat, 28 Jan 2023 22:47:47 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.5948.1674946065882013726
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Jan 2023 14:47:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@oripessach-com.20210112.gappssmtp.com header.s=20210112 header.b=4ea7YO+L;
 spf=none, err=permanent DNS error (domain: oripessach.com, ip: 209.85.214.182, mailfrom: mail@oripessach.com)
Received: by mail-pl1-f182.google.com with SMTP id jl3so8246352plb.8
        for <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 14:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oripessach-com.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C3sG6sQPMoBEDdUHWwHxzI4k0dAZuGSNkQDuUKwCN9c=;
        b=4ea7YO+LqkbBCetwKGlpn5pl5YTN9CDFBrPDQXqBejoYiqmG9Mr+aWNRBWNqpdRv4m
         9WiPMhwrv6SZq2txZXhBrxxdWxf/v2jW3m9JxSlC7hqguMHxJqSDrfnnwBOP1tzpapHY
         PspH6Z5f1yukBZpxsJMPOF8FktdO8TVJVmWm9pBERDIS/S+UGL054jKZk30WSKCF3OGA
         jHG+LcmwP06NBpV/pVija5AvISavbN70TzSTME/c99PzNEDEl3qJT/qA0G8ddmfgtBuA
         FuXF+Z0w/lix0H+zXfecl9vDoi0VhgjwsOQYTAbutMCBqhMiEEwq7sMJbeM4s9fSiGk4
         2adQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C3sG6sQPMoBEDdUHWwHxzI4k0dAZuGSNkQDuUKwCN9c=;
        b=h5QzuCyLivg9bVkD6qAfdCp0F5fYOBYbCp9u2pIGxpmN8/v6oCw6/I9tuwSixHAMrf
         asZBqOYiD+4217uxTXeiMR1ybe88G7fN4zp2Jy0g5AW6brs99hh4wlFKPwXsvwH2sxTy
         i+dDRyjdVj7QOeJhGu7p7Hd3pZEYbCjKqUAxp1nhdxun5JEzY5kYtWmt+ZIJWC8k2VK4
         kGhF8s3cNDhVpHpymN5ClJbjUWb9nanPXaxlm70VJMy7T/jaPq6Y+iDxkQuDU/6NrvSO
         uRrTiQfx0eSm9E9k3204sQVLuGXx/IfGDVGdwOJFHub7FK6SqiaaqBUoUjo66WlXxvBx
         k+xg==
X-Gm-Message-State: AO0yUKVWGFtOTyxa09oGyXQX43OPsCFs5InrbZBPrwdG9sxP6JCgMxc0
	hY+bFWIp1Xh9H26bkSB6TF5ONrXnQp3li6lON7GWSnkfA0Q1ai3n
X-Google-Smtp-Source: AK7set+e/oWQ2bA9JUznhjvahfmgnACN9hSVogzCdJgz/weAtE5YViwP3+D/JPEtQaSl/J2Huxg00+Kx+xDaBElNoIg=
X-Received: by 2002:a17:90a:d194:b0:22c:8634:f64d with SMTP id
 fu20-20020a17090ad19400b0022c8634f64dmr124228pjb.170.1674946064711; Sat, 28
 Jan 2023 14:47:44 -0800 (PST)
MIME-Version: 1.0
From: Ori Pessach <mail@oripessach.com>
Date: Sat, 28 Jan 2023 15:47:18 -0700
Message-ID: <CAJekvNToLOBwvDRmST97En5K6vEb-KB1oe8GOSZHd+qzp3sqcQ@mail.gmail.com>
Subject: Hardware accelerated video decoding and display on AMD hardware?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000034a09905f35ac5d2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 22:47:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59092

--00000000000034a09905f35ac5d2
Content-Type: text/plain; charset="UTF-8"

Hello,

I asked this on the meta-amd mailing list but got no response.

Can anyone tell me what needs to be added to an image if I want to enable
accelerated video decoding and display on commodity (PC) AMD hardware?

The image is currently running Xorg and, at least on Intel hardware, is
capable of accelerated decoding and display using VAAPI and OpenGL. The
user application uses gstreamer for decoding and display.

Thanks,

Ori Pessach

--00000000000034a09905f35ac5d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"box-sizing:border-box;color:rgb(51,51,51);fo=
nt-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:1=
4px">Hello,</div><div style=3D"box-sizing:border-box;color:rgb(51,51,51);fo=
nt-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:1=
4px"><br style=3D"box-sizing:border-box"></div><div style=3D"box-sizing:bor=
der-box;color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetic=
a,Arial,sans-serif;font-size:14px">I asked this on the meta-amd mailing lis=
t but got no response.</div><div style=3D"box-sizing:border-box;color:rgb(5=
1,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;=
font-size:14px"><br></div><div style=3D"box-sizing:border-box;color:rgb(51,=
51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;fo=
nt-size:14px">Can anyone tell me what needs to be added to an image if I wa=
nt to enable accelerated video decoding and display on commodity (PC) AMD h=
ardware?</div><div style=3D"box-sizing:border-box;color:rgb(51,51,51);font-=
family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px=
"><br style=3D"box-sizing:border-box"></div><div style=3D"box-sizing:border=
-box;color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,A=
rial,sans-serif;font-size:14px">The image is currently running Xorg and, at=
 least on Intel hardware, is capable of accelerated decoding and display us=
ing VAAPI and OpenGL. The user application uses gstreamer for decoding and =
display.</div><div style=3D"box-sizing:border-box;color:rgb(51,51,51);font-=
family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px=
"><br style=3D"box-sizing:border-box"></div><div style=3D"box-sizing:border=
-box;color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,A=
rial,sans-serif;font-size:14px">Thanks,</div><div style=3D"box-sizing:borde=
r-box;color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:14px"><br style=3D"box-sizing:border-box"></div>=
<div style=3D"box-sizing:border-box;color:rgb(51,51,51);font-family:&quot;H=
elvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px">Ori Pessach<=
/div></div>

--00000000000034a09905f35ac5d2--

