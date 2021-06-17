Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web12.1632.1623944752475785636
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jun 2021 08:45:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=kkpiJoWt;
 spf=pass (domain: burtonini.com, ip: 209.85.221.46, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f46.google.com with SMTP id z8so7297465wrp.12
        for <yocto@lists.yoctoproject.org>; Thu, 17 Jun 2021 08:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/jEKJ1iKvvphDBzyE1TTSfjjgaGm10kWUrJ1QuDRrQ4=;
        b=kkpiJoWtFyQKrtOQw97/GdE9+oydLJFEu1WJMJ92q+kJ6fpdZ2xbOswFKvc+pUKhpe
         n/SIlVMpHgqUf6LGp4O5EI+2o5TxtduhwqpGKH4YErM8m/oay83wuGATTNROJIyVBejZ
         CRhn/Pqz+rMIynetyMoGnrbV5wJbRnJ6n2Vz/G7HWo6HQpd/ncRNvQKLtFZ8caUvMgeE
         YzmBlx0GZXlDoPPF+iGy8q6pZZ9h3EUDUUqfU4p7jrbk3JtBp7+vSkYIEuvJr4PdLnqO
         enzRovwXBtitF8yotD/mjIJcpzzNGqawuTzoNsZlE35kw5bI5qaA9XeV89QjzHEe779j
         RdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/jEKJ1iKvvphDBzyE1TTSfjjgaGm10kWUrJ1QuDRrQ4=;
        b=U83XmBRMpiSFvdMT04l7m455ekV3W7cKPnUEwp7wh+Ehzv+XJkRoBWaeYFsnuj7LU9
         B2klRBgZbn8fe9tMDunuMgSDVKdcqkv+ZroAAFhVzFkp+690fGY4hOijkFWv9Klf4n5t
         CF0jEpGeYcUQm172VaGxvD5kxwyX4Y1CrrAkraC35hshEVP3Rul8bZ2F/V44MoSHITt9
         sduX5YDbcgsAZWD+hI0pq7gzcVNFRGe3uvKQA2/GdUijCG0o7Klibv4vV/KoqyF0oALU
         3Ts9QqgKmC4SButyytvihQi1pwNzH1fS+X+g+MK0yDxWqetqWjM6eDoMZXNtqK8Feok/
         /8PQ==
X-Gm-Message-State: AOAM533h2zKh26v4dOIZcQHyAXJ7b2KzoLVfUa+qrwJg0HWUDFF7mHbY
	mp4VQ1vmW3eEPsWd57qxNdCNC/PcQwxYJjjzWpD62g==
X-Google-Smtp-Source: ABdhPJypS+ujzRBkvifuKmUSYMNMTBw217GwyUIP0PgvJ1qcGwymg3B0q/tXu/pkZxRWxDKzJVyf1UE1+nhaHc3kxaw=
X-Received: by 2002:a5d:5082:: with SMTP id a2mr6604170wrt.199.1623944750972;
 Thu, 17 Jun 2021 08:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <hi3v.1623939917177093607.L9jS@lists.yoctoproject.org>
In-Reply-To: <hi3v.1623939917177093607.L9jS@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Thu, 17 Jun 2021 16:45:40 +0100
Message-ID: <CAAnfSTst-Ao5k_aM2bYN3f-cxi77i29GSB=CWgtv1W9Fspy-aw@mail.gmail.com>
Subject: Re: [yocto] Integration of mpg321 in Yocto Zeus #zeus #yocto
To: Poornesh <poornesh.g@phytecembedded.in>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

oe-core has mpg123 already, so just use that recipe.

Ross

On Thu, 17 Jun 2021 at 15:42, Poornesh <poornesh.g@phytecembedded.in> wrote:
>
> Greetings !
>
> If anyone achieved the task of integrating the "mpg321" in yocto , kindly requesting to share the procedure/steps to be followed .
>
> Thanks
> 
>
