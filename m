Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web11.1648.1612485795254706448
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 16:43:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GjgT0s6B;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id z32so3870051qtd.8
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 16:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=AXxZhNQuw66WmOYNLcioBL9PSMBv8eiAxdD0AHKGJ+8=;
        b=GjgT0s6Bmgu81nLhUtvG77dBkpXzgMSjXsaCrOCdue8gp+Y2KbIiQ0w38Vn5DGFi/c
         seL8r84r1Aq4xw8qxEBv2mtUPOZxmXxXGfZo/SWI1uwRR8lApqPxCZSUs6s8SUSw6Lh8
         UYMdggcpFcsMaWAAIyihPhlEDfTekEpohxPuvrSnuU3JlQF0LlgGW5G8ixYPrz1atD3c
         POXiD0jbQK7Y7MkXH852usYzRrYiRMx6377eZnZiK46XLR5dO5WrjaeNPA7SsR6yVTCu
         hES+19IyT7mbuQHgdvvrjnDnwm6z/A3TaXoquV0qQ9DLvs7YmadRhoFGtic2txf64R3Y
         U2pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=AXxZhNQuw66WmOYNLcioBL9PSMBv8eiAxdD0AHKGJ+8=;
        b=LTuP3mEV1rXbFvzYVH+KyQMggzo4PJ3rUQ7xUMBzZ+1EusmzowU0fiTSZxXALqk8dO
         QGFREAsnrMKDLk4l9E8zeKvro9+9rQiVAP11Ric3bUw2YFKjN+G/LUznjxAheTNx/TUV
         tVUR+k5YC/aILPHaA9wuAN/n9HfDy0d4R3pKwJpuMwLdkdRVYKNrfQy6Ev5qN8VMsYkx
         lgljDlvz4/WFr1LwB6aK4LNzcp9WTS+XtGG7keLjbWwIskq2cUGECzz9l/GN8qb1xUYY
         XIsRXBSgucPvnoaolnFD30IAOmtBvLQzZms3lAMFVXGfNaPka78PATmq3vZMNILBB8ia
         iGyw==
X-Gm-Message-State: AOAM531/kPiK5TZMCChn9eHJQRFKkRsTqxSc9FLmJIT/QWKPpbhGr6Il
	WPEkiodNKK6xZiKJV55cOqOHfxs3Q+DkPvywNEr0M+dpM9GF1Q==
X-Google-Smtp-Source: ABdhPJyN1tGg3t1SyUhD39rvwBFQBP+RYexfVNHj3TpuINOPTkVtY8YkfU375+//KXBFF5zQVDgrjGW4omwcwNMKYO0=
X-Received: by 2002:ac8:16ab:: with SMTP id r40mr2232496qtj.56.1612485792783;
 Thu, 04 Feb 2021 16:43:12 -0800 (PST)
MIME-Version: 1.0
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Fri, 5 Feb 2021 01:43:02 +0100
Message-ID: <CAEyb4nEOSxEgxvYUXqUKXqp2eb_M+xb06E-C_qcDhGBShgv1-g@mail.gmail.com>
Subject: Need to manually create device-tree directory during build
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e25f7905ba8c1a0b"

--000000000000e25f7905ba8c1a0b
Content-Type: text/plain; charset="UTF-8"

As a learning experience, I am trying to build a downstream kernel from
source. It works, but it requires that I manually make a directory in the
yocto `tmp/` folder, and I am trying to understand why :-).

I created a BSP layer, and I want to use one of the downstream dts files
[1]. Because that file is in
`arch/arm/boot/dts/qcom/msm8909-pm8916-mpp3-hw00.dts`, my machine
configuration sets:

```
KERNEL_DEVICETREE += "qcom/msm8909-pm8916-mpp3-hw00.dtb"
```

I `inherit kernel` in my linux recipe, which I believe will build the dtb
from the corresponding dts in the downstream sources. However, somewhere
during the build process, I get the following error:

```
|   DTC     arch/arm/boot/dts/qcom/msm8909-pm8916-mpp3-hw00.dtb
| cc1: fatal error: opening output file
arch/arm/boot/dts/qcom/.msm8909-pm8916-mpp3-hw00.dtb.dts.tmp: No such file
or directory
```

