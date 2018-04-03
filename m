Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92FF8E00B01; Mon,  2 Apr 2018 23:03:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f45.google.com (mail-pl0-f45.google.com
	[209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD101E00994
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 23:03:04 -0700 (PDT)
Received: by mail-pl0-f45.google.com with SMTP id 61-v6so5506098plb.2
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 23:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=Xupa27s/VEGUuRa02/8lNg36wp/DxpR7/7X6DjhSVlY=;
	b=nxUJrTJ0A99q65+/+heXtunJ6xHUNqPGDIFnLdm3IZEwAfBlTivQJR0tBNK4sZQMym
	Q6AY3579r5bnS4IY39dD3sDpEcVF0Ra4UiaqCHsLPONzSVm1Z/QuavqiZ9OyfCVL690t
	lal1MwPPUgHIZ2emZpBF/VZ5CTfDUv+H1ezGUq5P77DTcE8PBRZTWGG3yF0aQybkpy8z
	MHwgwV9TxM/b4XncpqDU0gzlD2LuLKf4WqL2lnn2//gVTl/VAA1cPp8pHNLJSVte0E6J
	Ojsifpyz2hDL2cOo/YSbG6OYC1s+whbP8LTi7iyuddw5hroL53xH41Cf7Qi/ba8SyFod
	61cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=Xupa27s/VEGUuRa02/8lNg36wp/DxpR7/7X6DjhSVlY=;
	b=p9R3Zgaep7GZjyTOH2qoO6Q21fT8MonsywQdjO3++ZHuOOlm4tWwB491T3l+42xcI+
	KimTZyDzOfTdqA1SkN7ZQ1V3ujr3qUF3Tns9cMCFGORjj8q0p3nSHi86jsjFnbOthfRV
	BUkgPy7S7kojIfjmgh85BHc/2PCnB9tNIQm6mB4axPZ5f9NK0k+KPViYbkoz2/4X8AGY
	tzEhCwWksI6nF4eb+HseE6Vr4sfGinfEV3+YsN6bs32tzRc5zTZ/71ak9ZK22dhMClsO
	q2tzxw1vbWZxddhktFgW1aGkHCzJJilR0REB7LNLqBjqOhSGngPegQQDdHEm6IsaEE6P
	fiRg==
X-Gm-Message-State: AElRT7HEege7N1GdFpR49SHwfM2guWsMgz2SRZndy02gj0HZf5TDNCRY
	BtiYvOY3+wuqUeZeuQbxdm3MQStJq0XUgh+hiO8Guw==
X-Google-Smtp-Source: AIpwx49aD4Z7GZcZ2I0j4v+IkYvjEUPVBXpQ2UgL7w+kbtLpaUFvVWZx60KlRb+hI5CPDiLiAiDao2TaU88LiWifduo=
X-Received: by 2002:a17:902:934c:: with SMTP id
	g12-v6mr12801673plp.275.1522735383965; 
	Mon, 02 Apr 2018 23:03:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.155.66 with HTTP; Mon, 2 Apr 2018 23:03:03 -0700 (PDT)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Tue, 3 Apr 2018 08:03:03 +0200
Message-ID: <CAPb0b+O5gnoEFDCcE9Wx46ag85Huf1soC1sYoxxbce2LyrCpFA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: tanu.kaskinen@linux.intel.com
Subject: pulseaudio without x11
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
X-List-Received-Date: Tue, 03 Apr 2018 06:03:05 -0000
Content-Type: multipart/alternative; boundary="000000000000a5f4180568eb75f0"

--000000000000a5f4180568eb75f0
Content-Type: text/plain; charset="UTF-8"

I have the same issue here, where i need to run pulseaudio without x11.
My setup in yocto, is a follows, it compiles fine but dbus has a problem :

IMAGE_INSTALL_append= " pulseaudio-server libpulsecore sbc
pulseaudio-module-bluetooth-discover pulseaudio-module-bluez5-device
pulseaudio-module-bluez5-discover pulseaudio-module-loopback
pulseaudio-module-rtp-send pulseaudio-module-rtp-recv
pulseaudio-module-bluetooth-policy pulseaudio-misc python dbus gconf
glib-2.0 pulseaudio-module-alsa-card pulseaudio-module-alsa-source
pulseaudio-module-alsa-sink pulseaudio-module-cli libasound libcap libgcc
libltdl liborc-0.4-0 libpulse libsndfile1 libstdc++ libtdb libudev
alsa-utils alsa-utils-speakertest pulseaudio-module-dbus-protocol"
IMAGE_INSTALL_append += " pulseaudiostart "
DISTRO_FEATURES_remove = " x11 "


when i start pulseaudio --system, i get
Unable to contact D-Bus: org.freedesktop.DBus.Error.NotSupported : using
x11 for dbus-daemon autolaunch was disabled at compile time, set your
DBUS_Session_BUS_Address instead.


i could launch dbus and get the address but how to set the session address
? or how to bypass it ?

if i use,  "system-instance=yes", i don't get this issue but then i am not
sure that pulseaudio started correctly.

--000000000000a5f4180568eb75f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I have the same issue here, where i need to=
 run pulseaudio without x11.<br></div>My setup in yocto, is a follows, it c=
ompiles fine but dbus has a problem :<br><br>IMAGE_INSTALL_append=3D &quot;=
 pulseaudio-server libpulsecore sbc pulseaudio-module-bluetooth-discover pu=
lseaudio-module-bluez5-device pulseaudio-module-bluez5-discover pulseaudio-=
module-loopback pulseaudio-module-rtp-send pulseaudio-module-rtp-recv pulse=
audio-module-bluetooth-policy pulseaudio-misc python dbus gconf glib-2.0 pu=
lseaudio-module-alsa-card pulseaudio-module-alsa-source pulseaudio-module-a=
lsa-sink pulseaudio-module-cli libasound libcap libgcc libltdl liborc-0.4-0=
 libpulse libsndfile1 libstdc++ libtdb libudev alsa-utils alsa-utils-speake=
rtest pulseaudio-module-dbus-protocol&quot;<br>IMAGE_INSTALL_append +=3D &q=
uot; pulseaudiostart &quot;<br>DISTRO_FEATURES_remove =3D &quot; x11 &quot;=
<br><br><br></div>when i start pulseaudio --system, i get <br></div><div>Un=
able to contact D-Bus: org.freedesktop.DBus.Error.NotSupported : using x11 =
for dbus-daemon autolaunch was disabled at compile time, set your DBUS_Sess=
ion_BUS_Address instead.<br><br><br></div><div>i could launch dbus and get =
the address but how to set the session address ? or how to bypass it ?<br><=
br></div><div>if i use,=C2=A0 &quot;system-instance=3Dyes&quot;, i don&#39;=
t get this issue but then i am not sure that pulseaudio started correctly.<=
br><br><br></div></div>

--000000000000a5f4180568eb75f0--
