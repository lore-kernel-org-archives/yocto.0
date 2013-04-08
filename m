Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6009FE0148E
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 05:35:23 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id ha11so4924472vcb.30
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 05:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=EKhjquNIzT+xtIjAIROs8h5c89usdAzE0Hr5pSHdc1Y=;
	b=OWMTHcZcUS4sCr7r1ItVtspPM6qSH0KFV5HAZtlGqT3WMTxCoJPMjGvAXWZP4Ixc6o
	XQF2LqVQYTEm9Mzam0LGzA/TvL4NlIPko812ZdbWwsMymQvdY0D1tugZPyngX1o/Q2hs
	m+OC8N6G4iHrc+oeBbrT8gzLfvgPBqT2QAGtWN5liis/2NuQ3ebvkaS4QqQXNV8WoEAj
	UcVwMSvkUt+e5utxtx/JxI+N/mR+u7iJXQsLoYmlwGP/pVAKUfG3bnOrgDEywd21b/l7
	CkWPFvUguUydsetXnmcrQApmk3ipZ0U+SQ4ZjIN5ZE9UduDosCh70S3WfPl+OPbjy/Mz
	ggkQ==
MIME-Version: 1.0
X-Received: by 10.220.109.145 with SMTP id j17mr15547018vcp.34.1365424522873; 
	Mon, 08 Apr 2013 05:35:22 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.70.141 with HTTP; Mon, 8 Apr 2013 05:35:22 -0700 (PDT)
Date: Mon, 8 Apr 2013 14:35:22 +0200
X-Google-Sender-Auth: HJ7N9m8Etvey7_cwq7DFin0sL68
Message-ID: <CAFMfyzJY+VSRa8vQP+7yi3KAC-4gRNEmTtCBahbfMjowig+MRA@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: yocto@yoctoproject.org
Subject: Calibrating touchscreen and the default display
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
X-List-Received-Date: Mon, 08 Apr 2013 12:35:23 -0000
Content-Type: multipart/alternative; boundary=047d7b3a852ea754ba04d9d8aba9

--047d7b3a852ea754ba04d9d8aba9
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

I have a TSC2007 touchscree for my tegra-harmony board.... The problem is
calibration of the board.... Let me explain a bit better. I successfully
compiled a basic X11 image.

On the boot, the Linux penguins appear in the landscape mode on the
display. Is it possible to rotate so that the penguins appear in the
potrait mode? Apparently, I want to know if the Linux kernel identifies the
display as 480x800 instead of 800x480.... Now, I rotate the psplash and
also the used xrandr to rotate the display. The following is the fbset
output

mode "800x480-60"
        # D: 33.260 MHz, H: 31.496 kHz, V: 59.993 Hz
        geometry 800 480 800 960 32
        timings 30066 120 120 15 15 16 15
        accel false
        rgba 8/0,8/8,8/16,8/24
endmode

Secondly, I also want to calibrate the touchscreen. Eventhough I rotate the
touchscreen in the xorg.conf.d/10-touchscreen.conf file.. When I run
ts_calibrate, it still calibrates in landscape mode and not in potrait
mode....

I am completely blocked in this stage..... It would be great to receive
suggestions to solve these issues

Greets,
Satya

--047d7b3a852ea754ba04d9d8aba9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div>I have a TSC2007 touchscree fo=
r my tegra-harmony board.... The problem is calibration of the board.... Le=
t me explain a bit better. I successfully compiled a basic X11 image.</div>

<div><br></div><div>On the boot, the Linux penguins appear in the landscape=
 mode on the display. Is it possible to rotate so that the penguins appear =
in the potrait mode? Apparently, I want to know if the Linux kernel identif=
ies the display as 480x800 instead of 800x480.... Now, I rotate the psplash=
 and also the used xrandr to rotate the display. The following is the fbset=
 output</div>

<div><br></div><div><div>mode &quot;800x480-60&quot;</div><div>=A0 =A0 =A0 =
=A0 # D: 33.260 MHz, H: 31.496 kHz, V: 59.993 Hz</div><div>=A0 =A0 =A0 =A0 =
geometry 800 480 800 960 32</div><div>=A0 =A0 =A0 =A0 timings 30066 120 120=
 15 15 16 15</div>
<div>=A0 =A0 =A0 =A0 accel false</div><div>=A0 =A0 =A0 =A0 rgba 8/0,8/8,8/1=
6,8/24</div><div>endmode</div><div><br></div><div>Secondly, I also want to =
calibrate the touchscreen. Eventhough I rotate the touchscreen in the xorg.=
conf.d/10-touchscreen.conf file.. When I run ts_calibrate, it still calibra=
tes in landscape mode and not in potrait mode....=A0</div>
</div><div><br></div><div style>I am completely blocked in this stage..... =
It would be great to receive suggestions to solve these issues</div><div st=
yle><br></div><div style>Greets,</div><div style>Satya</div></div>

--047d7b3a852ea754ba04d9d8aba9--
