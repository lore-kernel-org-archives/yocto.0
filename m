Return-Path: <bit.coyote@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18FBCE00E0E; Wed, 15 May 2019 15:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bit.coyote[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A5F2E00DDC
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 15:06:19 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id 198so1535297wme.3
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 15:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FnVyMsz4bDjCyFYll75uOgrMFG2eL3BZ78/VHlLIy/0=;
	b=olay5NmXL0CE4kpTtSn3wYppuPqziEHG6Y4AA44qkBKRn7bdAaAYuoVD9dAAqNCTsh
	IkOTkas1p4+lubBliXy3+9FarInDaNWENSlqITEgOOA1UGHLCmLFkL6ZLAEJCrn1Yysf
	MzQwjTY3Dj/DQZkiFu+oXEAhNWhyS1LjcXbwkuqu5L7lrldt+CSCE5QUEz9tSew9MFES
	TL60N7KxBgsYp2pAD0pJGgooAQR7159KCCGPQbsg++UBBV3/og8VQEjSksgML8JJnwXu
	aujX5qJpC/fEIfRvy1ge02z0XyTc7XLGoZ4TpIJjOFCv+NG6vfYSjaWZYdJulcnPW0g5
	+M5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FnVyMsz4bDjCyFYll75uOgrMFG2eL3BZ78/VHlLIy/0=;
	b=oxV+JvHNe2ve3wAzN1I79c95dyB5K0DwpDi/DCt4feevsmD5mTkQEHQ1bnXyF1+zNs
	kGFnotRjJXbbppt72j+aEJNhmye6XKHXkhX7NVTNU7neIjjb1UAmzMoaBC3ZGj4Gsflf
	SCyweer88N+h+636Ed5FEyqF3Zyp/0Kp9R9aMqBP5CwhNHCQxnmUaThwmVQy8IpJSClh
	ynxDOrRpDm217MpJDIjkfiFuViLc+E5EEfB4+VCxoKa2fKFIPmiN7lxnIJk+7sXlOmD7
	Q3LdC4YswpQjHnWzID2SH/3+VgSksnm26xk+I6uhlvcCqbzUHpsoLRQiKgrI9CYkdhVd
	RzkA==
X-Gm-Message-State: APjAAAVNs71Vea7nuB+1Bgk1lSrWvUMNxfNG1iCEWq4BNrWnUCkORBh1
	RuvvXxyX4SosgiwWbQ2VtMOxXSuL2orCNmNH2D+mvQ2Y
X-Google-Smtp-Source: APXvYqwyQNTNsrzkGqjMjBsutW1ep58yVxkKofiwIZKJHy34VlnSzNY6RNxiV55dpdD9o/aYGqTa1j2JpZZ9hy5FmtU=
X-Received: by 2002:a1c:2889:: with SMTP id
	o131mr12401716wmo.101.1557957978019; 
	Wed, 15 May 2019 15:06:18 -0700 (PDT)
MIME-Version: 1.0
From: Bernhard Mayritsch <bit.coyote@gmail.com>
Date: Thu, 16 May 2019 00:06:07 +0200
Message-ID: <CAD04zYorhyBuNVV4Gh0ktj6ZYHY5T9UyvKREFQrg_4Tz=zuzDg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Screen(s) remain black on Raspberry Pi 3 B+
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
X-List-Received-Date: Wed, 15 May 2019 22:06:42 -0000
Content-Type: multipart/alternative; boundary="000000000000dadb240588f45b59"

--000000000000dadb240588f45b59
Content-Type: text/plain; charset="UTF-8"

Hi!

I'm facing some trouble with the X-Server on the Raspberry Pi 3 B+. No
matter if I use a screen on the HDMI port or running the 7" touch screen,
they remain black. After testing with sumo - where at least a splash screen
was shown - I moved on to thud, as recommended by Andrei Gherzan to sort
out the error "No screen found." The error is gone, but nothing is shown on
the screen, not even a splash screen. Switching the branches of poky,
meta-openembedded and meta-raspberrypi to latest master still shows the
same issue.

In order to make sure not to waste time on some hardware issue, I gave
Raspbian a try; both screens (Raspberry Pi Touchscreen & HDMI) work fine
there.

The entire build is pretty much default. The MACHINE is set to
"raspberrypi3-64" and I added:
ENABLE_UART = "1"
RPI_USE_U_BOOT = "1"
... to get the debug interface working and to use U-Boot which at least
shows some lines on the screen during the early boot steps. There are no
custom recipes or meta layers yet.
I have built core-image-x11 and core-image-sato, which both show the same
behaviour.

Xorg.0.log shows the following:

[    14.767] (II) LoadModule: "fbdev"
[    14.777] (WW) Warning, couldn't open module fbdev
[    14.777] (EE) Failed to load module "fbdev" (module does not exist, 0)

[    15.393] (II) modeset(0): EDID for output HDMI-1
[    15.393] (II) modeset(0): EDID for output Composite-1
[    15.393] (II) modeset(0): Printing probed modes for output Composite-1
[    15.393] (II) modeset(0): Modeline "720x480"x31.3   13.50  720 734 798
858  480 483 486 502 interlace (15.7 kHz e)
[    15.393] (II) modeset(0): Output HDMI-1 disconnected
[    15.393] (II) modeset(0): Output Composite-1 disconnected
[    15.393] (WW) modeset(0): No outputs definitely connected, trying
again...
[    15.393] (II) modeset(0): Output HDMI-1 disconnected
[    15.393] (II) modeset(0): Output Composite-1 connected
[    15.393] (II) modeset(0): Using sloppy heuristic for initial modes
[    15.393] (II) modeset(0): Output Composite-1 using initial mode 720x480
+0+0
[    15.393] (==) modeset(0): Using gamma correction (1.0, 1.0, 1.0)
[    15.393] (==) modeset(0): DPI set to (96, 96)

It complains to be unable to load the frame buffer driver (is it used on
VC4?) and correctly detects the 7" screen with its 720x480.

The X-Server seems to be up anyways:
root@raspberrypi3-64:/var/log# ps|grep -i xorg
  318 root      3700 S    xinit /etc/X11/Xsession -- /usr/bin/Xorg :0 -br
-pn
  324 root      113m S<   /usr/bin/Xorg :0 -br -pn

As it's the first time I use Yocto to build a X11 image (only worked on
headless systems until now) I think to miss something here.

