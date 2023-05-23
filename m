Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36A4AC7EE23
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 10:06:29 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.18167.1684836388516703880
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 03:06:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=bFpehLzm;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: electronicconsult1@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-510b6a249a8so1267863a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 03:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684836387; x=1687428387;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fVn86/eHNuvx1Ui/C9ZN8fWjN/C0NY5xDf5W0IHYh7o=;
        b=bFpehLzmHeu9ND1qTUUt3z3DUJej82qHB4GgQ4uiMu5ggVLp8dwMsr7sS9LhQRgP4G
         SMRHS4h4UII46RBHW9MjeS8FJKyIxmcblQZA8KYls7MPwuHbY89pNYnaiMwYk9wqEqAi
         J30rIyelPkGGu23s2l3ZqZxf9rWb18kEZal4Q0KEWXjqFpBvDGWLcrr6vQZz+PISgOkt
         CUNLiz7Yxb8LTiEdw118P7eWjtUQsc44TdNJZ6luemZxSSkVTfhDB9Pss69IHQHipSza
         y7fN9uzydJl7fSr+RRaZKHAu1HAd1ns9ND/EYJqYVWXBxBD0jYiRZgy1eECkGQfsbe8j
         yuAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684836387; x=1687428387;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fVn86/eHNuvx1Ui/C9ZN8fWjN/C0NY5xDf5W0IHYh7o=;
        b=lPKmxAc+jMAXCB9jpMF2g3+3dzGBduiZPEHl0rOb88WxE1Ddb9xXWkvbZHY1UWrSyj
         MjBrD/aNnL8DaD3NCs3+RRA5PNlVXlf801sIY7jub4/6Jn7u9rEPcrIGdYqsFHrIIAhW
         biHHt5oCPOXP826ZbPDx12P1jeM4cFSKoPnOB9Bo/dm1Gv/bOY9RK5XrgWadPq+NBi+w
         upEhltIMQoRRWsDU5q4W8JijRlbctWSoyablOEnsN6Uv0dMMQPYWdd3ztXusNFTDOKsr
         +mg57tUN5/6U1qpcUJU5eTaDJv1MogK14nhKTmJ+ylMAbT0XAFEW71LW8vLN5XAFziER
         o3dQ==
X-Gm-Message-State: AC+VfDyAQdL4GODni+oS5v0wdI1cFWHVpzyevr/JwDtF0A66+GWq8lQB
	WgdBgB8t7/5yfWISh9mxbEAtwrHnKYYozUOSsc/ZlIAlZqIyTg==
X-Google-Smtp-Source: ACHHUZ4WcSqQ6HXqi06xtGq2fVP2fEkffpBplxaU2j/oivB5nJKNcTnEkG1mC/sTewtrJX+kXpQPrjVORi0oZzHVMAE=
X-Received: by 2002:a17:907:5c7:b0:96a:ed6e:7d58 with SMTP id
 wg7-20020a17090705c700b0096aed6e7d58mr13729764ejb.7.1684836386893; Tue, 23
 May 2023 03:06:26 -0700 (PDT)
MIME-Version: 1.0
From: Electronic Consult <electronicconsult1@gmail.com>
Date: Tue, 23 May 2023 11:06:15 +0100
Message-ID: <CAGUWaEHdxYXe_UT6gVVmb9vKVaQKcJYtbaeU-LPO3hkmCYCmBA@mail.gmail.com>
Subject: [meta-raspberrypi] [meta-qt6] Building qt6 on rpi4
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000058762b05fc598a2a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 10:06:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60093

--00000000000058762b05fc598a2a
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm using:
Kirkstone
meta-raspberry
meta-qt6 (v6.5)

From this <https://doc.qt.io/qt-6/configure-linux-device.html>post from Qt
they suggest the correct graphics setup for a RPi4 should be:

*With the Raspberry Pi 4 example, we expect that EGL, OpenGL ES and EGLFS
GBM are all reported as yes, otherwise the EGLFS platform plugin and its
eglfs_kms backend will not be functional on the device. For getting
function mouse, keyboard, and touch input, either evdev or libinput must be
enabled.*

I'm trying to achieve this but with somedifficulty. So far I have a
qtbase_git.bbappend with:

PACKAGECONFIG:remove:rpi = "tests"
PACKAGECONFIG:append:rpi = " eglfs fontconfig gles2 linuxfb tslib gbm"
DEPENDS:append:rpi = "userland"

But I'm getting an error when running bitbake -v -c configure qtbase of:

 OpenGL:
    Desktop OpenGL ....................... yes
    OpenGL ES 2.0 ........................ yes
    OpenGL ES 3.0 ........................ yes
    OpenGL ES 3.1 ........................ yes
    OpenGL ES 3.2 ........................ yes
  Vulkan ................................. yes
  Session Management ..................... yes
