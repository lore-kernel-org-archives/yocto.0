Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E49DAE00A3C; Thu, 13 Aug 2015 10:41:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EBC9E007AE
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 10:41:18 -0700 (PDT)
Received: by iodt126 with SMTP id t126so59986106iod.2
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 10:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=SI/Y2ZkPOgPr/D5fFaY7ijBT99Co3+Xnw0m4+XzGmS0=;
	b=U5RQldTEu+wtyND8lLJ16bP1sE6zT504z8KVmOG69OPfvTiTs7l3mH0w85dmVTqPal
	gGqiss4RxPyyrCowJ1xlG2X+CStO20ZJq/J8YxjttRX43kNAmUT6s7cG7gzOvsbuFq6L
	7atlb2725moL1nFntjo4iVQYHXT/4E04cdJhczPawOnDnBPyELrvcQotBz9oW+EDyF4u
	vFkc2HKHAyzqkIjBR8yQqCXYFIoLeUBQ3/kDeyg9HYZEaD/nstt9XTNoHUZFzOEDw4Ce
	bSWTtUdkl5zuLu1/uyj9x3CtvUy8CNu8nkiRWBoZDzZg9+V61/5Y8cr6l0wgiDhJbeLN
	XcUw==
X-Received: by 10.107.168.214 with SMTP id e83mr5660165ioj.112.1439487678362; 
	Thu, 13 Aug 2015 10:41:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Thu, 13 Aug 2015 10:40:49 -0700 (PDT)
In-Reply-To: <1908027641.2329580.1436853380447.JavaMail.yahoo@mail.yahoo.com>
References: <1908027641.2329580.1436853380447.JavaMail.yahoo@mail.yahoo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Aug 2015 10:40:49 -0700
Message-ID: <CAMKF1sqW-f1Yx+6Bx8aW4y1JtvJ6SGXuTpnX-Jc+wq=M-yLAhw@mail.gmail.com>
To: Alvaro Martinez Tovar <alvaromartineztovar@yahoo.es>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: (No subject)
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
X-List-Received-Date: Thu, 13 Aug 2015 17:41:25 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 13, 2015 at 10:56 PM, Alvaro Martinez Tovar
<alvaromartineztovar@yahoo.es> wrote:
> Dear all,
> I am working with Qt5.5.0 and QtCreator 3.4.2 open source. On the hardware
> side I work with a i.MX6 sabre platform for smart devices.
> As a first aproach, after having created the image fsl-image-qt5 correctly
> (I think), I would like to run different examples by cross compiling and
> executing them on the SABRE platform. On my PC I run Ubuntu 14.04 LTS.
> When I compile all the examples to run on the Ubuntu PC, they all work
> properly (bluetooth, qtquick ...)
> However, when I try to cross-compile and run them on the SABRE platform, I
> get execution errors with some of them.
> When I try to run a bluetooth scanner, I get:
> ./btscanner: error while loading shared libraries: libQt5Bluetooth.so.5:
> cannot open shared object file: No such file or directory
> When I try to run a Qtquick example (dasboard), I get:
> Qt Warning: Could not find a location of the system's Compose files.
> Consider setting the QTCOMPOSE environment variable.
> Qt Warning: Could not find a location of the system's Compose files.
> Consider setting the QTCOMPOSE environment variable.
> QQmlApplicationEngine failed to load component
> qrc:/qml/dashboard.qml:45 module "QtQuick.Extras" is not installed
> qrc:/qml/dashboard.qml:43 module "QtQuick.Controls" is not installed
> qrc:/qml/dashboard.qml:44 module "QtQuick.Controls.Styles" is not installed
> qrc:/qml/dashboard.qml:45 module "QtQuick.Extras" is not installed
> qrc:/qml/dashboard.qml:43 module "QtQuick.Controls" is not installed
> qrc:/qml/dashboard.qml:44 module "QtQuick.Controls.Styles" is not installed
> qrc:/qml/dashboard.qml:45 module "QtQuick.Extras" is not installed
> qrc:/qml/dashboard.qml:43 module "QtQuick.Controls" is not installed
> qrc:/qml/dashboard.qml:44 module "QtQuick.Controls.Styles" is not installed
>
> Can you please give me any advice on what to do? I am stuck at this point.
>

you should use same version of qt that you are getting for meta-qt5
and 5.5 is not yet in there
the latest on master is 5.4

> thank you in advance!
> Regards
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

