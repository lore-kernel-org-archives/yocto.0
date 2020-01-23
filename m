Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.99.1579801155673124319
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 09:39:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=BYBD29vM;
 spf=pass (domain: linaro.org, ip: 209.85.208.176, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-lj1-f176.google.com with SMTP id w1so4485269ljh.5
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 09:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=m+QYuyJEQFXFPKIGehoWJfMKnczKjLOIZHbwtA1/A5U=;
        b=BYBD29vMAcEn+0iZSvE7ZbiDNiFuDJ2wiH6tOYL/QzBEekNG/ijzo00+xKjuwt8JOq
         AVp+a8fIeCa1NkJc1+UWgZfbtIUGaQCkCvOzOoLKzSAlr4haDOmIfgKRNs9M5ajlswce
         NSxKVWGggPAH5vc9JjJXdj3NegzbvUfFnKY0a1YghaQ2/tHb0KLFwUJMkJGGyE3JVmZE
         Kx076V0VHQSOg6jt4oR0/zxY1aTVZDLkCd6uzdcoG/33S7JW34Ujt3TplfqtP/ff86Ht
         9n1Ca5OiL5ALXCd/XxZijZXNcE/TjEbNRRMprOIhNzZ3aWMhXrHHIDheWsyYQrLzXNLc
         CHiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=m+QYuyJEQFXFPKIGehoWJfMKnczKjLOIZHbwtA1/A5U=;
        b=tqy93swLisGdfrfXKSGiVYnv2n1UCD0b7PMIT0TzdZe6mYhpmJsE1pSsBY/K40o4NU
         UtcxVk6+Q/40rXrypcfpaKLs5R8V9rzw1/EdyOJyxx+ic7/b2nYg4+UnK1SCwL4Y/eUe
         O9WrWW0SadAWPPB4Bw/ElssIgtDKSQvpkuHEX66aNHVH6GU2QsfQKmfzYsYKPST//sy/
         SpVAoBAkAVCnHRjDGB+Zwprfiyk50AboSt2yFCpFitZHsGM2sprCoGU6pqFu69xoIr1f
         QCfgdK54v5Tnu6HAynZaDRpuoID9AjP24bz4QyOISNglARGKy5zqDZZJbgkms/n0SNCZ
         OWkw==
X-Gm-Message-State: APjAAAVY0g2pvh3WvA2WtJLDONawYebCxy/t2YvS3OBHABICnDMgoRC9
	uxt6gkeHTn+9s0bVZebtqtEce3/9AXBmNpPuFJloQg==
X-Google-Smtp-Source: APXvYqxNog6QaVE8ak4VKz6POli31P/xjVFvq9nkI6PjZnDFq8FY0i8Uq9OcVaUeZqqrVpw6VLn76ZpOnCiW9e4nrV0=
X-Received: by 2002:a05:651c:8f:: with SMTP id 15mr24001007ljq.109.1579801153672;
 Thu, 23 Jan 2020 09:39:13 -0800 (PST)
MIME-Version: 1.0
References: <26585384-784f-bb75-feaf-082ce07e5ccc@3mdeb.com>
In-Reply-To: <26585384-784f-bb75-feaf-082ce07e5ccc@3mdeb.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Thu, 23 Jan 2020 18:39:02 +0100
Message-ID: <CAP71WjybRbVXL-rYDEn+szPw49Wzcw3EJbLseF2UvSPcU0j_yA@mail.gmail.com>
Subject: Re: [yocto] Confusing requirements for Yocto Participant badge
To: "Piotr Kr?l" <piotr.krol@3mdeb.com>
Cc: yocto@lists.yoctoproject.org, 
	Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi,

On Thu, Jan 23, 2020 at 4:56 PM Piotr Kr?l <piotr.krol@3mdeb.com> wrote:
>
> Hi all,
> We noticed that there are confusing requirements about maximum number of
> employees for small-business applying for Yocto Participant badge.
> Registration form say up to 60 employees [1] logo guidelines say up to
> 80 employees [2]. What is the correct value?

thanks for noticing it.. It looks like it's a typo.. We will fix the
registration form to show 80 employees.

>
> [1]
> https://www.yoctoproject.org/ecosystem/branding/participant-registration=
/
> [2] https://www.yoctoproject.org/logos-and-guidelines/
>
> Best Regards,
> --
> Piotr Kr=C3=B3l
> Embedded Systems Consultant
> GPG: B2EE71E967AA9E4C
> https://3mdeb.com | @3mdeb_com
>=20
