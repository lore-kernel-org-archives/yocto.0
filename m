Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web12.550.1631891463611580302
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Sep 2021 08:11:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=k8At9nkA;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id y18so12661890ioc.1
        for <yocto@lists.yoctoproject.org>; Fri, 17 Sep 2021 08:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=9sxV5YFioLqyNG9YMB8tyIUHEHzaqp7CVcsb1k6sDUQ=;
        b=k8At9nkAxRy2tYp0gcMxlyoV997ECCHlzvzEwacmer49PEPpUVIhUxikmqKIwn61ZH
         lY0AcEwjA6bAlsLkio62a84CxiTEAp8xD2oXkiz7uD43tfdDxTTfae5tPf8LV2M9A0U2
         OfQoiBiXRqmX9vR/kTniasnwrxkoJ4ga6w7zX7NKW1doCW2nAuOC6uxSocvGVB+sKd14
         c8yM6fp1H0eLbTC5qVl+0yXiNsMbTRQB/INN7ps++M2jTGHirbNZG0CH1o0fG6F2Pter
         ekcnvWs5U84FynGGl5syxx9pdEMuTuTtkQCgNkK4tWj18F5UYrZLPeyPDV03sKS6RHwz
         KKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=9sxV5YFioLqyNG9YMB8tyIUHEHzaqp7CVcsb1k6sDUQ=;
        b=5O+rAtbnFS0fidKQLezgiJPe+jHEahc/UJi8fJUIYNF5bVAV/U7oMXsfTr+/CKWCE4
         ofFbOSiGJLvFcpQz2+v30pNuwnjxnYbajq+K0mIm9UW3J/MMNyKAGqoWs4LVHn8C4DDm
         ZjVPWwpy8QFbuEVpRxLHIVf1DoMQYqsK4vlpfY5xR/69pxJQGVT+cNNAF7L0DWCzso+M
         nJ2OVeJ1cfQtN+kmx2SZ8p2qsfdywp9xfC1DI+f3cJ3yzHXX2vHyjRlwlXQicFw7Toih
         O+d5hbtctczJFe4+Tnvd385Ia4fCUdqpvlUHg5lxksFwXdFj/lAu6/xe4KaP9Up+o2n+
         OWww==
X-Gm-Message-State: AOAM5313lMUfVX+bdPJ0to3Ns1u9wnaWx3/D99YRZddZZXBy545La0FP
	D6YOSvV20gY3v958t9E2EnXUeJfkfjk1Fr4jHkwYKgxQ
X-Google-Smtp-Source: ABdhPJza4RJHzQs0fEvHxDTlvpINF/5Xbxtt+FmOSAejaQZSGvzUrKunwKjCA8hHY1kbs9GLN+uAezOAn5F4Fp2+4L8=
X-Received: by 2002:a05:6638:1030:: with SMTP id n16mr3357294jan.36.1631891462272;
 Fri, 17 Sep 2021 08:11:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210915211018.17694-1-twoerner@gmail.com>
In-Reply-To: <20210915211018.17694-1-twoerner@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Fri, 17 Sep 2021 11:10:51 -0400
Message-ID: <CAHUNapSjW2CPnTp6O2jf7NOaNE3kwdfQozcGiGGmu6WfvW-eyg@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] rock64: enable lima with rock64
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ebc6c405cc325639"

--000000000000ebc6c405cc325639
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 15, 2021 at 5:10 PM Trevor Woerner <twoerner@gmail.com> wrote:

> The rock64 has an ARM Mali 450 MP2 GPU, therefore enable mesa's lima for
> accelerated, open-source graphics.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-graphics/mesa/mesa_%.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>

Applied to meta-rockchip master.

--000000000000ebc6c405cc325639
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Sep 15, 2021 at 5:10 PM Trevor Wo=
erner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; =
wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">The rock64 has an ARM Mali 450 MP2 GPU, therefore enable =
mesa&#39;s lima for<br>
accelerated, open-source graphics.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-graphics/mesa/mesa_%.bbappend | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br></blockquote><div><br></div><div>Ap=
plied to meta-rockchip master.=C2=A0</div></div></div>

--000000000000ebc6c405cc325639--
