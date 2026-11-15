Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.4871.1794736645179495596
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Nov 2026 01:57:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=newKz+3+;
 spf=pass (domain: smile.fr, ip: 209.85.221.46, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-492fcbfaa88so1199251f8f.3
        for <yocto@lists.yoctoproject.org>; Sun, 15 Nov 2026 01:57:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1794736643; x=1795341443; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wx73/xEmTrZNEo+7oK9zvt8w7aJSd7lOwF/OlKdMdR8=;
        b=newKz+3+7Ua+9SFGmZ5PmilEY2VNSHycg1NzGeDSR+ygVW9Fl7YlEGlYeIs3/I7wLO
         aoTkk8/UTz3r0jF7x2wyx6HnBmPfJ5hiHAo9kEmtbi9R4jZ+RiQUpMaN8x7mbGqjevUf
         D25OUTPU9cWKVEJCq3nt2Td5/fFkU+LDWYp3+z/VxWDFApZBAFeA3gSS6eAxOJgrq6hf
         QwRYm+qdBz651Jr07ujvlFiTLOxQtml+Ddn2VjY12h+/gwzKWvyOr6KP8umwNpN10kNy
         LoUGaBr+EAqR+EjNfJ4cQw3cIMqRkEZ4yJfsOyyvwph2gxYdbBFAb8AS3vDkngn4USD4
         oXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794736643; x=1795341443;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Wx73/xEmTrZNEo+7oK9zvt8w7aJSd7lOwF/OlKdMdR8=;
        b=qrizXs8k79A24wXuKQeZRDjTcPLquo5toiXGlBh+/UC+BzPh3ZMuyKFGO7/Pmh60FX
         BaKCrwmHMsIXNX9WuDMXLXKsvo1kVpIE0+evx61R0SsHP18DRzPpOVjN5RCARO7Kjxl/
         9RTwz2DuleaUlgovOwdNsbpvtRnjV5nNNve7vAQsQMGr6XkAaNGczvWNBOQ0/QJrTCeY
         mPbkrmSCTNaBTkq99ZJE8fg9WmOsr7h/jhTI7FJfpPOgjJ/GprRuwNWyDRcNF4GAq5BK
         oQHOMdjXrE0k42n/NLnZlfKbdtqM9I4W1bK+3k2992+eKwI/RyP87AJf8ji5Pu45sKzZ
         IsLA==
X-Forwarded-Encrypted: i=1; AL+hErEWyvEo9HtETg4Qda1vNlUt6dbzm8d9Mvp/yFv4brFrNDvWXHyuaRi1sELWIMkrBrRlOIBrxg==@lists.yoctoproject.org
X-Gm-Message-State: APuU4Z/ltsrCw2Jho4wd5N+JILPOQ10vWIBPOa7bfxM4YxVc9U/S0Vq5
	VIkoLJeBNymvnJnv9aE35usvvyZlYQv4RugU+selZ/upX2HoxrsP60C+XnGVZIvu7g4=
X-Gm-Gg: AYBFou1g2sCsUDJIQGcQ8cDzaE0hxrwdsvB8mfk9Z4t8qK8so8wnoyroen/cVCQW4kY
	s3mPvjTH4/XDvau83SB/A6TdSvKP5QQlGrhZsRKXxUDb3IZkyS0EN5LEhxKUhV4qDD8ljIdBRu4
	EeSxG/veiUnNKvLOsqjMhorMNUP7rqUWYpMqO8ni0xKhPNDgSqpcXjTsW+Gtj8Mtfu7ayea9jB8
	H3e47YzDeGPxRmGJMIdEEah/UuGtG9V/+zHgk4waH6ui482h1pIfiBJ2GN3g4H/8S25xGsAmFld
	MxMCsB5F/TjQjRGrcy25PK9K4XWsF6YCMBsBOOAjoMSc38SKNwIbB6DyP9QVXSFHefroqJriCfP
	fZ0pytny8ceyWWme5SwX9aZy3PkRz+eu+Rs1FX2FoeiHDkgHnQJgJ/+A52nvtg64GUlgcaStb9Y
	YsonrW5a9jtU8N5LIaN25enWQ4sqvflT3MfG5AUlLKV7Bh4HkPN2azS8Q03MBT/pp5UtX3EL99A
	ehRpI7uXXsxLk22iBt7aToCNCwDM2sfSbRVnbCi+cPRERg1qat2rr7gL9pAXMWc+0GoyAmgb92F
	32+VsRGyrGVPGKPO5DIqv4GggFH45mGBwdl2BW6s/gQa9CNHt52RqplFwiiJPVViJgzHHXEtv4n
	CeoQT6Ystj8mOgegl
X-Received: by 2002:a05:6000:2382:b0:48d:f851:ee5f with SMTP id ffacd0b85a97d-49c7381b478mr18256774f8f.24.1794736643148;
        Sun, 15 Nov 2026 01:57:23 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60116323sm15294313f8f.32.2026.11.15.01.57.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2026 01:57:22 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 15 Nov 2026 10:57:22 +0100
Message-Id: <DMVP1JBQZDA2.OMV8NH8ONJOC@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.1.1.rc1)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <010101a1ddbad075-cf5f1ecb-344d-4aec-aac6-a49f61539b2a-000000@us-west-2.amazonses.com>
In-Reply-To: <010101a1ddbad075-cf5f1ecb-344d-4aec-aac6-a49f61539b2a-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Sun, 15 Nov 2026 09:57:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66801

On Sun Nov 15, 2026 at 6:42 AM CET, Pokybuild User via qa-build-notificatio=
n wrote:
>
>     A build flagged for QA (yocto-6.1.1.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-6.1.1.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/5126
>
>     Build hash information:=20
>
>     bitbake: 7f7ae8cd58993a389adbd130b07ea5de8415d2f9
> meta-agl: c36f0e0bbed6000f28cfd10417c280c9fdca37cd
> meta-arm: 5f432e5ac06f7679a58ae4da5df40e62d8ea3b35
> meta-aws: 945fa75b8f716f1e9ffa7d1e19780d729c7e28b8
> meta-clang: 555882484074bbc97f3bd2e6ced7c34f1ad548f8
> meta-intel: 25dd9e467e0675430073801c8b931af0a4758b30
> meta-mingw: 2697806adf824708e86d57ad68e0978a0af812fb
> meta-openembedded: bb956bf8ff7a32f31deaa83e96880d10ab564d14
> meta-qcom: cba1f2af0105e17a3b04f319b5db92ed5fff068c
> meta-virtualization: 7b0154418de3350fd23a0bd868742f2b570b24d3
> meta-yocto: c5b4882e75c926e44e141efcdb7e3f75945389ab
> oecore: 5b458838c126051c884c8cb5225c7265d1483ea6
> yocto-docs: 28a708ecb3c2ce1669094f9f4c1bdcbc28438bcc

This was an "all green" build, so OK to proceed with QA.

Yoann

>
>
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>     =20
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#764): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/764
> Mute This Topic: https://lists.yoctoproject.org/mt/122274846/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS

