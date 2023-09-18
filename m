Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3276FC46CA1
	for <webhook@archiver.kernel.org>; Mon, 18 Sep 2023 13:36:05 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.51204.1695044162429148826
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Sep 2023 06:36:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZftuKEJ1;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-9ad8d47ef2fso562474866b.1
        for <yocto@lists.yoctoproject.org>; Mon, 18 Sep 2023 06:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695044160; x=1695648960; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UO+FdyzjwXXcxItP+rAUeX1Vd6gnR3u73/+nOY0wcnM=;
        b=ZftuKEJ10CG2bjIZGSVaPtRrB4yl9SnVqu752lC2nqP2CHLTpOrPAcyTVzAEJOMfQW
         UpP967/B+tFUImfZar0aqz3eNOGxBxt6d5OPFy+wQwLUHUq320aPjWVTbxWgAcA2n2s3
         PreoJ/e45K7DyRFJwx2n7NziXJWhYbp9pbqI77Hd7i+f7xgFtUSkNm6FAFWQgN5+8Te9
         0FPmViOVaSvjiL83rHi67Cf4Axqz0MQ4VoSjQh/FOXsNXj+IW5mvo/rzCdzHRFQDsWI/
         uOBS1Dmi1/N2jTHoR042pEqgyt0GzMeOR1Tfd3dprQQYBV1fwtGskv0I8A620seP0rrq
         xpUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695044160; x=1695648960;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UO+FdyzjwXXcxItP+rAUeX1Vd6gnR3u73/+nOY0wcnM=;
        b=qskpPSPwpo4cwrwAynNNKxmjb2Rz5e/VzitfXScy+l26TwuNJgw44i3Z0q4lLvQOUM
         n1a2LwO+Uy/nHtieY3pi99n/cwu7vGpMgcRVSF6m+kWHhg5hqvN2HygMWZZ3FNAr2wwH
         Xzebm2CPWFZG/lPcm+3z9gKy4JVrJNPXdf8TmRfkpNkXERYLiB5BhNsvqTwJeJRXCuB+
         xoyen+GgNLZ0as+mHgQCUMRWWD9naORrwgll+JzhAABb9ToeK7/yhaH9gBr+MeY0tvIB
         +rBGS5w5/cnp8RQwNVjXX6+aS2J7HxpnqMvv3d1LzItcXDvFLMUB0rUwHT/RC3RcLriR
         W4jA==
X-Gm-Message-State: AOJu0YxroQWxoGw3XX+or1AHZU9TTmV/lvrRdU2+DVUlA9Al6oOvpMHC
	YqpkT8h/2h0R6fG+kH7R/5BoD8DX517RQndCeRplNovB
X-Google-Smtp-Source: AGHT+IENrdf2bYf6jWNVjtO3HZiQ+z+XnVoC4sz3w3xMzdRf6SgekWrCrn+BItClL/v4u+FWR9p+YryzXqd5KX0iP8w=
X-Received: by 2002:a17:906:2cf:b0:9ad:8ef8:a7e8 with SMTP id
 15-20020a17090602cf00b009ad8ef8a7e8mr6771572ejk.25.1695044160132; Mon, 18 Sep
 2023 06:36:00 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Mon, 18 Sep 2023 19:05:47 +0530
Message-ID: <CAPJWBnh05sMqBfg08qYoUYC7CqQcqHNj9MQ3buR0g-5kU9-XDA@mail.gmail.com>
Subject: Cross-compilation of driver files
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000b19860605a239bb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Sep 2023 13:36:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61032

--0000000000000b19860605a239bb
Content-Type: text/plain; charset="UTF-8"

Hi guys,
So long back I was trying to load driver files for a battery charger and a
battery fuel gauge as a kernel module. However I face errors that are
actually related to cross-compilation. I  am not sure how to proceed with
this. Can you guys refer to some documentation from both the yocto project
and any other that can help.
Thanks

Regards,
Hassan

--0000000000000b19860605a239bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div>So long back I was=C2=A0trying to load driver=
 files for a battery charger and a battery fuel gauge as a kernel module. H=
owever I face errors that are actually related to cross-compilation. I=C2=
=A0 am not sure how to proceed with this. Can you guys refer to some docume=
ntation from both the yocto project and any other that can help.</div><div>=
Thanks</div><div><br></div><div>Regards,</div><div>Hassan=C2=A0</div></div>

--0000000000000b19860605a239bb--

