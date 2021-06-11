Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web12.6408.1623408033523994828
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 03:40:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vJZvd/Mf;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: thisisaash9698@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id i67so30406422qkc.4
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 03:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=LmYT2Ww47KDF4ZF+1cwvogk9TkhGFnvvL+H0/WjYBCs=;
        b=vJZvd/MfGkX478bvSG0jJx+x6Xa+8GsyaqAp5k3rEDXP8vYWL8SwpVwbp9e09eLDT0
         fFHQTOGG06OZxpTtljBIW//qUUaUpbKqmB7cQy0p9wN0p9KV2mQWIsGFAbHayXrazIWD
         B5UVlTcoVPqmcbsgLR33rdz33jwzmR7K/MqhWIlizOAxHwGcAtlyOeuMJ1dQ3QHs3bEB
         99ZGUjMqWqLQjA8wUS41WbEs8pSxILWCV9fxq0sTjy0grHgEI52eoS2ZvK6JxC2UJlzZ
         aZRRoAyh0LTYb50HpOiiSwX/zo1fBkUkmmHeOfQYX9eXgobNA+qiNTVV8zp/TCK4+VNB
         wp5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LmYT2Ww47KDF4ZF+1cwvogk9TkhGFnvvL+H0/WjYBCs=;
        b=B+4zR+cwkFGerIQb6LIhFTTRxTYDMTPm7bn+9uCqUWl38aHYbMeMNLEs7OXi08vUJp
         gUiTulXfwL6TDt7WdHoamz0tPiMfN/u+D6z5rGVHRkOWTJxjohtDg1jNDr4xmYAd1SSH
         6S1a/agUeQfPFoQyyzyT7gNtx6V3DzsIPlXAp/VvnDzoige8Y802IaMJ7ybNwyYSwKbP
         e7DEBXuhy1O2Gjbz9oyxdPiGPO8z7NC807iKQyFVLiWXWyb3cmpOGxQx9KVNc0SP7SXk
         RqtB8NKvZRaNrVmofbKSNGfcGhoSntQTDuTpPwq5iDjNOJl+OZfJSwlyI4qLQBN7LEQL
         bm6w==
X-Gm-Message-State: AOAM530Q+K9ROKYK9/wzKPxkXB/gsea6PPnhPbmP3caPDG0cpx0UCWuh
	W0GbkjFLxqM1zfN1qg1HrwhCemXsiTK2vGZLhBwLqiFXs0WW+g==
X-Google-Smtp-Source: ABdhPJxWisShYfCxgSkREsLFgekzb/PEWCW+2sGmKAaTDr7rFMTmrA9af6AVOb/ujve2Un0R76m7f4hPB8DER2hukFQ=
X-Received: by 2002:a37:46cd:: with SMTP id t196mr3152733qka.305.1623408032200;
 Fri, 11 Jun 2021 03:40:32 -0700 (PDT)
MIME-Version: 1.0
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Fri, 11 Jun 2021 16:10:21 +0530
Message-ID: <CANVQz1Z2LtWAbFAyeXEk=JQUN1D8TFvGzWXfCNeYnHgS1qdFGg@mail.gmail.com>
Subject: QEMU Size Increase from Yocto Thud to Zeus
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000015bc3b05c47b238f"

--00000000000015bc3b05c47b238f
Content-Type: text/plain; charset="UTF-8"

Hi Experts,

I am upgrading my Linux from Yocto Thud to Zeus (5.4 Kernel) . After
building I could see a significant increase in the size of the image.
On checking with buildhistory enabled, I could see that qemu has nearly
doubled in size.

Thud (4.19) - 223084  KiB     qemu
Zeus (5.4) - 474757  KiB     qemu

Is this size increase expected or are there some additional configs that
might have been added as a part of the upgrade ?

Appreciate your help.

TIA,
Aashik

--00000000000015bc3b05c47b238f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Experts,<div><br></div><div>I am upgrading my Linux fro=
m Yocto Thud to Zeus (5.4 Kernel) . After building I could see a significan=
t increase in=C2=A0the size of the image.<br>On checking with buildhistory =
enabled, I could see that qemu has nearly doubled in size.</div><div><br></=
div><div>Thud (4.19) -=C2=A0223084 =C2=A0KiB =C2=A0 =C2=A0 qemu</div><div>Z=
eus (5.4) -=C2=A0474757 =C2=A0KiB =C2=A0 =C2=A0 qemu</div><div><br></div><d=
iv>Is this size increase expected or are there some additional configs that=
 might have been added as a part of the upgrade ?</div><div><br></div><div>=
Appreciate your help.</div><div><br></div><div>TIA,</div><div>Aashik</div><=
/div>

--00000000000015bc3b05c47b238f--
