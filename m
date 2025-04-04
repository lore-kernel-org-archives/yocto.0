Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EDBEC36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 09:36:42 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.7322.1743759396559732973
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 02:36:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fcNu9dVo;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6e90b8d4686so15715076d6.2
        for <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 02:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743759395; x=1744364195; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+KaWLQbVIeBvAdipKtTgrwShp4UsjDjA4Eshw710vI=;
        b=fcNu9dVo9/CryqFr0Weg2ftCbYzxo94tbRxk4NwfOMCCRGjRiPXoTqJlAsGdBpmaI+
         HRcJmDHtahm5O48Fe8dY/06obF6g95O/96zHJbjFE1T8f+QRvrqiEEMxakP9h5U6aqfa
         L4xAKtg8Ok7wz35+BsLdF+YV7tVDtina7/X2yb+9+BhFNp1kWBynQQK1nMi+Fq4ySyRw
         D5aJwomH6TzlQeVShXUf7Yp5EuFDBTM36A9jgHu5FrLcjLpF0fXF8eo0acdSf/V8A0vW
         b/8nASmZ3uzWPnqhNcOgv3/Htmt9Ol27wqLVyU0ieOYUhQIe2SgCtFYIb+tM5R8CwKxY
         nTDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743759395; x=1744364195;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R+KaWLQbVIeBvAdipKtTgrwShp4UsjDjA4Eshw710vI=;
        b=eT/KqWJagk2XWiPzHRg8TMNOnM8bH4hk3ld6PCFvcJg6x1ompFvpBCTODpKFPoUTtM
         khR8Q6N1o3P3YozsQqrycnzX4uMO9Nk4LlMxltFw+E/kP3B6lB4Jt+rgoEeGb/9LsA+9
         pChn7c5rasp3hG8FkqGJ4CqKg7ymQZ6jBOfyXVVoN6F3EN0pv03bnPxA24cho5WXpgE7
         5v35VgPFcPPSiRvfLVFVrSG/Y3/8dWhEEj65znwO+JtFXQazBaUyCPT+GjMe+0IWPW+B
         MzsO5g/VLi7yd3cd4WT4i/zyTHC0oVoUDPHxRvfPhTAJKKhgSWDomviQhUAn32/nBWM7
         t3KQ==
X-Gm-Message-State: AOJu0YwUy2I6JOdId28037ufMUQVNQry6xjNnboj6c5POxHEw28spt6n
	jKB06q9UU6hi/MitUTGIxVsQSjUOFvehZaYN/LoJcB5vGwFCXWjSTfsEQyVYnRbEXKniawDQ4mK
	hwdhpqJ6YrhkTco1tdDx+zHuq3uyjmA==
X-Gm-Gg: ASbGncvdCHaUBDSM0qhOxVP17OCW9uXmk7mc/ZY0bV3GVDJHNguiLA7YzI14R714RoS
	SvCLUuu6h8sClKpn6cUn097FdupRwXWXW617tHD2aj6FJavEWb273Q8ry0qi4wFyB1rZrp7Zxvk
	ZRHK6FGwninogIdjxaz//Ea6nE/+hLYxrPkSN8srnUG/TP2wgXaQq+XBz39FX2by48uVGxHmQ=
X-Google-Smtp-Source: AGHT+IFeRRhMIglZOfMQC8r/Z1ddF64M20QdPIGrdxLXQOfFfknGVTI4HH3ejC7v1zOajJctUzAJaKnsoCzhmV8ku5g=
X-Received: by 2002:a05:6214:1c4c:b0:6e8:f949:38c6 with SMTP id
 6a1803df08f44-6f01e790021mr36285736d6.33.1743759395598; Fri, 04 Apr 2025
 02:36:35 -0700 (PDT)
MIME-Version: 1.0
References: <abb758f9-f4fb-476b-8dca-00ed032cc259@gmail.com> <7593.1743758104645038790@lists.yoctoproject.org>
In-Reply-To: <7593.1743758104645038790@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 4 Apr 2025 11:36:23 +0200
X-Gm-Features: ATxdqUH6Cc5pyi49ZrQfMzAB_e3r_NOZvrY8TdooGURmstqA1v0wXci5IQ0vDl4
Message-ID: <CANNYZj80HxO6r5WTGXW3GJNrihzqoqcKxCu=Wcygzb6BQwrWJw@mail.gmail.com>
Subject: Re: [yocto] Error while building python3.11 as an alternative for
 scarthgap (OpenSTLinux) #openstlinux #bitbake #yocto
To: yocto@lists.yoctoproject.org, abhijithkannan45@gmail.com
Cc: Gyorgy Sarvari <skandigraun@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 09:36:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65104

On Fri, 4 Apr 2025 at 11:15, Abhijith via lists.yoctoproject.org
<abhijithkannan45=3Dgmail.com@lists.yoctoproject.org> wrote:
> If we were to go with STM32MP157F-DF2 board, I didn't have to try to inst=
all python3.11 on it. I think the code would run just fine on python3.12. B=
ut we aren't using STM32MP157F-DF2 for the product, we will be using RZ/V2L=
 and that have only python3.8. Python3.8 isn't feasable.
>
> The reason why didn't try to upgrade python3.8 to python3.10 or higher wa=
s based on the online forums stating trying to upgrade the default python3.=
8 would cause issue with other packages. I thought I would having to build =
an alternative python would much be much easier than upgrading one. Anyways=
 I'll try that as well.

Just try to use the standard 3.12 from scrathgap. Please, pretty
please. How many times do we need to tell you that? If you run into
issues with 3.12, show them here, and we'll try to help. Seriously.

Alex

