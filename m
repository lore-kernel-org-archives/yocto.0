Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81984C7618E
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 03:53:59 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.4201.1682049233952115836
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Apr 2023 20:53:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=HADhxNRz;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-504eb1155d3so8522822a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 20 Apr 2023 20:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682049232; x=1684641232;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xI8RaysqIVC9wrbvphUXaGubKDpRryLtlWjWUvoLn0w=;
        b=HADhxNRz1SOFW0pBRba2mfLCHQdY1TA+ZP2jAVItsh3+zs0r4h6eZshBTMgrCR6e3+
         hEKf0deyCwqGd5ALHejUGk9QYNfqqGkAcAUdRb/6MLoqrBgq02WomHhCX9F03pBdQnCw
         my66tNK7ir5oOkVpz4Ilu7l+LLf6vxHB4KRp+5DVsTtk0KuxKvpiOxzlqFADhAvV/g0V
         DpfXaOOwIkWC8aK4zsw+nPvYSsFUGcVri08CKwOKSOs7ogCM73ChdbJfmQSuOkIvrk9R
         ecHwhf1PwM6674jSsXiw87FJBDitMuq/CF9fPWz6/7ksZlDNPw3BxMhx+yABgi/jE7N6
         ph0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682049232; x=1684641232;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xI8RaysqIVC9wrbvphUXaGubKDpRryLtlWjWUvoLn0w=;
        b=JM5P5CqhA/8ukD2GoZOrxqizbezR+vzZsVzupdvkfPHuOdCRMeWmtQDkZkDsyFm8qB
         7Z4X7orGTDzdqELRTdTJDM/lgKwwGEkHKq+L4iukxtbEmHr31IGceaZI2l0VCoR9lfFL
         k3VaPVp07HyobZiRG3idO2dfYDsFo9gqYSOdQN4OYkjuk4FHGgJKZ3OXUydUpXEQSjWZ
         bQwVndWPfxHLS1daJWNv6gVw0TLj/92me8xR621ZwLF1eie+DjYPktVXa1MUw6mADrEc
         Z2tM+3EPUfeOxtfBXuwJe5EauUq30ovjcvVJu0DSzmpo3YEBslEIq70lGOgB+lAdVa63
         wAjQ==
X-Gm-Message-State: AAQBX9c7ItvVOWMkr8Vh1lRMhsHjR/0JJ8LNRZuKokBvA+J1peKzUTQ5
	kQhYhQPhAkjIfN8YDcie9pBRpIyuLQlReiHkteZvLmdT
X-Google-Smtp-Source: AKy350abvDGk/CA5bVWehIBt+yf+iWKj90r3ogsLmVZo0+jzE3ji375ExUUf+PNoEExVj4KaoH4jkighrBI84FueF/A=
X-Received: by 2002:a17:906:1149:b0:94a:8e19:6aba with SMTP id
 i9-20020a170906114900b0094a8e196abamr945960eja.21.1682049231547; Thu, 20 Apr
 2023 20:53:51 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 21 Apr 2023 09:23:40 +0530
Message-ID: <CAPJWBngCF34ht+RdS3cNb1ZPLSzobqJXu_pVF_WO+X54pwC7_A@mail.gmail.com>
Subject: OTA updates for Application Software
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f0f04e05f9d09a3d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 03:53:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59744

--000000000000f0f04e05f9d09a3d
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I wanted to know if it is possible to update your application through OTA
updates.
If yes, then please share some documentation or some steps in achieving it.
If not, then what other alternatives do we have to update the
application in our hardware deployed at some remote location.

Thanks
Hassan

--000000000000f0f04e05f9d09a3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I wanted to know if it is possible to upd=
ate your application through OTA updates.=C2=A0</div><div>If yes, then plea=
se share some documentation or some steps in achieving it.</div><div>If not=
, then what other alternatives do we have to update the application=C2=A0in=
 our hardware deployed at some remote location.</div><div><br></div><div>Th=
anks</div><div>Hassan=C2=A0=C2=A0</div></div>

--000000000000f0f04e05f9d09a3d--

