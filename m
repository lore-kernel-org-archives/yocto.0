Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.2695.1615499066018022595
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 13:44:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rhte7SWG;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 11F5138C0834
	for <yocto@yoctoproject.org>; Thu, 11 Mar 2021 21:44:25 +0000 (UTC)
Received: by mail-yb1-f176.google.com with SMTP id p186so23273045ybg.2
        for <yocto@yoctoproject.org>; Thu, 11 Mar 2021 13:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=asPfPOdtnyZrWLiLeqpyTOqtWWzBvqdbXY58ipdNgFU=;
        b=rhte7SWGfwfU6sM7dk/1Q1wJONLZ0gNT2qYsjCCF8JCHzutoqQKn7Vm/0715d5unuy
         oOObmA4dAFaBti2k3MC9aX7j3BHv189fWJTuVH3GD2YCLlidEYpZsCTZ98ZtSOli5O2p
         jJ6WUVg9JtD3DasrZ6Xlwq7vrx/4uOpnO0B8BWb649twjqtHCVG21x2nHkNkuYuVbrgP
         tblMUbuQ1u+zqtMJ8PgBLCEznT5k8Ym15wjKnTTfwvGCs2J3FLcoaDlwJ0+0de+zJVK4
         sDj39lwphilpF+q8G5wKZgciutl5iP0ziycyl7xe7uYu+lV58bLMiqwUdaFR6b5EkccG
         z5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=asPfPOdtnyZrWLiLeqpyTOqtWWzBvqdbXY58ipdNgFU=;
        b=UokQwgyaKLDrAs2AGRgRWqDYNNB/M24JLP2FSkFp9vKAEt7z5TuY0CdXlT6lXZgzv6
         ENE9y4CS8cOMCY38CPWXuFf3JHE39WAivIEB2A9VFwdSISg2X5QVM0J5tyZrJOmXcq4H
         6lHKc4GLn7Xdke+YZLHQsN/tDEIsYkKa8YlcOR8AHoIsrWWag001smeRQ2gj1XuFJIJu
         TY8AsIM0oZjydeAkdRyISdgifk0x6xvVM9/ynA9UV6Mel7u/AacfMd3UIggI0ihHFMFg
         0n6ruAcgPUCw2beLB85u7Pk7XYb+i3cXzAtDWs4969JkZGGA30wNgDj2nCf62f6G4qhj
         GJ0Q==
X-Gm-Message-State: AOAM530xFPJh/ENxPgNmoB1GEVE+u7xVhaC97w0bkOXHTGAGMm4MVAaG
	RF5R6slzf79VUoEgD5n4CULOFVOiNSVG9IxaCF+HyOV7O2VneFT9
X-Google-Smtp-Source: ABdhPJz/jRUir4FF8FTIlHlzLAw4bd4AQgwf4D10yBLBcfIpwXRG9QH1nWLhrXFnT5h7Gl1IbHT3HaO+uS95MDj1qYc=
X-Received: by 2002:a25:c50a:: with SMTP id v10mr14597507ybe.186.1615499063936;
 Thu, 11 Mar 2021 13:44:23 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 11 Mar 2021 22:44:13 +0100
Message-ID: <CAAfyv348tD+NJ=GMhEM5HHi1_yfbStK+qkp3c+xQxZMhJJZy=w@mail.gmail.com>
Subject: dunfell: regression linux-fimware installed in rootfs in actual dunfell master
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I've bumped from poky dunfell: dunfell-23.0.6 to actual dunfell branch
and I have an problem that all linux-firmware packages are installed
in my rootfs (even I have in IMAGE_INSTALL only
linux-firmware-bcm43430). Any ideas? In the commit log I saw that
linux-firmware package was bumped.

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
