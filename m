Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A170CE7717F
	for <webhook@archiver.kernel.org>; Tue, 10 Dec 2024 17:49:00 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.17074.1733852936736407902
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2024 09:48:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SQegNt8a;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: joel.winarske@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-216426b0865so24453065ad.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 09:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733852936; x=1734457736; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kAkymlmUCUBSGNQF1QO5eA76t04l2QWDy6c0uzDrQL0=;
        b=SQegNt8adj/YT/Ha95K9XfmPzI7D2yzSpd0l5sbtc9jAShjdijb/x2sBqTx0IOk3s8
         BGBWi11ocomlVnWmU2QXlx+AgShVVhxTKJOoRYee6YdvvltGy7rRxngVoI9C16AAs3aQ
         LJZfDtzkx9u4Ah2r7WUcKVIhPq6ExxzCYPvfSGy2Ai/ARk/VQ9QrpF4H9qIqqLwu+UNS
         cOW9n52PJmIfSRh6HxADJhRMJ7BgwcWyOTQv6T3m9qS+KmigJ5kaq0q3qEiZpCJq6Qvz
         XISnhp+Gh9bFdu8S7bRpUPhnl0zY/ubqXr0JkSI50LCV0Pnlh1cPBEkZa5TSMb4p57Of
         pEXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733852936; x=1734457736;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kAkymlmUCUBSGNQF1QO5eA76t04l2QWDy6c0uzDrQL0=;
        b=c/axMKL4ao6RRaWTYZoD5bT8qNIXmYuBZbR10PaRrlMMvbFiroEj/7oSJHRbvLtCh/
         7Xpg2CY58geJSrrMPYQiAg9gdQWg30fkgge6bNNA5ez1u/9f0a7U3SAdS9CIpK+4WqFh
         pKuh1lV9UWOU14T2qPkMQQ2xWakS4iy4RP1fu8JhRgXMAu5UIWYWJxseOYUjXc9MEBY3
         PIdnBAD2ulYJx7FU8s9o+06s5NamgjHfcRun5JnRpKK2/tVa5vxNaQnE2I+C+kJbuz//
         94Er9h2jYaUwx/wqjbOgTo3JlJ2rbjAMiSaEKtXOU/YTvZyQvGc9OAUYsFH1TVio4OfU
         AooQ==
X-Gm-Message-State: AOJu0YyMM+KIN9j9A+lVI0OIzc60446brkISNR0WFMBrXoxYHx1qQznq
	/B9oKsu+SCGGqTrnzjmaCmcbjn7M9wOPJEoqYVTaAas/dflSYVgxCdikE11w0MQIJLybZGVhIxf
	+pCEaLNkJstsW6qYGhv4Wi98/u4s=
X-Gm-Gg: ASbGncuHsTRjwapeRK3U8TcB+r5N4yg9f6HJm/WCBisdD0CyK3FK62+7RkgTQeYePF2
	cRtT1tTxdytxPJ+sQoGPdj4bKZglHU4z0xA==
X-Google-Smtp-Source: AGHT+IH2piPb45M3u+ooABsGMISGMrObjL2b5KhA6jRGepkh2GonQM7qWEXrKODIQ8uzdE52CVotTEs0Yr8FFY/lCt8=
X-Received: by 2002:a17:90b:48cb:b0:2ee:4b8f:a5b1 with SMTP id
 98e67ed59e1d1-2efcf222872mr8466585a91.24.1733852935869; Tue, 10 Dec 2024
 09:48:55 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkP+yADHpT7q3LjhfE0VLN92Ct6MGd3ywAm_AJN4se+LVGQ@mail.gmail.com>
 <CAGgRHJoT8pvt3_h8V5bTk-BxRJHor6z6+cXA3DGc7SEOVKCLfQ@mail.gmail.com>
In-Reply-To: <CAGgRHJoT8pvt3_h8V5bTk-BxRJHor6z6+cXA3DGc7SEOVKCLfQ@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 10 Dec 2024 09:48:44 -0800
Message-ID: <CABKMkP+-x87xS-+sNrV4Try8KR40LE+xXufS8WRYBK=Vc2DwrA@mail.gmail.com>
Subject: Re: [yocto] [scarthgap] meson.current_source_dir()
To: matt@madison.systems
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000055dc460628ee181d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 17:49:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64426

--00000000000055dc460628ee181d
Content-Type: text/plain; charset="UTF-8"

Hi Matt,

You were 100% correct.  This resolved the issue

lvgl_opt_var = cmake.subproject_options()
lvgl_opt_var.add_cmake_defines(
    {
        'CMAKE_VERBOSE_MAKEFILE' : true,
        'CMAKE_C_FLAGS' : '-DEGL_NO_X11 -Ulinux',
        'CMAKE_CXX_FLAGS' : '-DEGL_NO_X11 -Ulinux',
        'LV_CONF_PATH' : meson.current_source_dir() + '/lv_conf.h',
    })
lvgl = cmake.subproject('lvgl', options : lvgl_opt_var)


Thanks!

--00000000000055dc460628ee181d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr"><div>Hi Matt,</div><div><br></div><d=
iv>You were 100% correct.=C2=A0 This resolved the issue<br></div><div><div =
style=3D"background-color:rgb(30,31,34);color:rgb(188,190,196)"><pre style=
=3D"font-family:&quot;JetBrains Mono&quot;,monospace;font-size:9.8pt">lvgl_=
opt_var =3D cmake.<span style=3D"color:rgb(87,170,247)">subproject_options<=
/span>()<br>lvgl_opt_var.<span style=3D"color:rgb(87,170,247)">add_cmake_de=
fines</span>(<br>    {<br>        <span style=3D"color:rgb(106,171,115)">&#=
39;CMAKE_VERBOSE_MAKEFILE&#39; </span>: <span style=3D"color:rgb(207,142,10=
9)">true</span>,<br>        <span style=3D"color:rgb(106,171,115)">&#39;CMA=
KE_C_FLAGS&#39; </span>: <span style=3D"color:rgb(106,171,115)">&#39;-DEGL_=
NO_X11 -Ulinux&#39;</span>,<br>        <span style=3D"color:rgb(106,171,115=
)">&#39;CMAKE_CXX_FLAGS&#39; </span>: <span style=3D"color:rgb(106,171,115)=
">&#39;-DEGL_NO_X11 -Ulinux&#39;</span>,<br>        <span style=3D"color:rg=
b(106,171,115)">&#39;LV_CONF_PATH&#39; </span>: meson.<span style=3D"color:=
rgb(87,170,247)">current_source_dir</span>() + <span style=3D"color:rgb(106=
,171,115)">&#39;/lv_conf.h&#39;</span>,<br>    })<br>lvgl =3D cmake.<span s=
tyle=3D"color:rgb(87,170,247)">subproject</span>(<span style=3D"color:rgb(1=
06,171,115)">&#39;lvgl&#39;</span>, options : lvgl_opt_var)<br></pre></div>=
</div></div><br></div>Thanks!</div>

--00000000000055dc460628ee181d--

