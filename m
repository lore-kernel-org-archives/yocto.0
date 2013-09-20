Return-Path: <xertz.yocto@gmail.com>
Received: from mail-ve0-f194.google.com (mail-ve0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84E7BE015FD
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 12:53:19 -0700 (PDT)
Received: by mail-ve0-f194.google.com with SMTP id c14so137329vea.1
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 12:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EBLGUmEwRz6Iw5TwT5B7BV0Xw7Dxg1eFwXBu+vaxEv4=;
	b=mPPhk+AVDW+IxlFvtrjo0IqxUSZM1oFVX+y6dYp7k9OSh9fephv/U24jjPBbzV+W1/
	T3MfLYhMaOfMnc2gdjCf4ShI/+PbgClcwS0k3Ai8Jcq8FSpCA/B8lR5avGSMu1nwXkLP
	htmzIErghpBkMl6/51aqT6YCXLKxxPRsC9s7zujA9f22yqFUu66rW+WZr63qVTuQxQfY
	MbY2p+rprRGNf/GSDqOUqH9ZLwyY0v1TNLICr6befTB/nhjB9nDWtgwrys6F5fChqR3I
	zvdw+X0gO5mAn19+CB+1l9U59sMzjrDkqkynk9MAh6rbHWh+e1aphw0wN0Bzio2u78nA
	mVwg==
MIME-Version: 1.0
X-Received: by 10.52.98.131 with SMTP id ei3mr6691385vdb.4.1379706798435; Fri,
	20 Sep 2013 12:53:18 -0700 (PDT)
Received: by 10.220.251.82 with HTTP; Fri, 20 Sep 2013 12:53:18 -0700 (PDT)
Date: Fri, 20 Sep 2013 20:53:18 +0100
Message-ID: <CAEo3mJUri=-cHU7cKdJLspWrb_k2irEFx47+npb2TBRKMLcCPw@mail.gmail.com>
From: John Doe <xertz.yocto@gmail.com>
To: yocto@yoctoproject.org
Subject: Configuring linux-yocto-custom to build specific kernel modules
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
X-List-Received-Date: Fri, 20 Sep 2013 19:53:20 -0000
Content-Type: multipart/alternative; boundary=20cf307d03f49d76bd04e6d60544

--20cf307d03f49d76bd04e6d60544
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I would like to know how I can build a specific kernel module (one that is
already in the linux kernel). Do I have to create a custom bitbake recipe
for the module or can I simply configure linux-yocto-custom?

My specific aim is to build the kernel module
drivers/net/wireless/rtl818x/rtl8187 as part of the core-image-minimal
build.

Regards,
J

--20cf307d03f49d76bd04e6d60544
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Hi,<div><br></div><div>I would like to know how I can build a specific kernel module (one that is already in the linux kernel). Do I have to create a custom bitbake recipe for the module or can I simply configure linux-yocto-custom?</div>
<div><br></div><div>My specific aim is to build the kernel module drivers/net/wireless/rtl818x/rtl8187 as part of the core-image-minimal build.</div><div><br></div><div>Regards,</div><div>J</div></div>

--20cf307d03f49d76bd04e6d60544--
