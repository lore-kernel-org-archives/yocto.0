Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03297E00D28; Thu, 16 Nov 2017 03:12:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15987E00D07
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 03:12:15 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id z3so8831463wme.5
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 03:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LbxUF8vtxhl6dWA4Xi+QTlYlzC9tc6Ey4V7Mr2G/yLk=;
	b=MQeQHJrluWOK//t12SE6MFrmumM2o7gESRLEfa38G46izhut9aeu9RfGfjUlT8Aj3s
	S0P7cLpqz5/fl3Bqnn1hhnjB1+qn4qOc5Lz+TPDUB5yPjvETNqHBS7TqVt3ixEu6LNqf
	nE3nWP8udnMfbTLCNIsRdXZzurUCwXkRJ1Bgj63kIequ0e/GEsfMQtDiCtJ/ua1hfiwc
	HJdulJH6hSXbAOSBW+WtsX89HW6pufNrdAiwEdkeJEP2CQNefBwH9fJqqHq6LqLoWxLB
	jbvjT2tJXCX9Jqrig0RkMHwL0MLa4d++2zAeTlscW3lk/SFcFz/dh9p+QR1WSbtc2Ye4
	RU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LbxUF8vtxhl6dWA4Xi+QTlYlzC9tc6Ey4V7Mr2G/yLk=;
	b=eVQS/nCuf7fODLcjRPEHrgtK58ZQ6HU/Q0BbpS+MAyglFseh5VHZxKO7LSaARRcINp
	RteExAL/v1Uk7jDhTfLMjv0GbgYItie1pKeFSKfAj2cpT1vY7tL+2PLO6unEjphthlYd
	Ay7h0T6ddNStt58ENO5ZqZIBT4qVzZpMYmxpPPuAbGzw5rq5U98L7nR/+r+yIojNiBBk
	15GiO7EfQEQSlo4J2d8SAGvdSQV5q9ANNRAlM+FjjgGxE1iQLAH6FRkn3Vdw+tLcCTMq
	bL7V4fQRHZUzYUTLQVRbYFXflgE3ucilYLDdUwiAHLhFcsXj1ZK8Neu7YZpPG6lK6OKR
	8xKQ==
X-Gm-Message-State: AJaThX5q69uI3xGMTp03j0LbFnKQi6ZQ3B9yzE2JvydA2QnFNU8viOGX
	O/cTxy2i0ZBUjB7wPlmWw1ADtGFiRlTCFnRBvXdKRw==
X-Google-Smtp-Source: AGs4zMZr6V3CGvWDhsdf+wWzenSLCzEPgaUJ9F/EauVqQLdUUJ1KTUTCbMQ0JuKhOn2K7o1oi2RIFUI17M6ZQFCR+wY=
X-Received: by 10.28.56.5 with SMTP id f5mr1228086wma.159.1510830734432; Thu,
	16 Nov 2017 03:12:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.137.206 with HTTP; Thu, 16 Nov 2017 03:12:13 -0800 (PST)
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 16 Nov 2017 12:12:13 +0100
Message-ID: <CAAfyv37+2kibpE7zbzU+ocRZ6vxEfv82CbkUwUU_odKb8G9pdg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: qt4 sdk problem on rocko
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
X-List-Received-Date: Thu, 16 Nov 2017 11:12:17 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm porting our layers to latest rocko release. I build SDK to be able
to crosscompile our cmake based application which is using qt4. To
have qt4-tool in sdk I've added:
TOOLCHAIN_HOST_TASK_append = " nativesdk-qt4-tools"

Then in app CMakelists.txt I've use include(FindQt4) but it's barking
with following:
CMake Warning at
/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/share/cmake-3.8/Modules/FindQt4.cmake:618
(message):
  /opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/bin/qmake reported
  QT_INSTALL_LIBS as "/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/lib"
  but QtCore could not be found there.  Qt is NOT installed correctly for the
  target build environment.
Call Stack (most recent call first):
  CMakeLists.txt:85 (include)

I did small check and seems that FindQt4 is using some mechanism to
find qmake and then based on qmake --query use variables. Problem is
that qmake -query report this:

/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/bin$ ./qmake -query
QT_INSTALL_PREFIX:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr
QT_INSTALL_DATA:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr
QT_INSTALL_DOCS:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/doc
QT_INSTALL_HEADERS:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/include
QT_INSTALL_LIBS:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/lib
QT_INSTALL_BINS:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/bin
QT_INSTALL_PLUGINS:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/plugins
QT_INSTALL_IMPORTS:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/imports
QT_INSTALL_TRANSLATIONS:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/translations
QT_INSTALL_CONFIGURATION:/etc/xdg
QT_INSTALL_EXAMPLES:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/examples
QT_INSTALL_DEMOS:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/demos
QMAKE_MKSPECS:/opt/poky/2.4/sysroots/x86_64-pokysdk-linux/usr/mkspecs
QMAKE_VERSION:2.01a
QT_VERSION:4.8.7

which is problem because I don't want to link + use included for x86
qt4 but for cross compiled.

Any ideas what to check? Thanks a lot.

BR,

marek


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

