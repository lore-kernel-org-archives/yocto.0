Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8E07E00C45; Thu, 16 Nov 2017 17:05:50 -0800 (PST)
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
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25161E009CB
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 17:05:49 -0800 (PST)
Received: by mail-pg0-f48.google.com with SMTP id c123so668923pga.11
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 17:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HqEtYOK3p3glxV8xxOBoJsEyc2eD94/zgR0ntzvB8TQ=;
	b=QH8GItz6BFbF2LdKp5k1OOZoYD5xbwtUixvg4ZC5z/jEsaARZpsJECSo9+s3Eg71nv
	cR36ChlYx/w6VvoUHMFu8t9c1EAzuCk4q4Mo1eACwC+CQTsEmYErDDr7zb46e9ZgjlCd
	7sD5/uwdkwiy9OD+b3RpX+LbR6iZf0nm/ycSd0kiPLTg3gLy8UlY7OHIYBcM8XCDO/py
	/eBsbXL3pUdKVR3DNeTD4tVEjGeDFfF/B2osPqXpAJ5o+GrnkZAdcqZ8D8EItT/OTeLn
	YZQTjFeSkMye4aHWwuiqM1qKetnnVF9Puf7tA55H1FsGCYEknIoShAWBoLd17/peCt9V
	xMKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HqEtYOK3p3glxV8xxOBoJsEyc2eD94/zgR0ntzvB8TQ=;
	b=e31pq7mHg9ayS9j8G+8geo6lqnQRQEmgWTVcGsZfA6EEoHNfRgkM2hVHwRLbqvEijH
	CnHpliafXxh8KbTXHrcDEh0MvVz8wl/BL7XzoJFkPUQoswOzZyRSn8fVfZcZ07nav6ld
	Db4S3T74jMN0t5/G3oAtC+bGEtZfYdPKGTP55sQjrvR/Dgo72mxfMmjCkTPJoQziamRX
	IftLcCB2v9COqkzFYYVUAtQGJfJ8Ge8dSuJIxsdMnude9/oymGj+izOeWK1pIhkqMnbf
	hA6EWhJ3uDbKUDT0KJF66nKdyd4HE0K4P65l3FC4h3fW1hD/Nfkix/LdcuffKbBG20V6
	n6Ww==
X-Gm-Message-State: AJaThX4JC+3C3dpf3K/wf+J2P8IamSANrYF/x7fvM/avrnX2zqIg5S1S
	nBZ1Mi13sY9i1bSS5SbCEWiF7AWlkio4si7IP2A8KQ==
X-Google-Smtp-Source: AGs4zMbVT1Kl7IekNX+FlBOePcpph3RVhMhuIc0X+844dI0eITksv8f8Jt1+vpZ1NcqY7m57jkrPIptdHTekOAM4LuE=
X-Received: by 10.84.130.33 with SMTP id 30mr3546807plc.379.1510880749318;
	Thu, 16 Nov 2017 17:05:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.218.162 with HTTP; Thu, 16 Nov 2017 17:05:48 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Fri, 17 Nov 2017 02:05:48 +0100
Message-ID: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: tiny-linux distribution with raspberrypi error
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
X-List-Received-Date: Fri, 17 Nov 2017 01:05:50 -0000
Content-Type: multipart/alternative; boundary="94eb2c1255425c7856055e23561a"

--94eb2c1255425c7856055e23561a
Content-Type: text/plain; charset="UTF-8"

hi

i am trying to compile the yocto-tiny for raspberry pi by adding the distro
to my local.conf

DISTRO = "poky-tiny"  and i  get the following


ERROR: nothing provides 'virtual/kernel'
ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:
incompatible with machine raspberrypi0-wifi (not in compatible_machine)
ERROR: linux-yocto-rt Provides virtual/kernel but was skipped: incompatible
with machine raspberrypi0-wifi (not in compatible_machine)
ERROR: linux-yocto Provides virtual/kernel but was skipped: incompatible
with machine raspberrypi0-wifi (not in compatible_machine)
ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:
incompatible with machine raspberrypi0-wifi (not in compatible_machine)
ERROR: required build target 'rpi-basic-image' has no buildable providers.
Missing or unbuildable depency chain was: 'rpi-basic-image',
'virtual/kernel'


any body has a clue to solve it?

thanks

--94eb2c1255425c7856055e23561a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div>hi<br></div><=
br>i am trying to compile the yocto-tiny for raspberry pi by adding the dis=
tro to my local.conf<br><br>DISTRO =3D &quot;poky-tiny&quot;=C2=A0 and i=C2=
=A0 get the following<br><br><br></div>ERROR: nothing provides &#39;virtual=
/kernel&#39;<br></div>ERROR:
 linux-yocto-tiny Provides virtual/kernel but was skipped: incompatible=20
with machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR:
 linux-yocto-rt Provides virtual/kernel but was skipped: incompatible=20
with machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR:
 linux-yocto Provides virtual/kernel but was skipped: incompatible with=20
machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR:=20
linux-yocto-dev Provides virtual/kernel but was skipped: incompatible=20
with machine raspberrypi0-wifi (not in compatible_machine)<br></div>ERROR: =
required build target &#39;rpi-basic-image&#39; has no buildable providers.=
<br></div>Missing or unbuildable depency chain was: &#39;rpi-basic-image&#3=
9;, &#39;virtual/kernel&#39;<br><br><br></div><div>any body has a clue to s=
olve it?<br><br></div>thanks</div>

--94eb2c1255425c7856055e23561a--
