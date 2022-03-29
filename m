Return-Path: <karthik.poduval@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA82CC433FE
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 23:34:20 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web08.1064.1648596859453918446
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 16:34:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iseTNPuE;
 spf=pass (domain: gmail.com, ip: 209.85.208.181,
 mailfrom: karthik.poduval@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id s13so8434683ljd.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 16:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=ohiSCRXkghlrcWs8yyqjM9QE+u5zLjbeyLThqL6v6dY=;
        b=iseTNPuEVaWKoDohnoUfcy2S7DZ3NxomSqlf5oRduxEdqhFoDZornMBh5sXzf0lpPz
         LohFkYKdj78aMz0pvTsqWwhKPheqM4S1iIZX8PFQmQLRZA1IuW9V2Uav7U5n557L8Xpf
         8Jy2leiNS34vBygnCIJuy74sOgOEIz20Wkot9P1hoLGfQ9x+7Y1pUOalb+xEElJh+PJ8
         /XCWoLXyHEJUsxp1yfX0/k3gU2tkJZSTu4K0Qqe+Bfgzhz97QSQuj3/1eGpXi4y5Mgrj
         2rI8ovBES+12C/vew7Ema7GwBRfTJ2kOrJyta8zTOy8by0r2Y9awO3NI59F1JctThqke
         KF/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ohiSCRXkghlrcWs8yyqjM9QE+u5zLjbeyLThqL6v6dY=;
        b=6KD1DmEd4652EP0YaRm9S7IHOexNvaHAyOsdpvOd4CGwp6xjCYS1RMOkdzAltrrSFC
         +Svb48DnAl2+Qg/8QTiNjTH7vqVtghpQDOwtyl4Ww1dH/xQ5j4fnf+V9GTS56/9dc98a
         SuKs2rFhjNsO0NMCxjIlq6m4M+7lkFBwQQi/+t9Ov+srTfjJ/YCFx5NSnyXhvmhxLZbJ
         xeZHdd7mti/RFDo6FdLdnI0mI7Pr59qM0M5/TCTdeubiwsWCDpel20IfX5PRU+ukPVni
         oB1lI2/hdWlc/sL5rKkVYz407yiWBu6swtPoA7SLh5G7y2kW3DQHp8BxbzK0TDPrGBXD
         Y7fA==
X-Gm-Message-State: AOAM530anu+N3I86+fQR+e7hAaw9cXA5viZCz6PgF2yWmJr7++VSJj5k
	6W4+nH4SucH+1UbywsNcgRZlWbXrypsOeouaf843qHUXC2M=
X-Google-Smtp-Source: 
 ABdhPJzr/mdlNZRPTH+X4VvGmwj0ZUaQ//fCLLvN2cCvzxR+4Uc29s8UCC3WOt0fL9jS/+aHAml1SI+ti44TOPCPr/E=
X-Received: by 2002:a2e:9e95:0:b0:249:76e0:e86 with SMTP id
 f21-20020a2e9e95000000b0024976e00e86mr4631964ljk.232.1648596856882; Tue, 29
 Mar 2022 16:34:16 -0700 (PDT)
MIME-Version: 1.0
From: Karthik Poduval <karthik.poduval@gmail.com>
Date: Tue, 29 Mar 2022 16:34:05 -0700
Message-ID: 
 <CAFP0Ok-2Gb7H8AE5WvK5VBn1U8KGfb5NS-hp7hcueHRu3OwT+Q@mail.gmail.com>
Subject: [yocto 3.1] adding custom testsdk script in own layer
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000084ae105db63deff"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 23:34:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56588

--000000000000084ae105db63deff
Content-Type: text/plain; charset="UTF-8"

Hi All,

We were trying to add a custom sdktest script as shown in example
https://docs.yoctoproject.org/test-manual/intro.html#testsdk.

The script gets invoked when placed in meta/lib/oeqa/sdk/cases/mysdktest.py

However when placed under.
<my layer>/lib/oeqa/sdk/cases/mysdktest.py
It does not get invoked when running
bitbake <my image> -c testsdk

The testimage scripts do work when placed under
<my layer>/lib/oeqa/runtime/cases/
as they are controlled by the TEST_SUITES variable.

Kindly advise on how to proceed.

-- 
Regards,
Karthik Poduval

--000000000000084ae105db63deff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<br><br>We were trying to add a custom sdktest scri=
pt as shown in example <a href=3D"https://docs.yoctoproject.org/test-manual=
/intro.html#testsdk">https://docs.yoctoproject.org/test-manual/intro.html#t=
estsdk</a>.<br><br>The script gets invoked when placed in meta/lib/oeqa/sdk=
/cases/mysdktest.py<br><br>However when placed under.<br>&lt;my layer&gt;/l=
ib/oeqa/sdk/cases/mysdktest.py<br>It does not get invoked when running=C2=
=A0<div>bitbake &lt;my image&gt; -c testsdk<br><div><br></div><div>The test=
image scripts do work when placed under=C2=A0<div>&lt;my layer&gt;/lib/oeqa=
/runtime/cases/=C2=A0</div><div>as they are controlled by the TEST_SUITES v=
ariable.<div><br></div><div>Kindly advise on how to=C2=A0proceed.<br><br>--=
 <br>Regards,<br>Karthik Poduval</div></div></div></div><div><br></div></di=
v>

--000000000000084ae105db63deff--

