Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web09.842.1612551063265691876
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 10:51:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=OwoCzSvV;
 spf=softfail (domain: sidebranch.com, ip: 209.85.222.182, mailfrom: leon@sidebranch.com)
Received: by mail-qk1-f182.google.com with SMTP id t63so7982814qkc.1
        for <yocto@lists.yoctoproject.org>; Fri, 05 Feb 2021 10:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2K7/1zOaH/GXPxHJd27XlHTtByH/VulN/Tk3KfVDgOY=;
        b=OwoCzSvVEDfF6qa+LOGEexpnEMrR4pkTLESe+KZK/yQN8iQJWJlRMmoEmoQsTuLjoJ
         CwP+ZqdtFEjy85ite9xT9BNKDP3kNhfsijtZe6YX/qHnaZPBWh+itQDPKs4R5brsD6+m
         xkeBUW95mgEXo1cw5jXSRs9OicF8ZEdmIT3s+o9B/0nISxvBRMD8fhCPxB2Tvxa1mTTu
         zaoVtGI909BBEMo7SknP/cZpwXOMEDXLhe+Hq/EdbRS5rwAaGmpfUVyGDTXTuJ/rSn/7
         eW6D7bmigr0PaQApuDYHSVoXhjEDA0cCa3+n89AFygqbbCCPiQVH561I49lVxTnfpLUU
         iXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2K7/1zOaH/GXPxHJd27XlHTtByH/VulN/Tk3KfVDgOY=;
        b=cs/ieS38Je4EpjQ+V/7bAETLPvhkoIIO9bXSmZhiUpkq5Fsh+WnVLMFZeDB1pYhLf2
         4In3W5KG6QOsvNeBgPw48hC4wFIzVEtFasFY/8Da8hO6LPMaC/jJ6LoI2f/oFUffBSl5
         HQ4cbVf87qr0uIyFq9BAFfyQB9fWN9Bz51+LS7wM0oznQLd50zDuJv7AfZ2Hbk14Il0H
         vDdL0YvVRjH4OI3ed0o24r2CAB9Tc54IxahPgOIdVC8RVhq4OdSucUNQKia1nz8VlyaV
         h5yTtFBsHuUukCPGJUM0BieRtzkNX32iZsRg3QuongHtZvz++oG5g2X7ndODHo8bWCwT
         PrhA==
X-Gm-Message-State: AOAM531GiPWUrTaDq2VoVEhShA+MpT1+XYFS/UFxTU2BgXAAgeni9rQU
	Od9r/weshI+02bWu7L6dQ4TpAjHlWem1xHQMnxhgbg==
X-Google-Smtp-Source: ABdhPJwxF4tB4OdgZQ5P/vSXXZDRDbI4ObiNDwdVP6wcdlSWR2MG/8Y7Dtw2nlfMYWRnmXjF2RYIu3W+qd+RnnozQ5o=
X-Received: by 2002:ae9:f511:: with SMTP id o17mr5548347qkg.215.1612551062212;
 Fri, 05 Feb 2021 10:51:02 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCWZYd6VGHa9HMk-XLeJjZG8aZmCt5LGJhaFVCbY1=hdtA@mail.gmail.com>
In-Reply-To: <CAK4PFCWZYd6VGHa9HMk-XLeJjZG8aZmCt5LGJhaFVCbY1=hdtA@mail.gmail.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Fri, 5 Feb 2021 18:50:51 +0100
Message-ID: <CAMjhiJgn+QqZiK5G43XhW6z1nFeBKVnr=kMakRFhVRu+vs8KnQ@mail.gmail.com>
Subject: Re: [yocto] Appropriate patch posting location?
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Kent,

On Fri, Feb 5, 2021 at 5:14 PM Kent Dorfman <kent.dorfman766@gmail.com> wrote:
>
> Is there not a separate list address to post patches, so as to keep
> discussion and patch lists separate?
>
> It can be an issue for folks who are on web mailers that make you
> delete messages one-at-a-time.... ie "traditional frames based gmail
> interface"
>

Most of these providers provide an IMAP interface as well, such as gmail.

Also, in gmail you can tag messages to move into a separate folder for
easy delete.
For devs and users, the patches are useful info as to what gets
changed, I like them to be intermixed.

Regards,


Leon.
