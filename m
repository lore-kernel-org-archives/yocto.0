Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D49C4332F
	for <webhook@archiver.kernel.org>; Wed, 12 Oct 2022 16:56:41 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web08.133.1665593797352852325
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Oct 2022 09:56:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bmBUIz6S;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: ticotimo@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id k2so39321832ejr.2
        for <yocto@lists.yoctoproject.org>; Wed, 12 Oct 2022 09:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=27y78Lqjov1dmeED6uqwpGPFg7I68QOyLTmR1MgpDb0=;
        b=bmBUIz6S8VtAmXZwv69nAKaV42Vh1UQzIl/Ra+AeJlpSRn5bT8wQ5z2kHTTbCILtd4
         gnJJYOgccNPCZ83QX/8YZQKT04vQOJ9rkEOoCLMXscBSVNClUs4R44dSuWqvqBNM+ndh
         tsButAX6JauAELX/9gXrsePzHdBfKvzsNMoC1+k/29mIrnMsoLTQ3acRFFr6JI8HrSb1
         eQCcxCb4SdyRh18CnZmlJrt7sHCwBFmPY5IYrx++SKeizdlsQZDV/uqWJAPrvZHmQb/d
         fu9UrU3a4yEQt3vxBuNR//KN2yUagS46t2Yltsj2xUce71QAo2zXET5/6A3THN78ytkR
         hZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=27y78Lqjov1dmeED6uqwpGPFg7I68QOyLTmR1MgpDb0=;
        b=FH0e0niUg8cCavlzQwSgUm+38++Q6ezomuyXquXoM85C9fqts2ENOzEAqZ6Z8hOhhZ
         HlNuycCLEeu+6dGHPFyK5LvkvZR2cZZUacZvSkjyaMKmx3xd69jBKq7kN8NTOz+VENzy
         e2b2akE/+yWYrYv7SqUBx3uUB4IhG0XGkZ4auV9k1fJRLvygFw22zoNzD+EyT2sHyDSA
         xzvskXUJy140Shxr4u6Fk2YETPPh08OlJOlQI64L6yzZQFcBgTv2kX9zMxPsinZcnx4l
         d0wb8KxxdXJD+c4QxcbNDtP1sQ5077qOOOXxj01PWPhnkq52N93aJnCUYZ44G86ITsAP
         DHow==
X-Gm-Message-State: ACrzQf3SrYD7VBhfJYve1RhZtDX/aPYluRGTYgI0DjeCAD+rnLugzUdr
	kQXpwEG3QgdWqahhmiCPgnR6iyP+c6P0ttKInAs=
X-Google-Smtp-Source: AMsMyM52Nnp+s6moGIJvCHKVk1Mlmk8Ttz5ejncZZU1zF6IrCwjKWiFzDwbyI4e632TOyE655ag5h/8KluFgPIV4lGg=
X-Received: by 2002:a17:906:cc10:b0:78d:f741:9d87 with SMTP id
 ml16-20020a170906cc1000b0078df7419d87mr2434608ejb.295.1665593795567; Wed, 12
 Oct 2022 09:56:35 -0700 (PDT)
MIME-Version: 1.0
References: <5Wkm.1665591860856831686.iN0k@lists.yoctoproject.org>
In-Reply-To: <5Wkm.1665591860856831686.iN0k@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 12 Oct 2022 09:56:24 -0700
Message-ID: <CANx9H-ATaWeZU2NR-sDo3wXxeccrjywsizD5S3RsPUqfcXTfzA@mail.gmail.com>
Subject: Re: [yocto] #kirkstone efivar build failed
To: Ilies CHERGUI <ilies.chergui@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008665c305ead94620"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Oct 2022 16:56:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58327

--0000000000008665c305ead94620
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 12, 2022 at 9:24 AM Ilies CHERGUI <ilies.chergui@gmail.com>
wrote:

> Hello guys,
>
> I'm trying to use `QT6` and `Boot2QT` meta layer and I noticed that `ld-i=
s-gold`
> is used in `DISTRO_FEATURES`
> This build of efivar failed. Please see the logs below.
>
> gcc -isystem/home/ichergui/projects/oe4t/tegra-bsp-platform/build-tegrade=
mo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/usr/includ=
e -O2 -pipe -L. -L/home/ichergui/projects/oe4t/tegra-bsp-platform/build-teg=
rademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/usr/li=
b                         -L/home/ichergui/projects/oe4t/tegra-bsp-platform=
/build-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-nat=
ive/lib                         -Wl,--enable-new-dtags                     =
    -Wl,-rpath-link,/home/ichergui/projects/oe4t/tegra-bsp-platform/build-t=
egrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/usr/=
lib                         -Wl,-rpath-link,/home/ichergui/projects/oe4t/te=
gra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/re=
cipe-sysroot-native/lib                         -Wl,-rpath,/home/ichergui/p=
rojects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/=
efivar/38-r0/recipe-sysroot-native/usr/lib                         -Wl,-rpa=
th,/home/ichergui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work=
/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/lib                  =
       -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=3D/home/ich=
ergui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/sysroots-uninati=
ve/x86_64-linux/lib/ld-linux-x86-64.so.2  -Wl,--add-needed -Wl,--build-id -=
Wl,--no-allow-shlib-undefined -Wl,-z,now -Wl,-z,muldefs -Wl,--no-undefined-=
version    -DLIBEFIVAR_VERSION=3D38 -D_GNU_SOURCE -I/home/ichergui/projects=
/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/=
38-r0/git/src/include/ -DLIBEFIVAR_VERSION=3D38 -D_GNU_SOURCE -I/home/icher=
gui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-l=
inux/efivar/38-r0/git/src/include/ -DEFIVAR_BUILD_ENVIRONMENT -march=3Dnati=
ve -o makeguids makeguids.o util-makeguids.o -ldl
> ./makeguids Your linker is not supported guids.txt guid-symbols.c include=
/efivar/efivar-guids.h guids.lds
> makeguids: Too many arguments.
>
> ./makeguids Your linker is not supported guids.txt guid-symbols.c include=
/efivar/efivar-guids.h guids.lds
> makeguids: Too many arguments.
>
> Related:  https://github.com/rhboot/efivar/issues/220

> ERROR: oe_runmake failed
>
>
>
> Any help would be appreciated
> Best regards,
> Ilies
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58326):
> https://lists.yoctoproject.org/g/yocto/message/58326
> Mute This Topic: https://lists.yoctoproject.org/mt/94284745/924729
> Mute #kirkstone:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000008665c305ead94620
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 12, 2022 at 9:24 AM Ilies=
 CHERGUI &lt;<a href=3D"mailto:ilies.chergui@gmail.com">ilies.chergui@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Hello guys,=C2=A0<br><br>I&#39;m trying to use `QT6` and `Boot2QT` meta=
 layer and I noticed that `<span style=3D"background-color:transparent;colo=
