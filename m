Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
 by mx.groups.io with SMTP id smtpd.web11.37786.1600678511265820380
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 01:55:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=M6uywIqA;
 spf=pass (domain: gmail.com, ip: 209.85.221.178, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-vk1-f178.google.com with SMTP id q124so3152830vkb.8
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 01:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=VQoFjeg82GHSfYXDR5C3aXHy1MhK6ZUJX3zo6uBpwRE=;
        b=M6uywIqAAStyS1/jCkdD4U7EcG9XLNCrPAkKL8tzJdKYGek2HUCGDrtiJAX0Ml6C3j
         YeGT3xLwtOTESu8qBbFujwoGMgUg5jFs3icOYhaLkhcgoixzCpmfnhr2wQaJC54xYw0p
         Xu1/xRvqIhvrNrYQK6Z2LndT10jR74DMnXANRCsFECgGIQ14HFQhsv6xwV+uqJvMkU+G
         1/al/+AzR1HK6eQ8vCBsDqUHdHE1jVnhpKC+faNtxFsuouh3Z7mQfwW1MWieCdiYD1Rs
         6918IDg4oqV9Yn4X0NhnGm4gtJcSAn6YiYVTGf7VzGfGiJWXzCYPpPUh94LcOlw4wqVD
         2DOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VQoFjeg82GHSfYXDR5C3aXHy1MhK6ZUJX3zo6uBpwRE=;
        b=cKONJ2djG7DxM/fF63PTQspfEEZN7iZtnU364dhvY5JQ5jLaFfpMNMggggd6STGqG9
         vIo3v8zD9WQbhzf/NltJKuTI2/YhMb4wAEuq/dkcJsET8onMQ8ZmjalS9f7cxosTpsyE
         XzAKjuMXcif/tw/z799kduXONESd44mtrGlwT3E3xR0V+GQ8SocTtUGUdTEWdRJWf+am
         VI0gDP6YwL2DAEKFplMsIf6CxhDapGd1yPZBhFlaPZs6zrZl9xygf/0svIASK6TGHEEc
         3vJVJ+xfyUn/lsWMte29e7iO+ZeAJtCSqAENJcRgR00Oiu3j/RMevAby6mnnIr1uqNBS
         kLWA==
X-Gm-Message-State: AOAM5320hLQdOWkJLKDp5UXtaEsEOIAWdB1677+gV0bLW4CFotedUOqw
	6zel1F1eruuJvegBQlOSEnpIzSIQsh575ii32y/GAFt39rdBP+DI
X-Google-Smtp-Source: ABdhPJxCUPCtKTPMKuqRVflFEA45BAs8tlSWRgfgWvmEJvpwYeqrkuIajgDDj1Vh0zHxpmBo5Tz+TyfKJwsJlWYEewE=
X-Received: by 2002:a1f:9404:: with SMTP id w4mr26201944vkd.2.1600678510222;
 Mon, 21 Sep 2020 01:55:10 -0700 (PDT)
MIME-Version: 1.0
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
Date: Mon, 21 Sep 2020 10:54:34 +0200
Message-ID: <CAHwRhWaXaC0eWDeY5mL9USjF+4OL7_iXsBteVBtVuu8H1Zx9-A@mail.gmail.com>
Subject: wvdial & wvstream Error
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000061d005afcf02a7"

--0000000000000061d005afcf02a7
Content-Type: text/plain; charset="UTF-8"

Hi,

I was messing around with wvdial & wvstream for a while. Now the patches
are at the correct locations, but still there is a compile error:

Here is the error log:

https://pastebin.ubuntu.com/p/GFCZ7dYjsX/

Could you please point me the error? I suppose, its gonna be a Layer 8
error :-)

Thanks guys!

Zolee

--0000000000000061d005afcf02a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:#333399">Hi, <=
br></div><div class=3D"gmail_default" style=3D"color:#333399"><br></div><di=
v class=3D"gmail_default" style=3D"color:#333399">I was messing around with=
 wvdial &amp; wvstream for a while. Now the patches are at the correct loca=
tions, but still there is a compile error:</div><div class=3D"gmail_default=
" style=3D"color:#333399"><br></div><div class=3D"gmail_default" style=3D"c=
olor:#333399">Here is the error log:</div><div class=3D"gmail_default" styl=
e=3D"color:#333399"><br></div><div class=3D"gmail_default" style=3D"color:#=
333399"><a href=3D"https://pastebin.ubuntu.com/p/GFCZ7dYjsX/">https://paste=
bin.ubuntu.com/p/GFCZ7dYjsX/</a></div><div class=3D"gmail_default" style=3D=
"color:#333399"><br></div><div class=3D"gmail_default" style=3D"color:#3333=
99">Could you please point me the error? I suppose, its gonna be a Layer 8 =
error :-)</div><div class=3D"gmail_default" style=3D"color:#333399"><br></d=
iv><div class=3D"gmail_default" style=3D"color:#333399">Thanks guys!</div><=
div class=3D"gmail_default" style=3D"color:#333399"><br></div><div class=3D=
"gmail_default" style=3D"color:#333399">Zolee<br></div></div>

--0000000000000061d005afcf02a7--
