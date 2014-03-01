Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-oa0-f67.google.com (mail-oa0-f67.google.com
	[209.85.219.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3868E009D9
	for <yocto@yoctoproject.org>; Sat,  1 Mar 2014 13:43:37 -0800 (PST)
Received: by mail-oa0-f67.google.com with SMTP id j17so377502oag.6
	for <yocto@yoctoproject.org>; Sat, 01 Mar 2014 13:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7jEI91+shhBx18PdQdY97sv9fv87DalKc9QFsNSea/o=;
	b=OcGJIcfzwSnRBPVNDieW5kNd+IdIe4I7Ef3Rbvjh2FV3Y6DjxOcL0fnsjjWm8dvYxE
	rnnFSivnO8wp7QCaRYZuOkKz2zFuLezMmYwB1oqg0gK6sAUkR87n8aEbt86fTMgizdr/
	CZB1YOvk2RkxUlIXgW1/KFfZfh87oiPuiCFPHxLMAYyj9nKePitfGL0lDNzOxJNQ8gF4
	BFupztkp8cQN559S/cgJAHQvzMIJ526VQAUR8U1TbC+Ue3V4wNLBhBt81quLieYSS0Mv
	ETq4T/NiSGIN3gpxSCkdsj0XoEA3HOzRT3uQVxCBEPn5XfaOZBUX/mNGqFbrXp+5IvAK
	UOvA==
MIME-Version: 1.0
X-Received: by 10.60.161.81 with SMTP id xq17mr9670299oeb.3.1393710216916;
	Sat, 01 Mar 2014 13:43:36 -0800 (PST)
Received: by 10.182.102.230 with HTTP; Sat, 1 Mar 2014 13:43:36 -0800 (PST)
Date: Sat, 1 Mar 2014 14:43:36 -0700
Message-ID: <CAA7h+Er+Y4Jnz5FAiVoVvxKU62rx6y_q7-0SpkRS_HWRFNieBg@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: yocto@yoctoproject.org
Subject: Making Modules and Enabling the in the Kernel when doing your own build?
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
X-List-Received-Date: Sat, 01 Mar 2014 21:43:38 -0000
Content-Type: multipart/alternative; boundary=089e01229a8c66359804f39272b5

--089e01229a8c66359804f39272b5
Content-Type: text/plain; charset=ISO-8859-1

I have decided to compile my own poky image. Could someone elaborate on
where I would set the usbip modules to be built and enabled in the kernel
if I am doing my own build.

Thanks,
Rick

--089e01229a8c66359804f39272b5
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><br>I have decided to compile my own poky image. Could someone elaborate on where I would set the usbip modules to be built and enabled in the kernel if I am doing my own build.<br><br>Thanks,<br>Rick</div>

--089e01229a8c66359804f39272b5--
