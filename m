Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A124CE00CAB; Sun,  3 Mar 2019 07:53:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.131 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd12131.aruba.it (smtpcmd12131.aruba.it [62.149.156.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CE86E00B5C
	for <yocto@yoctoproject.org>; Sun,  3 Mar 2019 07:53:40 -0800 (PST)
Received: from [192.168.24.108] ([79.2.65.198])
	by smtpcmd12.ad.aruba.it with bizsmtp
	id jTtf1z00B4GeqKz01TtfS4; Sun, 03 Mar 2019 16:53:39 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <f6fbfd5d-a9cd-c93c-c0fb-e9ecb5fab698@faresoftware.it>
Date: Sun, 3 Mar 2019 16:53:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1551628419; bh=M3TEPpZTsx5pZsowQBpATxWNXk7Ss51F93ff1EBVxzU=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=TMKk0jVQMd47kFEdDkUSLyfnEi63jYbrtu8qMUqjmIvOF6ik7BHEwOblYIleJjjOB
	Qp8/EmQ8PPiN7bznAJ1nLboQ5tA4i5HB5BOXTdar7gYQUHV+K3vKfQ8ccNNIrsdOka
	uEWtJeoMzRJ8AhhIisIB1aA2Erjkji8xTDYquUi+Sr7DBKli5qoJZ1Lr2adYWBT7si
	H0gXgzeY3SYqXoy8eKMjRV/bgu92HUYo2w3Z6lq9tM3iPSc388H7L/UN7UOJfgSfnF
	cLN43BpBttYea846SCB4Yfk0GnhyUGyoYLNZwj+Xpvdz/ZYfD+PuG4wMelbywDIL9E
	V2zeAid2sLMcA==
Subject: QtCreator +CMake + meta-toolchain-qt5
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
X-List-Received-Date: Sun, 03 Mar 2019 15:53:43 -0000
Content-Type: multipart/alternative;
	boundary="------------CD429F4F44F669172A191F24"
Content-Language: it

--------------CD429F4F44F669172A191F24
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

Hi all.

I'd like to use QtCreator to debug the directly in final system.

My project is generated with CMake, under Debian 9.7 amd64

I try every tutorial I found by the behaviour is always the same.

  /lib/ld-linux-armhf.so.3: No such file or directory

The entire log is the following.

----- START LOG -----

Running
"/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/cmake
/home/mauro/Sviluppo/myapp/src '-GCodeBlocks - Unix Makefiles'
-DCMAKE_BUILD_TYPE:STRING=Debug
-DCMAKE_CXX_COMPILER:STRING=/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
-DCMAKE_C_COMPILER:STRING=/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
-DCMAKE_PREFIX_PATH:STRING=/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr
-DQT_QMAKE_EXECUTABLE:STRING=/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/qt5/qmake"
in /home/mauro/Sviluppo/myapp/build-src-Qt5_IMX-Debug.

-- The C compiler identification is unknown

-- The CXX compiler identification is unknown

-- Check for working C compiler:
/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc

-- Check for working C compiler:
/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
-- broken

CMake Error at
/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/share/cmake-3.4/Modules/CMakeTestCCompiler.cmake:61
(message):

The C compiler

"/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc"

is not able to compile a simple test program.

It fails with the following output:

Change Dir:
/home/mauro/Sviluppo/myapp/build-src-Qt5_IMX-Debug/CMakeFiles/CMakeTmp

Run Build

Command:"/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/bin/make"

"cmTC_97b71/fast"

/lib/ld-linux-armhf.so.3: No such file or directory

CMake will not be able to correctly generate this project.

Call Stack (most recent call first):

CMakeLists.txt:12 (project)

-- Configuring incomplete, errors occurred!

See also
"/home/mauro/Sviluppo/myapp/build-src-Qt5_IMX-Debug/CMakeFiles/CMakeOutput.log".

See also
"/home/mauro/Sviluppo/myapp/build-src-Qt5_IMX-Debug/CMakeFiles/CMakeError.log".

*** cmake process exited with exit code 1.

----- END LOG -----

Any idea?


--------------CD429F4F44F669172A191F24
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi all.</p>
    <p>I'd like to use QtCreator to debug the directly in final system.</p>
    <p>My project is generated with CMake, under Debian 9.7 amd64</p>
    <p>
</p>
    <p>I try every tutorial I found by the behaviour is always the same.</p>
    <p>
</p>
    <p>
  /lib/ld-linux-armhf.so.3: No such file or directory</p>
    <p>
</p>
    <p>
</p>
    <p>The entire log is the following.</p>
    <p>----- START LOG -----
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Running "/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/cmake /home/mauro/Sviluppo/myapp/src '-GCodeBlocks - Unix Makefiles' -DCMAKE_BUILD_TYPE:STRING=Debug -DCMAKE_CXX_COMPILER:STRING=/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ -DCMAKE_C_COMPILER:STRING=/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc -DCMAKE_PREFIX_PATH:STRING=/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr -DQT_QMAKE_EXECUTABLE:STRING=/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/qt5/qmake" in /home/mauro/Sviluppo/myapp/build-src-Qt5_IMX-Debug.</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">-- The C compiler identification is unknown</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">-- The CXX compiler identification is unknown</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">-- Check for working C compiler: /opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">-- Check for working C compiler: /opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc -- broken</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">CMake Error at /opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/share/cmake-3.4/Modules/CMakeTestCCompiler.cmake:61 (message):</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  The C compiler</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  "/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc"</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  is not able to compile a simple test program.</p>
    <p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  It fails with the following output:</p>
    <p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">   Change Dir: /home/mauro/Sviluppo/myapp/build-src-Qt5_IMX-Debug/CMakeFiles/CMakeTmp</p>
    <p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  </p>
    <p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  Run Build</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><font color="#ff0000">  Command:"/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/bin/make"</font></p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  "cmTC_97b71/fast"</p>
    <p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  /lib/ld-linux-armhf.so.3: No such file or directory</p>
    <p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  </p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  CMake will not be able to correctly generate this project.</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Call Stack (most recent call first):</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">  CMakeLists.txt:12 (project)</p>
    <p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">-- Configuring incomplete, errors occurred!</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">See also "/home/mauro/Sviluppo/myapp/build-src-Qt5_IMX-Debug/CMakeFiles/CMakeOutput.log".</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">See also "/home/mauro/Sviluppo/myapp/build-src-Qt5_IMX-Debug/CMakeFiles/CMakeError.log".</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">*** cmake process exited with exit code 1.</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">----- END LOG -----</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Any idea?</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p><style type="text/css">
p, li { white-space: pre-wrap; }
</style></p>
  </body>
</html>

--------------CD429F4F44F669172A191F24--