r:inherit;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,monospa=
ce;font-size:inherit;white-space:pre-wrap">ld-is-gold` is used in `</span><=
span style=3D"background-color:transparent;color:inherit;font-family:Menlo,=
Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:inherit;white-s=
pace:pre-wrap">DISTRO_FEATURES`<br>This build of efivar failed. Please see =
the logs below. <br><br></span>
<pre style=3D"box-sizing:inherit;margin-top:4px;margin-bottom:4px;padding:8=
px;font-size:12px;font-variant-ligatures:none;line-height:1.50001;white-spa=
ce:pre-wrap;word-break:normal;color:rgb(29,28,29);font-family:Monaco,Menlo,=
Consolas,&quot;Courier New&quot;,monospace">gcc -isystem/home/ichergui/proj=
ects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/efi=
var/38-r0/recipe-sysroot-native/usr/include -O2 -pipe -L. -L/home/ichergui/=
projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux=
/efivar/38-r0/recipe-sysroot-native/usr/lib                         -L/home=
/ichergui/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-=
oe4t-linux/efivar/38-r0/recipe-sysroot-native/lib                         -=
Wl,--enable-new-dtags                         -Wl,-rpath-link,/home/ichergu=
i/projects/oe4t/tegra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-lin=
ux/efivar/38-r0/recipe-sysroot-native/usr/lib                         -Wl,-=
rpath-link,/home/ichergui/projects/oe4t/tegra-bsp-platform/build-tegrademo/=
tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-native/lib          =
               -Wl,-rpath,/home/ichergui/projects/oe4t/tegra-bsp-platform/b=
uild-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/recipe-sysroot-nativ=
e/usr/lib                         -Wl,-rpath,/home/ichergui/projects/oe4t/t=
egra-bsp-platform/build-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/r=
ecipe-sysroot-native/lib                         -Wl,-O1 -Wl,--allow-shlib-=
undefined -Wl,--dynamic-linker=3D/home/ichergui/projects/oe4t/tegra-bsp-pla=
tform/build-tegrademo/tmp/sysroots-uninative/x86_64-linux/lib/ld-linux-x86-=
64.so.2  -Wl,--add-needed -Wl,--build-id -Wl,--no-allow-shlib-undefined -Wl=
,-z,now -Wl,-z,muldefs -Wl,--no-undefined-version    -DLIBEFIVAR_VERSION=3D=
38 -D_GNU_SOURCE -I/home/ichergui/projects/oe4t/tegra-bsp-platform/build-te=
grademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/git/src/include/ -DLIBEFIVA=
R_VERSION=3D38 -D_GNU_SOURCE -I/home/ichergui/projects/oe4t/tegra-bsp-platf=
orm/build-tegrademo/tmp/work/armv8a-oe4t-linux/efivar/38-r0/git/src/include=
/ -DEFIVAR_BUILD_ENVIRONMENT -march=3Dnative -o makeguids makeguids.o util-=
makeguids.o -ldl=20
./makeguids Your linker is not supported guids.txt guid-symbols.c include/e=
fivar/efivar-guids.h guids.lds
makeguids: Too many arguments.

./makeguids Your linker is not supported guids.txt guid-symbols.c include/e=
fivar/efivar-guids.h guids.lds
makeguids: Too many arguments.
</pre></blockquote><div>Related:=C2=A0=C2=A0<a href=3D"https://github.com/r=
hboot/efivar/issues/220">https://github.com/rhboot/efivar/issues/220</a></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><pre style=3D"box-sizi=
ng:inherit;margin-top:4px;margin-bottom:4px;padding:8px;font-size:12px;font=
-variant-ligatures:none;line-height:1.50001;white-space:pre-wrap;word-break=
:normal;color:rgb(29,28,29);font-family:Monaco,Menlo,Consolas,&quot;Courier=
 New&quot;,monospace">ERROR: oe_runmake failed</pre>
<span style=3D"background-color:transparent;color:inherit;font-family:Menlo=
,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:inherit;white-=
space:pre-wrap"><br><br>Any help would be appreciated<br></span><span style=
=3D"background-color:transparent;color:inherit;font-family:Menlo,Monaco,Con=
solas,&quot;Courier New&quot;,monospace;font-size:inherit;white-space:pre-w=
rap">Best regards,<br>Ilies</span>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58326): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58326" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58326</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94284745/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
94284745/924729</a><br>
Mute #kirkstone:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/kirkstone" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/kirkstone</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000008665c305ead94620--

