Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE8EFD2E033
	for <webhook@archiver.kernel.org>; Wed, 23 Oct 2024 09:34:29 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.4863.1729676067653686997
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Oct 2024 02:34:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Yaer6CHu;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb388e64b0so65557331fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 02:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729676065; x=1730280865; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FbptRe6z2gBkliy27NG72tQ1IHAqWDgE/9GfvAMFGYU=;
        b=Yaer6CHuMXw9gkjPP1WJoUv5ZMs7afTwVlDX0OSt3ECyOcFZfQ+GMXB2ZWZ7liu/fR
         8P8WAktJwU2Yqf7F6MQR2mOkJ/AwOYWeJLNxsHTokhorpEqs8yUeLyu+aaoEroi/Vrtq
         6xv9Nvfdc9nBrr86AAZHmaR4UudG6n+En06ai+hmttZz04wp/VAWPucEeGh47AVGk1Gm
         LimKnJPBtG5Df0PI7P8KoZOEM2Q3vJW+gxzUEOTJnXh06yVi6DT2DjhjSOZVxgN+qzxM
         XljSzswkHLYmeiweyTdWqFh20nTq2TgHKtLDgHMS/FA9wzbSYSxkERwLAIaOf1dWV4rR
         OUIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729676065; x=1730280865;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FbptRe6z2gBkliy27NG72tQ1IHAqWDgE/9GfvAMFGYU=;
        b=OtyJu17t1TigXBTx33oepifBVx9trGh4/EA14Ucrr2C1lrZ12My/8bCWzpX1SsI5dZ
         TSJdxMHj1kMqLeAHeJsYUE7NpO7C2MV40u+wHaeHKlddkLlSwKOGBcmthko365Ioc8xV
         kDNpMYeu2UaGNziPMw4semMXuNGgzrWpOMreMcck4hHaAl/LidwXIBbuSrwFWLAx1LtF
         PkAqZy7dXynZXGTX/9voNo1MdZYTYb/FzqDrd7+w/mJcNTBSJMLsUvjTZbzozpEH6vaq
         akldtIZ0cxpqwnbSXCzBElmtEHMNAyZMIihVDANZIvKbCf3Mn7XlhmrJs10wexenV42l
         W7oQ==
X-Gm-Message-State: AOJu0Yy+fMcD5R0V3ECY+PGo4YsQ9WZNuNvaML3zmwVRRW4GYyhfZujq
	ObISm1BeVffU1JxXkjshtnC/1UH3S8c/tx9M1sLg102MS2npwarU0xgRTxW1sI/sCf+13kc41hh
	Fl4MXNWrjWuZybEINzsNh4qC9tYdFmQ==
X-Google-Smtp-Source: AGHT+IEoy035P5qunTBMqUMtkNP2FPMaibMWrTU4cRsgBC9DOX9/8OIFDkEH4HqKMPbyXSuJQtTZuUQIKQKnAlbn4Uo=
X-Received: by 2002:a05:6512:6c5:b0:539:f922:bd4e with SMTP id
 2adb3069b0e04-53b1a31236cmr895752e87.23.1729676064959; Wed, 23 Oct 2024
 02:34:24 -0700 (PDT)
MIME-Version: 1.0
References: <ksMx.1729669931763070130.Zh9Z@lists.yoctoproject.org>
In-Reply-To: <ksMx.1729669931763070130.Zh9Z@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 23 Oct 2024 11:34:12 +0200
Message-ID: <CANNYZj8i4tt4h+05T99zfSP_nPPFzZm1azCu7KS_pXsnbKNDWg@mail.gmail.com>
Subject: Re: [yocto] Lack of Qt's libraries in the SDK. #cmake #imx8 #qt
 #scarthgap #sdk #yocto
To: yocto@lists.yoctoproject.org, bartiszosti@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 09:34:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64090

This should be reported to maintainers of meta-qt6 perhaps?

Alex

On Wed, 23 Oct 2024 at 09:52, bartiszosti via lists.yoctoproject.org
<bartiszosti=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello,
> I'm working on image which needs Qt6. I succeeded to add the layer, build=
 the image and run it on the hardware.