Does anyone have a hint  on that?
Any help is greatly appreciated!

Thanks in advance,
Mac

--000000000000dadb240588f45b59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>I&#39;m facing some trouble with th=
e X-Server on the Raspberry Pi 3 B+. No matter if I use a screen on the HDM=
I port or running the 7&quot; touch screen, they remain black. After testin=
g with sumo - where at least a splash screen was shown - I moved on to thud=
, as recommended by Andrei Gherzan to sort out the error &quot;No screen fo=
und.&quot; The error is gone, but nothing is shown on the screen, not even =
a splash screen. Switching the branches of poky, meta-openembedded and meta=
-raspberrypi to latest master still shows the same issue.</div><div><br></d=
iv><div>In order to make sure not to waste time on some hardware issue, I g=
ave Raspbian a try; both screens (Raspberry Pi Touchscreen &amp; HDMI) work=
 fine there.</div><div><br></div><div>The entire build is pretty much defau=
lt. The MACHINE is set to &quot;raspberrypi3-64&quot; and I added:</div><di=
v>ENABLE_UART =3D &quot;1&quot;=C2=A0</div><div>RPI_USE_U_BOOT =3D &quot;1&=
quot;<br></div><div>... to get the debug interface working and to use U-Boo=
t which at least shows some lines on the screen during the early boot steps=
. There are no custom recipes or meta layers yet.</div><div>I have built co=
re-image-x11 and core-image-sato, which both show the same behaviour.=C2=A0=
</div><div><br></div><div>Xorg.0.log shows the following:</div><div><br></d=
iv><div><div>[=C2=A0 =C2=A0 14.767] (II) LoadModule: &quot;fbdev&quot;</div=
><div>[=C2=A0 =C2=A0 14.777] (WW) Warning, couldn&#39;t open module fbdev</=
div><div>[=C2=A0 =C2=A0 14.777] (EE) Failed to load module &quot;fbdev&quot=
; (module does not exist, 0)</div></div><div><br></div><div><div>[=C2=A0 =
=C2=A0 15.393] (II) modeset(0): EDID for output HDMI-1</div><div>[=C2=A0 =
=C2=A0 15.393] (II) modeset(0): EDID for output Composite-1</div><div>[=C2=
=A0 =C2=A0 15.393] (II) modeset(0): Printing probed modes for output Compos=
ite-1</div><div>[=C2=A0 =C2=A0 15.393] (II) modeset(0): Modeline &quot;720x=
480&quot;x31.3=C2=A0 =C2=A013.50=C2=A0 720 734 798 858=C2=A0 480 483 486 50=
2 interlace (15.7 kHz e)</div><div>[=C2=A0 =C2=A0 15.393] (II) modeset(0): =
Output HDMI-1 disconnected</div><div>[=C2=A0 =C2=A0 15.393] (II) modeset(0)=
: Output Composite-1 disconnected</div><div>[=C2=A0 =C2=A0 15.393] (WW) mod=
eset(0): No outputs definitely connected, trying again...</div><div>[=C2=A0=
 =C2=A0 15.393] (II) modeset(0): Output HDMI-1 disconnected</div><div>[=C2=
=A0 =C2=A0 15.393] (II) modeset(0): Output Composite-1 connected</div><div>=
[=C2=A0 =C2=A0 15.393] (II) modeset(0): Using sloppy heuristic for initial =
modes</div><div>[=C2=A0 =C2=A0 15.393] (II) modeset(0): Output Composite-1 =
using initial mode 720x480 +0+0</div><div>[=C2=A0 =C2=A0 15.393] (=3D=3D) m=
odeset(0): Using gamma correction (1.0, 1.0, 1.0)</div><div>[=C2=A0 =C2=A0 =
15.393] (=3D=3D) modeset(0): DPI set to (96, 96)</div></div><div><br></div>=
<div>It complains to be unable to load the frame buffer driver (is it used =
on VC4?) and correctly detects the 7&quot; screen with its 720x480.</div><d=
iv><br></div><div>The X-Server seems to be up anyways:</div><div><div>root@=
raspberrypi3-64:/var/log# ps|grep -i xorg</div><div>=C2=A0 318 root=C2=A0 =
=C2=A0 =C2=A0 3700 S=C2=A0 =C2=A0 xinit /etc/X11/Xsession -- /usr/bin/Xorg =
:0 -br -pn</div><div>=C2=A0 324 root=C2=A0 =C2=A0 =C2=A0 113m S&lt;=C2=A0 =
=C2=A0/usr/bin/Xorg :0 -br -pn</div></div><div><br></div><div>As it&#39;s t=
he first time I use Yocto to build a X11 image (only worked on headless sys=
tems until now) I think to miss something here.=C2=A0</div><div><br></div><=
div>Does anyone have a hint=C2=A0 on that?=C2=A0</div><div>Any help is grea=
tly appreciated!</div><div><br></div><div>Thanks in advance,<br></div><div>=
Mac</div><div class=3D"gmail-yj6qo"></div><br class=3D"gmail-Apple-intercha=
nge-newline"></div>

--000000000000dadb240588f45b59--
