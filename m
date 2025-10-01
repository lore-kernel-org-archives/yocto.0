Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA53CCCA470
	for <webhook@archiver.kernel.org>; Wed,  1 Oct 2025 16:09:26 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.1105.1759334963610271444
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Oct 2025 09:09:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G8iIRKxr;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: rustyhowell@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-378aa12c13dso46652fac.2
        for <yocto@lists.yoctoproject.org>; Wed, 01 Oct 2025 09:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759334963; x=1759939763; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uEL89D2cVm8d+RHm8hmT3e+L9Rg9X9+gaQfn/r4YgVM=;
        b=G8iIRKxr2S4EWL+c80P4LUnoEruzOgvBwgS93/6KA5Duc/mw3/dxBkjY+rAUOqSgR5
         wF1yRfvyDGqppm9u+hQN1xFTQtpK08u6ySE3oXwaVMkA/LIBY2gdXf+LbAC8dZjMpY8s
         ZTqcdzRLR04pJdLWaWqHkxBM0CeWw6QtrWdC8ox82Wf7aBSJ/sslR8AnR5Zr+8d5Wpac
         Mc8IHBa6GdQov1cgHj9ilJA0ax9qUcY3KwL2CwIPV4EJj70lJ2oc9lE7SLqWyYBF2kF2
         qk5C/px1VX/GwRiVsVOU8KcN8F24Ez0tdJjsNDcHpycLxHuZD3kVudmJ2kwiuflLGpMm
         StgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759334963; x=1759939763;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uEL89D2cVm8d+RHm8hmT3e+L9Rg9X9+gaQfn/r4YgVM=;
        b=Oej1Hykx83WwgPPvKKd+8EWE5yvFv2ygNnersaUm3ymErrv3QXLiwNnur3rXE80hD1
         EWB1ZLCqjNdvoEUjY7h536irEYYx0psEjYDRYfS8m3/Cgs58gNWAbYKDqrSvhGNooKsM
         Z9mI0ChCuda2aRL/GwAGKOG13AVDMANCX0P4FajrRH+KDmXf2tVqHW2P4f+9MF+YKCV+
         u4GR7kPjy3B2pYUbgtBpop+itFnM7CS1AWcSGKUjXy1vD6jePqm4pTHvmcPEdEyAtb3M
         a2eUSYG59Rev9DKUBHzt8SMNZL3W1xuWnM/yEdoHbTGv9/3cHdjF0kq2Yv6jjjveJIzr
         NXQA==
X-Gm-Message-State: AOJu0YyToOpPGGAJ4/QReIyXE/0tkoU7wA7cbWIb0aMZtG16l0huuK7i
	iNnfGjp20f7yxW6jmm5nsdru5CpbqqiYyxI5uvonDd6E1/Ac9RsowVmufw5jcC8uZTSagnXC9ir
	+6IuMqbItQB4xLxSMBYpV5IPnWPJ57URnF3Zc0c0=
X-Gm-Gg: ASbGncuaSvXr2MrrgC14FG1WBfGUi+w1adoMa6KrxzL8v/lasJGugsU6WU+L4TRyngg
	bNf8NjnLh3c0eGWotA3tTaBuv+rrWB+kg0QkUL1Ts3nbnI+kQvd77Px5Vav1O8CnLu5u5LdkDbv
	ihOrONCwlZMnemYt3uFxhTOSjNaMF+LIadEGjlO4THvIGEswOL16yA7yo1nW+e019crk+55d3Mp
	6R19R2DEkAZtCCPRZOOnbHHcQhvPSmW57BrFpeDQfs=
X-Google-Smtp-Source: AGHT+IFz7bBubAf3pMF2yNpcpxBaC578s1MB5FvvsYYn9li5Xsj1GNKknRK55J1WndYAmLavwUDWRQoDbWBqM6yTk4U=
X-Received: by 2002:a05:6870:a088:b0:348:7139:66b8 with SMTP id
 586e51a60fabf-39bb12c09a1mr2121289fac.38.1759334962456; Wed, 01 Oct 2025
 09:09:22 -0700 (PDT)
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Wed, 1 Oct 2025 10:09:06 -0600
X-Gm-Features: AS18NWAisLD3x8zL9U2pbSokGt-jQW9Gp8CkTgV1_wACvy_hJf5HUYRXU_AiGZ8
Message-ID: <CAE+BM3mF4Gn8YdwbN_kYZYBngMBc36fpFhGZzUFYCgc2eSHrkQ@mail.gmail.com>
Subject: Writing custom hardware tests
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007a6d1606401b1769"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Oct 2025 16:09:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65897

--0000000000007a6d1606401b1769
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am trying to write some automated hardware tests for my device. I'm
following the instructions in
https://docs.yoctoproject.org/5.0.12/test-manual/runtime-testing.html#performing-automated-runtime-testing

In local.conf I have the following:

DISTRO_FEATURES:append = " ptest"
EXTRA_IMAGE_FEATURES += "ptest-pkgs"
TEST_SERIALCONTROL_CMD = "microcom -s 115200 -p /dev/ttyUSB0"
IMAGE_CLASSES += "testimage"
#INHERIT += "testexport"
TEST_TARGET = "MyTarget"

