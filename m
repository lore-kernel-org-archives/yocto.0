Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36EC2E0084A; Mon, 26 Jun 2017 12:21:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8583EE0048B
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 12:21:56 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id f127so4545532pgc.0
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 12:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=meWMRSy20l0u4ak7q+A7iUOsaQGeXYQFDLse3IlDlNA=;
	b=omubKC7ortLqWR0IYOnsk3KrH4cKPzgpBWVSR0kVKjfpUpAwUG+CV2TTalkFcZzVqZ
	WYysKw5NTQV0mX3AcunjB3BNDSsSzxb4OQLs5yyracYkkUTgWcKaVgzZ3+HBnQMDLLkd
	Z6dN0DGKzBWPcWxcb12BYNWdIMQg61EwipvQx1vof37tnlnLrURVhdZMZIUVCOw/bXqR
	oQLoCo8Gj/L7wkw6LVYHxsJX0ala1wka3w+zGR5VSyMqOtvZPBk6rVPRwAhKlfDWcIMK
	7YZjnCyGBaCSSTp/MRgMohoi8D6x/OK9BC4huCqgUkF8Q7IJ8VYhZZpg9ake6jDLnR4i
	IMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=meWMRSy20l0u4ak7q+A7iUOsaQGeXYQFDLse3IlDlNA=;
	b=kpJSML/m0Df6NKfcjPypUrdUt786OfcKq3F2fYHH7tIuDVt5pQtA5tgXZY4dBfXZoE
	QuBw3Xyc76ZxCHKD8J6X85Fm7VTVo5XVIPW5R5Ix6iH1VPdpvCVWXzogPy8sNRuO2ndq
	vS9F74McHhFBccu+Q+hIRFybcvqH3EYlixxoOVFyfLzOZj0gctCexE2sAsEKk+e4l7fy
	jl9+zmCfGchmwqofr0XC2cL1j6zRD4kAiie/VcCLjfPbG13lQ/IgfCA9ENcqY687wo4p
	jPyIdjvzIgjPXwpp9txOBWTrbJUMvZl347LHd52PrIH7jiChTklCgGOfr860ma2dAHBR
	oTZA==
X-Gm-Message-State: AKS2vOz85+rwn8I7mnQ7G3EhttINOqrmpol4xos7YRvZFWql4pCq1cgT
	YHqVYrWgIG2iKA1PeYQ=
X-Received: by 10.98.163.88 with SMTP id s85mr1572416pfe.217.1498504915241;
	Mon, 26 Jun 2017 12:21:55 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	189sm1233340pgj.67.2017.06.26.12.21.52 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Jun 2017 12:21:52 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <f1a19479-9b91-cf94-b19c-3d3cd59480e1@gmail.com>
Date: Mon, 26 Jun 2017 12:21:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: How can I add a library to my SDK
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
X-List-Received-Date: Mon, 26 Jun 2017 19:21:57 -0000
Content-Type: multipart/alternative;
	boundary="------------D8ED9C3CFE9C80C57BC2B3E1"
Content-Language: en-US

--------------D8ED9C3CFE9C80C57BC2B3E1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,


I've added zeromq to a build by adding the meta-iot-cloud layer. This 
adds zeromq to the target rootfs, but I can't get this added to the host 
rootfs when I create an sdk ( using bitbake -c populate_sdk 
core-image-minimal  ).


I've read about adding something like

*TOOLCHAIN_HOST_TASK_append = " zeromq"*

to my conf/local.conf, however, I only see error messages saying


NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: core-image-minimal-dev-1.0-r0 do_populate_sdk: zeromq not found 
in the feeds (x86_64-nativesdk noarch any all) in 
/media/build/morty/build/tmp/deploy/rpm.
ERROR: core-image-minimal-dev-1.0-r0 do_populate_sdk: This is often 
caused by an empty package declared in a recipe's PACKAGES variable. 
(Empty packages are not constructed unless ALLOW_EMPTY_<pkg> = '1' is used.)
ERROR: core-image-minimal-dev-1.0-r0 do_populate_sdk: Function failed: 
do_populate_sdk
ERROR: Logfile of failure stored in: 
/media/build/morty/build/tmp/work/nitrogen6x-fslc-linux-gnueabi/core-image-minimal-dev/1.0-r0/temp/log.do_populate_sdk.20519
ERROR: Task 
(/media/build/morty/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_populate_sdk) 
failed with exit code '1'


What is the approved way to add a library that was compiled for the 
target to the host  ?






--------------D8ED9C3CFE9C80C57BC2B3E1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">Hi,</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">I've added zeromq to a build by adding the
        meta-iot-cloud layer. This adds zeromq to the target rootfs, but
        I can't get this added to the host rootfs when I create an sdk (
        using bitbake -c populate_sdk core-image-minimal  ).<br>
      </font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">I've read about adding something like <br>
      </font></p>
    <p><b style="color: rgb(100, 100, 102); font-family: &quot;Source
        Sans Pro&quot;, sans-serif; font-size: 16px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        letter-spacing: normal; orphans: 2; text-align: left;
        text-indent: 0px; text-transform: none; white-space: normal;
        widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-style:
        initial; text-decoration-color: initial;">TOOLCHAIN_HOST_TASK_append
        = " zeromq"</b></p>
    <p><font face="Monaco">to my conf/local.conf, however, I only see
        error messages saying <br>
      </font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <font face="Monaco">NOTE: Executing SetScene Tasks<br>
      NOTE: Executing RunQueue Tasks<br>
      ERROR: core-image-minimal-dev-1.0-r0 do_populate_sdk: zeromq not
      found in the feeds (x86_64-nativesdk noarch any all) in
      /media/build/morty/build/tmp/deploy/rpm.<br>
      ERROR: core-image-minimal-dev-1.0-r0 do_populate_sdk: This is
      often caused by an empty package declared in a recipe's PACKAGES
      variable. (Empty packages are not constructed unless
      ALLOW_EMPTY_&lt;pkg&gt; = '1' is used.)<br>
      ERROR: core-image-minimal-dev-1.0-r0 do_populate_sdk: Function
      failed: do_populate_sdk<br>
      ERROR: Logfile of failure stored in:
/media/build/morty/build/tmp/work/nitrogen6x-fslc-linux-gnueabi/core-image-minimal-dev/1.0-r0/temp/log.do_populate_sdk.20519<br>
      ERROR: Task
(/media/build/morty/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_populate_sdk)
      failed with exit code '1'<br>
      <br>
      <br>
      What is the approved way to add a library that was compiled for
      the target to the host  ? <br>
      <br>
      <br>
      <br>
      <br>
      <br>
    </font>
  </body>
</html>

--------------D8ED9C3CFE9C80C57BC2B3E1--
