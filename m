Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3488CC05027
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 09:59:55 +0000 (UTC)
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com [209.85.219.195])
 by mx.groups.io with SMTP id smtpd.web11.11258.1675331994434966946
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Feb 2023 01:59:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OMME2GIT;
 spf=pass (domain: gmail.com, ip: 209.85.219.195, mailfrom: electronicconsult1@gmail.com)
Received: by mail-yb1-f195.google.com with SMTP id g2so1479172ybk.8
        for <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 01:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AgJOQs0yKfHcNG+NhVhTjaDgaGd7l6uh96To7S5DNvE=;
        b=OMME2GITH6JiSCO98PXWH5K5BGDdfrCLdwro9zydBLulUWqFf40uAFGboNiLdU+Eof
         pjT6m/1ULaSnbAj9a6q+D7eRidCFMB7jwjHoxuGjZtHrPvspgojknEbdG4c2AlTQpoIB
         93cd96eIS1RhBHciqYycdoNl1+y0T1D8QsvE9KGu3Du498lsr5yVMwAzQ/NJhPKP2yv8
         96miKrahHYrel4LG6vzJtR0mlw+VEQ8L8TPXLsAtI3dr46iVQi2LCVywEHKNdpj1wFac
         5gkp/9L2/3T5Im81/Zatn6XTOu2T1XYUSmVAz3nVizQbCtwIgiEuWgGRPWIbhB/z9iVe
         YORQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AgJOQs0yKfHcNG+NhVhTjaDgaGd7l6uh96To7S5DNvE=;
        b=z7PFsbXs/9UrWIVrc75WiY6QNK5UZzvAQWXRX554etUdT9LiPlRotmzBPlTpnIgNgk
         YkZOK+e6gp9avh2pu/Ty9YuCyFPVv/rQTnz+sUZHrpORy79c8YdNJW2liIBRujjQAuTz
         SOTIK6zBVikIlEC9yfnW8YFJLdbAmDu2NhW8BOgkykGe0XpRntgxOS5MXsKl1ZqByiNN
         xqBrxKGfCm1L8YBJX557EbvJjb3Ej8BVYCPETqMHxcrGiXG6YTMiisjR9FaeOuNwjttx
         /tG/JrK7YNxlm4xMeiexwgSWKOJ824ztgMHXNrlC2sTeWf8hKT7+e6EqlwTnsQBoY9iI
         tNxQ==
X-Gm-Message-State: AO0yUKWdUPwGfi+A5+6mw5SKzAbWERnTEyUIncbJjLRvaL3nj9t2W4DJ
	uL5ILmRVxKmeFwOV2AUo7xS0jXE+7mXKrx+WWgPUCjfj0Ew0IZ3RsV0Rcw==
X-Google-Smtp-Source: AK7set/qzvy4bOKwoX04uZoouguVLj9Q73L0p7nw7ilZX7XUQkZ7e4qceX2CVBKRyECwzkM+hqHsr//gm1C9ba5+NDQ=
X-Received: by 2002:a25:3ca:0:b0:80b:96cc:310d with SMTP id
 193-20020a2503ca000000b0080b96cc310dmr732885ybd.117.1675331993524; Thu, 02
 Feb 2023 01:59:53 -0800 (PST)
MIME-Version: 1.0
From: Electronic Consult <electronicconsult1@gmail.com>
Date: Thu, 2 Feb 2023 09:59:42 +0000
Message-ID: <CAGUWaEFdd4Yt49fgRAOpNh_V2KTpOTcPrhnqTJkXx_dfrG_ZOA@mail.gmail.com>
Subject: fw_env.config - finding the location of uboot.env
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005adffe05f3b4a07d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 09:59:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59144

--0000000000005adffe05f3b4a07d
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm in the process of implementing an A/B update strategy on an SD card
using swupdate & the tools provided by libubootenv-bin.

