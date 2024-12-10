Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E49CE77180
	for <webhook@archiver.kernel.org>; Tue, 10 Dec 2024 00:52:14 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web10.751.1733791926893746849
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2024 16:52:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OtPgSLsO;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: joel.winarske@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7fd45005a09so1284779a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2024 16:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733791926; x=1734396726; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A1YDOgE4fiTwcN77M1TK6TFqaqNkrTj6ZHQTE56fzKU=;
        b=OtPgSLsOf2PISN+8nMi8HtNlCqITqnNFHTM4A03jtknH38QU/yIkfcv+jvUZEhu4ue
         9asXqBuOkTvZ5o2JFJyQdk+5YvlbhYM1UrXOU7uqKyWFhpSTJ7UICr+A8ttMH/4Pb6D1
         Ift811urnmaO/LRJsc9ziaf5i0qMBtRtr2kLXK4MwSg82luKEY39///vwX9AX5CRHR6g
         yYMI0DBzKCoB2slPPuHDJzLHToQYEUQEcvonJHVwytDlh+4W3oGqSQSEt8xIiYSyZLk5
         1wcI6Qv9OC223Pt5z2S5+9UsE1ruC2jUEibCyMDjDZLPBqkMk0ECbedPAxrr6D/khWAR
         sz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733791926; x=1734396726;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A1YDOgE4fiTwcN77M1TK6TFqaqNkrTj6ZHQTE56fzKU=;
        b=tgD9Bo6gOcgfxf0XkLXP2iEOQMzlz88ALoQc9nViZZaSEusfX9WanrZaRoG7bh6LZf
         IHL+YqGzcm64JboZ6VucObtTo7MMmrcb4IirmxqjoVw1xowUQihCDh/NKB5HGjuoedl+
         GaAboThVOccGESCyRKoyG3HURNHXchLyqk13EyBRSyb7Z0VgBcnKCDin1hoPGuzyswI/
         IhdCm5Rzy/7jJ7zKr+S7pRh2gALjNIX85Ax62ERGIqhpEKmv8pZtIfghS+EEc8L1Ls2v
         pl0Ci5giIFs/78QpCHqfOV2VwxDiro5t17F47xIXd6SSXzEGP/uAwP55SVTWMdrXxOyA
         FdZg==
X-Gm-Message-State: AOJu0YzQY/+EmoMO1pAWslkLNdubtpzV4GRMXWeL3xMlSgFz7oTNmR/K
	smTQZi0aV+1oTIf9eIRzRbe1PjiOugbP/Cy0nP2KdEBJH2SIYJvzAOahXuz4iS+oBEwIlXSdSMX
	hTKX5a3GmpaoMnViIeD5w82NFSSIy0/Yr3YI=
X-Gm-Gg: ASbGncsbxIYeGlq1BLUt7oi2oFofEskkMHURVCMQPXBP/P0V82x7S6TQjTSXpAH6isi
	uHQyNn5wml9Bv3omir/Cn4Y16UyGWo9+Ojw==
X-Google-Smtp-Source: AGHT+IF+BEfAHyNkdK6rJkN6+Dye7yFlaauwWlS3ilefUqB2jlrVwMY5L4sjJetpNLXlDqbCEQbY9C0rkew6W/j7oVk=
X-Received: by 2002:a17:903:2282:b0:216:7175:41bd with SMTP id
 d9443c01a7336-21671754397mr15662375ad.39.1733791925438; Mon, 09 Dec 2024
 16:52:05 -0800 (PST)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Mon, 9 Dec 2024 16:51:53 -0800
Message-ID: <CABKMkP+yADHpT7q3LjhfE0VLN92Ct6MGd3ywAm_AJN4se+LVGQ@mail.gmail.com>
Subject: [scarthgap] meson.current_source_dir()
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d494370628dfe3e4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 00:52:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64419

--000000000000d494370628dfe3e4
Content-Type: text/plain; charset="UTF-8"

Building on scarthgap I'm seeing a problem using meson.

