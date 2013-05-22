Return-Path: <0xf777@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4552CE0140A
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:14:37 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id x10so2388335lbi.35
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=unpuSPNLlVVDzgBQAS152H3SueX7qexcmPt3vfiXxng=;
	b=PfGY9zTn6YAU4s1xEOkKlVDaZvlXz1GPS6cuelPcAZnJhQ7Yi2mJLWc09EsjQJg8Hs
	Vfc5ymWyNM5bVSH1Qtcfqx/vId0yXsRU/xawzgmy/my7S13QjFrMYiF6HwTfsBBSjc77
	lgIkffV8C88X3u2Ighfsed+9Rlw43c7Xt/U6Vi9ijhL2QT3hzs+fYwkUMK3hJ9JGT/7j
	iLTp7FaMigYbjZcwDClm175aXT13/tllRv8fAXPX3xacXxXY2URldMPJQTbZq53ZrPbk
	sRX+1iE2mG4pWeiXywuGQa8YjcxuwGAZGfdr/9x4o6eUC2tCfjCI4EyB7thbsxGEA4wE
	p2OQ==
MIME-Version: 1.0
X-Received: by 10.112.161.195 with SMTP id xu3mr4354087lbb.75.1369242875730;
	Wed, 22 May 2013 10:14:35 -0700 (PDT)
Received: by 10.152.27.168 with HTTP; Wed, 22 May 2013 10:14:35 -0700 (PDT)
Date: Wed, 22 May 2013 21:14:35 +0400
Message-ID: <CAHyyKNmFiF6K63543Ya4sQn9z8RwTyfykNGq-NKP7jwnsvwRGQ@mail.gmail.com>
From: Alex M <0xf777@gmail.com>
To: yocto@yoctoproject.org
Subject: remove --build option in configure
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
X-List-Received-Date: Wed, 22 May 2013 17:14:37 -0000
Content-Type: multipart/alternative; boundary=001a11c31d1438212304dd51b337

--001a11c31d1438212304dd51b337
Content-Type: text/plain; charset=ISO-8859-1

Hello!
I'm writing recipe for ffmpeg and it fails at do_configure stage because
Yocto passes --build option but configure script from ffmpeg-1.2.1.tar*
does not recognize this option, thus I'm getting this stage failed.

Is there any ways to customize arguments to "configure"?

I know how to add additional with EXTRA_OECONF =, but how to give less
parameters? Without "--build".

--001a11c31d1438212304dd51b337
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div><div><div>Hello!<br></div>I&#39;m writing recipe for ffmpeg and it 
fails at do_configure stage because Yocto passes --build option but 
configure script from ffmpeg-1.2.1.tar* does not recognize this option, 
thus I&#39;m getting this stage failed.<br><br></div>Is there any ways to customize arguments to &quot;configure&quot;?<br><br></div>I know how to add additional with EXTRA_OECONF =, but how to give less parameters? Without &quot;--build&quot;.<br>
</div>

--001a11c31d1438212304dd51b337--