In my layer I have a custom target
meta-my-layer/lib/oeqa/controllers/mytarget.py  (copied from
meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py and modified for MyTarget
class)

When I run bitbake -c testimage my-image I get this error

     0182:    @staticmethod
     0183:    def _loadControllerFromModule(target, modulename):
Exception: AttributeError: Unable to load MyTarget from available modules:
['oeqa.controllers.controllerimage', 'oeqa.controllers.testtargetloader',
'oeqa.controllers.fvp']

If I add  addpylib ${LAYERDIR}/lib oeqa to my layer.conf (like other layers
have) I get this new error

File:
'/workspaces/my-distro/sources/poky/meta/classes-recipe/testimage.bbclass',
lineno: 181, function: testimage_main
     0177:    import logging
     0178:    import shutil
     0179:
     0180:    from bb.utils import export_proxies
 *** 0181:    from oeqa.runtime.context import OERuntimeTestContext
     0182:    from oeqa.runtime.context import OERuntimeTestContextExecutor
     0183:    from oeqa.core.target.qemu import supported_fstypes
     0184:    from oeqa.core.utils.test import getSuiteCases
     0185:    from oeqa.utils import make_logger_bitbake_compatible
Exception: ModuleNotFoundError: No module named 'oeqa.runtime.context'

Any help is appreciated.
Rusty Howell

--0000000000007a6d1606401b1769
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I am trying to write=
 some automated hardware tests for my device. I&#39;m following the instruc=
tions in=C2=A0<a href=3D"https://docs.yoctoproject.org/5.0.12/test-manual/r=
untime-testing.html#performing-automated-runtime-testing">https://docs.yoct=
oproject.org/5.0.12/test-manual/runtime-testing.html#performing-automated-r=
untime-testing</a></div><div><br></div><div>In local.conf I have the follow=
ing:</div><div><br></div><div><span style=3D"font-family:monospace">DISTRO_=
FEATURES:append =3D &quot; ptest&quot;<br>EXTRA_IMAGE_FEATURES +=3D &quot;p=
test-pkgs&quot;<br>TEST_SERIALCONTROL_CMD =3D &quot;microcom -s 115200 -p /=
dev/ttyUSB0&quot;<br>IMAGE_CLASSES +=3D &quot;testimage&quot;<br>#INHERIT +=
=3D &quot;testexport&quot;<br>TEST_TARGET =3D &quot;MyTarget&quot;</span></=
div><div><br></div><div>In my layer I have a custom target=C2=A0 meta-my-la=
yer/lib/oeqa/controllers/mytarget.py=C2=A0 (copied from meta-yocto-bsp/lib/=
oeqa/controllers/grubtarget.py and modified for MyTarget class)</div><div><=
br></div><div>When I run bitbake -c testimage my-image I get this error</di=
v><div><br></div><div><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =
=C2=A00182: =C2=A0 =C2=A0@staticmethod<br>=C2=A0 =C2=A0 =C2=A00183: =C2=A0 =
=C2=A0def _loadControllerFromModule(target, modulename):<br>Exception: Attr=
ibuteError: Unable to load MyTarget from available modules: [&#39;oeqa.cont=
rollers.controllerimage&#39;, &#39;oeqa.controllers.testtargetloader&#39;, =
&#39;oeqa.controllers.fvp&#39;]</span></div><div><br></div><div>If I add=C2=
=A0=C2=A0addpylib<span style=3D"font-family:monospace"> ${LAYERDIR}/lib oeq=
a</span> to my layer.conf (like other layers have) I get this new error</di=
v><div><br></div><div><span style=3D"font-family:monospace">File: &#39;/wor=
kspaces/my-distro/sources/poky/meta/classes-recipe/testimage.bbclass&#39;, =
lineno: 181, function: testimage_main<br>=C2=A0 =C2=A0 =C2=A00177: =C2=A0 =
=C2=A0import logging<br>=C2=A0 =C2=A0 =C2=A00178: =C2=A0 =C2=A0import shuti=
l<br>=C2=A0 =C2=A0 =C2=A00179:<br>=C2=A0 =C2=A0 =C2=A00180: =C2=A0 =C2=A0fr=
om bb.utils import export_proxies<br>=C2=A0*** 0181: =C2=A0 =C2=A0from oeqa=
.runtime.context import OERuntimeTestContext<br>=C2=A0 =C2=A0 =C2=A00182: =
=C2=A0 =C2=A0from oeqa.runtime.context import OERuntimeTestContextExecutor<=
br>=C2=A0 =C2=A0 =C2=A00183: =C2=A0 =C2=A0from oeqa.core.target.qemu import=
 supported_fstypes<br>=C2=A0 =C2=A0 =C2=A00184: =C2=A0 =C2=A0from oeqa.core=
.utils.test import getSuiteCases<br>=C2=A0 =C2=A0 =C2=A00185: =C2=A0 =C2=A0=
from oeqa.utils import make_logger_bitbake_compatible<br>Exception: ModuleN=
otFoundError: No module named &#39;oeqa.runtime.context&#39;</span><br><br>=
</div><div>Any help is appreciated.</div><div>Rusty Howell</div></div>

--0000000000007a6d1606401b1769--

