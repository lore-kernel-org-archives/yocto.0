Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.19554.1601381912073286656
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 05:18:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=Kj6+VRXo;
 spf=softfail (domain: soccasys.com, ip: 198.145.29.25, mailfrom: laurent.gauthier@soccasys.com)
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com [209.85.222.67])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3B91638C11CA
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2020 05:18:31 -0700 (PDT)
Received: by mail-ua1-f67.google.com with SMTP id n26so3359777uao.8
        for <yocto@yoctoproject.org>; Tue, 29 Sep 2020 05:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zBg0jkLeeXOwfGVHAJOZzd/grw8HsZPDq+56ltuQQUQ=;
        b=Kj6+VRXo6tzxBdEKtdRWSQ2ElNChaIIXy9EDZP50z1m4XO2IBBV3rE4TQosp2vYedo
         QqlrwM3uZdbhaIZh/YsFo+uzVUtCIWi1bafbZH+LD4qpZvjxvy+UOgL9PLYxPSkd53E7
         y1m70ATSrg0URdGRBBLlao50LHqrJQyAQzetNBy9BNdG3RI9nDGnJcAJAH93suDoWyuf
         CD3hqtQFv8UKtqTId8Vjo+6rf+GLWk/dg/LgCrCf+suh4Rz0p12e7BDRmKkjNt1obF15
         lQ2PUqJWWEzaqGv6KD8YGZamutdlMZMmMhyTNqEmF779Km3LgTGxKCnnkHgzPNWqjO4F
         0yCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zBg0jkLeeXOwfGVHAJOZzd/grw8HsZPDq+56ltuQQUQ=;
        b=RrQkA2dLSf4AKD9BG/fSrB7/hPVrxPMBbeRJRtC8VqfOsVnCgPFcOLu/a7Vosrf59F
         u4xNKGtVMWVrRMuWblMUWi/qtf+WhPwh0FD2nPxtjXLgViAEmy1loH0lUkg3YZcGxYNE
         SO6dFUeidR/r74lAU5MBu6ihgj3Tx9/h4y0TNoRY/36Z3GgBe3N/mqWFaaPqOQMy/H2X
         7EMIwpFaDL8mm3gEFQkNSQuL2QNnXK3rYr24CAJNt1l02px5qB48aW+vn7LnHeyPOVvp
         VNcaxJk0zrU6+ikYf6cjnOPUtQpklfKCec3/s5z6+lYR0mYemY0Bk2dPoF5P+fCl3hov
         cumg==
X-Gm-Message-State: AOAM530KQ/MzAHPnNE7/YHteqLgBGOtQJoxlxmaT2zw055T2WjypVrUc
	rzCCKhlnvMChmos03EwtCFJuc7d0gJLsak0Wvw7yRetiObCdcQ==
X-Google-Smtp-Source: ABdhPJwUgZxs+RZo0ftqFD1l4LjHzw2xEbGbhxYsatBq2QkOnyzIRqe6ZSY3bv3R1BkfbgZvzVfBxb4XFW9THf+BQ0w=
X-Received: by 2002:a9f:3dc7:: with SMTP id e7mr3626564uaj.3.1601381910027;
 Tue, 29 Sep 2020 05:18:30 -0700 (PDT)
MIME-Version: 1.0
References: <10274ebc-8857-8c51-55b0-f0a888ce8bf9@faresoftware.it>
In-Reply-To: <10274ebc-8857-8c51-55b0-f0a888ce8bf9@faresoftware.it>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 29 Sep 2020 14:17:53 +0200
Message-ID: <CAGbd71RQrjf8vEfcoS9ZPAWXKCr20yGPesZT_bushNeqgkNX9w@mail.gmail.com>
Subject: Re: [yocto] File collision: same path from 2 recipes
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e5b81305b072c79c"

--000000000000e5b81305b072c79c
Content-Type: text/plain; charset="UTF-8"

Hi Mauro,

From my experience there should be an error reported during the image
creation as long as the two *packages* that contain a file with the same
name are BOTH installed in the root filesystem.

If you don't receive an error I would suspect that for some reason the file
is really only installed by one of the two packages.

Another source of your issue is that there can be more than one package
created by one recipe, and maybe you are not installing the package which
contains the contentious file.

Kind Regards, Laurent.

On Tue, Sep 29, 2020 at 2:08 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all.
>
> There is a QA to test if 2 recipes try to install a file with the same
> path?
>
> In my BSP 2 recipes try install the file
> ${D}/etc/network/if-up,d/hostapd_restart
>
>
> I'd like receive an error from bitbale
>
>
> Best regards,
>
>
>     MZ
>
>
> 
>
>

-- 
Laurent Gauthier
Embedded Linux Systems & Software
Phone: +33 630 483 429
http://soccasys.com

--000000000000e5b81305b072c79c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mauro,</div><div><br></div><div>From my experience=
 there should be an error reported during the image creation as long as the=
 two *packages* that contain a file with the same name are BOTH installed i=
n the root filesystem.</div><div><br></div><div>If you don&#39;t receive an=
 error I would suspect that for some reason the file is really only install=
ed by one of the two packages.</div><div><br></div><div>Another source of y=
our issue is that there can be more than one package created by one recipe,=
 and maybe you are not installing the package which contains the contentiou=
s file.<br></div><div><br></div><div>Kind Regards, Laurent.<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Sep 29, 2020 at 2:08 PM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresof=
tware.it">mauro@faresoftware.it</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hi all.<br>
<br>
There is a QA to test if 2 recipes try to install a file with the same pat=
h?<br>
<br>
In my BSP 2 recipes try install the file <br>
${D}/etc/network/if-up,d/hostapd_restart<br>
<br>
<br>
I&#39;d like receive an error from bitbale<br>
<br>
<br>
Best regards,<br>
<br>
<br>
=C2=A0=C2=A0=C2=A0 MZ<br>
<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Laurent Gauthier<br>Embedded Linux Systems &amp; Software<=
br>Phone: +33 630 483 429<br><a href=3D"http://soccasys.com" target=3D"_bla=
nk">http://soccasys.com</a></div>

--000000000000e5b81305b072c79c--
