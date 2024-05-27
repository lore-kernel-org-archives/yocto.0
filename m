Return-Path: <bratiranjan12@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6895AC25B79
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 06:48:31 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.21906.1716792510308058004
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 May 2024 23:48:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GSYsedRM;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: bratiranjan12@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3cabac56b38so3136090b6e.3
        for <yocto@lists.yoctoproject.org>; Sun, 26 May 2024 23:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716792509; x=1717397309; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qHn3V2mtaE9Ud/bBkNRg6CyvvigmpFGpEJQaDCjFm1M=;
        b=GSYsedRMEf7HaSXrEFL4DMAsCLF0g8wqqS/oNT3IckBgUpTpeTmMWgRZ5+xjG9V8GC
         OWs5pZ+GXfKHwiVC4rDrGv+iSOHnx0v0J4983tVKAULRu3xYFgR9Sa6uwuCby99E4Pi9
         sJbgH9sHfaDgeuuxnUIxw40+0LWR/VPMNmDVqagJe5lgKRdJemZ4PE5MTwg4BHAfY6Vv
         iC0ynVSX2DF66TCyL3U8WVGwo0YNOUp/m8K0DL6dGMqyzD+Lgal+URHLzRmSCwGkmu9F
         Sdmhae9ttDvwtISvDO1G9p9CrK6gIrIjCskYhCf7r7GZmb9GNre3Euwm4iLM9JxxlxsE
         WKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716792509; x=1717397309;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qHn3V2mtaE9Ud/bBkNRg6CyvvigmpFGpEJQaDCjFm1M=;
        b=xTVjKelJ89QyoDaIV/K+EDfgL7WGV8fYzBjpW/G9CVsCDpRDU7RHMJVNQORijKH4sB
         /881hqHkN1rYACS2JuVT7TrgwnJ9nc2sz70Dl/rky/zxhR2RqibOSbbQcoYA72P7s7we
         DbzXlsRn3VQ1cPxUzZGqnqqt5Yr9m/t26e6jbVYQAsHNmrHBEBG7VrlMTtlm3BoZkRE3
         00pe7pUujOUlGBBIgyjRln0bzkY3OgrOO4kF/wh4/ETzyG1BZmdgjRR94YNwnGzB8hxA
         jZ9NHF5EVylsaSJQbSsf4TyzgHk9+P4sb77sPAxY+kt1Mpq1SRX3LLcdPt6ZAWORP0nA
         j2Gw==
X-Gm-Message-State: AOJu0YxURDOdMs1qipoY1vIVEtIa6doTmQL4bhHU6SL/5/A6qyPTi9kZ
	wYD6x6Jfq81OBdnAM9eoRA6GFzqafv5Jzm01EeBUJqWCrC1+USicVIf6jIx+iUHbaCSNKKmnLQS
	YHxQYhGSuBlrekVI8IlNB+pJtt7efVaIq
X-Google-Smtp-Source: AGHT+IH1sfhXbrOD7fOlPSFTtjGw0oXfS/bUbxK15Ug09Icas6BEdHcefBy898CS0Dgd8VtlNeAcW/5BenKmixiXLMY=
X-Received: by 2002:a05:6808:16a3:b0:3c9:7057:e8c8 with SMTP id
 5614622812f47-3d1a7647016mr10413201b6e.46.1716792509065; Sun, 26 May 2024
 23:48:29 -0700 (PDT)
MIME-Version: 1.0
From: Bratiranjan Acharya <bratiranjan12@gmail.com>
Date: Mon, 27 May 2024 12:18:17 +0530
Message-ID: <CALSmAY50gqYRw5Qqk0HVKsaj6JVLF7GKwrMaaTaBzMuGB+HQgA@mail.gmail.com>
Subject: Migration Issue
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a7f4f6061969e7bb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 06:48:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63199

--000000000000a7f4f6061969e7bb
Content-Type: text/plain; charset="UTF-8"

Hi, i am migrating yocto from kisrkstone to scarthgap with keeping my
custom layers as it is, i have checked-out to the scarthgap branch both in
poky and meta-openembedded and my kernel version is 6.1. Just a small
enquiry, will this kernel smoothly works on the scarthgap? Or else we have
to upgrade it to the preferred version in the scarthgap release which is
6.6. Because after migrating i am getting errors that linux-yocto* are not
compatible with your machine configuration so i am a bit confused. Any help
is good.

Thanks & Regards
Brati

--000000000000a7f4f6061969e7bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, i am migrating yocto from kisrkstone to scarthgap=C2=
=A0with keeping my custom layers as it is, i have checked-out to the scarth=
gap=C2=A0branch both in poky and meta-openembedded and my kernel version is=
 6.1. Just a small enquiry, will this kernel smoothly works on the scarthga=
p? Or else we have to upgrade it to the preferred version in the scarthgap =
release which is 6.6. Because after migrating i am getting errors that linu=
x-yocto* are not compatible with your machine configuration so i am a bit c=
onfused. Any help is good.<br><br>Thanks &amp; Regards<br>Brati</div>

--000000000000a7f4f6061969e7bb--

