Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web10.11729.1607711861747784903
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 10:37:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=N06kkH3P;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id p12so4634994qvj.13
        for <yocto@lists.yoctoproject.org>; Fri, 11 Dec 2020 10:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Ue1odXCNGtmOxCqrHkeN/l4O3ttyqezlRkpdJ4Tbi98=;
        b=N06kkH3Po2QJY3ErCMxqN12JeFCpEG8LseZW2IcypqyU06dLlyXSyaXJQ/HSQtBCDd
         1tUAL5oC9HCmhaOQ+KcGj+sYFZWRtK1n+3JgD38+B/57IIUlqLvGIGqEqirvUPsN/rsK
         LR/7Q0/mkmQP6INlN/W2VeAmm8e8BITDcxFFWJuJV1jiaz4L3Tf3c54EGNVOhNrRCHTb
         m9hsJ3dceveIedoYQ5ZaM7Yf1Mj+i12bfk5nVInsk/HGjy8HrcQEh4/K9WA19Pn9kIfh
         Ud/B8nX96XUvry46x7HQY9EAAbxcf2s80VzlwhXy21ukWu1JrgM1dr0xJyd4ijPB3VFF
         voMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Ue1odXCNGtmOxCqrHkeN/l4O3ttyqezlRkpdJ4Tbi98=;
        b=dZPO56AXZ9h4TlAHwgdMfU7slrmI6UhAlQByywAbxHe1Ypj6chRRecWdxINJu5FGwF
         qX5UEKJm4GGehHRJYkqF62QoBHM/DJEe3d0PbD9mfTXww7nvx7uQmOWJcDHSi7c/K5H7
         eEkHsBkLG2rZ1uX2r+S+bxZw6thn727EABuloduAxTbmBCaDzCdfbKoh0qiJIWZ7HnWr
         /KGzqsBkzDQPAKyvfLJkdNdMkcNYRnZ+lHJsIpum+F4xbxzLG76pdzHrn+fQscaCfov4
         6GM/2hOwJNwgzQgD/hHu8Cc8fYICK6TItiB8T+fEpGtZdNTcB7SZckkI8rrZWEAn+aaq
         51rw==
X-Gm-Message-State: AOAM530ID6ImBX4e0PNbxjkcnUGeUbyyxFO/4dDYMS7JnrBgKsg4qBKU
	EJ0zy23LmBihaLKjD+5DKFKlNLSPCgMzhp1DLR0=
X-Google-Smtp-Source: ABdhPJzGpE4Lz82IM3WMPPLVxY1dG6Snnken3H0V1ackjLLu/v3NF1RM8j/gBk0mDYW4xKlHplD5nVOV/5InGPtjOtM=
X-Received: by 2002:ad4:4052:: with SMTP id r18mr16969008qvp.38.1607711860696;
 Fri, 11 Dec 2020 10:37:40 -0800 (PST)
MIME-Version: 1.0
References: <5efa9771-376a-3e4b-2cad-bf7c6741679e@gmail.com> <7957.1607709086976048136@lists.yoctoproject.org>
In-Reply-To: <7957.1607709086976048136@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 11 Dec 2020 10:37:14 -0800
Message-ID: <CAMKF1sr37mwr_rADp8f4WTPWxgqsSmS+q22Kn7fB=KK_BNP==w@mail.gmail.com>
Subject: Re: [yocto] curl_easy_perform() failed: Couldn't connect to server #linux #yocto
To: vijayrakeshmunganda@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 11, 2020 at 9:51 AM <vijayrakeshmunganda@gmail.com> wrote:
>
> On Fri, Dec 11, 2020 at 09:04 AM, Khem Raj wrote:
>
> On 12/11/20 2:26 AM, vijayrakeshmunganda@gmail.com wrote:
>
> Hi,
>
> I'm trying to do HTTPS POST using curl with CA certificate, but I got an
> error as "curl_easy_perform() failed: Couldn't connect to server". The
> same code works on a Linux machine but not on my target board, I can't
> understand what I'm missing. I have an active internet connection
> without any firewall. Kindly please give any suggestions.
>
> check what all packageconfig is being used are you using gnutls, then
> you might want to try nss or openssl and see if that helps.
>

hard to say, unless more details are available, usually runtime deps
and build time deps are handled fine but there might
be some outliers.

> Thanks & Regards,
> Vijay
>
>
>
>
>  Hi Khem Raj,
>
> Thanks for the reply. I had installed openssl and curl, but not gnutls b=
ecause compilation was successful. I=E2=80=99ll definitely try ur suggestio=
n. Thank you!
>
> Please correct me if I=E2=80=99m wrong, even if dependent packages are n=
ot installed on target system will compilation done successfully? I=E2=80=
=99m
> also facing similar issue with zbar, compilation was successful and perf=
ectly executing on Linux PC, but not my target board even after installing =
zbar package.
>
> Thanks & Regards,
> Vijay Rakesh.
>
>
>=20
>
