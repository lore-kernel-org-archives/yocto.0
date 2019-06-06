Return-Path: <pierluigi.greto@bisdn.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE855E00D7E; Thu,  6 Jun 2019 06:37:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx.bisdn.de (mx.bisdn.de [185.27.182.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96D1FE00D74
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 06:37:38 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.16.251.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx.bisdn.de (Postfix) with ESMTPSA id 31F6CA46B9
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 15:37:37 +0200 (CEST)
From: Pierluigi Greto <pierluigi.greto@bisdn.de>
To: yocto@yoctoproject.org
Message-ID: <421b2493-0fe5-c286-bf96-e6888264806a@bisdn.de>
Date: Thu, 6 Jun 2019 15:37:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
Subject: arm yocto-linux custom defconfig not working
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
X-List-Received-Date: Thu, 06 Jun 2019 13:37:39 -0000
Content-Type: multipart/alternative;
	boundary="------------B2AD6DBEA29732F470DBC4FE"
Content-Language: en-US

--------------B2AD6DBEA29732F470DBC4FE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I have to create a custom 4.14.49 linux kernel. In my recipe I have 
added my defconfig 
<https://github.com/opencomputeproject/OpenNetworkLinux/blob/master/packages/base/any/kernels/4.14-lts/configs/armel-iproc-all/armel-iproc-all.config>, 
but yocto it's not taking in consideration the defconfig. Instead it's 
building the kernel using the default values. Also the compilation task 
is to fast for building the kernel. My target system is an arm 
architecture (DEFAULTTUNE ?= "cortexa9").
I have tried also to append this on my recipe but the result does not 
change:

do_compile_prepend() {
      cp ${WORKDIR}/defconfig ${B}/defconfig
      cp ${WORKDIR}/defconfig ${B}/.config
      oe_runmake -C ${B} ARCH=${ARCH} ${S}/defconfig
}

If i try to "cheat" and add cp ${WORKDIR}/defconfig ${S}/.config on the 
do_compile_prependobviously make will not work: "kernel-source is not 
clean, please run 'make mrprop' ".

Any suggestions is very welcome.

Thank you,
Pierluigi


--------------B2AD6DBEA29732F470DBC4FE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p>I have to create a custom 4.14.49 linux kernel. In my recipe I
      have added my <a moz-do-not-send="true"
href="https://github.com/opencomputeproject/OpenNetworkLinux/blob/master/packages/base/any/kernels/4.14-lts/configs/armel-iproc-all/armel-iproc-all.config">defconfig</a>,
      but yocto it's not taking in consideration the defconfig. Instead
      it's building the kernel using the default values. Also the
      compilation task is to fast for building the kernel. My target
      system is an arm architecture (<font size="-1">DEFAULTTUNE ?=
        "cortexa9"</font>).<br>
      I have tried also to append this on my recipe but the result does
      not change:</p>
    <p><font size="-1">do_compile_prepend() {<br>
             cp ${WORKDIR}/defconfig ${B}/defconfig<br>
             cp ${WORKDIR}/defconfig ${B}/.config<br>
             oe_runmake -C ${B} ARCH=${ARCH} ${S}/defconfig<br>
        }</font><br>
    </p>
    <p>If i try to "cheat" and add <font size="-1">cp
        ${WORKDIR}/defconfig ${S}/.config</font> on the <font size="-1">do_compile_prepend</font><font
        size="-1"> </font>obviously make will not work: "<font
        size="-1">kernel-source is not clean, please run 'make mrprop'</font>
      ".<br>
    </p>
    <p>Any suggestions is very welcome.</p>
    <p>Thank you,<br>
      Pierluigi<br>
    </p>
  </body>
</html>

--------------B2AD6DBEA29732F470DBC4FE--
