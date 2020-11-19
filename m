Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web10.5306.1605961370172907203
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:22:50 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=ejXUiinb;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 00:35:19 +0000
X-Sender: bounce+53643+51485+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 6741
X-Received: by 127.0.0.2 with SMTP id lDFfYY3619394xW9lXAA9syI; Thu, 19 Nov 2020 16:35:16 -0800
X-Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51]) by mx.groups.io
 with SMTP id smtpd.web11.16619.1605822514928075563 for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 13:48:35 -0800
X-Received: by mail-ed1-f51.google.com with SMTP id k4so7458417edl.0        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 13:48:34 -0800 (PST)
X-Gm-Message-State: 2Ub6rVIsfPd6g4ESnmeyTKTIx3618059AA=
X-Google-Smtp-Source: ABdhPJzOUj4BicyVO4H6K5a9Nghbf9Kckmpss0jVvXoV2jkNA7IPJHi+Rr6WiZutvbp2jZs2pBTXoI4vkEqMPHXggCk=
X-Received: by 2002:aa7:d615:: with SMTP id c21mr32867415edr.23.1605822512837; Thu, 19 Nov 2020 13:48:32 -0800 (PST)
MIME-Version: 1.0
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Thu, 19 Nov 2020 23:48:21 +0200
X-OldMsgId: <CAJCbrz7=qAmswe-sumk=4E0x_KyFPdRG9UouvgfxwJzyMte=sw@mail.gmail.com>
Subject: [yocto] yocto recipt from host ide
To: yocto@lists.yoctoproject.org
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605832516; bh=OpwqHPdXuzRpeFicrN87D/tFacGnDBmuEuh2O3hiexQ=; h=Content-Type:Date:From:Subject:To;
 b=ejXUiinbxozszopR/LZ0HOJWvP9Pbild2JF0WTkNo/DVhP9p8PYR65dwXqRWkxUB9sp XLJRsGBsXqbIXtQI0WB5mMtO2rxjyfaahh85hE28THDVFqb7eF2543gieWkRwDhc/tscD Br3/X4LvafyrhSZy1fSiqsyDnZqkrGDHC5U=
Return-Path: bounce+53643+51485+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <7627d909336d40b094eea8a345b70ec3@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="LfsD2z0YD8CmE9Y0Dlpi"

--LfsD2z0YD8CmE9Y0Dlpi
Content-Type: multipart/alternative; boundary="00000000000073390a05b47cb00e"

--00000000000073390a05b47cb00e
Content-Type: text/plain; charset="UTF-8"
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {CA5BB508-7CB8-4DC8-92E9-62A27FCC5DF3}

Hi there.
Could anyone share a good approach/documentation/etc on how to
properly configure and use sysroot and sdk for a specific cmake - based c++
receipt
to be able to build it from IDE (vscode, qtcreator) on linux host i.e.

1) ide's --sysroot will be taken from
yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-sysroot
2) compilers and cmake (i believe) will be taken from
yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-sysroot-native
3) no mix of includes from host will be taken into account during the
compilation

If none of ide above could do this stuff, then please recommend your one

For this moment i don't want run/debug the application right from ide, i
just want to have all symbols be correctly resolved from there.

-- 
Kind regards,
Sergey Ivanov




--00000000000073390a05b47cb00e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {10010396-C771-4E57-80E4-AC3D9BC2335E}

<div><div><div><div>Hi there. <br></div><div>Could anyone share a good appro=
ach/documentation/etc on how to <br></div><div>properly configure and use sy=
sroot and sdk for a specific cmake - based c++ receipt <br></div>to be able =
to build it from IDE (vscode, qtcreator) on linux host i.e.<br><br>1) ide&#3=
9;s --sysroot will be taken from <br>yocto-root/build/tmp/work/aarch64-poky-=
linux/&lt;my_recipe&gt;1.0.0-r0/recipe-sysroot<br></div><div>2) compilers an=
d cmake (i believe) will be taken from <br>yocto-root/build/tmp/work/aarch64=
-poky-linux/&lt;my_recipe&gt;1.0.0-r0/recipe-sysroot-native</div><div>3) no =
mix of includes from host will be taken into account during the compilation<=
br><br></div>If none of ide above could do this stuff, then please recommend=
 your one<br><br></div>For this moment i don&#39;t want run/debug the applic=
ation right from ide, i just want to have all symbols be correctly resolved =
from there.<br><div><br><div><div><div>-- <br><div class=3D"gmail_signature"=
>Kind regards,<br>Sergey Ivanov</div></div></div></div></div></div>

--00000000000073390a05b47cb00e--

--LfsD2z0YD8CmE9Y0Dlpi--
