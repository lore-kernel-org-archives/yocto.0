Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web11.20989.1594736865662670469
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 07:27:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vAlU2jEm;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: mdrizwan827@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id a17so8614644vsq.6
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jul 2020 07:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=EL5xV6pzL56o05JQewK8OmEF6taADS46gOnHLiNG2h4=;
        b=vAlU2jEm6CGvc6xnjlhqt/i3IGHSL/NrhIlicyvsVLeakAcE+ps1CYb6t/t3VdWUpe
         0YxJ1FQyg9ZT+daEXtFv6wnmgQ/8AckweM2qtxk8oqa7R/zC7mFsMvh2+VDVeiOzj71o
         +xi1N6lbrFQDJ0foKHwDoYpZzUXyBDKOQy5K+2oKlGXJK3fl0pKYbCdMV6Hmy5tQWrVs
         PF7WkuSxYjUu+7YgEztZ/e1EaN1xtb4BUW9TqUQXfOsAWn3x8j3ulz2J0DEftdqT08vH
         ZYFIcoFgAf3iYJI9tKYoPJUQUK5HSrlX6zxsYAd5BFcOL7BWeSMrGo7in4QDrTV+qxMB
         9dag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=EL5xV6pzL56o05JQewK8OmEF6taADS46gOnHLiNG2h4=;
        b=TnWuVXgobJC5upkmX5R2aUVPK7tc/1fwWycxQZqbRDLvT/3aN33g0qzUN5JQIDUMPp
         ZnWpwkg4spiZQNerxorOcAEQ1VxRUNRX5m0qeSfBVk4R//OiM1LYqk2fqN/gzK/qKh4A
         o9i7WRJeBd8ie8FJtp2MfYDrIBkT5jyO6/JCDyGk38Zue10HKhFoJIuuGj0QE6ha8j5Y
         EvmDD5uc8iFY7YCD6zr9LxaDrgVc4eKgR5Y2Uaey8lF6XlH5pR6+fVw1GS0Unss7g+o+
         /xnva/MViiOcIW273vz6WXp1MpWEFJG4aymyqkNwyLrOWxa/Hfop7VN6rkwyNJI4hZv7
         g76g==
X-Gm-Message-State: AOAM533x32oIW4SfnjOQaGF/jESAfFPRvdqO7U1CmCZz2Z1l7ZDwqctW
	qI+hFmZv4LKt6jblVNMkrfLdBum7cFJs0EbP7H7UgXQ/
X-Google-Smtp-Source: ABdhPJwfbIuVxTBRnE4fK3IMjDVFICVkTEW+F3+BNKVqNZfW3WkEGs9p02vGTQ8TKMewrNuLLHoJfTIpkWW8+S9Ipuw=
X-Received: by 2002:a05:6102:7d1:: with SMTP id y17mr3576344vsg.60.1594736864028;
 Tue, 14 Jul 2020 07:27:44 -0700 (PDT)
MIME-Version: 1.0
From: mdrizwan827@gmail.com
Date: Tue, 14 Jul 2020 19:57:33 +0530
Message-ID: <CA+FSg4oFoPcpF1EfCThB31RPDyjq9e7OCEoJzZhvjt+qpsijmg@mail.gmail.com>
Subject: Query regarding the use of wic image during device upgrades
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004a6bf105aa679c62"

--0000000000004a6bf105aa679c62
Content-Type: text/plain; charset="UTF-8"

Hi,

I have been using wic image format lately to create partitioned image for
my device.

I was wondering if wic image format can also be used during the device
upgrade scenarios?

After using wic image, I have an impression that it is mainly used for
initially writing the wic image to sdcard/eMMC but does not support all the
thinkable use cases related to device upgrade.

As in, for example, can we selectively upgrade any single partition in the
device using the wic image?

It would be really helpful if I can get some references or pointers on this
topic.

Thanks.

--0000000000004a6bf105aa679c62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I have be=
en using wic image format lately to create partitioned image for my device.=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">I was wondering if wic =
image format can also be used during the device upgrade scenarios?</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">After using wic image, I have an=
 impression that it is mainly used for initially writing the wic image to s=
dcard/eMMC but does not support all the thinkable use cases related to devi=
ce upgrade.</div><div dir=3D"auto"><br></div><div dir=3D"auto">As in, for e=
xample, can we selectively upgrade any single partition in the device using=
 the wic image?</div><div dir=3D"auto"><br></div><div dir=3D"auto">It would=
 be really helpful if I can get some references or pointers on this topic.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks.</div></div>

--0000000000004a6bf105aa679c62--
