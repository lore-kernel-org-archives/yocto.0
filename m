Return-Path: <bratiranjan12@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B82C10F1A
	for <webhook@archiver.kernel.org>; Tue,  7 May 2024 04:25:12 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web11.4035.1715055905178950204
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 May 2024 21:25:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=buapeAHH;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: bratiranjan12@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-23d621abfb7so1251325fac.1
        for <yocto@lists.yoctoproject.org>; Mon, 06 May 2024 21:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715055904; x=1715660704; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NVEydtSEn/8dK2EXE06J2DFwyxPCvRA3gF1AdTMxlDw=;
        b=buapeAHH2k+PCw8Acnc8feiGLOntG2ja//qDuhP04fTxJKGcOAGSgP4jSWBCvnaE+M
         wuat2jAy/Rtb+nAGCAeeaWmvQSoaLRrhsfEVn5Q+xGd+vn2eYDRlsOPWCuCmD+9o7wjX
         MYoiFyOjOhAZJm+Dg1jHeoeycW96sFrcRlwbfGcomia8Urfo947sEv71sDps6zM0ghez
         l71Yv+FqrST7O43y7tZTiGmCiFnitdMr371gaqyOCObFEcg81f5xct1zHKsjOD/2+h9s
         3OkqYia4MsTWGRyBV4YI/es3eHg3IVBpA2s3eqVFyD4h4mzPMbUdUGu2nXMp3eTyG814
         Q6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715055904; x=1715660704;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NVEydtSEn/8dK2EXE06J2DFwyxPCvRA3gF1AdTMxlDw=;
        b=WFSXKwkIXZ/ARV2q+jHC6HEx3L9j0aGhD793sw+bCQxZIjU4BYYIx+NITsqovu9bbT
         LfbZQAK6+SYOOL/Hz+2hRpOd2XZpH0j/tD9mx30jS3dPu6a3NeIY6wWEMK5bThK5IL5D
         PHkyQ2VghBEO6Ft5Ktogt2I6PXNJHeJPOvGEa4uRi/dWBcafkzhHmnnv3ShaMRaPkf7q
         cUz41MDiwDokuAa2gjj44NgPoLO2US+ANR3/LGVwYL+cqK/jLmf7TfqfvSg3wiY9k8LN
         EhV75MqiHSfo8wHD8XSpXHE362SOQXurD+c5/6LjCcMvABIVbu3FzWJCRa1LJ29QJuiK
         DA9A==
X-Gm-Message-State: AOJu0YxblozekIamsNn3uaHKVcwEhNhB2vhnwb/LEh0DnjouTHcN1eZv
	7VebzOGmMAzFdtymilfN57Qq/0kbv4SmP9jymChAGkC1e7zGPd1tjMJeO/cu4hdJHyCPGAn8ujM
	ZpchncZcJB2xf5nUf2bBorGsZSLJKoBF5
X-Google-Smtp-Source: AGHT+IHlwiOep1YBXi+oCdaWKyiq3owbxJnh8Hn8MoOUF74DzY5Rw7on3cH/v3Mcy9gL6JvkwfMrWnR9hMcBhPqM4Jo=
X-Received: by 2002:a05:6870:e2d0:b0:22a:6a92:a83c with SMTP id
 586e51a60fabf-24019fb111cmr699308fac.25.1715055904087; Mon, 06 May 2024
 21:25:04 -0700 (PDT)
MIME-Version: 1.0
From: Bratiranjan Acharya <bratiranjan12@gmail.com>
Date: Tue, 7 May 2024 09:54:53 +0530
Message-ID: <CALSmAY7=T9hENBfNFt8nUGT98boRZF5_3KdubfDLipcTkG+-vQ@mail.gmail.com>
Subject: Command line Variable
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000eee8110617d5918c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 04:25:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63039

--000000000000eee8110617d5918c
Content-Type: text/plain; charset="UTF-8"

Hi,
Could we establish a tailored command within Yocto, taking to
"BUILD_ID=123456 bitbake custom-image" mirroring the functionality of
"MACHINE=x86 bitbake custom-image"? Essentially, I'm exploring the
possibility of introducing a custom variable like of 'MACHINE' and
executing it similarly from the command line, as mentioned before.
I have tried various ways like defining in the conf,recipe,.inc file like
"BUILD_ID ?= "none"" and running directly from command line  "BUILD_ID=123456
bitbake custom-image" so it must change the BUILD_ID to 123456 but its not
working like that. Anyone have any suggestions? Thanks & Regards Brati

--000000000000eee8110617d5918c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"arial, sans-serif">Hi,<br><span style=3D"col=
or:rgb(13,13,13)">Could we establish a tailored command within Yocto, takin=
g to &quot;BUILD_ID=3D123456 bitbake custom-image&quot; mirroring the funct=
ionality of &quot;MACHINE=3Dx86 bitbake custom-image&quot;? Essentially, I&=
#39;m exploring the possibility of introducing a custom variable like of &#=
39;MACHINE&#39; and executing it similarly from the command line, as mentio=
ned before.
</span><br>I have tried various ways like defining in the conf,recipe,.inc =
file like &quot;BUILD_ID ?=3D &quot;none&quot;&quot; and running directly f=
rom command line=C2=A0

</font><span style=3D"color:rgb(13,13,13)"><font face=3D"arial, sans-serif"=
 style=3D"">&quot;BUILD_ID=3D123456 bitbake custom-image&quot; so it must c=
hange the BUILD_ID to 123456 but its not working like that. Anyone have any=
 suggestions?

Thanks &amp; Regards
Brati</font></span></div>

--000000000000eee8110617d5918c--