Features used by QPA backends:
  evdev .................................. yes
  libinput ............................... yes
  HiRes wheel support in libinput ........ yes
  INTEGRITY HID .......................... no
  mtdev .................................. no
  tslib .................................. yes
  xkbcommon .............................. yes
  X11 specific:
    XLib ................................. yes
    XCB Xlib ............................. yes
    EGL on X11 ........................... yes
    xkbcommon-x11 ........................ yes
    xcb-sm ............................... yes
QPA backends:
  DirectFB ............................... no
  EGLFS .................................. yes
  EGLFS details:
    EGLFS OpenWFD ........................ no
    EGLFS i.Mx6 .......................... no
    EGLFS i.Mx6 Wayland .................. no
    EGLFS RCAR ........................... no
    EGLFS EGLDevice ...................... no
    EGLFS GBM ............................ no
    EGLFS VSP2 ........................... no
    EGLFS Mali ........................... no
    EGLFS Raspberry Pi ................... no
    EGLFS X11 ............................ yes
  LinuxFB ................................ yes
  VNC .................................... yes
  VK_KHR_display ......................... yes
  QNX:
    lgmon ................................ no
    IMF .................................. no
  XCB:
    Using system-provided xcb-xinput ..... no
    GL integrations:
      GLX Plugin ......................... no
        XCB GLX .......................... no
      EGL-X11 Plugin ..................... yes
  Windows:
    Direct 2D ............................ no
    Direct 2D 1.1 ........................ no
    DirectWrite .......................... no
    DirectWrite 3 ........................ no
Qt Widgets:
  GTK+ ................................... no
  Styles ................................. Fusion Windows
Qt Testlib:
  Tester for item models ................. yes
  Batch tests ............................ no
Qt PrintSupport:
  CUPS ................................... no
Qt Sql Drivers:
  DB2 (IBM) .............................. no
  InterBase .............................. no
  MySql .................................. no
  OCI (Oracle) ........................... no
  ODBC ................................... no
  PostgreSQL ............................. no
  SQLite ................................. no
    Using system provided SQLite ......... no

Note: Disabling X11 Accessibility Bridge: D-Bus or AT-SPI is missing.

ERROR: Feature "opengles2": Forcing to "ON" breaks its condition:
    NOT WIN32 AND NOT WATCHOS AND NOT QT_FEATURE_opengl_desktop AND
GLESv2_FOUND
Condition values dump:
    WIN32 = ""
    WATCHOS = "0"
    QT_FEATURE_opengl_desktop = "ON"
    GLESv2_FOUND = "TRUE"

So it seems QT_FEATURE_opengl_desktop & opengles2 are incompatible.

Would anyone have a suggestion on how to disable/ remove opengl_desktop?

Thanks,

Owen

--00000000000058762b05fc598a2a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I&#39;m using:</d=
iv><div>Kirkstone</div><div>meta-raspberry</div><div>meta-qt6 (v6.5)</div><=
div><br></div><div>From <a href=3D"https://doc.qt.io/qt-6/configure-linux-d=
evice.html" target=3D"_blank">this </a>post from Qt they suggest the correc=
t graphics setup for a RPi4 should be:</div><div><br></div><div><i>With
 the Raspberry Pi 4 example, we expect that EGL, OpenGL ES and EGLFS GBM
 are all reported as yes, otherwise the EGLFS platform plugin and its=20
eglfs_kms backend will not be functional on the device. For getting=20
function mouse, keyboard, and touch input, either evdev or libinput must
 be enabled.</i></div><br><div>I&#39;m trying to achieve this but with some=
difficulty. So far I have a qtbase_git.bbappend with:</div><div><br></div><=
div>PACKAGECONFIG:remove:rpi =3D &quot;tests&quot;<br>PACKAGECONFIG:append:=
rpi =3D &quot; eglfs fontconfig gles2 linuxfb tslib gbm&quot;<br>DEPENDS:ap=
pend:rpi =3D &quot;userland&quot;</div><div><br></div><div>But I&#39;m gett=
ing an error when running bitbake -v -c configure qtbase of:</div><div><br>=
</div><div>=C2=A0OpenGL:<br>=C2=A0 =C2=A0 Desktop OpenGL ..................=
..... yes<br>=C2=A0 =C2=A0 OpenGL ES 2.0 ........................ yes<br>=
=C2=A0 =C2=A0 OpenGL ES 3.0 ........................ yes<br>=C2=A0 =C2=A0 O=
penGL ES 3.1 ........................ yes<br>=C2=A0 =C2=A0 OpenGL ES 3.2 ..=
...................... yes<br>=C2=A0 Vulkan ...............................=
.. yes<br>=C2=A0 Session Management ..................... yes<br>Features u=
sed by QPA backends:<br>=C2=A0 evdev .................................. yes=
<br>=C2=A0 libinput ............................... yes<br>=C2=A0 HiRes whe=
el support in libinput ........ yes<br>=C2=A0 INTEGRITY HID ...............=
........... no<br>=C2=A0 mtdev .................................. no<br>=C2=
=A0 tslib .................................. yes<br>=C2=A0 xkbcommon ......=
........................ yes<br>=C2=A0 X11 specific:<br>=C2=A0 =C2=A0 XLib =
................................. yes<br>=C2=A0 =C2=A0 XCB Xlib ...........=
.................. yes<br>=C2=A0 =C2=A0 EGL on X11 ........................=
... yes<br>=C2=A0 =C2=A0 xkbcommon-x11 ........................ yes<br>=C2=
=A0 =C2=A0 xcb-sm ............................... yes<br>QPA backends:<br>=
=C2=A0 DirectFB ............................... no<br>=C2=A0 EGLFS ........=
.......................... yes<br>=C2=A0 EGLFS details:<br>=C2=A0 =C2=A0 EG=
LFS OpenWFD ........................ no<br>=C2=A0 =C2=A0 EGLFS i.Mx6 ......=
.................... no<br>=C2=A0 =C2=A0 EGLFS i.Mx6 Wayland ..............=
.... no<br>=C2=A0 =C2=A0 EGLFS RCAR ........................... no<br>=C2=
=A0 =C2=A0 EGLFS EGLDevice ...................... no<br>=C2=A0 =C2=A0 EGLFS=
 GBM ............................ no<br>=C2=A0 =C2=A0 EGLFS VSP2 ..........=
