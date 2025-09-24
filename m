Return-Path: <katutxakurra@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58685CAC5A5
	for <webhook@archiver.kernel.org>; Wed, 24 Sep 2025 09:12:46 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.8365.1758705157937214896
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Sep 2025 02:12:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fa5MqLEP;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: katutxakurra@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2570bf605b1so81160635ad.2
        for <yocto@lists.yoctoproject.org>; Wed, 24 Sep 2025 02:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758705157; x=1759309957; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aeaWZs2LPjlldHezJigQ1NeV6QkNAwNv46G4NQLSw5w=;
        b=fa5MqLEPQUcZzoBeCBaVgKjpPVOvtCgWZCSv8SKDvtodVqAN7+gVBQP5CBa5K5sKuw
         GC81IQjMTQnw8kOgrF8HYlrFjAVgsm8Ul+gXjcc0zPPIWzQvhJPfzbkL/ZihuKBb366F
         EVp1cGY/IIOFppls8GnWTkQRBEQ7cTZ3i08EGId0abyFlcYbWOanIudcfR97OodMdKZC
         hZNrhLoR9MyI7XwoBpL9GphtWUbKdAL/UnnCDGFRx4A7/x49U+N9kKZJAw5M7UJYxMkU
         hzEtBozb1y9l7EyuTUP92/4wFaTNGbMwMyJdwcZjQb28gz5bHGISbXyAVvyN/vxYBAzF
         1VqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758705157; x=1759309957;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aeaWZs2LPjlldHezJigQ1NeV6QkNAwNv46G4NQLSw5w=;
        b=P9UhtumRf2RjkimlwSNZZeJqNfNlweMzUA3TWXsxrbTRBCrEYk2iBYxY2oi1l0QwE9
         mriV2DbmXGrgP2AK44KFj2WM0oiY7exZ0ozJp9M2wXJgW0K8CgoQmD9RyllDyh8P73Cm
         ZGc6S9bXRIRavbYM1VDmO57PXGojQOuh8iz1l6DSpU18+QQCxTnfiS4zqDtB8pFBoSLo
         kRuJKB36R3Gs+grF/qCsfjW7M2cRguQ/6QXc2YLlsK2V+ILMz6yFPVQP8EGUuAfhBzJh
         JtoDnW+MfrR7qMbgz3H1k8flvcdMWGAY++N7LMhOM5ZNsbLYwOuSFFlSEz1s8d8rGlOs
         U8vQ==
X-Gm-Message-State: AOJu0Yw8XUFQBiUobwzBm0uyPhCbflXfTwF40nc+5k1WnmHXDj5x6qvJ
	O0Rd2LD0afPPCD0TwqDg1s2E1+fac74JsstjHf5lydf1qen0Ny5CdDedh9or4hzKM979qQH/GYd
	LLASx959L5g6Jh8wPq1XV78+91p2O2GBJrTNS
X-Gm-Gg: ASbGnctFKlyqR/AtW4EPjIf/Xg9G4jnZmil35qp9mzXlZDRoBISJ8C/4KiMRbNMX95d
	jnsojdQI7LwLlIVFXanBzTHeng09vscKOFQazAoqnXwT4Ewx0yKo7DMG2QakE6Er8vi28ggtqQh
	lpo39aoBbXEhvPGuVENl6o9+8vk8sBTKNru2Y/20gt17MVBCvyjgVZIQBTwsQMjvgJjVzACmQTj
	YFW
X-Google-Smtp-Source: AGHT+IGFqA3GyNmG+0K7JLaPF1Qpc87t5kf1VzySpmTZuALu7ZNAOshogZdzuyjczQ2Gavo54HwdiFm5w5DWRKEUsdA=
X-Received: by 2002:a17:902:e5d0:b0:269:a23e:9fd7 with SMTP id
 d9443c01a7336-27cc2aab12amr73311915ad.26.1758705157084; Wed, 24 Sep 2025
 02:12:37 -0700 (PDT)
MIME-Version: 1.0
From: Katu Txakur <katutxakurra@gmail.com>
Date: Wed, 24 Sep 2025 11:12:29 +0200
X-Gm-Features: AS18NWAuYcr-zw-p7JfIn3O0xQrDHwDxiuGj_TY8lUN-ZZvGOzg0FDtyUUhoDWU
Message-ID: <CAM1ZcoXBYER5j5kTayzcYLzdObxyZjriqNsY5OAZm0j5B-kUNg@mail.gmail.com>
Subject: Bitbake fetch private Github repository release archive
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000271a79063f887489"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Sep 2025 09:12:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65870

--000000000000271a79063f887489
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm trying to fetch a release from a private repository using a Personal
Access Token (PAT).
I know the permissions and repository are correct because I can use this
bash script and it works:
https://gist.github.com/maxim/6e15aa45ba010ab030c4?permalink_comment_id=2990095#gistcomment-2990095
I can clone the repository with ssh keys but I need to use http for the
release zip file.
I have tried
https://docs.yoctoproject.org/ref-manual/classes.html#github-releases but I
don't know where to specify the token.

Thank you,
Katu

--000000000000271a79063f887489
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I&#39;m trying to fetch a release from a private r=
epository using a Personal Access Token (PAT).</div><div>I know the permiss=
ions and repository are correct because I can use this bash script and it w=
orks:=C2=A0<a href=3D"https://gist.github.com/maxim/6e15aa45ba010ab030c4?pe=
rmalink_comment_id=3D2990095#gistcomment-2990095">https://gist.github.com/m=
axim/6e15aa45ba010ab030c4?permalink_comment_id=3D2990095#gistcomment-299009=
5</a></div><div>I can clone the repository with ssh keys but I need to use =
http for the release zip file.</div><div>I have tried=C2=A0<a target=3D"_bl=
ank" href=3D"https://docs.yoctoproject.org/ref-manual/classes.html#github-r=
eleases" rel=3D"noopener noreferrer" class=3D"gmail-u-link" style=3D"color:=
rgb(94,201,166);font-family:&quot;Source Sans Pro&quot;,Helvetica,sans-seri=
f;font-size:15.12px">https://docs.yoctoproject.org/ref-manual/classes.html#=
github-releases</a>=C2=A0but I don&#39;t know where to specify the token.</=
div><div><br></div><div>Thank you,</div><div>Katu</div><a class=3D"gmail-fa=
 gmail-fa-share-square gmail-u-link gmail-kiwi-messagelist-message-linkhand=
le" style=3D"margin-left:4px;font-variant-numeric:normal;font-variant-east-=
asian:normal;font-variant-alternates:normal;font-size-adjust:none;font-kern=
ing:auto;font-feature-settings:normal;font-stretch:normal;font-size:15.12px=
;line-height:1;font-family:FontAwesome;display:inline-block;color:rgb(66,18=
5,146)"></a><span style=3D"color:rgb(34,35,31);font-family:&quot;Source San=
s Pro&quot;,Helvetica,sans-serif;font-size:15.12px"></span></div>

--000000000000271a79063f887489--

