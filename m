Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10024.1599268822820258530
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Sep 2020 18:20:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XHYfVHx0;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B08AE38C0035
	for <yocto@yoctoproject.org>; Fri,  4 Sep 2020 18:20:22 -0700 (PDT)
Received: by mail-ej1-f49.google.com with SMTP id z23so10799702ejr.13
        for <yocto@yoctoproject.org>; Fri, 04 Sep 2020 18:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=OgCeZ0a8Tq1GxiT9nJBeqIviclGYLm5detDKWkhYz7M=;
        b=XHYfVHx08GPikFiqfpflqw7hDBc7HS1bcIgsWjdrFyyKuaGfcN5+BhjxzS7I22yztp
         F8DFsHjqlxV7rUfkLZv83kdjJ7jP534T4ArHYAun5fj0S87nP75a3dJxFnwWX9PZ+8D2
         EnovlTv6IyIcNMZaFg78UTjS+oMkDSuVgep2M4Zrlg6bW60qqlBCjL/WWMALJcjwhBK2
         P1bJlDcQUt1xiJB+EvD6goOiDdEklkIMBYNORj+yocQmtL7aVVol056j3u+IIJl+/DQh
         lLCm4FT0mdwy7ZG3IG22UKlfFE7Rn08JjFA9FoDUzkLDIBHdSJzO+2UgXjBSUAFOxYWL
         9FuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=OgCeZ0a8Tq1GxiT9nJBeqIviclGYLm5detDKWkhYz7M=;
        b=sNNEZNycZlH8MZXCq8EIUGxR79n5vs9h5TtF8Ah/wfOySsxZRoBdGsPGPyFTD7+V8a
         ZRM20Fop6XTyse+tUyHpD1zy0aTg499S5IHmqRk5A7aY6Oy6tn2qQGNLB3McWrK7qgv1
         2eCm2gdcsYQSNk/0iCSfBFQEci8PpmvmFBITThRcgXtKiCWckzFeUMUQhwOSPj7IODGI
         DGul1n0VPsLveuxp/DcmJcy6ds9AFGYtZtAEMElBTLz7GRHssJ5DoznHCRqtqY3pywqj
         AGBpqDTrKJG9/KMUswlDdZUWe32pFUwCpWufekCxuw38SK6MjAvxalhPH/cG3P9NMfMl
         xtyw==
X-Gm-Message-State: AOAM5327OwX0Y4tfgcwANmaTkI4KScbWPd/KxmvxmkHcGGlVwrVgbX1o
	3XoKIC6FCLB0PZ50HZWFAHHAhOQVtTUT/6kxjfzNYZl8V7QUAjMC
X-Google-Smtp-Source: ABdhPJxFr4wqGqgQJBLngfwVHfC8fLwAVHlLTJ0H3paRQEvz36cq/TxXnGTJd1d1D2wUljT37iCJGGASuFhUqg4NoAc=
X-Received: by 2002:aa7:d34b:: with SMTP id m11mr5390291edr.178.1599032103834;
 Wed, 02 Sep 2020 00:35:03 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 2 Sep 2020 09:34:52 +0200
Message-ID: <CAAfyv34xDEpe=dhY2DGLfA9RHcFLVBcuESKnwAEYumfgbKE_4g@mail.gmail.com>
Subject: overide glib-2.0 meson.cross.d
To: yocto <yocto@yoctoproject.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hello,

we're using dunfell poky release and we need to bump meson from 0.53.2
to 0.55 because of cuda cross compilation issues in 0.53.2. After bump
we start seeing build problem in glib-2.0 which was fixed in poky by
commit:

85d3e045bdec5c3649c55ea334969641382d7758 - glib-2.0: correct build
with latest meson

O overtook patch to my local meta layer but this is not simply working
cos meson.cross.d is referenced in python function. Is there a way how
I can I override this file in my layer. Thanks.

BR,

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
