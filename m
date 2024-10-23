Return-Path: <lpmeyer@ics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 014FECF5386
	for <webhook@archiver.kernel.org>; Wed, 23 Oct 2024 12:51:12 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web10.8044.1729687866696646236
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Oct 2024 05:51:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ics.com header.s=google header.b=mhtBUWHJ;
 spf=pass (domain: ics.com, ip: 209.85.208.45, mailfrom: lpmeyer@ics.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5c962c3e97dso8135970a12.0
        for <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 05:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ics.com; s=google; t=1729687865; x=1730292665; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J0Ap/B67mvwyy9tl2ImKHloBA0AqMa0Eh0buMLi3n/4=;
        b=mhtBUWHJmiyeMo3CnYnu09mWam6+a8PpU+AZOjIBNU6niCPeCfE+qHhz9fdT8FQ4Xo
         m0j6NsHOVAgYo/VZ1gKulv1CFNZHnnIEVj7VmeakZPON0ktJwd+GufPKuKI1ZH3qeFJd
         OcjcRGwneQuxII5ap80oGHuT2Zej2WETvVeXwY+w7zGOaTqJ8mHLuGKpRLCbA60aRmI/
         UvHJpKyDDvpd4/ehRM85OnsaQDZefj2IIqUQgbo7yp20BcbhoD7XdK4ns44M9h6r/whq
         FJVflDmGq1xNpLex3Z25t6YYCzMBcjQhT1ZaTbvTZS4FTmUvk5FvULmjgxmpGNvUd/28
         NJSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729687865; x=1730292665;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J0Ap/B67mvwyy9tl2ImKHloBA0AqMa0Eh0buMLi3n/4=;
        b=g4if0GssconZRHOeURKq/C2mtxlOld1Eb0I4l0708moNbXQFy45W7vGZcqLBhBKXbN
         BkaLgGMWgmZZ8mkRGkv4yWhCP4kRTQZ6ZWP+3wEZrnQNUK/Zx4+tDpJGO93+lBwRmzsR
         dwZFJ/vWMAttx+/7G/KZj/kWendXW/mPAl5V8rySJ80odXKWwSnJLMPGMyGPPGmD6036
         TstxNkPVGaS6efBw8T7BGYccpoJ9MtKh07sp7kX4lkoBw675o0g16VD2zq9ousO53QGW
         CqaD0KtcsB5Ct3eIj8EZp2u0kqokcKo2I650gz+tYaChzKwk34ttOVpg7Jbst+S1jKLW
         brgA==
X-Gm-Message-State: AOJu0YxsRVt9vVKThCwGOw1HpFwa5AHD+XbDoApsJw5mSWrpI002Ged+
	jT3pAMRoHbMUGo7LzqTaIl/5zYI6ud0RWiPKUm6BM6RgMq1uivpEUkgVyEUMXfhZCEDXbbZRup2
	rjh1QpYBeubK1mM2ZZWGMR9W9v+c5aYVavlVjlZKCUUFBdarbKvY=
X-Google-Smtp-Source: AGHT+IH+le7VAGg6dgQhPW0XeuG4s/u7onIemsyUiEekHmHebkqTIVuuS0WmEtdtMpELeMjCsjvaRpFLRCnBcz2bxIY=
X-Received: by 2002:a05:6402:2685:b0:5cb:6272:1447 with SMTP id
 4fb4d7f45d1cf-5cb8ac636c6mr2599479a12.8.1729687864798; Wed, 23 Oct 2024
 05:51:04 -0700 (PDT)
MIME-Version: 1.0
References: <ksMx.1729669931763070130.Zh9Z@lists.yoctoproject.org>
In-Reply-To: <ksMx.1729669931763070130.Zh9Z@lists.yoctoproject.org>
From: =?UTF-8?Q?Lisandro_P=C3=A9rez_Meyer?= <lpmeyer@ics.com>
Date: Wed, 23 Oct 2024 09:50:48 -0300
Message-ID: <CABqjNW_VBd0RXUkd7zpJLC4RY85wjC_Jb-a268mmfcqmMcZz4w@mail.gmail.com>
Subject: Re: [yocto] Lack of Qt's libraries in the SDK. #cmake #imx8 #qt
 #scarthgap #sdk #yocto
To: yocto@lists.yoctoproject.org, bartiszosti@gmail.com
Content-Type: multipart/alternative; boundary="000000000000c112580625245632"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 12:51:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64094

--000000000000c112580625245632
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Oct 23, 2024 at 4:52=E2=80=AFAM <bartiszosti@gmail.com> wrote:

> Hello,
>
[snip]

> CMake Error at
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6QmlBuiltins/Qt6QmlBuiltinsTargets.cmake:128
> (message):
>   The imported target "Qt6::QmlBuiltins" references the file
>
>
>  "/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/li=
bQt6QmlBuiltins.a"
>   but this file does not exist.  Possible reasons include:
>   * The file was deleted, renamed, or moved to another location.
>   * An install or uninstall procedure did not complete successfully.
>   * The installation package was faulty and contained
>
>  "/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6QmlBuiltins/Qt6QmlBuiltinsTargets.cmake"
>   but not all the files it references.
> Call Stack (most recent call first):
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6QmlBuiltins/Qt6QmlBuiltinsConfig.cmake:65
> (include)
>
> /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/share/cmake-3.2=
8/Modules/CMakeFindDependencyMacro.cmake:76
> (find_package)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/QtPublicDependencyHelpers.cmake:111
> (find_dependency)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Qml/Qt6QmlDependencies.cmake:42
> (_qt_internal_find_qt_dependencies)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Qml/Qt6QmlConfig.cmake:54
> (include)
>
> /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/share/cmake-3.2=
8/Modules/CMakeFindDependencyMacro.cmake:76
> (find_package)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/QtPublicDependencyHelpers.cmake:111
> (find_dependency)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickDependencies.cmake:42
> (_qt_internal_find_qt_dependencies)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickConfig.cmake:53
> (include)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/Qt6Config.cmake:179
> (find_package)
>   CMakeLists.txt:12 (find_package)
>
> CMake Warning at
> /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/share/cmake-3.2=
8/Modules/CMakeFindDependencyMacro.cmake:76
> (find_package):
>   Found package configuration file:
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Qml/Qt6QmlConfig.cmake
>   but it set Qt6Qml_FOUND to FALSE so package "Qt6Qml" is considered to b=
e
>   NOT FOUND.
> Call Stack (most recent call first):
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/QtPublicDependencyHelpers.cmake:111
> (find_dependency)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickDependencies.cmake:42
> (_qt_internal_find_qt_dependencies)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickConfig.cmake:53
> (include)
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/Qt6Config.cmake:179
> (find_package)
>   CMakeLists.txt:12 (find_package)
>
> CMake Warning at
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/Qt6Config.cmake:179
> (find_package):
>   Found package configuration file:
>
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickConfig.cmake
>   but it set Qt6Quick_FOUND to FALSE so package "Qt6Quick" is considered =
to
>   be NOT FOUND.
> Call Stack (most recent call first):
>   CMakeLists.txt:12 (find_package)
>
> -- Configuring incomplete, errors occurred!
>
>
>
> And I'm blocked. The
> "/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/lib=
Qt6QmlBuiltins.a"
> doesn;t exist, but this file is in
> "/home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/lib/libQt6QmlB=
uiltins.a".
> Do you know where the issue is?
>
> I tried the official meta-qt6 and from YoeDistro.
>
>
If I am not mistaken that's https://bugreports.qt.io/browse/QTBUG-125765

--000000000000c112580625245632
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 23, 2024 at 4:52=E2=80=
=AFAM &lt;<a href=3D"mailto:bartiszosti@gmail.com">bartiszosti@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v>Hello,<br></div></blockquote><div>[snip] <br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div>CMake Error at /home/bstk/Documents/sdk/sy=
sroots/cortexa53-crypto-fsl-linux/usr/lib/cmake/Qt6QmlBuiltins/Qt6QmlBuilti=
nsTargets.cmake:128 (message):<br>=C2=A0 The imported target &quot;Qt6::Qml=
Builtins&quot; references the file</div><blockquote><div>
<div>=C2=A0 =C2=A0 =C2=A0&quot;/home/bstk/Documents/sdk/sysroots/cortexa53-=
crypto-fsl-linux/usr/lib/libQt6QmlBuiltins.a&quot;</div>
<div>=C2=A0 but this file does not exist.=C2=A0 Possible reasons include:</=
div>
<div>=C2=A0 * The file was deleted, renamed, or moved to another location.<=
/div>
<div>=C2=A0 * An install or uninstall procedure did not complete successful=
ly.</div>
<div>=C2=A0 * The installation package was faulty and contained</div>
<div>=C2=A0 =C2=A0 =C2=A0&quot;/home/bstk/Documents/sdk/sysroots/cortexa53-=
crypto-fsl-linux/usr/lib/cmake/Qt6QmlBuiltins/Qt6QmlBuiltinsTargets.cmake&q=
uot;</div>
<div>=C2=A0 but not all the files it references.</div>
<div>Call Stack (most recent call first):<br>=C2=A0 /home/bstk/Documents/sd=
k/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmake/Qt6QmlBuiltins/Qt6QmlBu=
iltinsConfig.cmake:65 (include)<br>=C2=A0 /home/bstk/Documents/sdk/sysroots=
/x86_64-fslsdk-linux/usr/share/cmake-3.28/Modules/CMakeFindDependencyMacro.=
cmake:76 (find_package)<br>=C2=A0 /home/bstk/Documents/sdk/sysroots/cortexa=
53-crypto-fsl-linux/usr/lib/cmake/Qt6/QtPublicDependencyHelpers.cmake:111 (=
find_dependency)<br>=C2=A0 /home/bstk/Documents/sdk/sysroots/cortexa53-cryp=
to-fsl-linux/usr/lib/cmake/Qt6Qml/Qt6QmlDependencies.cmake:42 (_qt_internal=
_find_qt_dependencies)<br>=C2=A0 /home/bstk/Documents/sdk/sysroots/cortexa5=
3-crypto-fsl-linux/usr/lib/cmake/Qt6Qml/Qt6QmlConfig.cmake:54 (include)<br>=
=C2=A0 /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/share/cmak=
e-3.28/Modules/CMakeFindDependencyMacro.cmake:76 (find_package)<br>=C2=A0 /=
home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmake/Q=
t6/QtPublicDependencyHelpers.cmake:111 (find_dependency)<br>=C2=A0 /home/bs=
tk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmake/Qt6Quick=
/Qt6QuickDependencies.cmake:42 (_qt_internal_find_qt_dependencies)<br>=C2=
=A0 /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6Quick/Qt6QuickConfig.cmake:53 (include)<br>=C2=A0 /home/bstk/Documen=
ts/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmake/Qt6/Qt6Config.cmak=
e:179 (find_package)<br>=C2=A0 CMakeLists.txt:12 (find_package)</div>
<div><br>CMake Warning at /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-l=
inux/usr/share/cmake-3.28/Modules/CMakeFindDependencyMacro.cmake:76 (find_p=
ackage):<br>=C2=A0 Found package configuration file:</div>
<div>=C2=A0 =C2=A0 /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-l=
inux/usr/lib/cmake/Qt6Qml/Qt6QmlConfig.cmake</div>
<div>=C2=A0 but it set Qt6Qml_FOUND to FALSE so package &quot;Qt6Qml&quot; =
is considered to be<br>=C2=A0 NOT FOUND.<br>Call Stack (most recent call fi=
rst):<br>=C2=A0 /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linu=
x/usr/lib/cmake/Qt6/QtPublicDependencyHelpers.cmake:111 (find_dependency)<b=
r>=C2=A0 /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/l=
ib/cmake/Qt6Quick/Qt6QuickDependencies.cmake:42 (_qt_internal_find_qt_depen=
dencies)<br>=C2=A0 /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-l=
inux/usr/lib/cmake/Qt6Quick/Qt6QuickConfig.cmake:53 (include)<br>=C2=A0 /ho=
me/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmake/Qt6=
/Qt6Config.cmake:179 (find_package)<br>=C2=A0 CMakeLists.txt:12 (find_packa=
ge)</div>
<div><br>CMake Warning at /home/bstk/Documents/sdk/sysroots/cortexa53-crypt=
o-fsl-linux/usr/lib/cmake/Qt6/Qt6Config.cmake:179 (find_package):<br>=C2=A0=
 Found package configuration file:</div>
<div>=C2=A0 =C2=A0 /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-l=
inux/usr/lib/cmake/Qt6Quick/Qt6QuickConfig.cmake</div>
<div>=C2=A0 but it set Qt6Quick_FOUND to FALSE so package &quot;Qt6Quick&qu=
ot; is considered to<br>=C2=A0 be NOT FOUND.<br>Call Stack (most recent cal=
l first):<br>=C2=A0 CMakeLists.txt:12 (find_package)</div>
<div><br>-- Configuring incomplete, errors occurred!</div>
<div>=C2=A0</div>
</div>
</blockquote>
<div>=C2=A0</div>
<div>And I&#39;m blocked. The &quot;/home/bstk/Documents/sdk/sysroots/corte=
xa53-crypto-fsl-linux/usr/lib/libQt6QmlBuiltins.a&quot; doesn;t exist, but =
this file is in &quot;/home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux=
/usr/lib/libQt6QmlBuiltins.a&quot;. Do you know where the issue is?=C2=A0<b=
r><br>I tried the official meta-qt6 and from YoeDistro.</div>
<br></blockquote><div><br></div><div>If I am not mistaken that&#39;s <a hre=
f=3D"https://bugreports.qt.io/browse/QTBUG-125765">https://bugreports.qt.io=
/browse/QTBUG-125765</a></div></div><br></div>

--000000000000c112580625245632--

