Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24AD2E00D67; Tue,  1 Oct 2019 06:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BB42E006D2
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 06:18:34 -0700 (PDT)
Received: from [10.0.3.82] ([213.213.6.58])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id 8DJY2100l1F741R01DJY0t; Tue, 01 Oct 2019 15:18:33 +0200
From: Mauro Ziliani <mauro@faresoftware.it>
To: yocto@yoctoproject.org
Message-ID: <7c6a6a6d-1d7b-db68-88c0-42675cdca855@faresoftware.it>
Date: Tue, 1 Oct 2019 15:18:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1569935913; bh=TdlQUZ8ZgahsBj1e6fO3pKuBikbSi8OUh3e1eW24l28=;
	h=From:Subject:To:Date:MIME-Version:Content-Type;
	b=AE/84Zt6Kf7VjQA2jTXMohh4Wl52zO0hMA0RSe7n6MG8o3CrWeRjXSkPpt8c1a4Tq
	gYP33OeC6XubpGDdORlVretVTQeJeiDLfhKtdSpuWM88sLdNxW4GM08QvUC2H6hdK1
	NkQjG7x5V1K7DQ4jO+/e4L5j6QaA7agv7aThj6U1t0SBXWukRgCCYt+AR6knLowVs0
	sRL57INdCzOqJvOsNfZFkpd6e46GuoNIVQe8agKGLMlRNeo2l3wsrMSQ6MCcoKWZkX
	xjk4eisuQMXMZvuhI6jmJCzcGpIqiyYHdi1z9dlvGWRQ5LR05iSZBgWyk2Ux9nM/xV
	XVCT1kNANEAmQ==
Subject: QtCreator, CMake, fsl-imx-x11 toolchain
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
X-List-Received-Date: Tue, 01 Oct 2019 13:18:37 -0000
Content-Type: multipart/alternative;
	boundary="------------498DD9B65C32F8C02C7089C3"
Content-Language: it

--------------498DD9B65C32F8C02C7089C3
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

Hi all.

Maybe this is a post I have already sent.

I'm working with

imx6dlsabresd,  yocto krogoth/jetro, QtCreator, 
fsl-imx-x11-glibc-meta-toolchan-qt4


I configured qtcreator with a kit for this tool chain using gcc g++ and 
from the meta-toolchain package.


If I try to run cmake to generate the project cmake fails because it 
cannot found /lib/ld-linux-armhf.so.3.

This file i in 
/opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/cortexa9fh-neon-poky-linux/lib


Cmake anche make try to find it in /lib


Why?


MZ



--------------498DD9B65C32F8C02C7089C3
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Hi all.</font></p>
    <p><font size="-1">Maybe this is a post I have already sent.</font></p>
    <p><font size="-1">I'm working with</font></p>
    <p><font size="-1">imx6dlsabresd,  yocto krogoth/jetro, QtCreator,
        fsl-imx-x11-glibc-meta-toolchan-qt4</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">I configured qtcreator with a kit for this tool
        chain using gcc g++ and from the meta-toolchain package.</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">If I try to run cmake to generate the project
        cmake fails because it cannot found /lib/ld-linux-armhf.so.3.</font></p>
    <p><font size="-1">This file i in
        /opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/cortexa9fh-neon-poky-linux/lib</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">Cmake anche make try to find it in /lib</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">Why?</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">MZ<br>
      </font></p>
    <p><font size="-1"><br>
      </font></p>
  </body>
</html>

--------------498DD9B65C32F8C02C7089C3--
