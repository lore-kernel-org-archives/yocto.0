Return-Path: <emirelkholy@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC852E0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 14:18:51 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so5594570vbj.35
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 14:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=NTlHaOzho07dH8QqovjoF5ElzEsIDTWVDiKtEfLYXLI=;
	b=KCtFfR37IVC40Bb8HYTeMMKoNozcc7+mOoJKptPTn6KwLAOu/Atg5IkGTxUMQzNhfY
	sTAT5UW4BphME4SzF+acthFfJ81isYgb2T2mOvQ8FDP5Z1AUGagq6mtbolr5yUf+GhTo
	o//4Fsvx9L37MrlOfJTKfxceHYz3Wm1RD/srSudgh109TE1PfKAcl5ptwwgednMEYOuR
	H6sJeHTlsigqWzpjImwRK3LwouSMkypbuZVLVnUblu/TA3aOuj8Kb0U/XY5Tnv4qoqGe
	UqbW7T+yyjZ5RkBMkL5f7bH1rtzhcxRmSebR/fpFiz3kumtI+5dm+bOESqA92Xfi5xXV
	JQmw==
MIME-Version: 1.0
Received: by 10.220.209.72 with SMTP id gf8mr30448vcb.72.1337635131086; Mon,
	21 May 2012 14:18:51 -0700 (PDT)
Received: by 10.52.157.71 with HTTP; Mon, 21 May 2012 14:18:51 -0700 (PDT)
Date: Mon, 21 May 2012 17:18:51 -0400
Message-ID: <CAExZvuOOdBRz3=zeko8gbdnXOQDaQ5mzvLNXFCi-uW3mduYNhw@mail.gmail.com>
From: Emir Elkholy <emirelkholy@gmail.com>
To: yocto@yoctoproject.org
Subject: sending ioctl 5310 to a partition!
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 May 2012 21:18:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I am trying to install an image of Yocto to my CRB (cedartrail). After
creating the bootable usb with the new image on it as a usb-zip
(because it is too large for the hdd method of install), I insert it
into one of the usb slots of my CRB. After turning the CRB on the
prompt says "boot". At this point if you don't type anything it just
runs the image off of the USB. This worked with no problem. What
didn't work was trying to install the new image on my CRB. When the
CRB starts with the USB attached, it prompts the user with "boot"
which at this stage i typed "install". It seemed as if it was
installing because it was outputting various text, but then it just
stopped after outputting to the screen "sending ioctl 5310 to a
partition!". Hopefully someone on the mailing list has seen this
before. Any advise would help.

Thanks