................. no<br>=C2=A0 =C2=A0 EGLFS Mali ..........................=
. no<br>=C2=A0 =C2=A0 EGLFS Raspberry Pi ................... no<br>=C2=A0 =
=C2=A0 EGLFS X11 ............................ yes<br>=C2=A0 LinuxFB .......=
......................... yes<br>=C2=A0 VNC ...............................=
..... yes<br>=C2=A0 VK_KHR_display ......................... yes<br>=C2=A0 =
QNX:<br>=C2=A0 =C2=A0 lgmon ................................ no<br>=C2=A0 =
=C2=A0 IMF .................................. no<br>=C2=A0 XCB:<br>=C2=A0 =
=C2=A0 Using system-provided xcb-xinput ..... no<br>=C2=A0 =C2=A0 GL integr=
ations:<br>=C2=A0 =C2=A0 =C2=A0 GLX Plugin ......................... no<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 XCB GLX .......................... no<br>=C2=A0=
 =C2=A0 =C2=A0 EGL-X11 Plugin ..................... yes<br>=C2=A0 Windows:<=
br>=C2=A0 =C2=A0 Direct 2D ............................ no<br>=C2=A0 =C2=A0=
 Direct 2D 1.1 ........................ no<br>=C2=A0 =C2=A0 DirectWrite ...=
....................... no<br>=C2=A0 =C2=A0 DirectWrite 3 .................=
....... no<br>Qt Widgets:<br>=C2=A0 GTK+ ..................................=
. no<br>=C2=A0 Styles ................................. Fusion Windows<br>Q=
t Testlib:<br>=C2=A0 Tester for item models ................. yes<br>=C2=A0=
 Batch tests ............................ no<br>Qt PrintSupport:<br>=C2=A0 =
CUPS ................................... no<br>Qt Sql Drivers:<br>=C2=A0 DB=
2 (IBM) .............................. no<br>=C2=A0 InterBase .............=
................. no<br>=C2=A0 MySql .................................. no<=
br>=C2=A0 OCI (Oracle) ........................... no<br>=C2=A0 ODBC ......=
............................. no<br>=C2=A0 PostgreSQL .....................=
........ no<br>=C2=A0 SQLite ................................. no<br>=C2=A0=
 =C2=A0 Using system provided SQLite ......... no<br><br>Note: Disabling X1=
1 Accessibility Bridge: D-Bus or AT-SPI is missing.<br><br>ERROR: Feature &=
quot;opengles2&quot;: Forcing to &quot;ON&quot; breaks its condition:<br>=
=C2=A0 =C2=A0 NOT WIN32 AND NOT WATCHOS AND NOT QT_FEATURE_opengl_desktop A=
ND GLESv2_FOUND<br>Condition values dump:<br>=C2=A0 =C2=A0 WIN32 =3D &quot;=
&quot;<br>=C2=A0 =C2=A0 WATCHOS =3D &quot;0&quot;<br>=C2=A0 =C2=A0 QT_FEATU=
RE_opengl_desktop =3D &quot;ON&quot;<br>=C2=A0 =C2=A0 GLESv2_FOUND =3D &quo=
t;TRUE&quot;<br><br></div><div>So it seems QT_FEATURE_opengl_desktop &amp; =
opengles2 are incompatible.</div><div><br></div><div>Would anyone have a su=
ggestion on how to disable/ remove opengl_desktop?</div><div><br></div><div=
>Thanks,</div><div><br></div><div>Owen</div></div>

--00000000000058762b05fc598a2a--

