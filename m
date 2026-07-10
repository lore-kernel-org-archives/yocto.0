Return-Path: <luis.merayo@ridgerun.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99895C44501
	for <webhook@archiver.kernel.org>; Fri, 10 Jul 2026 21:27:15 +0000 (UTC)
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.381.1783718828476442665
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jul 2026 14:27:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ridgerun.com header.s=google header.b=KSsLuEAZ;
 spf=pass (domain: ridgerun.com, ip: 74.125.224.49, mailfrom: luis.merayo@ridgerun.com)
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-667b9bee563so182837d50.3
        for <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 14:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783718827; cv=none;
        d=google.com; s=arc-20260327;
        b=f1URmeNgistVEVRyp/zW3r9mMYnFp+quT5BClGNBH3v+YYxTkTUls5BSNAdkzb9ocE
         AGa7m0CgkYoeJT9lg+u96Uhp3zxBf5WE13m4T12w71QN3IHJLTBLGVsr3pNMSaUtvFUo
         uFyoYkwDRuIQE2DwEKg3lMi93uiGqOGADaWvMt3e1A0hukyhNcYFTSbmpIvyc4NeZgpp
         9/ZB4ZqAjcL9hHyAOhm/wjjgpSWxvWNTOlQJPrbOfqnzLJyEcjuVDabnh3rmTzb55SSz
         f67JQOSBPnjnR6Xlm+p2ITMwcuySv6ou4Vq1TlY18aR4UVPfBqzi/xW1ZlYD6Xr/KJdm
         leSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=k8/XYW3wGt3QTtbvFjcl3/hfQXRSmTEkw9lCg2Ul0kc=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=maHUtaL0o211e0PFcCuD+sUhDG5UQJ4hOW2Ss8owapi3T38/sk22i1/inDdx44xCkM
         VxBrHJlOCnAf3+0SAja/DZ5snVg60ZxsXIJQNw/BDxyKR71H8arVGISz9ok9cxF+KSvH
         aYzvCUf2bMcIccjLbj2Dbf3QkAeOcSyvratfLgBwgAO19WaWnSrOaLrARWCSVGe1t7/X
         8hkJmyaGFH6o6LRsSChPaUzbK4maKqCZDK0HlCqXTOdcRivBkY9mpCletDGdkEZF8jHb
         DFfXvtfCUc5WDPTZ544kM9SanVza2pXiHqE5yJuaPeHOdocXD1OqIJFfDGzTQ0yuVU+M
         cjzQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ridgerun.com; s=google; t=1783718827; x=1784323627; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=k8/XYW3wGt3QTtbvFjcl3/hfQXRSmTEkw9lCg2Ul0kc=;
        b=KSsLuEAZBvuLs+W54r/oXssBAxBMkN8aKrlz1MOoxt8v7IOgDwa9XzjVFqev78fH2t
         3xyMMM1tm03aJjLs7BO2GOwjvMcajfP/LpIoUPLc3LgH+O1q/2MqeQ6QkoIXisbSeHJm
         pp8XZ7oEkpO2q2/6Bp/XXwyJsXsHco4EJIEeEbbt41RKAqp1FG5SSx1Bg2NuQQWhrOoG
         VJkr2ISWVr9ouKSNKOK4MaijReVPyCBD3c7U2iCMmu+Nl7G1TjZr/dUTRS+u3KZhGe40
         DlVnHANGTfY5m6ToXJqJ6WNN/nNVYZULIjLp1f2bpuJVipsXmbTU7UU7+kHvVTSWauh6
         9YVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783718827; x=1784323627;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k8/XYW3wGt3QTtbvFjcl3/hfQXRSmTEkw9lCg2Ul0kc=;
        b=Q35w4fzKGYZb5icpasMyP32bsbImWI4JyNdzorwWHCPi7vLtfraoBJZD4/du3oj/ix
         GR53rgRyY25wh69QvzaOTnB8pjK1jiTjcP2j3JpIM19gqyIc+f44qI6ed86bP6nKQ6W7
         GYDLGAo1ZKzyAQYaoZXEtfQYRBpSgyIPZPvKVmZtcs9k4cK3VP3CNHIw2aM1YQtMX6Ay
         Scv6Jjz5nYzgFLapEwxzmDUa7dX8gfntn4ma2C552rG6m8zngMI35hyQSy6vmjpoMMFh
         RxsT7VAAVLCyYgVjhAnIx6ERK5857Qri4IHv12BTNHnZDf9t9f70WxWB26nMILBrTHwW
         4q4w==
