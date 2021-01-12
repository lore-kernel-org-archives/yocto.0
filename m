Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web10.9562.1610461671508345328
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 06:27:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EzV6kReg;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: vijayrakeshmunganda@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id q4so1475198plr.7
        for <yocto@lists.yoctoproject.org>; Tue, 12 Jan 2021 06:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=GZXCaKZUl6e1Ge887gTNAN2GNt8um+5xrVRq/TXhefM=;
        b=EzV6kRegeVjlPNPI8OiyN9qSTSpOfuU/LTgH5423pdAhF9bPUHDdYiNQ4sJsQLJQT9
         odn9U4YtRIG9HioFoUm3apT83P5agdIe7yaDN+z/BTpzqy9NgAZH+Ra6uIlz6ieJyaCG
         09YDzBgwF9yDup90dxHsontt0zZ55eQK+1IQYcW9XVhRJIh3VmPrrbsOtgbD7WVsk9E5
         GWw4mVK99U18lSjmpUCyTi6rxCsnGsgNYIjzU2XGVcTDp8asUVDg1U6S9f7WbTgaPFMh
         O6ruzR53u7skpksgZHrnWhipVVlpuE+uHvRkqomIw86IaZsvfTslWnGMjHgXQMFDWOVu
         ZBfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=GZXCaKZUl6e1Ge887gTNAN2GNt8um+5xrVRq/TXhefM=;
        b=YDXJvRiJc4VPeiTXf3W7O9jztlDMLqsBS+etVrxjP0zWL/tc+lREBi3SKmy1bigmph
         Qz0In7V+lSM8JTXq1dQXxmBVsWLhOFc3Nrglz0VAcKt1J9eP1s49KAlbeEIX/FOwu3G0
         NXceaASaot7t0UMiSyYUs6VNg+85jUdxPkKEWGQyB7iAb7drdzP5duNg53ekKXNj2SVx
         vyA+5LIYjh1SbmMRkmL4uxC2ChUaU7sfZGxL1HDYp1/N/SAS39EmffVHG31ATo0EhFp+
         qjiyovO4vDLPypSd4KTKX5HE+chZDoL+rfSEcskBAuQ9wCJ0LoGY1YIp8QRQnvkflkG4
         hdvA==
X-Gm-Message-State: AOAM5309DlCrkr14kLZtTK3auk9/jIr2F94GagaN/+UMA02AaJesHDnJ
	yqIOB+xXs6fowmfTodTejGnpEDbNjeOxCFdX
X-Google-Smtp-Source: ABdhPJwTOYcxAea19lQKw/ek6gu6lmkBIdsyWdG0LbskToKxiwjqF+Ha0UTk/2IXEaVqKqFnBSF0aQ==
X-Received: by 2002:a17:90a:a88:: with SMTP id 8mr4957791pjw.120.1610461670809;
        Tue, 12 Jan 2021 06:27:50 -0800 (PST)
Return-Path: <vijayrakeshmunganda@gmail.com>
Received: from ?IPv6:2405:201:c015:f064:8d11:62a2:a0ba:fd41? ([2405:201:c015:f064:8d11:62a2:a0ba:fd41])
        by smtp.gmail.com with ESMTPSA id p17sm3389961pfn.52.2021.01.12.06.27.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 06:27:50 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] Unable to add pre compiled library #yocto
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
In-Reply-To: <CAMKF1srUErgMnrjKfAPJr8--8jPde-W=EH23JpKsZQJuvPcdAA@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Tue, 12 Jan 2021 19:57:46 +0530
Message-Id: <A05C12BC-6AC6-468A-960C-2597E4CFB355@gmail.com>
References: <CAMKF1srUErgMnrjKfAPJr8--8jPde-W=EH23JpKsZQJuvPcdAA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: iPhone Mail (18C66)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Raj,

I had downloaded complete meta-clang and ran bitbake then I got an error m=
essage as layer is not compatible with dunfell version. Then I had download=
ed libcxx recipe and added into the build, but do_compile doesn=E2=80=99t s=
how any progress, even after two hours at shows 16%. At this point RAM usag=
e is 72% and CPU is 43%. I=E2=80=99m not sure whether this is related to me=
mory resource or any other.=20

Thanks & Regards,
VR

> On 12-Jan-2021, at 14:38, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> =EF=BB=BFOn Mon, Jan 11, 2021 at 11:46 PM Vijay Rakesh Munganda
> <vijayrakeshmunganda@gmail.com> wrote:
>> Hi,
>> I'm trying to install a pre-compiled library, but I got an error as fol=
lows. I had tried to add libcxx from meta-clang, but it doesn't compatible =
with Yocto dunfell version. Is there another way to avoid error?
>=20
> it seems to need llvm C++ runtime and using meta-clang/libcxx is the
> right way to go about it. What errors do you run into ?
>=20
>> ERROR: tokbox-2.18.1-r0 do_package_qa: QA Issue: /usr/lib/libopentok.so=
 contained in package tokbox requires libc++.so.1()(64bit), but no provider=
s found in RDEPENDS_tokbox? [file-rdeps]
>> ERROR: tokbox-2.18.1-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.
>> Thanks,
>> VR.
>>=20
