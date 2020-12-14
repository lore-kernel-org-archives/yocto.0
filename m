Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web12.31372.1607930085184704843
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Dec 2020 23:14:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h8xqiyI2;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: vijayrakeshmunganda@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id n10so3851142pgl.10
        for <yocto@lists.yoctoproject.org>; Sun, 13 Dec 2020 23:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=HSPCjUG9Qm+JiDURzZFmklXKlb1cnVB219pc7biEUEw=;
        b=h8xqiyI2ZOEuvY8AerRPOExvCQDbtwT2qfNPKAY5nXiba+y9yhN0gfD+6f/3xlth3C
         ET5niMJe6UioOqMrMDBqx519FeIJTgrPdUPvl7TXs3g5yDkZbWi8njgGdtVhEGmkWrn2
         T8LZnXL5Ra6ap0ktazR/MrOuVsECdO5wTQpku9XFNh/8aEcPI/T80/goUhs34XQIMBJn
         INAtet2TUWeqVKhNyJRLrvfxgdht7PygSPWjZaVfjVH3LnumdRsQexGDgheME1kG1M0j
         ia3nnuOwcMCP/XNqZX+XMNAJZZ0YWhKqWIoLyOjTjbA5OFDH/xX8XnAozT+44js7b7Mo
         DiUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=HSPCjUG9Qm+JiDURzZFmklXKlb1cnVB219pc7biEUEw=;
        b=KUoZIT+HNfpiQOZjHgmr6ljP+qABa/fLyWG068q1e9xT3J0f/Y2h1Gn81QN5xHITTk
         EW++hPmIPVS+kmsVoIOUR4P40R3RtfXWCMSi5NzXr6F3UJoMfU7YknLLffQ0VO52o1nL
         DPJKHYKOo/DzVVL9DuGVz3mNkIUcLQIFze+YRyT4MHwPgOHnQqAxUNNaCFC8dMilzVEl
         40v2qKsBxkDMRy9FFMfrd/SlHr5Y1vlmsS4suSgUg+biWTfIv79DPTjR55rfEnarMfL8
         cPXmtbBh6M6Po8E+OmX5XnEfAL/Q47p2Bo8nv05tjEsFPFRpwXEGmaAnh8KKFBbvZDaN
         bAqQ==
X-Gm-Message-State: AOAM5310FCQOx80CuVwZl2bil8FeX4Qrk2G72HZIl7ElixmBaUccWCmG
	dZNBI/gf0zePseqL+0iihXTasKk57uo=
X-Google-Smtp-Source: ABdhPJy+POgPZyU5HXW9n9kdJuqWTX2S1kWO9mOuwu5hRLbW+JQdJm5t1TLtp3y2CeXg5j2eJHwGyQ==
X-Received: by 2002:aa7:860b:0:b029:19e:2827:93b7 with SMTP id p11-20020aa7860b0000b029019e282793b7mr22658212pfn.22.1607930084422;
        Sun, 13 Dec 2020 23:14:44 -0800 (PST)
Return-Path: <vijayrakeshmunganda@gmail.com>
Received: from ?IPv6:2401:4900:33b2:c745:8c9a:2f5:1f03:6183? ([2401:4900:33b2:c745:8c9a:2f5:1f03:6183])
        by smtp.gmail.com with ESMTPSA id f90sm17800560pjd.32.2020.12.13.23.14.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 23:14:43 -0800 (PST)
From: vijayrakeshmunganda@gmail.com
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] curl_easy_perform() failed: Couldn't connect to server #linux #yocto
Date: Mon, 14 Dec 2020 12:44:41 +0530
Message-Id: <C41178ED-B6CC-47B3-9404-EAD527422F82@gmail.com>
References: <CAMKF1sr37mwr_rADp8f4WTPWxgqsSmS+q22Kn7fB=KK_BNP==w@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
In-Reply-To: <CAMKF1sr37mwr_rADp8f4WTPWxgqsSmS+q22Kn7fB=KK_BNP==w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: iPhone Mail (18B92)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Khem Raj,

It worked. Included gnutls and tested with other network.=20

Thanks & Regards,
Vijay Rakesh

> On 12-Dec-2020, at 00:07, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> =EF=BB=BFOn Fri, Dec 11, 2020 at 9:51 AM <vijayrakeshmunganda@gmail.com>=
 wrote:
>>=20
>> On Fri, Dec 11, 2020 at 09:04 AM, Khem Raj wrote:
>>=20
>> On 12/11/20 2:26 AM, vijayrakeshmunganda@gmail.com wrote:
>>=20
>> Hi,
>>=20
>> I'm trying to do HTTPS POST using curl with CA certificate, but I got a=
n
>> error as "curl_easy_perform() failed: Couldn't connect to server". The
>> same code works on a Linux machine but not on my target board, I can't
>> understand what I'm missing. I have an active internet connection
>> without any firewall. Kindly please give any suggestions.
>>=20
>> check what all packageconfig is being used are you using gnutls, then
>> you might want to try nss or openssl and see if that helps.
>>=20
>=20
> hard to say, unless more details are available, usually runtime deps
> and build time deps are handled fine but there might
> be some outliers.
>=20
>> Thanks & Regards,
>> Vijay
>>=20
>>=20
>>=20
>>=20
>> Hi Khem Raj,
>>=20
>> Thanks for the reply. I had installed openssl and curl, but not gnutls =
because compilation was successful. I=E2=80=99ll definitely try ur suggesti=
on. Thank you!
>>=20
>> Please correct me if I=E2=80=99m wrong, even if dependent packages are =
not installed on target system will compilation done successfully? I=E2=80=
=99m
>> also facing similar issue with zbar, compilation was successful and per=
fectly executing on Linux PC, but not my target board even after installing=
 zbar package.
>>=20
>> Thanks & Regards,
>> Vijay Rakesh.
>>=20
>>=20
>>=20
>>=20
