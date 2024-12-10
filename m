Return-Path: <matt@madison.systems>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E18E77180
	for <webhook@archiver.kernel.org>; Tue, 10 Dec 2024 15:09:00 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web11.12606.1733843336853097458
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2024 07:08:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@madison.systems header.s=google header.b=cuyBaVm8;
 spf=pass (domain: madison.systems, ip: 209.85.160.50, mailfrom: matt@madison.systems)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-29e5c0c46c3so2937387fac.3
        for <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 07:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=madison.systems; s=google; t=1733843336; x=1734448136; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yChkk3iESLLq+wxsMSEmajj/15K6ajs0EYiEgu702ag=;
        b=cuyBaVm8esKswR2Wc2sJUJ1gWUv8RyBD/A6cyUy6r/RF/9P3KY/IGNZRvi0bF0RDhz
         wmEnSnZK8bmis+YGmeleFVAByBrBEz79+TmjKGBtSM1P+v1VJn0YChNArpjJ4OHwaOwx
         3skubl/wlEH77g+gqD/amsxLy621o+/Xgl1clSdspgTEJDj3oN58qHUMkFxkHpTQFcQA
         DiPmbfdYnTwflrKAccsWd8zqT6WwrULETb/tjfG447tav5v0sFnx2Nb0Xk1lZfKgNew/
         eW/nDTH7adenjrOBkQmQD8/6a/V2dNMP3UZ6ngxMTz7S0wvAgKWgRpoyi2RuDjeURqip
         qTng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733843336; x=1734448136;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yChkk3iESLLq+wxsMSEmajj/15K6ajs0EYiEgu702ag=;
        b=VF5VnoqAdZ6k/33+vjahgqhj2N67N7+TtuUEwCZB2LXjkFhV95rg8byIEjkM2vLnVP
         yQX8iIOt71r3aieVvIbf4W8j0fHDVioFHIPgcTN1EM04NmX71p/RR20k50cS/OqfaM6k
         Rb7mNKXwcfkDG5SUBSrJq1Bsreb55swiOT+XTmsUidOdu3pq5ea7ykWuMK+XVHgOzCZD
         ewOWYHJ6DKUIup7XVYG/H4dZh9+bZLezN5VXEKtMyL0QOoPAoC46oYJ9mADKAJFMv9Fi
         rRUuCtF1Y9Lv7aQ54BKMAQLhuekLf5Nr/HlUjAH7yq0IgnyU5WqJOCYfivDUoB2RuW/A
         09vA==
X-Gm-Message-State: AOJu0YzMNniveiJrIHN/ChzaQNaxCqXaoij94XbTtCjh20iFxNB9VoSK
	+hpKc4gs4OPSQnUrjFC30w6EKhfqAViu/AQI8FJXgkKnuIHYHe2Ve/ipEt3VS/qLdo5JhXxQVGP
	hrNzzt04xgQ8TyvXBEGPnkACflAq7FYb/A5tnoyETYihtZY+7xA4=
X-Gm-Gg: ASbGnct8DkQCvDxQ+06F2vGv6uP+QnFF07pu8gkH8/dkKpDvOG/ZNXKa+1xwfMnYj65
	BvYv0RiFqjw2A67UT2yLVkZRQGPIzYmpd2ZoVXkf7WMIU1okCT4OCMUKEvlyKvbNQprcXsQ==
X-Google-Smtp-Source: AGHT+IHf4trA9DqVKgw5yueUU+KbafKure1CkYiMKMuKw/WaaR+0JbasR6nBgXTHjvbqX8ZmwtuKgKR0GBjjhwBU7F4=
X-Received: by 2002:a05:6870:3a27:b0:29f:bd6c:4b2a with SMTP id
 586e51a60fabf-29fbd6d0137mr4670238fac.42.1733843335869; Tue, 10 Dec 2024
 07:08:55 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkP+yADHpT7q3LjhfE0VLN92Ct6MGd3ywAm_AJN4se+LVGQ@mail.gmail.com>
In-Reply-To: <CABKMkP+yADHpT7q3LjhfE0VLN92Ct6MGd3ywAm_AJN4se+LVGQ@mail.gmail.com>
From: Matt Madison <matt@madison.systems>
Date: Tue, 10 Dec 2024 07:08:45 -0800
Message-ID: <CAGgRHJoT8pvt3_h8V5bTk-BxRJHor6z6+cXA3DGc7SEOVKCLfQ@mail.gmail.com>
Subject: Re: [yocto] [scarthgap] meson.current_source_dir()
To: yocto@lists.yoctoproject.org, joel.winarske@gmail.com
Content-Type: multipart/alternative; boundary="0000000000002199b60628ebdc5f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 15:09:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64424

--0000000000002199b60628ebdc5f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 9, 2024 at 4:52=E2=80=AFPM Joel Winarske via lists.yoctoproject=
.org
<joel.winarske=3Dgmail.com@lists.yoctoproject.org> wrote:

