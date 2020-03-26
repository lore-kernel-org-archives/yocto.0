Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web11.35670.1585226003848494380
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 05:33:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=QY0p3stX;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: krzk@kernel.org)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 07D9820409
	for <yocto@lists.yoctoproject.org>; Thu, 26 Mar 2020 12:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585226003;
	bh=KXDu9Yle0r01kjcve/NiwyZdLnsB0MU/GUDIJ5nOCps=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=QY0p3stXNbJy78V1Iv13Y9dRh7j09ssfjWIw6Pr+T5vQJcwmKNgOpMwWkiBBRMLO1
	 MNiCwVCh+Hzu2blNAehO+Xb9/xc9x2zX7Rj4Sq+nQ0G/GTMVce/9LJZSitgF/UR1rc
	 5V3aB7dmtyoDQRqOLBEuDolbiveR1RMcIUQ3mrAk=
Received: by mail-lj1-f180.google.com with SMTP id r24so6216130ljd.4
        for <yocto@lists.yoctoproject.org>; Thu, 26 Mar 2020 05:33:22 -0700 (PDT)
X-Gm-Message-State: ANhLgQ230tAxRQBSHF66VSq2PFIOaCtv9a7gjTAFVSCfd+Ku/5nwP7K4
	iJc0en5ulHycceT1pR4RPGOyXZ7bqWo5CifRW7w=
X-Google-Smtp-Source: APiQypL+7b9GxCYwwl+0aRSC7XaUh2h1PqdbLPmNE0RZz0ozK0Hie5ZmabRQXr0nQF5ZvHGXR6P9hnmD2QrnU6z0A/U=
X-Received: by 2002:a2e:b4cb:: with SMTP id r11mr5288809ljm.201.1585226001148;
 Thu, 26 Mar 2020 05:33:21 -0700 (PDT)
MIME-Version: 1.0
References: <f5322279-0aa2-348d-66c1-4e2b90296aee@xtrack.com>
In-Reply-To: <f5322279-0aa2-348d-66c1-4e2b90296aee@xtrack.com>
From: "Krzysztof Kozlowski" <krzk@kernel.org>
Date: Thu, 26 Mar 2020 13:33:10 +0100
X-Gmail-Original-Message-ID: <CAJKOXPeTH-YAGfOeeNMmM=tgCbfurVDWxg4JJpEiZ8L+CDsBsA@mail.gmail.com>
Message-ID: <CAJKOXPeTH-YAGfOeeNMmM=tgCbfurVDWxg4JJpEiZ8L+CDsBsA@mail.gmail.com>
Subject: Re: [yocto] extensible sdk, devtool not working, wrong python3 binary found in PATH as first
To: Mariusz Madej <m.madej@xtrack.com>
Cc: yocto-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 21 Jan 2020 at 09:35, Mariusz Madej <m.madej@xtrack.com> wrote:
>
> I use Yocto(warrior) and want to create valid extensible sdk. My problem =
is that after installation of created sdk i get:
>
> {SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/python3: line 5: =
{SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real: No =
such file or directory
>
> I installed also sdk-ext from core-image-minimal and there is no such pro=
blem. I started to compare differences between both installations and found=
 out that my sdk has binary {SDK-INSTALL-DIR}/sysroots/x86_64-pokysdk-linux=
/usr/bin/python3.7.real and this binary is not relocated(wrong interpreter =
path). After loading sdk's environment, PATH variable has {SDK-INSTALL-DIR}=
/sysroots/x86_64-pokysdk-linux/usr/bin as first entry - and that is why dev=
tool does not work. If i remove python3 from {SDK-INSTALL-DIR}/sysroots/x86=
_64-pokysdk-linux/usr/bin/ then devtool is working well. Working(relocated)=
 python3 exists in {SDK-INSTALL-DIR}/buildtools/sysroots/x86_64-pokysdk-lin=
ux/usr/bin/python3 - the same in sdk for core-image-minimal.
>
> Can anybody tell me why i have not relocated python3 binary in {SDK-INSTA=
LL-DIR}/sysroots/x86_64-pokysdk-linux/usr/bin and other sdk's dont have thi=
s? What kind of package it comes from? I thought it is nativesdk-python3 bu=
t core-image-minimal builds it also and there is no problem. Is there any d=
etailed documentation about directory structure of installed sdk?

Hi,

I don't have the answers for your case but it looks I hit something
similar with extensible SDK on Yocto v3.0 (Zeus).
1. My distro has:
DISTRO =3D "eagle"
TOOLCHAIN_HOST_TASK_append =3D " nativesdk-u-boot-tools"
TOOLCHAIN_HOST_TASK_append +=3D "nativesdk-cmake
2. machine:
SDKEXTPATH =3D "~/${@d.getVar('DISTRO')}_vf50_sdk"

3. After installing extensible SDK for my image, when I run "cmake":
$ /home/krzk/eagle_vf50_sdk/sysroots/x86_64-pokysdk-linux/usr/bin/cmake:
No such file or directory
$ file /home/krzk/eagle_vf50_sdk/sysroots/x86_64-pokysdk-linux/usr/bin/cmak=
e
ELF 64-bit LSB shared object, x86-64, version 1 (GNU/Linux),
dynamically linked, interpreter /opt/eag, ....

4. The /opt/eag comes probably from:
$ bitbake -e
SDKPATH=3D"/opt/eagle/3.0.2"
SDKPATHNATIVE=3D"/opt/eagle/3.0.2/sysroots/x86_64-pokysdk-linux"

... but I do not set SDKPATH directly. It comes from poky defaults. I
also do not install the regular SDK.

Anyone has ideas why eSDK/sysroots/x86_64-pokysdk-linux has
non-relocated binaries with interpreter pointing to SDK (which is not
installed)?

Best regards,
Krzysztof

Best regards,
Krzysztof