X-Gm-Message-State: AOJu0YxfFJkCwVTqpvX7Bfn1VAOSswRPOZTV0rK+S1u/2JPl2/0H/y7o
	2f28P8NixIEL1V2ROoHFJ7FnehGNSIafoCKPp/OiagDsA5H+AKXFigBUs8gDJeYSlcFq+umC+jE
	3Z4HcO01YIFqls/75CiC8OqsIzGMAJ4DylUwS+5S14ZIRa6zdjzUMiRChJFNfK6Na7wama7qoU4
	t/ZRmPpIoTrLJ8Q+GixEPgG/AshoF9bHEV/EPt4ddeLOPrZeLk
X-Gm-Gg: AfdE7cl9Sws+8WZtJSfg1HsKQu4qCqLkPN/BC+2nZ3JbamJHhuLW9lfQ3kDPPJuXiwG
	sor89iEATiOCgY73vZxsXiX4fzqrS2i+dK79CgfbiRk6AWZmhD7KFu7cyBeUnj/WpvVIqaqr1fi
	mnoLM+dsNQgtSiM/C7UxlNLGofrkFHZ1rvkVCIJ1AXnvGEZ7d25EJ06OB5/OAhyXkxt7zNpXEU0
	fipd5UzlI/YLlWI4gR9xdlR9XGAEFfF5fzNXBuY5YkdIPxd5ItyHHW4+ZkqMnFPsKQQSLi/M6Xn
	A9WJtpGNI9OLKK+ZujUoV8iGwoNEHQ==
X-Received: by 2002:a05:690e:d52:b0:667:8db0:76a7 with SMTP id
 956f58d0204a3-667d7f76a27mr559140d50.9.1783718827234; Fri, 10 Jul 2026
 14:27:07 -0700 (PDT)
MIME-Version: 1.0
From: Luis Merayo <luis.merayo@ridgerun.com>
Date: Fri, 10 Jul 2026 15:26:55 -0600
X-Gm-Features: AUfX_mxf3l3y7ybRAGY6YLTE4qgjt2I9N-mjhDegPhkvmVH4o8Do4s16fr1kLaY
Message-ID: <CAPGGCfrQqFjk68=6_JXCrj3XyxK1inZUNzjx4JZikm0MfhfQFg@mail.gmail.com>
Subject: Limiting Yocto Memory Usage
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000013ab5a065648676c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 21:27:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66637

--00000000000013ab5a065648676c
Content-Type: text/plain; charset="UTF-8"

Hi,

I would like to know if there is a way to limit Bitbake's Memory usage to a
specific percentage of the available RAM. For example, can the Yocto build
be limited to use a maximum of 70% of RAM?

Could these three variables achieve this?

 BB_PRESSURE_MAX_CPU
<https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_CPU>
, BB_PRESSURE_MAX_IO
<https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_IO>
 , BB_PRESSURE_MAX_MEMORY
<https://docs.yoctoproject.org/dev/ref-manual/variables.html#term-BB_PRESSURE_MAX_MEMORY>

I see the range for these variables is from 1 to 1000000, so I would like
to understand if there is a way to specify their values as a function of
the available RAM.

Regards,

Luis

-- 
 <https://ridgerun.ai/>
This email and any attachments are intended for the 
sole use of the named recipient(s) and contain(s) confidential information 
that may be proprietary, privileged, or copyrighted under applicable law. 
If you are not the intended recipient, do not read, copy, or forward this 
email message or any attachments, delete this email message and any 
attachments immediately.