> Building on scarthgap I'm seeing a problem using meson.
>
> meson snippet:
> ```
> lvgl_opt_var =3D cmake.subproject_options()
> lvgl_c_flags =3D '-DEGL_NO_X11 -DLV_CONF_PATH=3D' + meson.current_source_=
dir()
> + '/lv_conf.h'
> lvgl_cxx_flags =3D '-DEGL_NO_X11 -DLV_CONF_PATH=3D' +
> meson.current_source_dir() + '/lv_conf.h'
> lvgl_opt_var.add_cmake_defines(
>     {
>         'CMAKE_VERBOSE_MAKEFILE' : true,
>         'CMAKE_C_FLAGS' : lvgl_c_flags,
>         'CMAKE_CXX_FLAGS' : lvgl_cxx_flags })
> ```
>
> Build Error:
> ```
> | In file included from ../git/subprojects/lvgl/src/core/lv_group.h:16,
> |                  from
> ../git/subprojects/lvgl/src/core/lv_group_private.h:17,
> |                  from ../git/subprojects/lvgl/src/core/lv_group.c:9:
> | ../git/subprojects/lvgl/src/core/../lv_conf_internal.h:54:42: fatal
> error:
> /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/g=
it/examples/lvgl/lv_conf.h:
> No such file or directory
> |    54 |         #include __LV_TO_STR(LV_CONF_PATH)
> |       |                                          ^
> | compilation terminated.
> ```
>
> Observations:
> ```
> $ ls -la
> /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/g=
it/examples/lvgl/lv_conf.h
> ls: cannot access
> '/mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/=
git/examples/lvgl/lv_conf.h':
> No such file or directory
> ```
>
> ```
> $ ls -la
> /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-linux/libdrmpp/g=
it/git/examples/lvgl/lv_conf.h
>
> -rw-r--r--. 1 joel joel 36431 Dec  9 16:39
> /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-linux/libdrmpp/g=
it/git/examples/lvgl/lv_conf.h
> ```
>
> The same meson snippet works correctly on desktop
>


I don't think this is a meson problem. If you build the same package on
your desktop system, and happen to have your sources under a path that has
'/linux/' or '/somethingsomething-linux/' in one of the directory names,
you'll probably see the same thing.

There's probably a '#define linux 1' somewhere (either predefined or in a
prior header file), and the preprocessor, when converting a token to a
string, is making that substitution for you.

I ran into this myself, recently, with another package.

-Matt


>
> Why does `meson.current_source_dir()` in Yocto build return an incorrect
> path?
>
> Thanks,
> Joel
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64419):
> https://lists.yoctoproject.org/g/yocto/message/64419
> Mute This Topic: https://lists.yoctoproject.org/mt/110017878/3618418
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [matt@madison.systems]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000002199b60628ebdc5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 9, 2024=
 at 4:52=E2=80=AFPM Joel Winarske via <a href=3D"http://lists.yoctoproject.=
org">lists.yoctoproject.org</a> &lt;joel.winarske=3D<a href=3D"mailto:gmail=
.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div>Building on scarthgap I&#39;m seeing a problem using meson.</div><d=
iv><br></div><div>meson snippet:<br>```<br>lvgl_opt_var =3D cmake.subprojec=
t_options()<br>lvgl_c_flags =3D &#39;-DEGL_NO_X11 -DLV_CONF_PATH=3D&#39; + =
meson.current_source_dir() + &#39;/lv_conf.h&#39;<br>lvgl_cxx_flags =3D &#3=
9;-DEGL_NO_X11 -DLV_CONF_PATH=3D&#39; + meson.current_source_dir() + &#39;/=
lv_conf.h&#39;<br>lvgl_opt_var.add_cmake_defines(<br>=C2=A0 =C2=A0 {<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &#39;CMAKE_VERBOSE_MAKEFILE&#39; : true,<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 &#39;CMAKE_C_FLAGS&#39; : lvgl_c_flags,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &#39;CMAKE_CXX_FLAGS&#39; : lvgl_cxx_flags })<br>```<br><=
br>Build Error:<br>```<br>| In file included from ../git/subprojects/lvgl/s=
rc/core/lv_group.h:16,<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0from ../git/subprojects/lvgl/src/core/lv_group_private.h:1=
7,<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from =
../git/subprojects/lvgl/src/core/lv_group.c:9:<br>| ../git/subprojects/lvgl=
/src/core/../lv_conf_internal.h:54:42: fatal error: /mnt/raid10/yocto/scart=
hgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/git/examples/lvgl/lv_conf.=
h: No such file or directory<br>| =C2=A0 =C2=A054 | =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 #include __LV_TO_STR(LV_CONF_PATH)<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>|=
 compilation terminated.<br>```<br><br>Observations:<br>```<br>$ ls -la /mn=
t/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/git/ex=
amples/lvgl/lv_conf.h<br>ls: cannot access &#39;/mnt/raid10/yocto/scarthgap=
/up2u/tmp/work/corei7-64-poky-1/libdrmpp/git/git/examples/lvgl/lv_conf.h&#3=
9;: No such file or directory<br>```</div><div><br></div><div>```<br>$ ls -=
la /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-linux/libdrmpp/=
git/git/examples/lvgl/lv_conf.h <br>-rw-r--r--. 1 joel joel 36431 Dec =C2=
=A09 16:39 /mnt/raid10/yocto/scarthgap/up2u/tmp/work/corei7-64-poky-linux/l=
ibdrmpp/git/git/examples/lvgl/lv_conf.h</div><div>```<br></div><div><br></d=
iv><div>The same meson snippet works correctly on desktop<br></div></div></=
blockquote><div><br></div><div><br></div><div>I don&#39;t think this is a m=
eson problem. If you build the same package on your desktop system, and hap=
pen to have your sources under a path that has &#39;/linux/&#39; or &#39;/s=
omethingsomething-linux/&#39; in one of the directory names, you&#39;ll pro=
bably see the same thing.</div><div><br></div><div>There&#39;s probably a &=
#39;#define linux 1&#39; somewhere (either predefined or in a prior header =
file), and the preprocessor, when converting a token to a string, is making=
 that substitution for you.</div><div><br></div><div>I ran into this myself=
, recently, with another package.</div><div><br></div><div>-Matt</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div></div><div><br>Why does `meson.current_source_dir()` in Yocto buil=
d return an incorrect path?<br><br></div><div>Thanks,<br></div><div>Joel<br=
></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64419): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64419" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64419</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/110017878/361=
8418" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/110017878/3618418</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [matt@madison.systems]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000002199b60628ebdc5f--

