Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC4DC43334
	for <webhook@archiver.kernel.org>; Thu,  9 Jun 2022 16:38:53 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.15873.1654792727771876670
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 09:38:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HrGv5Mrg;
 spf=pass (domain: gmail.com, ip: 209.85.208.181,
 mailfrom: rustyhowell@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id l18so19470467lje.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 09:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=mvZbBfd99pIO7azuWXuFTh6WB3RxsY8pqucdkMPgv90=;
        b=HrGv5MrgHXzVs+DYlsMFaGtgBQ+NW3yI6+XZKFauLXnzSLFoJ80E+121CuSkpjY90N
         B3vYfM18cX7fB7WzUBA0viARymF2GdcadXmk03Zw1OM0Ddbnw5Ls1CEMKj35KcXwuck0
         yQwixx59/qDqpLQ1Kkra64hYPf/qb+s/2CXQ+On+PGFEAQ7i/OmR+x81Pb94F4HUmjCi
         ji/PTQrb1Ds9DfROngJPCmnTZzsuExPEiWeEHc+4BJXLPYxsYpgGbnT7fHje2FnPYxS0
         rRi+7eFsf8rv6Jr6wFeWbY+a3fZFaFslqtQFnm1ZKn/gD3BZ5ki4mq7222b0Xy1uXjRC
         3jjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mvZbBfd99pIO7azuWXuFTh6WB3RxsY8pqucdkMPgv90=;
        b=kNOKwAfj7BAvhumR/g6qeme+Hq2xKCx6g4GJpQSair9uClB+tu3Yp6bVYpTfIe1xz2
         EG0SD4IRtf33J2y66NKAvhUnwE2zPSKgrEj2Mx3PpzbDDnL+7PxiX2jMGEYpt6DwipsG
         1kU6I2wRznHdHFo0Ghw8IEjAv7I9ZLak9vNRwtJMrjt/xZWxaDSJKOiLf0vlJbFPsRpT
         +Fuai36CWFbgz2pq7ib5QTUiwtTGoPbbMZBQYIeXiBFRmcpvYghr3rf0nDGP+wRvMTjl
         EML0MS01JKWpScTi1PwxU9o04YrBawRzZcdSrSSj8ApX8Qtf+5lr7rIEDy8XZoV3fzw0
         bjwg==
X-Gm-Message-State: AOAM530evmZscJzGRHgyqdVPf2UCShGijEWGEaIBGSdf/TR863mYyVXN
	5NKTrOsHuN5EjwSQqVI7XqQNhkaDee0jOdhPcPRuzjDCEKo=
X-Google-Smtp-Source: 
 ABdhPJysc7/0hSYTJCZVJDPlIx30zlT9+qkZyXGQPbmutzjC54CHnsc11qQe2qCX8vLS75A2OFB7625IoxtIgpR3FGU=
X-Received: by 2002:a2e:864f:0:b0:255:81e4:733b with SMTP id
 i15-20020a2e864f000000b0025581e4733bmr17353738ljj.227.1654792725334; Thu, 09
 Jun 2022 09:38:45 -0700 (PDT)
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Thu, 9 Jun 2022 10:38:28 -0600
Message-ID: 
 <CAE+BM3mNuFOntxPe6ZXnHhfj9ujuZMBXZMXgOh2K-rrbCdPU9A@mail.gmail.com>
Subject: Question about psuedo abort errors
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009210d105e10674a9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jun 2022 16:38:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57311

--0000000000009210d105e10674a9
Content-Type: text/plain; charset="UTF-8"

Hello,

My company is using yocto.  When building our own recipes, I get pseudo
abort errors rather often.  I've read the wiki page about them, but I'm not
sure exactly what we are doing wrong that is making this happen.  We have
many recipes for various libraries and applications.  The files listed in
the abort error log are usually C++ header files.

A coworker has told me that setting PACKAGE_DEBUG_SPLIT_STYLE =
"debug-without-src" in the local.conf will allow bitbake to ignore this
error. But in the end, I would like to understand what exactly is the root
cause, so that I can adjust our recipes to fix this.

Here is the pseudo.log from the most recent failure. I know a lot of
proprietary context is missing for anyone in the OSS community to give
super confident answers, but I appreciate any suggestions.

Some context here:
* We have a legacy git repo that contains the source for several different
libraries.
* We use CMake recursively to build all the libs from the top level.
* Some libs depend on other libs in the repo.
* I am trying to build the recipe "libc4statsclient", which is just one of
the libs in the repo.
* The header file shown in the error is part of another library and recipe.


ERROR: Task
(/home/rhowell/corex-develop/yocto/sources/c4-distro/meta-c4/recipes-c4/libc4statsdclient/libc4statsdclient_git.bb:do_install)
failed with exit code '1'
Pseudo log:
Setup complete, sending SIGUSR1 to pid 3063620.
path mismatch [3 links]: ino 3804719 db
'/home/rhowell/corex-develop/yocto/build.imx8mq-core/tmp/work/imx8mq_core-control4-linux/libc4statsdclient/local+AUTOINC+e18ad903a2-r3/package/usr/src/debug/libc4statsdclient/local+AUTOINC+e18ad903a2-r3/git/control4/c4shared/logger/logger.hpp'
req
'/home/rhowell/corex-develop/yocto/build.imx8mq-core/tmp/work/imx8mq_core-control4-linux/libc4statsdclient/local+AUTOINC+e18ad903a2-r3/git/control4/c4shared/logger/logger.hpp'.

Thanks for your time and any suggestions.
Rusty Howell

--0000000000009210d105e10674a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>My company is using y=
octo.=C2=A0 When building our own recipes, I get pseudo abort errors rather=
 often.=C2=A0 I&#39;ve read the wiki page about them, but I&#39;m not sure =
exactly what we are doing wrong that is making this happen.=C2=A0 We have m=
any recipes for various libraries and applications.=C2=A0 The files listed =
in the abort error log are usually C++ header files. </div><div><br></div><=
div>A coworker has told me that setting PACKAGE_DEBUG_SPLIT_STYLE =3D &quot=
;debug-without-src&quot; in the local.conf will allow bitbake to ignore thi=
s error. But in the end, I would like to understand what exactly is the roo=
t cause, so that I can adjust our recipes to fix this.</div><div><br></div>=
<div>Here is the pseudo.log from the most recent failure. I know a lot of p=
roprietary context is missing for anyone in the OSS community to give super=
 confident answers, but I appreciate any suggestions.</div><div><br></div><=
div>Some context here:=C2=A0 <br></div><div>* We have a legacy git repo tha=
t contains the source for several different libraries.=C2=A0 <br></div><div=
>* We use CMake recursively to build all the libs from the top level.</div>=
<div>* Some libs depend on other libs in the repo.<br></div><div>* I am try=
ing to build the recipe &quot;libc4statsclient&quot;, which is just one of =
the libs in the repo.</div><div>* The header file shown in the error is par=
t of another library and recipe.<br></div><div><br></div><div></div><div><b=
r></div><div>ERROR: Task (/home/rhowell/corex-develop/yocto/sources/c4-dist=
ro/meta-c4/recipes-c4/libc4statsdclient/libc4statsdclient_git.bb:do_install=
) failed with exit code &#39;1&#39; <br>Pseudo log:<br>Setup complete, send=
ing SIGUSR1 to pid 3063620.<br>path mismatch [3 links]: ino 3804719 db &#39=
;/home/rhowell/corex-develop/yocto/build.imx8mq-core/tmp/work/imx8mq_core-c=
ontrol4-linux/libc4statsdclient/local+AUTOINC+e18ad903a2-r3/package/usr/src=
/debug/libc4statsdclient/local+AUTOINC+e18ad903a2-r3/git/control4/c4shared/=
logger/logger.hpp&#39; req &#39;/home/rhowell/corex-develop/yocto/build.imx=
8mq-core/tmp/work/imx8mq_core-control4-linux/libc4statsdclient/local+AUTOIN=
C+e18ad903a2-r3/git/control4/c4shared/logger/logger.hpp&#39;.</div><div><br=
></div><div>Thanks for your time and any suggestions.</div><div>Rusty Howel=
l<br></div><div><br></div></div>

--0000000000009210d105e10674a9--

