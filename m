Return-Path: <mehmet.fide@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B597AC27C4F
	for <webhook@archiver.kernel.org>; Thu, 13 Jun 2024 11:20:22 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.5963.1718277613634450225
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jun 2024 04:20:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RnZA4XBn;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: mehmet.fide@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ebe40673d8so8470751fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jun 2024 04:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718277611; x=1718882411; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BxEscQ2SPgAdGLm5hLIKwnz1Yj6lKNEvawufImz70Cs=;
        b=RnZA4XBnCEVpzVQDJU+tadgrFPv3whoC8vkf/tc5+rWDfcUI5JaoGBbHrlTyScDTCF
         6ICr2wmR+tsMYNTFrSnD0LygQFMR5HLGkF+uaHXqg7/t7wtwNt5uwQO/mVjzgoh9zoUg
         YPfPYhEWqd3l5T+stfxhAZ4PFfjmijysceiPg/riFTjnsmxvcbKod6GpiYbY5U+qGIv9
         iqkQB5pVoaUb0t4UKcRKIRRU0AXnEe9X/ZblVQofqHQ3rDt98eEdvo5EB/KWs/in5ukS
         2dFX+icnnzUANouJJLIcPxrNuPfbIJUf+4kT2Ss9zANHXiGJqvAoPjjZxtt9wI42l118
         p6Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718277611; x=1718882411;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BxEscQ2SPgAdGLm5hLIKwnz1Yj6lKNEvawufImz70Cs=;
        b=dopVooJOjZi8w9R9qi3omF+JFM7NxvLXcJF/q7vh0DI5PCwQMK22OGZfsxwjIrkhc8
         tCsFdtBOBKdL2XtHUbL8VCmXZ7eqxdiR8cLn0eyq2P6iJjggzZyZsaoopNazYzZTpMp5
         wBRPcLtDzdhEXr4YLXzc0a6D7j3UK6wbmUp5Zk64/1b2zIvw7IZIrUYAEmGBHMijZYAS
         6rkP8vcUZXyYEAdI3JI8SxqnVa/6jU11AN5E3dQZZlqpzjGym3RQJpe/v9vn6q/4O8Iw
         bhPxOl6Vqs0plrm/BzjJIaCLGyeyH3ZijJK7Y7g+ySlZRM9THNhWYzDg+Y4s2tYDyZ84
         099A==
X-Gm-Message-State: AOJu0YwnvPun0UF5Va2Y8j6ntKZlQG4E1kibE0O41fHqpVj0zl508lHk
	3j2a/mB9Ih+dFkY5cVGmUV0dIlf2tU5Q0z08J7Qd8lWp8JRzYlFurEKarWgrFOP6XDJp8UOfHBk
	fKH6bEW+s2+0HYRLg7++0cLlGe/MDp9FV
X-Google-Smtp-Source: AGHT+IE+isodkM1k3Qfj+Bitu5t3U2rIXG8y38VjdBrBiJSCGnOgC9bps2IpbM5WDFcdyniWwH+VriieeBjzZHkKGZs=
X-Received: by 2002:a2e:a587:0:b0:2e9:6e43:c897 with SMTP id
 38308e7fff4ca-2ebfca60966mr34179501fa.48.1718277611070; Thu, 13 Jun 2024
 04:20:11 -0700 (PDT)
MIME-Version: 1.0
From: Mehmet Fide <mehmet.fide@gmail.com>
Date: Thu, 13 Jun 2024 13:19:34 +0200
Message-ID: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
Subject: Dropbear and deprecated ssh-rsa issue
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a22da8061ac3aeea"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jun 2024 11:20:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63339

--000000000000a22da8061ac3aeea
Content-Type: text/plain; charset="UTF-8"

Hello to everybody,

I was silently following the email list for a while.

Today I have a question regarding dropbear and its default recipe provided
in poky/meta/recipes-core/dropbear.

It has been 4 years since ssh-rsa is deprecated by openssh followed by
Linux distros and Visual Studio 2022 as of 17.10.

As I checked today, the dropbear recipe with the master poky still uses
ssh-rsa instead of ecdsa mode which is widely accepted today.

Don't you think that it would be appropriate to change the recipe content
to use ecdsa instead of ssh-rsa one?

I wonder what your thoughts are on this.

Thank you,
Mehmet.

--000000000000a22da8061ac3aeea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello to everybody,<div><br></div><div>I was silently foll=
owing the email list for a while.=C2=A0</div><div><br></div><div>Today I ha=
ve a question regarding dropbear and its default recipe provided in=C2=A0po=
ky/meta/recipes-core/dropbear.</div><div><br></div><div>It has been 4 years=
 since=C2=A0ssh-rsa is=C2=A0deprecated by openssh followed by Linux distros=
 and Visual Studio 2022 as of 17.10.</div><div><br></div><div>As I checked =
today, the dropbear recipe with the master poky still uses ssh-rsa instead =
of ecdsa mode which is widely accepted today.</div><div><br></div><div>Don&=
#39;t you think that it would be appropriate to change the recipe content t=
o use ecdsa instead of=C2=A0ssh-rsa one?</div><div><br></div><div>I wonder =
what your thoughts are on this.</div><div><br></div><div>Thank=C2=A0you,</d=
iv><div>Mehmet.</div><div><br></div><div><br></div><div><br></div><div><br>=
</div><div><br></div><div><br></div><div><br></div></div>

--000000000000a22da8061ac3aeea--

