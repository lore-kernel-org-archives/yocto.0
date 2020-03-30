Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web12.42956.1585537747469702759
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 20:09:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uwdy/oM1;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: raghu.icecraft@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id f20so16527484ljm.0
        for <yocto@lists.yoctoproject.org>; Sun, 29 Mar 2020 20:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Bc5q+7q2FFu06FMSopknN0tkvlJI8JAVSkMUgael+r8=;
        b=uwdy/oM1KgCGGz9BUCRYOkQtF6r7sbKiTgYfPtGm6flEumAShhvG+KkBrZMFqzMRq2
         O2HHJUGTsVHPz7l+dL93Q5tCiAWiAg1ednR10silhXdYYa+3d+4swY1yAgIifseW9TzE
         lsyGisnEIM2A7bp7zquSuMPCO1U42DoKB1+GsgmNVvUd0cS2/h4bvZgUudm2ziXKX/aH
         eWOtlHqLpeGpSgwFqclsNKg3l8fz9UlOi+j/HItYBtkcaexQk+2BGSWYUT1hzNnyMQl7
         zV+LM0qJpgkQNwWKELExPnjQ1tFKqPd3ql+cLxhdUe4ibtNwYiP1cyOWg14Lf/NhtorW
         2u7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Bc5q+7q2FFu06FMSopknN0tkvlJI8JAVSkMUgael+r8=;
        b=sMlAKTB10OpRlLOCi6fBL3gNDgqBaq2VXGWrCzajIsJPsCpSL2bDMbXaC78Wub2Va3
         TdWj0yix96GBIbUij2nioJv7wclODcOLeHWoo6+fTALnomCX8M4elT9aVVPHTvKpur28
         kGLQB8ILTW5tfZO6l5X6i7gQ+ZVoBxbMOLnIupmqf+5B9bu+zePewAz+fJVZRvQUiuyV
         w2S53z4yI37ZsaNJEQheR/4UFojIoxhBDb+5o3jEqgBbJD8pkFEmb6aR6CO8iRyeZHL8
         vgyIU1wh33ywgESkTyUHfKua+g7CvbNbiQBkbmEzugrwcFa2edV9zQwHZsID3H6aP2Xe
         9zRQ==
X-Gm-Message-State: AGi0PuZtAinFB9JLfGjQNgbaN50o26MXINqR2b/9iKSMCPVsy5eBCHkv
	bouNPoDBFuTe3XzEK2LY2TwIorz93GufoppmUaRoR2Lm
X-Google-Smtp-Source: APiQypJ+jBLMpY8SFaw3rQ1QEhbGCuLydZdT7cP8JVUD+czWNtqRE3McPWnpMrS8nF+z2QbNTkYCKye0oUxXnE0ba3Y=
X-Received: by 2002:a2e:2e01:: with SMTP id u1mr5754774lju.260.1585537745537;
 Sun, 29 Mar 2020 20:09:05 -0700 (PDT)
MIME-Version: 1.0
From: raghu.icecraft@gmail.com
Date: Sun, 29 Mar 2020 22:08:53 -0500
Message-ID: <CAKRDAG--FgfkAkYiLodkNzQxKo66pKN+Q=s30OhhrBaptRyVhg@mail.gmail.com>
Subject: Novice question on makefile in yocto environment
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000019cd2905a209c64c"

--00000000000019cd2905a209c64c
Content-Type: text/plain; charset="UTF-8"

Hi,

  I have some general idea on makefile in C, C++ environment.
Related to my Yocto project having a very tough time in getting my makefile
ready on shape after almost every development change.

Is there any specific Troubleshooting based guidance available some where ?
I have also tried looking for old posts in this group.
Please suggest if I have to post this question, somewhere else.

--00000000000019cd2905a209c64c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>=C2=A0 I have some general idea on =
makefile in C, C++ environment.</div><div>Related to my Yocto project havin=
g a very tough time in getting my makefile ready on shape after almost ever=
y development change.</div><div><br></div><div>Is there any specific Troubl=
eshooting based guidance available some where ?</div><div>I have also tried=
 looking for old posts in this group.</div><div>Please suggest if I have to=
 post this question, somewhere else.</div></div>

--00000000000019cd2905a209c64c--