> Next, I generated the SDK, so I generated it by the "-c populate_sdk" opt=
ion and also I inherited the "populate_sdk_qt6", correct, as well.
> The problem is that I can't build my application through the SDK, because=
:
>
> cmake ..
> -- The CXX compiler identification is GNU 13.3.0
> -- The C compiler identification is GNU 13.3.0
> -- Detecting CXX compiler ABI info
> -- Detecting CXX compiler ABI info - done
> -- Check for working CXX compiler: /home/bstk/Documents/sdk/sysroots/x86_=
64-fslsdk-linux/usr/bin/aarch64-fsl-linux/aarch64-fsl-linux-g++ - skipped
> -- Detecting CXX compile features
> -- Detecting CXX compile features - done
> -- Detecting C compiler ABI info
> -- Detecting C compiler ABI info - done
> -- Check for working C compiler: /home/bstk/Documents/sdk/sysroots/x86_64=
-fslsdk-linux/usr/bin/aarch64-fsl-linux/aarch64-fsl-linux-gcc - skipped
> -- Detecting C compile features
> -- Detecting C compile features - done
> -- Performing Test CMAKE_HAVE_LIBC_PTHREAD
> -- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success
> -- Found Threads: TRUE
> -- Performing Test HAVE_STDATOMIC
> -- Performing Test HAVE_STDATOMIC - Success
> -- Found WrapAtomic: TRUE
> -- Performing Test HAVE_EGL
> -- Performing Test HAVE_EGL - Success
> -- Found EGL: /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linu=
x/usr/include (found version "1.5")
> -- Performing Test HAVE_GLESv2
> -- Performing Test HAVE_GLESv2 - Success
> -- Found GLESv2: /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-l=
inux/usr/include
> -- Found XKB: /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linu=
x/usr/lib/libxkbcommon.so (found suitable version "1.6.0", minimum required=
 is "0.5.0")
> -- Could NOT find WrapVulkanHeaders (missing: Vulkan_INCLUDE_DIR)
> CMake Error at /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-lin=
ux/usr/lib/cmake/Qt6QmlBuiltins/Qt6QmlBuiltinsTargets.cmake:128 (message):
>   The imported target "Qt6::QmlBuiltins" references the file
>      "/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/li=
b/libQt6QmlBuiltins.a"
>   but this file does not exist.  Possible reasons include:
>   * The file was deleted, renamed, or moved to another location.
>   * An install or uninstall procedure did not complete successfully.
>   * The installation package was faulty and contained
>      "/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/li=
b/cmake/Qt6QmlBuiltins/Qt6QmlBuiltinsTargets.cmake"
>   but not all the files it references.
> Call Stack (most recent call first):
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6QmlBuiltins/Qt6QmlBuiltinsConfig.cmake:65 (include)
>   /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/share/cmake-3=
.28/Modules/CMakeFindDependencyMacro.cmake:76 (find_package)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6/QtPublicDependencyHelpers.cmake:111 (find_dependency)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6Qml/Qt6QmlDependencies.cmake:42 (_qt_internal_find_qt_dependencies)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6Qml/Qt6QmlConfig.cmake:54 (include)
>   /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/share/cmake-3=
.28/Modules/CMakeFindDependencyMacro.cmake:76 (find_package)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6/QtPublicDependencyHelpers.cmake:111 (find_dependency)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6Quick/Qt6QuickDependencies.cmake:42 (_qt_internal_find_qt_dependenci=
es)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6Quick/Qt6QuickConfig.cmake:53 (include)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6/Qt6Config.cmake:179 (find_package)
>   CMakeLists.txt:12 (find_package)
>
> CMake Warning at /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/us=
r/share/cmake-3.28/Modules/CMakeFindDependencyMacro.cmake:76 (find_package)=
:
>   Found package configuration file:
>     /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/=
cmake/Qt6Qml/Qt6QmlConfig.cmake
>   but it set Qt6Qml_FOUND to FALSE so package "Qt6Qml" is considered to b=
e
>   NOT FOUND.
> Call Stack (most recent call first):
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6/QtPublicDependencyHelpers.cmake:111 (find_dependency)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6Quick/Qt6QuickDependencies.cmake:42 (_qt_internal_find_qt_dependenci=
es)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6Quick/Qt6QuickConfig.cmake:53 (include)
>   /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cm=
ake/Qt6/Qt6Config.cmake:179 (find_package)
>   CMakeLists.txt:12 (find_package)
>
> CMake Warning at /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-l=
inux/usr/lib/cmake/Qt6/Qt6Config.cmake:179 (find_package):
>   Found package configuration file:
>     /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/=
cmake/Qt6Quick/Qt6QuickConfig.cmake
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
> And I'm blocked. The "/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-=
fsl-linux/usr/lib/libQt6QmlBuiltins.a" doesn;t exist, but this file is in "=
/home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/lib/libQt6QmlBuil=
tins.a". Do you know where the issue is?
>
> I tried the official meta-qt6 and from YoeDistro.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64089): https://lists.yoctoproject.org/g/yocto/messag=
e/64089
> Mute This Topic: https://lists.yoctoproject.org/mt/109166871/1686489
> Mute #cmake:https://lists.yoctoproject.org/g/yocto/mutehashtag/cmake
> Mute #imx8:https://lists.yoctoproject.org/g/yocto/mutehashtag/imx8
> Mute #qt:https://lists.yoctoproject.org/g/yocto/mutehashtag/qt
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarth=
gap
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

