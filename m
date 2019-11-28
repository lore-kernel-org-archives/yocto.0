Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web11.3588.1574924368260276894
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 22:59:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jkQZS4Zl;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: aj.ci.01.239@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id e10so18065433ljj.6
        for <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2019 22:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=V+RYl6B2nXnh1LpmLpYavo3ti/px38RrFAAgws9bsKY=;
        b=jkQZS4ZlRlov8fgq/ME4qoCNiV0NqHPOxXuDH3Qf25q/j0gsDOiYbzYSOFHEzyUBOk
         t2M2IlQbTAeVg02jcHIa0egWS0OcWLslxJ+Af8dsIJk/bOXDH6RShSR/7S89Al6TTmqW
         LiZJvIjzpB/TDXs34nAvb3M7YVf5lcdirA/iUw71MiSROAvQ95kRH2KbCPq2At28c/fL
         HGZNqRbPzTxz4X5ohsEzN6sM2L7WxUwXFscKY3KSevrEUv2RwuEOPKd4wS4+MAmY8jhL
         Q1E8eNRmbWobHBMi0YFhEe50GZUjXIoRb5HFc0SFHJgWJ4SyO/VYST3nRbLFw0HOcjLn
         SV0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=V+RYl6B2nXnh1LpmLpYavo3ti/px38RrFAAgws9bsKY=;
        b=llH0xYUWsi6lZdgs7+xMSFMGqFx4Zq5HOwb1bxPTI1Oj3RctXa5JHEgd3yMxsufzVm
         cohULz4FQd6L3n0PVGvq05cmWEVDkz+K86oBdkn2og1KW6iLR7LT2GymfLDDWgEQb6oD
         KR50ASdaq8HqvmOO3VA8izDNTJxdQmKIcGkqnRfZTlH2FdlymHjDrZUQZDNO2Sr5ubRE
         luJGX/rg+ki40aAH3qeSNVkJnMrREUqVK9lF5UZzWdicqMcdPNGYjw92c6uiqwl/746P
         +jyxK6sD53RRCF0wxISXR6V0jqtixOVw5xUHjZnITnJdBgpwXiZBVTO2NV8sS3Dx12bz
         /8XA==
X-Gm-Message-State: APjAAAW3rCaJs0vEItymOe290uCNv4zI5lCJVryT8T9IS5V84zbZmcn9
	KlivGwC41qgQlIJZrhMJWrfhkyJxryx+nZadG63uG5I=
X-Google-Smtp-Source: APXvYqxPosasr8SwfrqPuF9aMvL59OSBUY8QX48zhHRxuwFE2wxECySVEGioXkeP21tdPV/k2jmaRPG1EtuMa+Yt2YE=
X-Received: by 2002:a05:651c:1139:: with SMTP id e25mr34122380ljo.200.1574924365682;
 Wed, 27 Nov 2019 22:59:25 -0800 (PST)
MIME-Version: 1.0
From: aj.ci.01.239@gmail.com
Date: Thu, 28 Nov 2019 12:29:14 +0530
Message-ID: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
Subject: Yocto Image Build for NXP i.MX8M
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005d5ac9059862a7df"

--0000000000005d5ac9059862a7df
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to build a Yocto image for NXP i.MX8M (4 core 64-bit A53s). I am
getting some error when I execute the bitmake command.

I'd appreciate if you could guide me with next steps. Any Guide or url will
be helpful.

Thanks
Ajith

--0000000000005d5ac9059862a7df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m trying to build a Yocto =
image for NXP i.MX8M (4 core 64-bit A53s). I am getting some error when I e=
xecute the bitmake command.</div><div><br></div><div>I&#39;d appreciate if =
you could guide me with next steps. Any Guide or url will be=C2=A0helpful.<=
/div><div><br></div><div>Thanks</div><div>Ajith</div></div>

--0000000000005d5ac9059862a7df--
