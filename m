Return-Path: <cebel.efecan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0489C7EE2D
	for <webhook@archiver.kernel.org>; Thu, 29 Aug 2024 06:50:02 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web10.6700.1724914198725369818
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Aug 2024 23:49:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UbgOmjFA;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: cebel.efecan@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e116ec43a4aso383072276.0
        for <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 23:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724914198; x=1725518998; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3XAGRtQYSuye3jzywcBVRnu/5OJxaqP78XQYPqv4ThQ=;
        b=UbgOmjFAXhdfCAa/aSLrqYlnaQ1o7mRO4OYelx6REGsRRrQ8+BE01rIlZEt95M1BpM
         7xHa7e0kpha+zHXjV5V51U9aNckWwDvSE/E2W4MBlmyj95RJXkTZPtkXQyHE+91nK2Wu
         GjzyEu5UPIJEWStYLGLYY0/kVjrN5/nTF7QaOWDPJVRi/Rreq/mam2Fb1lQxJwfGY6ZY
         0aGrEuwFhWUXNwHbqM4M/J8vr+CpL5poq/Jxlsg/0wbwvpIkjIDLPTPDBUU7pfldhk9g
         guk0vSg6YyW5cIOHvImM1zEXT/yaSTlu1piL0wBlrzzu4I01AsAEpBJ9Ek375zl2je9Y
         oGTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724914198; x=1725518998;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3XAGRtQYSuye3jzywcBVRnu/5OJxaqP78XQYPqv4ThQ=;
        b=G0NylIxSlDTwitXqmajFZWQVX2FOiJaAA7izTP4+9yNroflt+E+XU1TE0uV0yc6uLJ
         IaY50xdZ8HRgKNEYCA0ikO/2sGPGYE/OLjuKyyxCAJ3TfJGHHrGph0/IHTJbLJRozV/Z
         6pwMy8RQv6UH6VgQSlPjtzHCZ8c4AfuKEQExHc5GqrXPAQ8YjNRk5QgopmDQ3Uf1EoBl
         Jpz99o0EwNxZ+FsNSL5Z0HVPvZxi0b19axU27zsBb2I0H6DrD6SWfwfVaqnG2T7/fk/Z
         xhnYjdZkuVqae8Od/rbLSafwEhYV9sCbFXPx+P7+MKIVvgVT/WScjUZWXwX0mi1mqPGy
         cUjg==
X-Gm-Message-State: AOJu0YzfcY+ELUxnoDTNNKidNrqsXz2AgvrGWxdSvkYkZsRKoAl1JMVV
	iKbK/mCjCv2jeY7kNKh/YdntWhjjruHtKOmwprv9xEYeeZ1evH7gYKdoaxGBlsJ3rMAwEbfzwb9
	NVTuYR+4jsQx9/zY4ZjUN6NNP41Q6aomlOVvuEQ==
X-Google-Smtp-Source: AGHT+IGh3ChoQVstxBE8cutUA7kwlzxia1B9bROxzprQGfhyP9dQlZL7E9rjMOgygmvpv99g/Q7i9/WnpZ3g1J5RKf8=
X-Received: by 2002:a05:6902:c0b:b0:e08:6e2c:69ee with SMTP id
 3f1490d57ef6-e1a5ab6abdemr1865575276.10.1724914197809; Wed, 28 Aug 2024
 23:49:57 -0700 (PDT)
MIME-Version: 1.0
From: Efecan Cebel <cebel.efecan@gmail.com>
Date: Thu, 29 Aug 2024 09:49:47 +0300
Message-ID: <CAHBTYaRYHpXUuHMtk6pmN=T3GonXE9ai1RWJ4dq=Xnu4E1Vo4Q@mail.gmail.com>
Subject: Parallel task limit issue on 80 core (2 CPU) system
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000752dd0620cce203"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 06:50:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63761

--0000000000000752dd0620cce203
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a system with 2 CPU 80 Core 256 GB RAM.

I am starting the Yocto build process with this system.

I set the necessary variables in the local.conf file. The variables I set
are as follows.

BB_NUMBER_THREADS = "80"
BB_NUMBER_PARSE_THREADS = "80"
PARALLEL_MAKE = "-j 80"
PARALLEL_MAKEINST = "-j 80"

Despite this configuration, the number of compiled tasks cannot exceed 52.
I wonder what is the reason for this?

Could you please support me on this issue?

Best regards.
Efecan

--0000000000000752dd0620cce203
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I have a system with 2 CPU 80 Co=
re 256 GB RAM.</div><div><br>I am starting the Yocto build process with thi=
s system.</div><div><br>I set the necessary variables in the local.conf fil=
e. The variables I set are as follows.</div><div><br>BB_NUMBER_THREADS =3D =
&quot;80&quot;</div><div>BB_NUMBER_PARSE_THREADS =3D &quot;80&quot;</div><d=
iv>PARALLEL_MAKE =3D &quot;-j 80&quot;</div><div>PARALLEL_MAKEINST =3D &quo=
t;-j 80&quot;<br><br>Despite this configuration, the number of compiled tas=
ks cannot exceed 52. I wonder what is the reason for this?</div><div><br>Co=
uld you please support me on this issue?<br></div><div><br></div><div>Best =
regards.</div><font color=3D"#888888"><div>Efecan</div></font></div>

--0000000000000752dd0620cce203--

