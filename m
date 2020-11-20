Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
 by mx.groups.io with SMTP id smtpd.web11.19904.1605838168061706214
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 18:09:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5UWHuNs;
 spf=pass (domain: gmail.com, ip: 209.85.217.53, mailfrom: fundubits@gmail.com)
Received: by mail-vs1-f53.google.com with SMTP id f7so4201723vsh.10
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 18:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=UDEMS1c1AvDBxRnjX56oJvMM3XfdDCs3M3pgMTc8V2k=;
        b=m5UWHuNsuhaGzIBRlGWvQ74Xl0aBhfk81m7AS2EEBhHqI41/uSyIPjciAgx5HMDQo+
         Zeb4PHAFbHQHwFcnO0bi52BQldA8N25gYF3dWsIAhoCiDWp6DBZaowBFT9e+C3q1RoxI
         E1SVVyoAZKwjf7yEWRPTVTdqTx9Q+uFybH8oA2n9lOH/of8CMEr/OGrjjT8clAWIQGgi
         BSUFawbGzWbkTKrs0vZ3fHo8+KWmkxQZpQb3UK4LT/qz2RV/NH817VP98Vkjy5e6zQrw
         5BJRQx29d59altvewZbRj6Dwxj0WRZ8uBQ9sz/HyFlaI3ShV8mTJ/c9li7ZFaVbBrmwm
         nSxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=UDEMS1c1AvDBxRnjX56oJvMM3XfdDCs3M3pgMTc8V2k=;
        b=spHXEWrdUoI15h+OBYqI68PcqJYmoNUQCT3JwGRgw+pmCCuJsjQmRXbbqzteBjKpt4
         yH575AwuArKlDtujU82VxH2XZbmNs5x/7/K15SgCrkLI6bgZfIeNDzb857qOWRe90gKW
         qoemJqk2wtd8H1ciXB5Z1pTxlmR/VRuxtk180oiEGtdRRiAFEHrpGmlr1fBmizIEn71q
         V1dUVcz4Ox3+9pS8D3SiMVkW2eixdL+FqVZ5/8viED9VBuNUk4PDH+gQKS2XZbZsyRZn
         /W1n/AkLaBEfb7ySDIYQhBt9hDJA4rDdxvYFKm9l0EQgckVk6zzjbYQOYOHG7YDHt7dY
         QQKQ==
X-Gm-Message-State: AOAM530P3Nb2H1KLh2+MOyhnUKdSnB/YTOhtrkB4YYZ0kk4uufQJKKGU
	Mm4LhjIncGCaqY+2MGBFb3tK6Cj1vDBhH1FjmM/E+lMnaRc=
X-Google-Smtp-Source: ABdhPJxsNYo9/hS1D5JtnLxcwZHIaWOQ9KAcRWIq1Eyp69dCxWWIS5ptwSpoNS740UZHqnqRGXU5IgZbn7vKQVhLLTc=
X-Received: by 2002:a05:6102:22ef:: with SMTP id b15mr11835091vsh.35.1605838166777;
 Thu, 19 Nov 2020 18:09:26 -0800 (PST)
MIME-Version: 1.0
From: fundubits@gmail.com
Date: Thu, 19 Nov 2020 20:09:15 -0600
Message-ID: <CAOTXhGO1-ub1W1ZYas9+Si04xk+A5r8bEH=SOszaY+OdrNUWWw@mail.gmail.com>
Subject: Fix future timestamps
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007f617705b48055ae"

--0000000000007f617705b48055ae
Content-Type: text/plain; charset="UTF-8"

Hi,
   I see future timestamps on binaries in the boot partition created by my
custom wks.
   It was ok, until I had to use upstream Grub (at 2.05) with the commit
20def1a3c39529  "fat: Support file modification times"

I have to write an extra script to touch binaries at the end of image
creation, is there any flag/option for local.conf to force valid timestamps
on binaries?

Thanks.

--0000000000007f617705b48055ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0I see future timestamps on binaries i=
n the boot partition created by my custom=C2=A0wks.</div><div>=C2=A0 =C2=A0=
It was ok, until I had to use upstream Grub (at 2.05) with the commit</div>=
<div>20def1a3c39529=C2=A0 &quot;fat: Support file modification times&quot;<=
/div><div><br></div><div>I have to write an extra script to touch binaries =
at the end of image creation, is there any flag/option for local.conf to fo=
rce valid timestamps on binaries?</div><div><br></div><div>Thanks.</div></d=
iv>

--0000000000007f617705b48055ae--