meson snippet:
```
lvgl_opt_var = cmake.subproject_options()
lvgl_c_flags = '-DEGL_NO_X11 -DLV_CONF_PATH=' + meson.current_source_dir()
+ '/lv_conf.h'
lvgl_cxx_flags = '-DEGL_NO_X11 -DLV_CONF_PATH=' +
meson.current_source_dir() + '/lv_conf.h'
lvgl_opt_var.add_cmake_defines(
    {
        'CMAKE_VERBOSE_MAKEFILE' : true,
        'CMAKE_C_FLAGS' : lvgl_c_flags,
        'CMAKE_CXX_FLAGS' : lvgl_cxx_flags })
```

Build Error:
```
| In file included from ../git/subprojects/lvgl/src/core/lv_group.h:16,
|                  from
../git/subprojects/lvgl/src/core/lv_group_private.h:17,
|                  from ../git/subprojects/lvgl/src/core/lv_group.c:9:
| ../git/subprojects/lvgl/src/core/../lv_conf_internal.h:54:42: fatal
error:
/mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/git/examples/lvgl/lv_conf.h:
No such file or directory
|    54 |         #include __LV_TO_STR(LV_CONF_PATH)
|       |                                          ^
| compilation terminated.
```

Observations:
```
$ ls -la
/mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/git/examples/lvgl/lv_conf.h
ls: cannot access
'/mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/git/examples/lvgl/lv_conf.h':
No such file or directory
```

```
$ ls -la
/mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-linux/libdrmpp/git/git/examples/lvgl/lv_conf.h

-rw-r--r--. 1 joel joel 36431 Dec  9 16:39
/mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-linux/libdrmpp/git/git/examples/lvgl/lv_conf.h
```

The same meson snippet works correctly on desktop

Why does `meson.current_source_dir()` in Yocto build return an incorrect
path?

Thanks,
Joel

--000000000000d494370628dfe3e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Building on scarthgap I&#39;m seeing a problem using =
meson.</div><div><br></div><div>meson snippet:<br>```<br>lvgl_opt_var =3D c=
make.subproject_options()<br>lvgl_c_flags =3D &#39;-DEGL_NO_X11 -DLV_CONF_P=
ATH=3D&#39; + meson.current_source_dir() + &#39;/lv_conf.h&#39;<br>lvgl_cxx=
_flags =3D &#39;-DEGL_NO_X11 -DLV_CONF_PATH=3D&#39; + meson.current_source_=
dir() + &#39;/lv_conf.h&#39;<br>lvgl_opt_var.add_cmake_defines(<br>=C2=A0 =
=C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;CMAKE_VERBOSE_MAKEFILE&#39; : =
true,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;CMAKE_C_FLAGS&#39; : lvgl_c_flags=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;CMAKE_CXX_FLAGS&#39; : lvgl_cxx_flags=
 })<br>```<br><br>Build Error:<br>```<br>| In file included from ../git/sub=
projects/lvgl/src/core/lv_group.h:16,<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../git/subprojects/lvgl/src/core/lv_gro=
up_private.h:17,<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0from ../git/subprojects/lvgl/src/core/lv_group.c:9:<br>| ../git/s=
ubprojects/lvgl/src/core/../lv_conf_internal.h:54:42: fatal error: /mnt/rai=
d10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/git/example=
s/lvgl/lv_conf.h: No such file or directory<br>| =C2=A0 =C2=A054 | =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 #include __LV_TO_STR(LV_CONF_PATH)<br>| =C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0^<br>| compilation terminated.<br>```<br><br>Observations:<br>```<br>=
$ ls -la /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmp=
p/git/git/examples/lvgl/lv_conf.h<br>ls: cannot access &#39;/mnt/raid10/yoc=
to/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/git/examples/lvgl/=
lv_conf.h&#39;: No such file or directory<br>```</div><div><br></div><div>`=
``<br>$ ls -la /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-lin=
ux/libdrmpp/git/git/examples/lvgl/lv_conf.h <br>-rw-r--r--. 1 joel joel 364=
31 Dec =C2=A09 16:39 /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-po=
ky-linux/libdrmpp/git/git/examples/lvgl/lv_conf.h</div><div>```<br></div><d=
iv><br></div><div>The same meson snippet works correctly on desktop<br></di=
v><div><br>Why does `meson.current_source_dir()` in Yocto build return an i=
ncorrect path?<br><br></div><div>Thanks,<br></div><div>Joel<br></div></div>

--000000000000d494370628dfe3e4--

