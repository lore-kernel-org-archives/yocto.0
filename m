Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10EACE00DA9; Thu, 21 Apr 2016 01:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 116927 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Apr 2016 01:15:29 PDT
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B13E7E00931
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 01:15:29 -0700 (PDT)
Received: from mfilter49-d.gandi.net (mfilter49-d.gandi.net [217.70.178.180])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id A3647FB8C8;
	Thu, 21 Apr 2016 10:15:27 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter49-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter49-d.gandi.net (mfilter49-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id Hw1iXd1bUCUe; Thu, 21 Apr 2016 10:15:24 +0200 (CEST)
X-Originating-IP: 92.245.156.62
Received: from [192.168.1.49] (unknown [92.245.156.62])
	(Authenticated sender: contact@jgueytat.fr)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 8C61EFB8A0;
	Thu, 21 Apr 2016 10:15:23 +0200 (CEST)
To: yocto@yoctoproject.org
References: <5715F053.8040801@jgueytat.fr> <5716C35C.3040800@jgueytat.fr>
From: Julien Gueytat <contact@jgueytat.fr>
Message-ID: <57188C1B.70804@jgueytat.fr>
Date: Thu, 21 Apr 2016 10:15:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <5716C35C.3040800@jgueytat.fr>
Cc: otavio@ossystems.com.br
Subject: Re: [meta-qt5][meta-raspberrypi]: Qt5 with EGL support for the Raspberry through linux-oe-g++
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
X-List-Received-Date: Thu, 21 Apr 2016 08:15:33 -0000
Content-Type: multipart/alternative;
	boundary="------------050001050602030107090403"

--------------050001050602030107090403
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Just to keep you informed that a bug report has been opened to Qt:
https://bugreports.qt.io/browse/QTBUG-52739

We might save some patches in layers by solving this,
Thanks for helping,

Le 20/04/2016 01:46, Julien Gueytat a écrit :
> Hi again guys,
>
> after more investigations:
>
> I found out that the default value -lEGL comes from 
> ./mkspecs/common/linux.conf which is included in 
> ./mkspecs/linux-oe-g++/qmake.conf
>
> linux-oe-g++ being the only generic mkspecs that should be used in Yocto
>
> So! At the time the configuration enters egl.pro the content of the 
> variables LIBS and QMAKE_EGL_LIBS are still a bit weird for me :
>
> 1- LIBS already has the content of the QMAKE_EGL_LIBS content from the 
> result of the pkg-config command.
> 2- QMAKE_EGL_LIBS has the content of the default value found in 
> ./mkspecs/common/linux.conf
>
> There are two options to have it properly working:
> - First and easy option : remove the QMAKE_EGL_LIBS default variable 
> in ./mkspecs/linux-oe-g++/qmake.conf since the good libs seems to 
> already been present in the LIBS variable.
> - Second option : understand why the LIBS variable is already properly 
> set and why the QMAKE_EGL_LIBS properly computed in the configure and 
> present .qmake.vars is not used. (I would say that the device spec 
> overrides the one from qmake spec... I did not dig further yet.)
>
> Anyway I'm pretty sure the trouble comes from meta-qt5 side now. I'm 
> pretty sure meta-raspberrypi maintainers can confirm that their master 
> branch handles pkg-config stuff now.
>
> Thanks advance for having a look on this guys,
> Best Regards
>
>
> Le 19/04/2016 10:46, Julien Gueytat a écrit :
>> Hi,
>>
>> I still can't figure out the patch to apply in meta-qt5 to get EGL 
>> support with the Raspberry.
>>
>> The test to check EGL does not pass and fails with the following command:
>>
>> arm-poky-linux-gnueabi-g++  -march=armv7-a -marm -mthumb-interwork 
>> -mfloat-abi=hard -mfpu=neon-vfpv4 -mtune=cortex-a7 
>> --sysroot=/home/jgueytat/projects/LightPixels/poky/build/tmp/sysroots/lightpixels 
>> -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-O1 -o egl egl.o   
>> -lGLESv2 -lbcm_host -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
>>
>>
>> Here is the content of the file egl.pro:
>>
>> $ cat egl.pro
>> SOURCES = egl.cpp
>>
>> for(p, QMAKE_LIBDIR_EGL) {
>>     exists($$p):LIBS += -L$$p
>> }
>>
>> message("In egl.pro - 1: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
>> message("In egl.pro - 1: LIBS = $$LIBS")
>>
>> !isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH += $$QMAKE_INCDIR_EGL
>> !isEmpty(QMAKE_LIBS_EGL): LIBS += $$QMAKE_LIBS_EGL
>>
>> message("In egl.pro - 2: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
>> message("In egl.pro - 2: LIBS = $$LIBS")
>>
>> CONFIG -= qt
>>
>> In the main ./configure file of qtbase:
>>
>> | In configure #1: QMAKE_LIBS_EGL =
>> | In configure #2: QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host 
>> -lvchostif -lbcm_host -lvcos -lvchiq_arm -pthread
>>
>> The variable QMAKE_LIBS_EGL is set properly.
>>
>>
>> In the ./config.tests/qpa/egl/egl.pro file:
>>
>> | Project MESSAGE: In egl.pro - 1: QMAKE_LIBS_EGL = -lEGL
>> | Project MESSAGE: In egl.pro - 1: LIBS = -lEGL -lGLESv2 -lbcm_host 
>> -lvchostif -lvcos -lvchiq_arm -pthread
>> | Project MESSAGE: In egl.pro - 2: QMAKE_LIBS_EGL = -lEGL
>> | Project MESSAGE: In egl.pro - 2: LIBS = -lEGL -lGLESv2 -lbcm_host 
>> -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
>>
>>
>> *What I see is that:*
>> In the configure file the variable QMAKE_LIBS_EGL is properly set 
>> through pkg-config.
>> In the egl.pro file... The variable LIBS gets the content of 
>> QMAKE_LIBS_EGL and the variable QMAKE_LIBS_EGL gets back to its 
>> default -lEGL.
>>
>> In the end with have -lGLESv2 before -lEGL and this does not link.
>>
>> I checked also the content of .qmake.vars:
>> grep QMAKE_LIBS_EGL .qmake.vars
>> QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif -lbcm_host 
>> -lvcos -lvchiq_arm -pthread
>>
>>
>> The command QMakeVar set QMAKE_LIBS_EGL "$QMAKE_LIBS_EGL" seems to 
>> have his job done too late...
>>
>> If someone has an idea to get the proper correction done...
>>
>> Best Regards,
>> Julien
>>
>>
>>
>


--------------050001050602030107090403
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Just to keep you informed that a bug report has been opened to Qt:<br>
    <a class="moz-txt-link-freetext" href="https://bugreports.qt.io/browse/QTBUG-52739">https://bugreports.qt.io/browse/QTBUG-52739</a><br>
    <br>
    We might save some patches in layers by solving this,<br>
    Thanks for helping,<br>
    <br>
    <div class="moz-cite-prefix">Le 20/04/2016 01:46, Julien Gueytat a
      écrit :<br>
    </div>
    <blockquote cite="mid:5716C35C.3040800@jgueytat.fr" type="cite">
      <meta content="text/html; charset=windows-1252"
        http-equiv="Content-Type">
      Hi again guys,<br>
      <br>
      after more investigations:<br>
      <br>
      I found out that the default value -lEGL comes from
      ./mkspecs/common/linux.conf which is included in
      ./mkspecs/linux-oe-g++/qmake.conf<br>
      <br>
      linux-oe-g++ being the only generic mkspecs that should be used in
      Yocto<br>
      <br>
      So! At the time the configuration enters egl.pro the content of
      the variables LIBS and QMAKE_EGL_LIBS are still a bit weird for me
      :<br>
      <br>
      1- LIBS already has the content of the QMAKE_EGL_LIBS content from
      the result of the pkg-config command.<br>
      2- QMAKE_EGL_LIBS has the content of the default value found in
      ./mkspecs/common/linux.conf<br>
      <br>
      There are two options to have it properly working:<br>
      - First and easy option : remove the QMAKE_EGL_LIBS default
      variable in ./mkspecs/linux-oe-g++/qmake.conf since the good libs
      seems to already been present in the LIBS variable.<br>
      - Second option : understand why the LIBS variable is already
      properly set and why the QMAKE_EGL_LIBS properly computed in the
      configure and present .qmake.vars is not used. (I would say that
      the device spec overrides the one from qmake spec... I did not dig
      further yet.)<br>
      <br>
      Anyway I'm pretty sure the trouble comes from meta-qt5 side now.
      I'm pretty sure meta-raspberrypi maintainers can confirm that
      their master branch handles pkg-config stuff now.<br>
      <br>
      Thanks advance for having a look on this guys,<br>
      Best Regards<br>
      <br>
      <br>
      <div class="moz-cite-prefix">Le 19/04/2016 10:46, Julien Gueytat a
        écrit :<br>
      </div>
      <blockquote cite="mid:5715F053.8040801@jgueytat.fr" type="cite">
        <meta http-equiv="content-type" content="text/html;
          charset=windows-1252">
        Hi,<br>
        <br>
        I still can't figure out the patch to apply in meta-qt5 to get
        EGL support with the Raspberry.<br>
        <br>
        The test to check EGL does not pass and fails with the following
        command:<br>
        <br>
        arm-poky-linux-gnueabi-g++  -march=armv7-a -marm 
        -mthumb-interwork -mfloat-abi=hard -mfpu=neon-vfpv4
        -mtune=cortex-a7
        --sysroot=/home/jgueytat/projects/LightPixels/poky/build/tmp/sysroots/lightpixels



        -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-O1 -o egl
        egl.o   -lGLESv2 -lbcm_host -lvchostif -lvcos -lvchiq_arm
        -pthread -lEGL<br>
        <br>
        <br>
        Here is the content of the file egl.pro:<br>
        <br>
        $ cat egl.pro <br>
        SOURCES = egl.cpp<br>
        <br>
        for(p, QMAKE_LIBDIR_EGL) {<br>
            exists($$p):LIBS += -L$$p<br>
        }<br>
        <br>
        message("In egl.pro - 1: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")<br>
        message("In egl.pro - 1: LIBS = $$LIBS")<br>
        <br>
        !isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH += $$QMAKE_INCDIR_EGL<br>
        !isEmpty(QMAKE_LIBS_EGL): LIBS += $$QMAKE_LIBS_EGL<br>
        <br>
        message("In egl.pro - 2: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")<br>
        message("In egl.pro - 2: LIBS = $$LIBS")<br>
        <br>
        CONFIG -= qt<br>
        <br>
        In the main ./configure file of qtbase:<br>
        <br>
        | In configure #1: QMAKE_LIBS_EGL =<br>
        | In configure #2: QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host
        -lvchostif -lbcm_host -lvcos -lvchiq_arm -pthread<br>
        <br>
        The variable QMAKE_LIBS_EGL is set properly.<br>
        <br>
        <br>
        In the ./config.tests/qpa/egl/egl.pro file:<br>
        <br>
        | Project MESSAGE: In egl.pro - 1: QMAKE_LIBS_EGL = -lEGL<br>
        | Project MESSAGE: In egl.pro - 1: LIBS = -lEGL -lGLESv2
        -lbcm_host -lvchostif -lvcos -lvchiq_arm -pthread<br>
        | Project MESSAGE: In egl.pro - 2: QMAKE_LIBS_EGL = -lEGL<br>
        | Project MESSAGE: In egl.pro - 2: LIBS = -lEGL -lGLESv2
        -lbcm_host -lvchostif -lvcos -lvchiq_arm -pthread -lEGL<br>
        <br>
        <br>
        <b>What I see is that:</b><br>
        In the configure file the variable QMAKE_LIBS_EGL is properly
        set through pkg-config.<br>
        In the egl.pro file... The variable LIBS gets the content of
        QMAKE_LIBS_EGL and the variable QMAKE_LIBS_EGL gets back to its
        default -lEGL.<br>
        <br>
        In the end with have -lGLESv2 before -lEGL and this does not
        link.<br>
        <br>
        I checked also the content of .qmake.vars:<br>
        grep QMAKE_LIBS_EGL .qmake.vars <br>
        QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif -lbcm_host
        -lvcos -lvchiq_arm -pthread<br>
        <br>
        <br>
        The command QMakeVar set QMAKE_LIBS_EGL "$QMAKE_LIBS_EGL" seems
        to have his job done too late...<br>
        <br>
        If someone has an idea to get the proper correction done...<br>
        <br>
        Best Regards,<br>
        Julien<br>
        <br>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <br>
      </blockquote>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------050001050602030107090403--
