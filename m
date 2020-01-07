Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.3415.1578388277438257032
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2020 01:11:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AcPkEulF;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: vincent.prince.fr@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD4BCE0134F; Tue,  7 Jan 2020 01:11:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1865CE01345
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2020 01:11:15 -0800 (PST)
Received: by mail-wm1-f67.google.com with SMTP id m24so18065786wmc.3
        for <yocto@yoctoproject.org>; Tue, 07 Jan 2020 01:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=E4sWGiF10mwxKVl8qsrE6f8ySH1z/jrScz3UZcnRufw=;
        b=AcPkEulF7CMK8Deyx8wRQShU68DlhgjBnDSvHYK0U7VX308f5W4nusUUL5bb+YHf5q
         Cj30XYybcUUsn1fcZPkfOZdA58KH4RhzKl3lAfqpZaiyI/IVnzmf5JLa6g5n4L+ljH5O
         nxbkOjxdm0Q6JHbemFC8xui+L43DlRngFC3JSnKpgO1KiNLLXg2P0t1q67A7RxYV5QCh
         OhEIYehhQTcjPRuzFIk74S95xPa8EaZZ+EaaAqaW6iqSasNvYjirlpajAMtTt4xyqyk0
         JeC0aWshBAp0oaQB6ZmBoXMn50MLaUuoKb62Beq82liUOQ38sesH+OJIwskufB9pu2Gw
         /ObQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=E4sWGiF10mwxKVl8qsrE6f8ySH1z/jrScz3UZcnRufw=;
        b=SW9wkkIOTYa53wS7gGeRT2UwNdVXdsVUFR3w6un7BBcHPdtr+P+VRPDPqu77lYlA4S
         W7SkVwWgdwUq9NyIYbzZO7LNTQ7CCMRBlxO3s33G0xaXrTXG2c5a7Onm8zTUHfTLLbL7
         Gqk2I9+T0ytJ2YdoKrapjBWW/Pjwdn38w0phI+wFoyJSFoOfQs88Gt47vQ/tDXuRfA/S
         E4VhSbFMUPm7/k56009rmdcrvk+nu7m9mFolxpw51nsSVf99FTVf4T6jC8Bok2vzydH1
         8WZMhxmzrJ1KhNNusWy+3IAfdrp/BUC0beOdh4H84o0pR6X6+vQlv/H8gAPiGPGKa625
         aF0Q==
X-Gm-Message-State: APjAAAXeKQP1mj5kI0qeMiVTNDrElC9jwz5IkppSNP+8s6rCGkhpWKxx
	6I4wo6RbYHZnfvtxgjNkAk+pHqcBf2AC6CqBSSo=
X-Google-Smtp-Source: APXvYqx28Q5gKUqO5JcmxcCdQWO0PzxRumr+5Kvlo4ZUUxQAlMYlYMf+Vrz1mcXPliiu7bHjga6qOPV1toAQ9+z4id0=
X-Received: by 2002:a7b:cf12:: with SMTP id l18mr41557864wmg.66.1578388274892;
 Tue, 07 Jan 2020 01:11:14 -0800 (PST)
MIME-Version: 1.0
References: <20191204023958.31799-1-akuster808@gmail.com> <20191204023958.31799-4-akuster808@gmail.com>
In-Reply-To: <20191204023958.31799-4-akuster808@gmail.com>
From: "nefethael" <vincent.prince.fr@gmail.com>
Date: Tue, 7 Jan 2020 10:11:03 +0100
Message-ID: <CAB2nKc8=-WcJcJGfYgSZWeU06sYvwpMYC9AHszCT1T34meD8Tw@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 4/5] tpm2-tss-engine: update to tip to us tss-tools 4.0.x
To: Armpit <akuster808@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Armin,

Would it be possible to add this in Zeus branch ?

Best regards,
Vincent


Le mer. 4 d=C3=A9c. 2019 =C3=A0 03:41, Armpit <akuster808@gmail.com> a =C3=
=A9crit :
>
> LIC_FILES_CHKSUM update to be true BSD-3-clause text
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  .../recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb     | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.=
bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
> index 8825737..3641b1b 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.0.1.bb
> @@ -2,13 +2,13 @@ SUMMARY =3D "The tpm2-tss-engine project implements a c=
ryptographic engine for Ope
>  DESCRIPTION =3D "The tpm2-tss-engine project implements a cryptographic =
engine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss=
 software stack that follows the Trusted Computing Groups (TCG) TPM Softwar=
e Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the=
 TSS 2.0 for downwards communication. It supports RSA decryption and signat=
ures as well as ECDSA signatures."
>
>  LICENSE =3D "BSD-2-Clause"
> -LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D3fb0047fd29391478a71e8e6101c7=
6eb"
> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D7b3ab643b9ce041de515d1ed092a3=
6d4"
>
>  SECTION =3D "security/tpm"
>
>  DEPENDS =3D "autoconf-archive-native bash-completion libtss2 libgcrypt o=
penssl"
>
> -SRCREV =3D "e1bbabe29377e45282d753a1b103625c420a19cf"
> +SRCREV =3D "fdc8f65dfc8bad8b5a3aed181fae338267308f70"
>  SRC_URI =3D "git://github.com/tpm2-software/tpm2-tss-engine.git"
>
>  inherit autotools-brokensep pkgconfig systemd
> --
> 2.17.1
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47547): https://lists.yoctoproject.org/g/yocto/messag=
e/47547
> Mute This Topic: https://lists.yoctoproject.org/mt/66197802/3616779
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [vincent.princ=
e.fr@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
