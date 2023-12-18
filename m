Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910FBC35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 07:37:43 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web11.39627.1702885054471373441
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Dec 2023 23:37:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PPqld0rs;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a235500d0e1so73383366b.2
        for <yocto@lists.yoctoproject.org>; Sun, 17 Dec 2023 23:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702885053; x=1703489853; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iqBH5eDAytv5B+S/vgPhiqqEAspUHpjZmW2q6JIFAmI=;
        b=PPqld0rsuD+0DUXzOmR310wuamlv5uOaDq8j8BzaXcRJuygg75IPeoxI9LNUU0E3BP
         0ighY3T/17pwmvwB2Xwlic67etDEG9yr9WIDjBKzc7uNNXeEOkGtkmMAuDA4TAkeLyam
         tuzg1FgP789+miue7T4XDQSYiz6Q8D2Pcj/e8Yl6VkgUt2W8Sm8Ba0pP0+kqr/bsczJc
         fekzNzNu8rdwu+M+4iqjrdYRfkTTwZqmMuGlwdavQOEZtg35xdVZYq0OwPXhvnAukmO0
         QC6YoNCe8WulSAh2RDTfCTwoonOulcxxjBiSsOIztmMU6FOslwKPeJmvFxolsQe30shY
         TWKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702885053; x=1703489853;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iqBH5eDAytv5B+S/vgPhiqqEAspUHpjZmW2q6JIFAmI=;
        b=kXqz2HajvmDyclLU0DvXX1gmwpIdYEMXiAyzKEfVmTEKqiNYin/jXlDymswToAzwqS
         pv9f7C/nEITY6bX4aQEpm8oUEfwXI4ZriV0zdHp6UY/cHemFS9Uc1IST9tDm5I6yY+aX
         R5LNOIXy5SQ2KaNwsUjQQ0BzouNjazHSwLLIt0lndpLO+mqY0Np5QOCEJllxVR63Gii+
         Z4BcQnzwQv/YMTHD7MX0rnDBQF3kes6/LyLYi80z9E7dFCilj6UuCiRPGTL+gy0fqpCU
         C8Voyq9AtrdOZAAzhkVH+R+B09hElkvP96BgUZwJ11NoMTy6TrO3uu/t3uxowpzKA07P
         T7bg==
X-Gm-Message-State: AOJu0YzzGLlQhKWMR/Jkawx1L8GBoT8wvTIqL6TSAzzMC+lp3CvESApf
	RJXoSk+t0JoW7DnC/dv3QajD3TT4Md8W5RO2IfZPd9e4QWQ=
X-Google-Smtp-Source: AGHT+IFFTKFr8EwRr0XZBYyx79AJCrZP8ZdrKNXZWz52WRnSqhoRXfB6bCCwkatmICbA6r18wm/BP0T9ijHaFRlbcyM=
X-Received: by 2002:a17:906:3f08:b0:9fc:346c:a5fa with SMTP id
 c8-20020a1709063f0800b009fc346ca5famr6226419ejj.46.1702885052507; Sun, 17 Dec
 2023 23:37:32 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Mon, 18 Dec 2023 13:07:21 +0530
Message-ID: <CAPJWBnjG2cu7ayEEjEy6QweYL2DEY92fTYvnb+Jg1iEueOzDxQ@mail.gmail.com>
Subject: Update the yocto dunfell to latest version
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a5ea1e060cc3d2c3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 07:37:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61952

--000000000000a5ea1e060cc3d2c3
Content-Type: text/plain; charset="UTF-8"

Hi guys,
Can you suggest some resources for me to update to the latest yocto dunfell
version. Currently I am using dunfell 3.1.11 and want to update to 3.1.29.
What could be the consequences?
Also If I manually update the nodejs folder to the latest one will it fetch
the latest nodejs files(example)?

Regards,
Hassan

--000000000000a5ea1e060cc3d2c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0guys,<br><div>Can you suggest=C2=A0some resources =
for me to update to the latest yocto dunfell version. Currently I am using =
dunfell 3.1.11 and want to update to 3.1.29.</div><div>What could be the co=
nsequences?</div><div>Also If I manually update the nodejs=C2=A0folder to t=
he latest one will it fetch the latest nodejs files(example)?</div><div><br=
></div><div>Regards,</div><div>Hassan</div></div>

--000000000000a5ea1e060cc3d2c3--

