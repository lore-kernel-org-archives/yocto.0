Return-Path: <daniel.toussaint@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99CE9E01307
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 06:16:45 -0700 (PDT)
Received: by obbef5 with SMTP id ef5so4177366obb.35
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 06:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=z6LnaH1jYvKuJCF3BX2KR5v/d+zTKYiHArhAIjx6fUQ=;
	b=h97ksgGXZlpneJO4R3mc80+iRlIBJy34x9XODF52ION+EL9Cg1mY6lD63I9D6EIEyf
	Fq/Qv+KjXaifaeee9F2J5wuiBxZAhL8DDjX7Kow7TB62IUU2zSM+hd0Ci9SqzcnfHPOU
	SJMgAqzZ25ojDyitXZ1JJIhnpnXVa51N1XUqpj8Hry1YKZFLiOO+JnLCLnYdx/UtTXa8
	YfnM5l6Mlko0AZR+7R7h2/MPms4Cvj8YUVanSAlP5rJbrDIg+/zoFeeWNor4Xkq78BRz
	qG+6vz3DRgjOcVoLZAHQz6xbVD3dIqdcTosXjngKz3kV0GXb/5ejmJFSYssB+T4cUlJF
	URZQ==
MIME-Version: 1.0
Received: by 10.182.225.2 with SMTP id rg2mr7276222obc.2.1335705404870; Sun,
	29 Apr 2012 06:16:44 -0700 (PDT)
Sender: daniel.toussaint@gmail.com
Received: by 10.182.37.202 with HTTP; Sun, 29 Apr 2012 06:16:44 -0700 (PDT)
Date: Sun, 29 Apr 2012 21:16:44 +0800
X-Google-Sender-Auth: shwSXqgji1fXYUmqgCCnXFYWFEY
Message-ID: <CADVYk4SBWkAnU4RL6k2_+1aedbFnfptohKffjGdaK6C2bs-6RQ@mail.gmail.com>
From: Daniel Toussaint <daniel@dmhome.net>
To: yocto@yoctoproject.org
Subject: Building a Qt4-x11 app.
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
X-List-Received-Date: Sun, 29 Apr 2012 13:16:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

I wish to run an application developed with QT in a Yocto filesystem.
The app should be linked against Qt4-X11 libs. What is the exact work
flow to get my app cross compiled on my x86_64 host ?
So far I have :
-> Build a complete core-image-sato with IPKG as a packaging system.
-> Build qt4-x11-free
-> Build qt4-tools-nativesdk

Now, I got something called qmake2 in the build directory
(sysroot-x86_64) , but it complains about not finding the right qmake
specs.
I got the feeling I am doing something fundamentally wrong with my
setup, can anyone enlighten me ?

Thanks a lot.

-- 
Gtalk: daniel.toussaint@gmail.com
Skype: supertoussi
Cell: +886-915-680-291

