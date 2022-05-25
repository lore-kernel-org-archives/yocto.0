Return-Path: <prashantsbemail@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9677FC433FE
	for <webhook@archiver.kernel.org>; Wed, 25 May 2022 13:59:06 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web10.7115.1653487138114354653
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 06:58:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QWWwHKsK;
 spf=pass (domain: gmail.com, ip: 209.85.166.48,
 mailfrom: prashantsbemail@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id y12so21424496ior.7
        for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 06:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=FS4oADxsJjr5aYLB39y9Ro+ZEKqoz56IkOlLI5Dc5v8=;
        b=QWWwHKsKA1IiuySwZhlmwXO8lVfOE5VdfFP0kRNARWyvD1hlPge4K3wfvUFxJNPVgz
         lGdDT3PWC0dXvPRLahBOzTryLsrRqVX1Gue3OR3mLPmJn8OC9oWv1DW6ksowzU/SBwHz
         0LMyLoIXvshIHKivqGTdEq1jUX5tq4S87mwsReZC87l0TGlm4jnqjHhUm7YsheA1RM39
         CD01hzT5cqL8ZVOMSMQz7WxX4zrGCY0EHpMv2Ct8AUzUY4dbu07zbtLY8IivWUGNAOFA
         2M7BAm5DeR9y50omEI/F1+do/iFUEkYsMPCYZ5jlseoBzvQoyyCvLqASAMIPPuVVxf0Q
         8ZIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FS4oADxsJjr5aYLB39y9Ro+ZEKqoz56IkOlLI5Dc5v8=;
        b=k3xQml//HMhTtKT7vmVoyQ8nyQAZJT84TO3w9jXQ+p75LW27tmCigSyZLcLiFxR9tg
         +mL2UxM3D5xQXIy/s6YPEe7ZDSykG7nvMUMTCDY0slflzm/dv7/ZCdBniiWlSeIPdZsI
         ejYnjePwknOhAybGpeRtF2x9YKHJa1KTjyel9J5hTCsvExDnoh/rAM22C+WUZtlCUA5X
         Kw+XGBomhr2CRbf939fvTpUOEh9cJfXTUittnMoBRN5z5wsKK+I6EuepG+/9+h16BXWG
         LymJu0YGDhq08GxyF/tzA2eNr8gC0DUWWTfDJMfJC5ZdKbU4W7GvrlI1jmIQjxSFdmc2
         5xgA==
X-Gm-Message-State: AOAM531NgzRjZKjvMD2WoKTanaDubQf3MrDEZorPKCZ8WRGVrr1s51DY
	T1svQf8SyUtjujhu6Z6xAIABFHpwOTDOac57fni/xaJo4MM=
X-Google-Smtp-Source: 
 ABdhPJy2vB6qLKgniND4jJ1buNYhiANXxwh8bHeSUKBhM2ZxqfwwjlFk5hyDWfdcF8FW4miA8sfChmqL29pKgGIOxq8=
X-Received: by 2002:a05:6602:2dcf:b0:664:51a4:54fa with SMTP id
 l15-20020a0566022dcf00b0066451a454famr7154116iow.120.1653487137311; Wed, 25
 May 2022 06:58:57 -0700 (PDT)
MIME-Version: 1.0
From: Prashant Badsheshi <prashantsbemail@gmail.com>
Date: Wed, 25 May 2022 19:28:45 +0530
Message-ID: 
 <CAD5wtF1hhMxysud1dR-c88TzPfYOpM99eu0DBonuoRb_uBy4eg@mail.gmail.com>
Subject: Need help in namespace journal implementation
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000075d21b05dfd67943"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 May 2022 13:59:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57185

--00000000000075d21b05dfd67943
Content-Type: text/plain; charset="UTF-8"

Hi,

I am working on a yocto based project, I am trying to add namespace journal
logging.

Can anyone share the steps to create a namespace journal logging in the
yocto based project.

Also it would be helpful if we have any examples implemented for namespace
journals.



Thanks,

Prashant

--00000000000075d21b05dfd67943
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><p style=3D"margin:0in;font-size:11pt;font-family:calibri=
,sans-serif">Hi,</p><p style=3D"margin:0in;font-size:11pt;font-family:calib=
ri,sans-serif">I am working on a yocto based project, I am trying to add na=
mespace journal logging.</p><p style=3D"margin:0in;font-size:11pt;font-fami=
ly:calibri,sans-serif">Can anyone share the steps to create a namespace jou=
rnal logging in the yocto based project.</p><p style=3D"margin:0in;font-siz=
e:11pt;font-family:calibri,sans-serif">Also it would be helpful if we have =
any examples implemented for namespace journals.</p><p style=3D"margin:0in;=
font-size:11pt;font-family:calibri,sans-serif">=C2=A0</p><p style=3D"margin=
:0in;font-size:11pt;font-family:calibri,sans-serif">Thanks,</p><p style=3D"=
margin:0in;font-size:11pt;font-family:calibri,sans-serif">Prashant</p></div=
>

--00000000000075d21b05dfd67943--

