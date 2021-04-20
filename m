Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10143.1618923275956558860
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 05:54:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20150623.gappssmtp.com header.s=20150623 header.b=YlezvayF;
 spf=softfail (domain: smile.fr, ip: 198.145.29.25, mailfrom: yoann.congal@smile.fr)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3490238C05BA
	for <yocto@yoctoproject.org>; Tue, 20 Apr 2021 12:54:33 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id h10so44892932edt.13
        for <yocto@yoctoproject.org>; Tue, 20 Apr 2021 05:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bjkaYGeFl8rEeY0kisc1XL3VhvE1Mku+yF8hw2E/AiM=;
        b=YlezvayFv6LViGmvFV58gXcuxVlptoGBWN8G3za7sbay+J+3Xoca7+WUUn+61Z/hq3
         24xevci9AYV4XERNzGWXD5P3iMHCEMtTiqWb3hFwzMNfxfPBS5PnJfS6x8bzXvHacIjA
         6IOxA96l6pNvYAa3en9k0vIQwFBQ6tofOu+k5SxIjxeFMXaHB+tSRz9U6ugfNx9LQf6v
         U9bfsD6SuodEotfgfiso3EyAouYxTk4XItN/4boSe1SmVd1cOSGoPDdBrMaFib5Xci7G
         M492XptxR5WpVy3bFB4pp1sS39JY7wQMlQHRNl+I4HfDwC97JQWe0RaQiw/zIGqAHnod
         Sxxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bjkaYGeFl8rEeY0kisc1XL3VhvE1Mku+yF8hw2E/AiM=;
        b=WK3Yl17TJbJWH79bjn48uZYUp5kVMnBoVc9HqKlAuXjy6Es23VkoFZKwxGoUK5LvpU
         fPsv4jPhIVNzTcUhWwzeHvBS6KP7iktMIqfgEQrWfzh/RBGY0+G6rWfukuxJjxvKFrZN
         EuGNhzxL3Q+4SvSSXLg5jARnFCkkv8Wnw5O//9AnDb4jLkFHqCNzN+DjBXAzx2Rgv6OQ
         hgA/+huYKTxVBp7YkRi1TXI6c4sKAAAeQydT7rmLlE7e6PDAOr0hKGDFB1i3Ke0qmUjM
         CuHXY2MgZDhHLn/Qd5EoSln7jfXVm75BO3exmJnJkSF749bdve1yOjuyadt5x/DyLAdR
         j6MQ==
X-Gm-Message-State: AOAM5300HJ3HOsJxsN7IFWrS6g1GiPSGZQYpDdRuj0ezhZVMz5/Ab5I8
	k+yadO/4x97+uYhI892bmOHLHIeI6NXdQMj5IuQDDKvFTOwgRg==
X-Google-Smtp-Source: ABdhPJzna9iTii9YRUSQviK0sGEry4KlVDEtMHU6o6NWfn/PcDvp0A6Coptk/c4KdsaWzbgujQUdF0dSEwZlz2xIGBo=
X-Received: by 2002:a05:6402:1a2b:: with SMTP id be11mr32287445edb.304.1618923271754;
 Tue, 20 Apr 2021 05:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <60a75986-68f2-94c7-592-99dbb3891e3@crashcourse.ca>
In-Reply-To: <60a75986-68f2-94c7-592-99dbb3891e3@crashcourse.ca>
From: "Yoann Congal" <yoann.congal@smile.fr>
Date: Tue, 20 Apr 2021 14:54:05 +0200
Message-ID: <CAMSfU+7oAzF5=nZJhtPEreG6dVBmN4g448ns1x=ZfLx2Xg_YTA@mail.gmail.com>
Subject: Re: [yocto] what to include in a "hardware bringup image"?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008827e305c066f2d7"

--0000000000008827e305c066f2d7
Content-Type: text/plain; charset="UTF-8"

Hello,

It might be a bit heavy but I usually install a text editor and
python-periphery (https://github.com/vsergeev/python-periphery)
(It did not know c-periphery but this is the same author)

Before having full fledged linux drivers, it allows to check devices IDs,
make simple requests like get a sensor value or enable a PMIC regulator.

I'm interested in the list of packages you'll end up with... Will you share
it here ?

Regards,
-- 
Yoann Congal
Smile ECS - Expert technique

--0000000000008827e305c066f2d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>It m=
ight be a bit heavy but I usually install a text editor and python-peripher=
y (<a href=3D"https://github.com/vsergeev/python-periphery">https://github.=
com/vsergeev/python-periphery</a>)</div><div>(It did not know c-periphery b=
ut this is the same author)</div><div><br></div><div>Before having full fle=
dged linux drivers, it allows to check devices IDs, make simple requests li=
ke get a sensor value or enable a PMIC regulator.</div><div><br></div><div>=
I&#39;m interested in the list of packages you&#39;ll end up with... Will y=
ou share it here ?<br></div><div><br></div><div>Regards,<br></div></div>-- =
<br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><font face=
=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"Raleway, regula=
r">Smile ECS - Expert technique</font></div></div></div></div>

--0000000000008827e305c066f2d7--