If I create the following `qcom` directory manually and re-run `bitbake
virtual/kernel`, then it works:

```
mkdir
tmp/work/skycontroller3-poky-linux-gnueabi/linux-skycontroller3/3.18.31-r0/linux-skycontroller3-standard-build/arch/arm/boot/dts/qcom
```

So it feels like this `qcom/` subdirectory poses problems. I am not sure if
I am missing a configuration somewhere, or if that could be a bug (or maybe
the dts should be in `boot/dts` and never in a subdir like
`boot/dts/qcom`?).

I read through `classes/devicetree.bbclass` and
`classes/kernel-devicetree.bbclass`, but I don't think that the
`*.dts.dtb.tmp` file is created there.

Looking for insights on what may be going wrong here :-).

Best,
Jonas

[1]:
https://github.com/parrot-opensource/skycontroller3-opensource/blob/master/sources/linux-3.18.31/linux-3.18.31/arch/arm/boot/dts/qcom/msm8909-pm8916-mpp3-hw00.dts

--000000000000e25f7905ba8c1a0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As a learning experience, I am trying to build a downstrea=
m kernel from source. It works, but it requires that I manually make a dire=
ctory in the yocto `tmp/` folder, and I am trying to understand why :-).<di=
v><br></div><div>I created a BSP layer, and I want to use one of the downst=
ream dts files [1]. Because that file is in `arch/arm/boot/dts/qcom/msm8909=
-pm8916-mpp3-hw00.dts`, my machine configuration sets:<div><br></div><div>`=
``</div><div>KERNEL_DEVICETREE +=3D &quot;qcom/msm8909-pm8916-mpp3-hw00.dtb=
&quot;<br></div><div>```<br><div><br></div><div>I `inherit kernel` in my li=
nux recipe, which I believe will build the dtb from the corresponding dts i=
n the downstream sources. However, somewhere during the build process, I ge=
t the following error:</div><div><br></div><div>```</div><div>| =C2=A0 DTC =
=C2=A0 =C2=A0 arch/arm/boot/dts/qcom/msm8909-pm8916-mpp3-hw00.dtb<br>| cc1:=
 fatal error: opening output file arch/arm/boot/dts/qcom/.msm8909-pm8916-mp=
p3-hw00.dtb.dts.tmp: No such file or directory</div><div>```</div><div><br>=
</div><div>If I create the following `qcom` directory manually and re-run `=
bitbake virtual/kernel`, then it works:</div><div><br></div><div>```</div><=
div>mkdir tmp/work/skycontroller3-poky-linux-gnueabi/linux-skycontroller3/3=
.18.31-r0/linux-skycontroller3-standard-build/arch/arm/boot/dts/qcom</div><=
div>```</div><div><br></div><div>So it feels like this `qcom/` subdirectory=
 poses problems. I am not sure if I am missing a configuration somewhere, o=
r if that could be a bug (or maybe the dts should be in `boot/dts` and neve=
r in a subdir like `boot/dts/qcom`?).</div><div><br></div><div>I read throu=
gh `classes/devicetree.bbclass` and `classes/kernel-devicetree.bbclass`, bu=
t I don&#39;t think that the `*.dts.dtb.tmp` file is created there.</div><d=
iv><br></div><div>Looking for insights on what may be going wrong here :-).=
</div><div><br></div><div>Best,</div><div>Jonas</div><div><br></div><div>[1=
]:=C2=A0<a href=3D"https://github.com/parrot-opensource/skycontroller3-open=
source/blob/master/sources/linux-3.18.31/linux-3.18.31/arch/arm/boot/dts/qc=
om/msm8909-pm8916-mpp3-hw00.dts">https://github.com/parrot-opensource/skyco=
ntroller3-opensource/blob/master/sources/linux-3.18.31/linux-3.18.31/arch/a=
rm/boot/dts/qcom/msm8909-pm8916-mpp3-hw00.dts</a></div></div></div></div>

--000000000000e25f7905ba8c1a0b--