--00000000000013ab5a065648676c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font color=3D"#232e3c" face=3D"Work Sans, sans-serif=
" style=3D"box-sizing:border-box;font-size:16px">Hi,<br style=3D"box-sizing=
:border-box"><br style=3D"box-sizing:border-box">I would like to know if th=
ere is a way to limit Bitbake&#39;s Memory usage to a specific percentage o=
f the available RAM. For example, can the Yocto build be limited to use a m=
aximum of 70% of RAM?<br style=3D"box-sizing:border-box"><br style=3D"box-s=
izing:border-box">Could these three variables achieve this?<br style=3D"box=
-sizing:border-box"><br style=3D"box-sizing:border-box"></font><span style=
=3D"box-sizing:border-box;color:rgb(51,51,51);font-size:16px;font-family:Ve=
rdana,sans-serif;background-color:rgb(252,252,252)">=C2=A0</span><a class=
=3D"gmail-reference gmail-internal" href=3D"https://docs.yoctoproject.org/d=
ev/ref-manual/variables.html#term-BB_PRESSURE_MAX_CPU" rel=3D"nofollow noop=
ener" target=3D"_blank" style=3D"box-sizing:border-box;color:rgb(68,68,68);=
text-decoration:none;font-size:16px;font-family:Verdana,sans-serif"><span c=
lass=3D"gmail-xref gmail-std gmail-std-term" style=3D"box-sizing:border-box=
">BB_PRESSURE_MAX_CPU</span></a><span style=3D"color:rgb(51,51,51);font-fam=
ily:system-ui,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;=
Noto Sans&quot;,&quot;Liberation Sans&quot;,Arial,sans-serif,&quot;Apple Co=
lor Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quo=
t;Noto Color Emoji&quot;;font-size:16px">,=C2=A0</span><a class=3D"gmail-re=
ference gmail-internal" href=3D"https://docs.yoctoproject.org/dev/ref-manua=
l/variables.html#term-BB_PRESSURE_MAX_IO" rel=3D"nofollow noopener" target=
=3D"_blank" style=3D"box-sizing:border-box;color:rgb(68,68,68);text-decorat=
ion:none;font-size:16px;font-family:Verdana,sans-serif"><span class=3D"gmai=
l-xref gmail-std gmail-std-term" style=3D"box-sizing:border-box">BB_PRESSUR=
E_MAX_IO</span></a><span style=3D"color:rgb(51,51,51);font-family:system-ui=
,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quo=
t;,&quot;Liberation Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color =
Emoji&quot;;font-size:16px">=C2=A0,=C2=A0</span><a class=3D"gmail-reference=
 gmail-internal" href=3D"https://docs.yoctoproject.org/dev/ref-manual/varia=
bles.html#term-BB_PRESSURE_MAX_MEMORY" rel=3D"nofollow noopener" target=3D"=
_blank" style=3D"box-sizing:border-box;color:rgb(68,68,68);text-decoration:=
none;font-size:16px;font-family:Verdana,sans-serif"><span class=3D"gmail-xr=
ef gmail-std gmail-std-term" style=3D"box-sizing:border-box">BB_PRESSURE_MA=
X_MEMORY</span></a><font color=3D"#232e3c" face=3D"Work Sans, sans-serif" s=
tyle=3D"box-sizing:border-box;font-size:16px"><br style=3D"box-sizing:borde=
r-box"><br style=3D"box-sizing:border-box">I see the range for these variab=
les is from 1 to=C2=A0</font><span style=3D"box-sizing:border-box;color:rgb=
(51,51,51);font-size:16px;font-family:Verdana,sans-serif;background-color:r=
gb(252,252,252)">1000000, so I would like to understand if there is a way t=
o specify their values as a function of the available=C2=A0RAM.</span><font=
 color=3D"#232e3c" face=3D"Work Sans, sans-serif" style=3D"box-sizing:borde=
r-box;font-size:16px"><br style=3D"box-sizing:border-box"><br style=3D"box-=
sizing:border-box">Regards,</font></div><div><font color=3D"#232e3c" face=
=3D"Work Sans, sans-serif" style=3D"box-sizing:border-box;font-size:16px"><=
br></font></div><div><font color=3D"#232e3c" face=3D"Work Sans, sans-serif"=
 style=3D"box-sizing:border-box;font-size:16px">Luis</font></div><div><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><span><div dir=3D"ltr" style=3D"margin-left:0pt" align=3D"le=
ft"><span><br><br></span></div></span></div></div></div></div>

<br>
<div><a href=3D"https://ridgerun.ai/" target=3D"_blank"><img src=3D"https:/=
/developer.ridgerun.com/wiki/images/thumb/5/57/RidgeRun.ai_banner.png/800px=
-RidgeRun.ai_banner.png?20260326200537" alt=3D"File:RidgeRun.ai banner.png"=
></a><span style=3D"color:rgb(0,0,0);font-family:&quot;Work Sans&quot;,sans=
-serif;font-size:9.33333px;text-align:justify"></span></div><font size=3D"1=
">This email and any attachments are intended for the sole use of the named=
 recipient(s) and contain(s) confidential information that may be proprieta=
ry, privileged, or copyrighted under applicable law. If you are not the int=
ended recipient, do not read, copy, or forward this email message or any at=
tachments, delete this email message and any attachments immediately.</font=
>
--00000000000013ab5a065648676c--

