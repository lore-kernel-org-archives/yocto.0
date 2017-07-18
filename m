Return-Path: <so61pi.re@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19463E00C3D; Tue, 18 Jul 2017 06:24:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (so61pi.re[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.48 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93EE1E00C3B
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 06:24:11 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id w198so13418679lff.2
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 06:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=RpyiGFO30CW2tDwAJvv76HzQZ+uwOquaf5PRJhtG85M=;
	b=PndN2cOqbeXZ7XVqqFdg3TCZXeIa7pB1wKxojWV8yXeHzJ/wphdselSmfui4EMTYp3
	w765ekFZv4NDRyaLp/0zsVsCk9je/Hknip/Rp2W0bVUhxY4XE1E612pXDEZ5l1RVeUDk
	dpgKihVdiP0ce2vEZNsER8rGHpoDt1UUB+lFkuUAzY9LsEyA8x8F/bmrHb/TSOggScWC
	o7iIspvUYBbuO2ibYfWCz0TEEaptmYBV9q08X8ic7F3du5mESvP/lKIvJ4Dy/6xQe1eQ
	gTbGnvBOg13xww0JsHvplG3F5wApca10Bxjj7mIV8kNI8y6A6upBseYS+D1wCBZyNJH/
	P0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RpyiGFO30CW2tDwAJvv76HzQZ+uwOquaf5PRJhtG85M=;
	b=K3o5mG0OwRAva0KsnR399jhrRiug3pDpFPjFD+IS0o6BiYsGMKh26+cAp3HKRGoIUE
	1sjcCiNJ6SffykYBxlGpyGmPxfRZCwdv0Qn7RvpPKIBXlmPlpE46Xtc89FfVreoQbChV
	p4emsobjc7h4WSOn0YJcLGKr/v6gAvsKWSMqft4ABoDpLUuR9sb8Y6NOb/g76zYf8Dw7
	1UoCvzwTw2gWdC2C1c0prIEn+1++YXFH2roRYBGaHt9rmV7gZiRkC8QLEgR53+670ZNM
	7rBvpSb9NeYX91zjRCDTJk7oZWF/0W/wh9kf/X5DBqmysdAMup2oIy9Z/ZBVj+uoZsvt
	5Ilg==
X-Gm-Message-State: AIVw110y6W+Px3gdjpCVnacMpaq1lffns2YY9ZgWVGHeUJDcjUJhUtx6
	Hqrrwwf7QPXRNDx7nIQOvZpSzT7UbVc3Xvg=
X-Received: by 10.25.29.3 with SMTP id d3mr602355lfd.45.1500384250007; Tue, 18
	Jul 2017 06:24:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.167.131 with HTTP; Tue, 18 Jul 2017 06:24:09 -0700 (PDT)
From: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>
Date: Tue, 18 Jul 2017 20:24:09 +0700
Message-ID: <CAGnCEbuysuVU34RSX435ftsa+GKawUB0tWtcEdVdCFRqvY4TSw@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: How to build a same package twice with different configurations for same MACHINE?
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
X-List-Received-Date: Tue, 18 Jul 2017 13:24:12 -0000
Content-Type: multipart/alternative; boundary="001a11401f6c3f953d0554976e2e"

--001a11401f6c3f953d0554976e2e
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

In my system, I want to build two images:
- main-image : contains the real system with applications and stuff.
- initial-flasher-image : contains a swu (swupdate file) for the first
flashing.

The images are built in this sequence: main-image > swu >
initial-flasher-image

Both images use busybox package but in different ways. The main-image can
use several busybox' tools but the initial-flasher-image only uses one or
two of them just to complete the flashing goal.

My question is, is there a way to build busybox for main-image with one
defconfig, then build the busybox for initial-flasher-image with a
different defconfig when I issue "bitbake initial-flasher-image" command?

Best Regards,
Thi Huynh

--001a11401f6c3f953d0554976e2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi everyone,<br><br></div>In my s=
ystem, I want to build two images:<br>- main-image : contains the real syst=
em with applications and stuff.<br>- initial-flasher-image : contains a swu=
 (swupdate file) for the first flashing.<br><br></div>The images are built =
in this sequence: main-image &gt; swu &gt; initial-flasher-image<br></div><=
br></div>Both images use busybox package but in different ways. The main-im=
age can use several busybox&#39; tools but the initial-flasher-image only u=
ses one or two of them just to complete the flashing goal.<br><br></div>My =
question is, is there a way to build busybox for main-image with one defcon=
fig, then build the busybox for initial-flasher-image with a different defc=
onfig when I issue &quot;bitbake initial-flasher-image&quot; command?<br><d=
iv><div><div><div><div><div><br clear=3D"all"><div><div class=3D"gmail_sign=
ature"><div dir=3D"ltr"><div class=3D"gmail_signature"><div dir=3D"ltr">Bes=
t Regards,<br>Thi Huynh</div></div></div></div></div>
</div></div></div></div></div></div></div>

--001a11401f6c3f953d0554976e2e--
