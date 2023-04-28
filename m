Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34F99C77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 11:55:58 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.17325.1682682949139411932
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 04:55:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@theyoctojester-info.20221208.gappssmtp.com header.s=20221208 header.b=W6mc5UrF;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.47, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-94f1a6e66c9so1823137466b.2
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 04:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20221208.gappssmtp.com; s=20221208; t=1682682947; x=1685274947;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ze+49YydooJwBAz1t1fWejggOEe9XUd/Q8Kz0ToFC2c=;
        b=W6mc5UrFLj/zzDdnmeAm/ku1qGVwLTKZfAepOZLDGeCnQsrSbcElgsw7hy9EWexfXv
         Dr0qPb6nBLLfFikY8PDkb176kTF9+ySzcuzdccBLbDWKHOJxhCMnvE+RluiONbt/sMDp
         pLeEFWihwgqJu7KPF2PSPdaCHinKOdPYN6yti38PJSARarSzcfQa9kEGvNOhWFD7MRdt
         u1L9nHdWr2nmYCXQeThggPtgGxUybtjsql5lHSocCpHoAtZ+sgN3dNmIr/tpSOQBX5pB
         4CB1/VhGk/sZeVFQWfe7uuZN62Md7FsJrKycYjmHUBJASDJRZwqcce/rGgfNjS+qwoJQ
         PIWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682682947; x=1685274947;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ze+49YydooJwBAz1t1fWejggOEe9XUd/Q8Kz0ToFC2c=;
        b=j8eF8Xj2deXHYUEVrR4Usbek6JeScejWh2HKEEWnw4T2fDcz5Ma9LIHz892chnvomb
         HLUZ305IP+AmgIQo5BzFeSaPpD2XwukuwdRE+CThokzDbr1ctP5c24OPyG9goPX2y9+f
         PlxvX/d+u7Ajae0cLqCWHfKX0PVNbf5NC0ZR58uO0jm3eB0znFczZ8YvXfG0gKsp0l4C
         5TPnci7a0r5n7PWJbBGKqhjSPylcwuxGsVU9ukoA+gIc/dEkquMcQm43ddHgkFfUu5JM
         hKzd41IZ46M7DWpAkL/lhxZV2kx0ULUKnAT8zeY92fxGaULKEPFEVE+Kn6IBVsVTUJ1c
         RKXw==
X-Gm-Message-State: AC+VfDxU0RiwEB8pE2o/YI4gkX9LbqFSg2vIs8beBtM5jNkceVgYz68v
	Gxue0KK/VaKt5Vo/pQsadcXlpgSYZ8VLlaaZx6G+iF0Y0HAxSUuxG8Gksw==
X-Google-Smtp-Source: ACHHUZ4b/YvmrKcxLYv5GDOa6wpeWCTRd8ksY+F+zNQiUWor8D9M1d7qLAS38jr22sZvaQ8lfCv+o6KdsL/3oabHCsE=
X-Received: by 2002:a17:907:2cc3:b0:94f:bdda:b29 with SMTP id
 hg3-20020a1709072cc300b0094fbdda0b29mr5412353ejc.77.1682682947287; Fri, 28
 Apr 2023 04:55:47 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 28 Apr 2023 13:55:21 +0200
Message-ID: <CAEt6NwpS78sCZjL8Taki-CqBQRHFJeVLzdMQi-pUM5gnhsb94w@mail.gmail.com>
Subject: CFP for Yocto Dev Day - colocated with EOSS 2023, Prague
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000057cee105fa64272a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 11:55:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59796

--00000000000057cee105fa64272a
Content-Type: text/plain; charset="UTF-8"

Hi all!

We are happy to have an in-person Dev Day again, colocated with the EOSS in
Prague. It will take place on Monday June 26th, and it... (wait for it)...
needs YOU!

Specifically, it needs your ideas, your experience, your stories. Shared
them! The CFP is open now, use those cold and rainy days in spring to
submit at https://summit.yoctoproject.org/devday-at-eoss-2023/cfp

Or, even register along with EOSS:
https://events.linuxfoundation.org/embedded-open-source-summit/features/co-located-events/#yocto-project-dev-day

See you there!

Josef,
on behalf of the Dev Day committee

--00000000000057cee105fa64272a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all!<div><br></div><div>We are happy to have an in-pers=
on Dev Day again, colocated with the EOSS in Prague. It will take place on =
Monday June 26th, and it... (wait for it)... needs YOU!</div><div><br></div=
><div>Specifically, it needs your ideas, your experience, your stories. Sha=
red them! The CFP is open now, use those cold and rainy days in spring to s=
ubmit at=C2=A0<a href=3D"https://summit.yoctoproject.org/devday-at-eoss-202=
3/cfp">https://summit.yoctoproject.org/devday-at-eoss-2023/cfp</a></div><di=
v><br></div><div>Or, even register along with EOSS:=C2=A0<a href=3D"https:/=
/events.linuxfoundation.org/embedded-open-source-summit/features/co-located=
-events/#yocto-project-dev-day">https://events.linuxfoundation.org/embedded=
-open-source-summit/features/co-located-events/#yocto-project-dev-day</a></=
div><div><br></div><div>See you there!</div><div><br></div><div>Josef,</div=
><div>on behalf of the Dev Day committee</div></div>

--00000000000057cee105fa64272a--

