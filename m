Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web12.8972.1618500876357187122
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Apr 2021 08:34:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ALCWRLMS;
 spf=pass (domain: gmail.com, ip: 209.85.210.48, mailfrom: murugesh.pappu@gmail.com)
Received: by mail-ot1-f48.google.com with SMTP id 92-20020a9d02e50000b029028fcc3d2c9eso450786otl.0
        for <yocto@lists.yoctoproject.org>; Thu, 15 Apr 2021 08:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=KTHEFb6/OUyX9dyTxgPJYY+3rSBdbYghpL+2m9Aw+mE=;
        b=ALCWRLMSn7JFPp0wG8xAwvL7lLDoUPZsA22KatLn4XC4ewoQo1WD686S2EeS6cXdS8
         +hD3C4TipiHWLkOZigmwsZfqhDkaxRw72aaT/9ts7DGIb2ES94YffHlxdHXrVP3nIHhv
         MG/e8WPBgsmIoc+EilplUc1+t/sRSXYmE0W46iDeK0PlmDmhhWjTE90c3eBHcwTfUXT5
         pVStdfGYieF7m7MXZtfvIc0dg5lv2Gs/qOCT8kVaOtQGzJVXy8RcpMMcik5SkKETbjCM
         mGmLcAeHNg+hNaJjyRkGqV0tp959Dgc0QcCskvoBWf33DmyOXajrjvA6sFM71Fwuq7xn
         D5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KTHEFb6/OUyX9dyTxgPJYY+3rSBdbYghpL+2m9Aw+mE=;
        b=WsIMV1vsWro1V/ZXxydEMr6A6zx3OvTPwIExpbqWL658sCty0zntIQLLMxfOyrxqve
         dJFLwf+D5dtAbbUF25W3UPw3/iWMRVvX9RG7pt+aP8+NuvYBHU+pgyYTuCiE3B5oD3rX
         0XGx8ofIUAwbJkipo3hqTf4LvAqXnv4J0xWcRDV1WmA2h+WkQ6DPJTu5kRrT9nFL9EFO
         6E+eG2daFWzr3LtOlRNl+pzpjuQc5NijZfDPbrvcCL7upWz47DFOnNcHNlbFhF1L/AY5
         2p21xLC/yc2Mr/y+hw+YbcTRzj8VccHM9qNjuhS5sTtNbJrp0ldYKFDXbVQarCzaHL6r
         d3Yg==
X-Gm-Message-State: AOAM531gZ2D0cXYy4fYBXrIS56ivYqL8igzs3FIAvh890HPT8jTVYnx1
	ZgOOMv9eME5XK48roWI+v+N6UWxWAqOUPq8h+MEiSXlb
X-Google-Smtp-Source: ABdhPJy6U2gooMS+0NdKDoo5u/Aw4NivAloL3ZqZnw0N2xXSzOc7rtPLO1WpBbl6sP08WxBHN1uEDR48Nsrk05HjVVs=
X-Received: by 2002:a9d:663:: with SMTP id 90mr3172242otn.311.1618500875354;
 Thu, 15 Apr 2021 08:34:35 -0700 (PDT)
MIME-Version: 1.0
From: murugesh.pappu@gmail.com
Date: Thu, 15 Apr 2021 21:04:24 +0530
Message-ID: <CAOpumBmdt3-kRC4NJ1L1kghWMng_kWZ8URxOaoqWWCmA2Zcwuw@mail.gmail.com>
Subject: Building image from Root
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000be852105c0049914"

--000000000000be852105c0049914
Content-Type: text/plain; charset="UTF-8"

Hi

I am new to Yocto project and have little experience in Linux.

In my computer, Root folder is having free space of 65 GB and Home is
having 45 GB free space.

Shall I get the poky in root folder and do the complete Yocto build image
process from Root directory itself?

Please suggest.

Thanks.

--000000000000be852105c0049914
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi<div dir=3D"auto"><br><div dir=3D"auto">I am new to Yoc=
to project and have little experience in Linux.</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">In my computer, Root folder is having free space of=
 65 GB and Home is having 45 GB free space.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Shall I get the poky in root folder and do the complete=
 Yocto build image process from Root directory itself?</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Please suggest.</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Thanks.</div></div></div>

--000000000000be852105c0049914--
