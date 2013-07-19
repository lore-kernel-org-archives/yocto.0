Return-Path: <richbayliss@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF987E01492
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 03:51:09 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id qd12so9032976ieb.2
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 03:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ristdduGEo9zlVINpqfLaDkXYGkuPFuqFaxMqQJjtHY=;
	b=Z5NRAr24JaF/auS3SVpYGX8jWRI+8IGybgJrcE62jY+CpDLX1kcQ7ZdQQyrSFHXf72
	0WmLGS3f1Qijn6SeA+2l/ryo9oYZh59PoUfiGfLCDNrXjUvkFVe/dISV55/vus9FoEKp
	tsNEM6zvW0QHk9aaPUAcuVoM1//Llo34e8L99/5s6zzQlmHviiIzUNcEs8esyqMHI6ET
	StZN0KmjfZao+Yh39qvfwK8eU3ZqUjjLZ9q+Vcu7Nwc/onOvLezl5N7Vce0hfbgNbby1
	uS01eWBw/SSHKw5SbY8RiPeSsghLD7IPtvWTyDIuRPz9ggk12Cm5a3amvI1weMDPaHLJ
	M/Mg==
MIME-Version: 1.0
X-Received: by 10.42.25.12 with SMTP id y12mr9658165icb.64.1374231068531; Fri,
	19 Jul 2013 03:51:08 -0700 (PDT)
Received: by 10.64.23.165 with HTTP; Fri, 19 Jul 2013 03:51:08 -0700 (PDT)
Date: Fri, 19 Jul 2013 11:51:08 +0100
Message-ID: <CAHLvMfaDVCOe925=5LK_p_M+wUNf7CzbvBXC0p97tnS1SqEBig@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Adding Python support to build
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
X-List-Received-Date: Fri, 19 Jul 2013 10:51:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have added a recipe to my build which RDEPENDS_${PN} = "python".
Although the package doesn't "need" python to run, it exposes a Python
library which I would like to use on the system in a Python script.

When I build my image, which has IMAGE_INSTALL += "my-package" in its
recipe, I have got Python installed and can run "python" on the
command line. However, my package exposes a library which imports
"random" - and that import is failing:

root@raspberrypi:~# python
Python 2.7.3 (default, Jul 15 2013, 23:00:16)
[GCC 4.8.1] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import random
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: No module named random
>>>


As an unrelated test, I added "package-managment" to my IMAGE_FEATURES
which added a lot of things, but also made "import random" work
successfully.

Am I missing something obvious?

--
Rich Bayliss

