Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web10.6363.1601533765097074001
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 23:29:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rv+Utc19;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: thisisaash9698@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id l16so5009423ilt.13
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 23:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=n8Mn+d2605g1gGG8xo8MvYWHIwjutd7ajVYzb56dy1E=;
        b=rv+Utc19yo3TgnJXrXlHt752Z8a2eveMISSMhHuU7H4gHu35vA0BkCX0ojETen/Dqh
         EwF8YRRbNx7ojMFT8t6KWCdb6QB1eD6iRpMEhnBAoKDmt0NyDTBtU7okzI1+ah1dUUCX
         TpRFECdIdOXXjwD+1GeWRQadA59BESXNv0LElSnpcPOXCrsOoagF06K42xT2cqEnaKa3
         hTy53sw5uO6v1AzM/MHCYbFpLAHUUo2sllna+NwkVJJaf4ZfoZa2K+5ZlN/qDdC0elZE
         8BthE1GT3JApH6JtdH41haXgVZ9f5OYknsh07/PE0q3M9fwb4wHLTYA0fMCMG3gJ02aT
         He+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=n8Mn+d2605g1gGG8xo8MvYWHIwjutd7ajVYzb56dy1E=;
        b=WCOrpy8hwqdyOdwW20FrMYW8EPUlHi16dFvojaCj+NjArFEGaXTV8QDOiySmIgM2no
         dvfNo5a91yPgRCFnKtKJt1mRVQEkNgQFuoruIUTglj4TlzcNcTGcCyvngzH09Z2UZ+25
         IbB1P1M7i/iFP6ouLhpcapPVvFJhQWlvxqqADWDlc9OZI3y89oe8+1OcwCT/0Aaf7nxX
         fq2GIayQgo9pCQj+A2CJlcpx3tXP7IDP5p/UfJ9UnP9XDQllknAVV0HxdZBy2P1Nr6E3
         fM7Hdf4XJEBKLZsTB8E3W+dAXHYyZ2cFKV2xZaGT5mNgURGJJWhMSBK0DZOUW3wNU334
         /KCA==
X-Gm-Message-State: AOAM532Fhe+nvBnh1R0YNeeLh4LGNbidtlp0bJc5/iZJlliq5/eOUoRU
	9OPFr8hnwrlNoj3JkHZKyAJWmftRrOsmHCULVPwtIj+Rm6E6Hn30
X-Google-Smtp-Source: ABdhPJzBvB13ZsuTnvQWGh+YspbNDOw5K+CEaXCfdipm2tYKOqD9fre4yLTJ1y4mWvXVM8s7L/S8lE+nG/XTvWbMvBo=
X-Received: by 2002:a92:bb57:: with SMTP id w84mr1272723ili.41.1601533763990;
 Wed, 30 Sep 2020 23:29:23 -0700 (PDT)
MIME-Version: 1.0
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Thu, 1 Oct 2020 11:59:12 +0530
Message-ID: <CANVQz1YkLgLj-Eq2bcYz933Lp4G-qvQ7=uWeq2XPjs8jRvFCcg@mail.gmail.com>
Subject: Perl-Native compilation for THUD in Red Hat 8
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000019397705b0962309"

--00000000000019397705b0962309
Content-Type: text/plain; charset="UTF-8"

Hi Developers,

I recently migrated my machine to Red Hat 8 , I am using Yocto Thud to
build my customized yocto image.
However, I am seeing the following Build Issue while compiling Perl-native

/usr/include/errno.h:48:10: fatal error: bits/types/error_t.h: No such file
or directory
|  #include <bits/types/error_t.h>
|           ^~~~~~~~~~~~~~~~~~~~~~
| compilation terminated.

Is there a way that this dependency can be moved to Yocto itself, or is
there some alternate way we can try out.

Thanks in advance,
Aashik

--00000000000019397705b0962309
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Developers,<div><br></div><div>I recently migrated my m=
achine to Red Hat 8 , I am using Yocto Thud to build my customized yocto im=
age.=C2=A0</div><div>However, I am seeing the following Build Issue while c=
ompiling Perl-native</div><div><br></div><div>/usr/include/errno.h:48:10: f=
atal error: bits/types/error_t.h: No such file or directory<br>| =C2=A0#inc=
lude &lt;bits/types/error_t.h&gt;<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
~~~~~~~~~~~~~~~~~~~~~<br>| compilation terminated.<br></div><div><br></div>=
<div>Is there a way that this dependency can be moved to Yocto itself, or i=
s there some alternate way we can try out.</div><div><br></div><div>Thanks =
in advance,</div><div>Aashik</div></div>

--00000000000019397705b0962309--
