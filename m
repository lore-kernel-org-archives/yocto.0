Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web11.4465.1584779851732010458
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Mar 2020 01:37:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=os6UWBS9;
 spf=pass (domain: linaro.org, ip: 209.85.219.179, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f179.google.com with SMTP id f17so3869209ybp.4
        for <yocto@lists.yoctoproject.org>; Sat, 21 Mar 2020 01:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=BCs7adKhXwH7PEFq1QH+VGDyyfXPNC+CB6dURDuMuds=;
        b=os6UWBS9INIX9q7yXscgjsZtXvAHfWXBmxgddYjvjfB7/8c2JYzmemAaKO2dynI8RH
         oQg/46rFmt8VlSmG7nwFT83YJzW9UPjNoKFBAnci/ZGr5lxtdheGv8ZQ+7kt2bqdLJ/Y
         QhxDOj7VLaUzVZgszwv3Jf2Dpzv71VczO2i9GWEqpOVDu4gWpASvsbX2EnLxJ8lH7ZxU
         Ozw4UukCKYizVCkGDRJQtXvf+MIHWMRx3SSGrHerTChg0QAft/RckvieQT/TNxz5iSa+
         KzXIITkrKHs+Sj/oZkLlJl9fxbbGI4dOPcTGDqBsqFistbJe13geM3LDUUGuBRq2sJxG
         m7sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BCs7adKhXwH7PEFq1QH+VGDyyfXPNC+CB6dURDuMuds=;
        b=O37+b/JzYXoAhdN9++dS9cofGHuf37iwEnvuSPOPW7o+s7nf7cOZ6aUKkqh1F5XVAv
         JUTrYf6jrbmx3hgYJy5oxJV1aiF+hHyWj9OmDzhpRQkcyUvdFKDyZTM+Vlw8vUjZO/9u
         UChiDKlKbgZmscJbihaosXdUZ3fcTb3XaMfnLnnfEVKNaZdOhAgsSzCcg114w1ika/tX
         J1FjF/RUPVxy4CxMEbftnZ9rNec5WwoT6vLxSjw/MshPv2twZnGD2VjhJOrFh/89DyYC
         BWPk/N6YNQx2zRbbQZxv02bb/ZZrooAWOxrEsaX1XQAoJRhitHOQqa+UWTpd/foEHK1j
         lugg==
X-Gm-Message-State: ANhLgQ0T/CDEPoL3dXHYKJcQBb6o1LVStXlIV7UQgl4sipXx13ck/4Gd
	u0nE76NNt4uLHdG9/GtAI58yUFcxy7wcrUax7K3OoKMJ
X-Google-Smtp-Source: ADFU+vtaE1mGQx/D2Nx9a0+ktdvcAJJM9wLYH2oKsAO3zbKCCBrH4ul3xnSrN5MLWAKRhKMcUy0gkdKVykgqMpwh8NQ=
X-Received: by 2002:a25:99c9:: with SMTP id q9mr20471792ybo.475.1584779850489;
 Sat, 21 Mar 2020 01:37:30 -0700 (PDT)
MIME-Version: 1.0
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Sat, 21 Mar 2020 09:37:19 +0100
Message-ID: <CAP71WjzPm6--XfFbK-BjDgf0nRKwnD-oDi+EqTFYUb=vA5ez=A@mail.gmail.com>
Subject: Include B in image only if A is used
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000009387705a15950a7"

--00000000000009387705a15950a7
Content-Type: text/plain; charset="UTF-8"

hi,

what would be the proper/best mechanism to enforce that package_B is
included in an image only if package_A is also included? This is mostly a
'BSP' fixup. My current need is that for a given machine, we need a
custom/specific networkmanager configuration file. So I would like from the
BSP layer to ensure that if anyone builds an image with networkmanager,
then my networkmanager-custom-config package is also added.

of course, I can do a bbappend, but that make networkmanager 'machine'
specific.. is there anything else that could be done from the BSP layer?
Any existing hook or event I could use?

thanks!

--00000000000009387705a15950a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>hi,</div><div><br></div><div>what would be the proper=
/best mechanism to enforce that package_B is included in an image only if p=
ackage_A is also included? This is mostly a &#39;BSP&#39; fixup. My current=
 need is that for a given machine, we need a custom/specific networkmanager=
 configuration file. So I would like from the BSP layer to ensure that if a=
nyone builds an image with networkmanager, then my networkmanager-custom-co=
nfig package is also added.</div><div><br></div><div>of course, I can do a =
bbappend, but that make networkmanager &#39;machine&#39; specific.. is ther=
e anything else that could be done from the BSP layer? Any existing hook or=
 event I could use?<br></div><div><br></div><div>thanks!<br></div></div>

--00000000000009387705a15950a7--
