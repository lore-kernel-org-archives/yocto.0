Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E73CE00B9E; Tue, 24 Sep 2019 02:57:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ayoub.zaki[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
	[209.85.221.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37DEEE0049A
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 02:57:33 -0700 (PDT)
Received: by mail-vk1-f170.google.com with SMTP id 70so269008vkz.8
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 02:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=KjoMALbgCPBkYark1P5Y484WcXB5Xp3RFVKSu39xt+s=;
	b=UrZnn+zbA/rKiZc9di8dYdhQZpZ+7qCZ9zGwVES52n09jd12puturDErAc35M//qAR
	+QsaLQgaVwD+X5RVws8hLdxFDBSlW7OukLo3ARHQjFKgVci0ZeFLsWgda1ugvLxGVQXG
	R96eBS16CHdRGFrtReba+T2PyIA0XvhknBvTI0+I6pbOBIs3PFWM0kYalv4ZmX0XwhiT
	q68sK4IUp5yi6ePj88ZjVvzIC2VlD0YotjQsG8/ShI236gKzSnNglcpiW3Sd/I17i29x
	3yyxSyoxCtFxje1AQd9LuNuiNMaVKxS1Gz+LBYeKMYiMz+AS91GLykTLSZq1bPIYz+C5
	kFAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KjoMALbgCPBkYark1P5Y484WcXB5Xp3RFVKSu39xt+s=;
	b=BBFrw0LfQtn1lYrTaOjxfTFX5WIDVnpbSi0jHu9aIxyPUjvCXF5O2ruxHXruCsudu4
	n2BoGPk/OYX+NynI8vBQLfi8hq2GYMfkzxBQJpVBQ4CCawE5YhEF4geu2kpY3cvkE/OA
	Zlk7M20v77rtnKKzshHj1DUtj41ebFWGAmiswJJjINiHRbI/hRKh8iP0byotdVqxTCHP
	BOYxIV3ntWTc4O+zFxstlKzbs+gs0NN7rIAbUK3NHsVpfT+rbK1gqAsocd/qjD6fkGVs
	AaTqxE1dL2eca28NwXnwUgpNpjeUl3R0A9co7YD5LtEUTyxwp2+SNcJY3Yrheulg1mDi
	4JDw==
X-Gm-Message-State: APjAAAWYgwOmctnynJCfrUzkVxnDmF+MCj7zwx/FMm7nqRRWuB9MN74S
	J0lGzsCHDRx23UVaL8gCEn2obCKm2W/CPN7ICAUBvpjFhX4=
X-Google-Smtp-Source: APXvYqwtIkqVKrBVCA4z5uzYjKrYXdB0BUih+japTiqHKOkk8Sw4XUC1RTEBjYHVZoeYi6sO6UEllH6QZlesG8VecI0=
X-Received: by 2002:ac5:cc4a:: with SMTP id l10mr998031vkm.60.1569319052262;
	Tue, 24 Sep 2019 02:57:32 -0700 (PDT)
MIME-Version: 1.0
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Tue, 24 Sep 2019 11:57:21 +0200
Message-ID: <CA+-BmJaVhcqxFpWiTSPTA4zdyDqXHsABLa8P2kkztgzyZs9PMQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Warrior/ External Kernel Modules Build broken
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
X-List-Received-Date: Tue, 24 Sep 2019 09:57:35 -0000
Content-Type: multipart/alternative; boundary="000000000000a6426805934990ff"

--000000000000a6426805934990ff
Content-Type: text/plain; charset="UTF-8"

Hello,

The external kernel modules build is broken :

# bitbake hello-mod
| /bin/sh: scripts/basic/fixdep: No such file or directory
|
/opt/workspace/build/tmp/work-shared/imx6ul-scu/kernel-source/scripts/Makefile.build:332:
recipe for target
'/opt/workspace/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0/hello.o'
failed
| make[3]: ***
[/opt/workspace/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0/hello.o]
Error 127
| make[3]: *** Deleting file
'/opt/workspace/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0/hello.o'
|
/opt/workspace/build/tmp/work-shared/imx6ul-scu/kernel-source/Makefile:1535:
recipe for target
'_module_/opt/workspace/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0'
failed
| make[2]: ***
[_module_/opt/workspace/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0]
Error 2
| make[2]: Leaving directory
'/opt/workspace/build/tmp/work-shared/imx6ul-scu/kernel-build-artifacts'
| Makefile:146: recipe for target 'sub-make' failed
| make[1]: *** [sub-make] Error 2
| make[1]: Leaving directory
'/opt/workspace/build/tmp/work-shared/imx6ul-scu/kernel-source'
| Makefile:6: recipe for target 'all' failed
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING:
/opt/workspace/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0/temp/run.do_compile.14301:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_compile (log file is located at
/opt/workspace/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0/temp/log.do_compile.14301)
ERROR: Task
(/opt/workspace/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 1481 tasks of which 1473 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /opt/workspace/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb:
do_compile

BR

--000000000000a6426805934990ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>The external kernel m=
odules build is broken :</div><div><br></div><div># bitbake hello-mod</div>=
| /bin/sh: scripts/basic/fixdep: No such file or directory<br>| /opt/worksp=
ace/build/tmp/work-shared/imx6ul-scu/kernel-source/scripts/Makefile.build:3=
32: recipe for target &#39;/opt/workspace/build/tmp/work/imx6ul_scu-scu-lin=
ux-gnueabi/hello-mod/0.1-r0/hello.o&#39; failed<br>| make[3]: *** [/opt/wor=
kspace/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0/hello.o=
] Error 127<br>| make[3]: *** Deleting file &#39;/opt/workspace/build/tmp/w=
ork/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0/hello.o&#39;<br>| /opt/wo=
rkspace/build/tmp/work-shared/imx6ul-scu/kernel-source/Makefile:1535: recip=
e for target &#39;_module_/opt/workspace/build/tmp/work/imx6ul_scu-scu-linu=
x-gnueabi/hello-mod/0.1-r0&#39; failed<br>| make[2]: *** [_module_/opt/work=
space/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0] Error 2=
<br>| make[2]: Leaving directory &#39;/opt/workspace/build/tmp/work-shared/=
imx6ul-scu/kernel-build-artifacts&#39;<br>| Makefile:146: recipe for target=
 &#39;sub-make&#39; failed<br>| make[1]: *** [sub-make] Error 2<br>| make[1=
]: Leaving directory &#39;/opt/workspace/build/tmp/work-shared/imx6ul-scu/k=
ernel-source&#39;<br>| Makefile:6: recipe for target &#39;all&#39; failed<b=
r>| make: *** [all] Error 2<br>| ERROR: oe_runmake failed<br>| WARNING: /op=
t/workspace/build/tmp/work/imx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0/te=
mp/run.do_compile.14301:1 exit 1 from &#39;exit 1&#39;<br>| ERROR: Function=
 failed: do_compile (log file is located at /opt/workspace/build/tmp/work/i=
mx6ul_scu-scu-linux-gnueabi/hello-mod/0.1-r0/temp/log.do_compile.14301)<br>=
ERROR: Task (/opt/workspace/meta-skeleton/recipes-kernel/hello-mod/hello-mo=
d_0.1.bb:do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summa=
ry: Attempted 1481 tasks of which 1473 didn&#39;t need to be rerun and 1 fa=
iled.<br><br>Summary: 1 task failed:<br>=C2=A0 /opt/workspace/meta-skeleton=
/recipes-kernel/hello-mod/hello-mod_0.1.bb:do_compile<br><div><br></div><di=
v>BR</div></div>

--000000000000a6426805934990ff--