The issue is finding the location of uboot.env to (manually) configure
etc/fw_env.config. I've tried so far include checking the default env
location config in .config (it wasn't set) & modifications to the env
recipe which did give me UBOOT_ENV_SIZE:

do_compile_append() {
    if [ -e "${ENV_FILEPATH}/${MACHINE}.txt" ]; then
        echo "Compile U-Boot environment for ${MACHINE}"
        ${B}/tools/mkenvimage ${MKENVIMAGE_EXTRA_ARGS} -s ${UBOOT_ENV_SIZE}
${ENV_FILEPATH}/${MACHINE}.txt -o ${ENV_FILENAME}
        echo "MKENVIMAGE_EXTRA_ARGS = ${MKENVIMAGE_EXTRA_ARGS}"
        echo "UBOOT_ENV_SIZE = ${UBOOT_ENV_SIZE}"  # Outputted 0x4000
    else
        echo "No custom environment available for ${MACHINE}."
    fi
}

do_deploy_append() {
    if [ -e  ${B}/${ENV_FILENAME} ]; then
        install -Dm 0644 ${B}/${ENV_FILENAME} ${DEPLOYDIR}
    fi
}

My boot partition:

-rw-r--r-- 1    23469 Apr  6  2011 BOOT.BIN
-rw-r--r-- 1    5076348 Apr  6  2011 sama5d4_xplained.itb
-rw-r--r-- 1   595228 Apr  6  2011 u-boot.bin
-rw-r--r-- 1   16384 Apr  6  2011 uboot.env

with device listed as:
/dev/mmcblk0p1

I had a look for uboot shell command that might output the location but
without success.

Can anyone suggest a solution?

Many thanks

--0000000000005adffe05f3b4a07d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hello all,<div dir=3D"auto"><br></div><d=
iv dir=3D"auto">I&#39;m in the process of implementing an A/B update strate=
gy on an SD card using swupdate &amp; the tools provided by libubootenv-bin=
.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">The issue is fin=
ding the location of uboot.env to (manually) configure etc/fw_env.config. I=
&#39;ve tried so far include checking the default env location config in .c=
onfig (it wasn&#39;t set) &amp; modifications to the env recipe which did g=
ive me UBOOT_ENV_SIZE:</div><div><br></div><div style=3D"margin-left:40px">=
do_compile_append() {<br>=C2=A0 =C2=A0 if [ -e &quot;${ENV_FILEPATH}/${MACH=
INE}.txt&quot; ]; then<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;Compile U-=
Boot environment for ${MACHINE}&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${B}/t=
ools/mkenvimage ${MKENVIMAGE_EXTRA_ARGS} -s ${UBOOT_ENV_SIZE} ${ENV_FILEPAT=
H}/${MACHINE}.txt -o ${ENV_FILENAME}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &q=
uot;MKENVIMAGE_EXTRA_ARGS =3D ${MKENVIMAGE_EXTRA_ARGS}&quot;<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 echo &quot;UBOOT_ENV_SIZE =3D ${UBOOT_ENV_SIZE}&quot;=C2=
=A0 # Outputted 0x4000<br>=C2=A0 =C2=A0 else<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 echo &quot;No custom environment available for ${MACHINE}.&quot;<br>=C2=A0=
 =C2=A0 fi<br>}<br><br>do_deploy_append() {<br>=C2=A0 =C2=A0 if [ -e =C2=A0=
${B}/${ENV_FILENAME} ]; then<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -Dm 064=
4 ${B}/${ENV_FILENAME} ${DEPLOYDIR}<br>=C2=A0 =C2=A0 fi<br>}</div><br></div=
><div dir=3D"auto"><div dir=3D"auto">My boot partition:</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">-rw-r--r-- 1=C2=A0 =C2=A0 23469 Apr =C2=A06=
 =C2=A02011 BOOT.BIN<br>-rw-r--r-- 1 =C2=A0=C2=A0 5076348 Apr =C2=A06 =C2=
=A02011 sama5d4_xplained.itb<br>-rw-r--r-- 1=C2=A0=C2=A0 595228 Apr =C2=A06=
 =C2=A02011 u-boot.bin<br>-rw-r--r-- 1=C2=A0=C2=A0 16384 Apr =C2=A06 =C2=A0=
2011 uboot.env</div><div dir=3D"auto"><br></div>with device listed as:</div=
><div dir=3D"auto"></div><div dir=3D"auto">/dev/mmcblk0p1</div><div dir=3D"=
auto"><br></div><div dir=3D"auto"><div dir=3D"auto">I had a look for uboot =
shell command that might output the location but without success.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Can anyone suggest a solution?</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">Many thanks</div></div>
</div>

--0000000000005adffe05f3b4a07d--

