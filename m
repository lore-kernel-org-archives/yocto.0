Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9E7CE003D2
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 18:36:22 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id d49so570456eek.6
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 18:36:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type;
	bh=UpE9NeZ/I6VtrdLWkxPpElYVxqjsA/wkA7xiAYcOVbw=;
	b=f1Pf4mHpMIq7/ce29gHZHsmzy1kvm5wm3mLKylTePgIV7c07HT526eacHcEHuQtIe6
	7Bh949/SCae40zi8nmyUAe8VOzTOGe+ODZRZqQXXsL+EnEy+w+G1C9BabwPvMK8O6N8A
	qkGg8UR0dU9ta9f17QmeXn600TZGBGyjQWtvQktH2atbbFxHR4YAEHkbq9jmK4I2z5Cd
	W613+1WIDueURKxRjDGduaImqt1q0o/2FLf/Ww0KwiEPOTjaLYeKMuE6P9fYrbazfwbw
	hsIUAeL6eckBBy46QN5kiDiXlrXbvl7/h44GkQNifFjNl2vsqZVnbJMoanyp5gIUbsl2
	y0Rw==
X-Gm-Message-State: ALoCoQn8WIYdt3W6vLa2El9krJ6/kjxCM0W2Z154TeNHgQ8z1DBREDQMc4txWnySFpYzgQ4WvRw5
MIME-Version: 1.0
X-Received: by 10.14.225.199 with SMTP id z47mr3411067eep.24.1377308180652;
	Fri, 23 Aug 2013 18:36:20 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Fri, 23 Aug 2013 18:36:20 -0700 (PDT)
Date: Fri, 23 Aug 2013 21:36:20 -0400
Message-ID: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Otavio Salvador <otavio.salvador@gmail.com>
Subject: [DYLAN] RPATH issue with qt5's qtwebkit
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 24 Aug 2013 01:36:25 -0000
Content-Type: multipart/alternative; boundary=047d7b66fc0fdad1d804e4a78cf0

--047d7b66fc0fdad1d804e4a78cf0
Content-Type: text/plain; charset=ISO-8859-1

Hi,

When I try to include "qtwebkit" in my image from the "dylan" branch I end
up
with the following QA do_package_qa error [note that this does not happen
with "master"]:

ERROR: QA Issue: package qtwebkit contains bad RPATH
/home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib
in file
/home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/packages-split/qtwebkit/usr/lib/qt5/libexec/QtWebProcess

And the QA test is correct. When I "objdump -x" this binary I get:

Dynamic Section:
  NEEDED               libQt5WebKitWidgets.so.5
  NEEDED               libQt5WebKit.so.5
  NEEDED               libQt5Widgets.so.5
  NEEDED               libQt5Core.so.5
  NEEDED               libstdc++.so.6
  NEEDED               libc.so.6
  RPATH
/home/trevor/build/yocto/tmp/rdk/work/armv5te-rdk-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib

Can anyone suggest any fixes or patches? Note I'm using 5.0.2.

Best regards,
    Trevor

--047d7b66fc0fdad1d804e4a78cf0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br>When I try to include &quot;qtwe=
bkit&quot; in my image from the &quot;dylan&quot; branch I end up<br>with t=
he following QA do_package_qa error [note that this does not happen<br>with=
 &quot;master&quot;]:<br>
<br>ERROR: QA Issue: package qtwebkit contains bad RPATH /home/trevor/build=
/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/=
lib in file /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnue=
abi/qtwebkit/5.0.2-r0.0/packages-split/qtwebkit/usr/lib/qt5/libexec/QtWebPr=
ocess<br>
<br></div>And the QA test is correct. When I &quot;objdump -x&quot; this bi=
nary I get:<br><br>Dynamic Section:<br>=A0 NEEDED=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 libQt5WebKitWidgets.so.5<br>=A0 NEEDED=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 libQt5WebKit.so.5<br>=A0 NEEDED=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 libQt5Widgets.so.5<br>
=A0 NEEDED=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 libQt5Core.so.5<br>=A0=
 NEEDED=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 libstdc++.so.6<br>=A0 NEE=
DED=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 libc.so.6<br>=A0 RPATH=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/trevor/build/yocto/tmp/rdk/wo=
rk/armv5te-rdk-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib<br>
<br></div>Can anyone suggest any fixes or patches? Note I&#39;m using 5.0.2=
.<br><br>Best regards,<br></div>=A0=A0=A0 Trevor<br></div>

--047d7b66fc0fdad1d804e4a78cf0--
