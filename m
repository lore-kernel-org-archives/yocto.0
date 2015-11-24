Return-Path: <Virgi200@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4287E00B2E; Tue, 24 Nov 2015 02:51:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY, RCVD_IN_DNSWL_LOW,
	XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (virgi200[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	*  2.0 XPRIO Has X-Priority header
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F82EE00457
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 02:50:59 -0800 (PST)
Received: from [217.5.143.100] by 3capp-gmx-bs33.server.lan (via HTTP); Tue,
	24 Nov 2015 11:50:57 +0100
MIME-Version: 1.0
Message-ID: <trinity-84c92155-f9b0-4ee6-9002-c16ed6594bdf-1448362257606@3capp-gmx-bs33>
From: "Virgilia  Eigner" <Virgi200@gmx.de>
To: yocto@yoctoproject.org
Date: Tue, 24 Nov 2015 11:50:57 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:PedyIJvOsnwsujuEZbZ7vUbKVVr07vHCSJN6D9aRvAl
	yKkr9XtWoYqMGez8bACKqppoV8PEXydaWSqfQM6Q1omkAbJQhg
	VzUXiECM+RIj7XF+VnDeGlMByaLOtLJdJ+WZTy0PWMV9OZE0CJ
	+G/UrJFjkB5j3ZF0wsXP1JkRSnGugvo5erobeRVcjyALYbmmya
	7tq2S/7SUcbugOFslPmBxpONYytNWA0Os9mF6tAqlHT/AlkKEh
	FWKEA9rqFMzHKyAVhwpPkbcybA7LANQvHoOm8zPSIWSxjmem0s 4M6jH8=
X-UI-Out-Filterresults: notjunk:1;V01:K0:gGL1c+HP0CM=:Hzbd9DYDjY8ki+J+5DIbyN
	HoHh9SAmv/wvTHUOUfLemm2+srm3oZKTaFvOH0q3rc8hz46lEOjsKSB96wisPzX557TpX8+tl
	UqWP99+pLnAnA+qgZhOlkIf9fLLah1bzQTNHeRGVtU2X46ZPrpQs+FCKmSMfhnrbQtwDDHbAA
	ZSh2nLWoSDogFnb87mIHwWdEtSpKaDeUj0hokJ88v/2rd3Gk4xRJyKpLstWXCqcpaeAWuRtFE
	Ztos/EX2DHgRQPO1tw2kBYLVO1NN8+yIy6Gip+Siux8/fcVSCIMcSypUWpCbXi/fnSp75+iUM
	Jcuou3SC1JZVGEDSVroTo+YhsRKNV4oNZ9gj1Y1iV3eZL47t2rz47s8IZ5mVYYsnvBMdE5OMW
	0U3JW68Ath1f5bPqwjAtzwMLB1aBulv8yuMCLek39uiEZk0a2iEz4lR/Toe4DEA7dBUYrHy9s
	xsFjcxBWZQ==
Subject: Toolchain
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
X-List-Received-Date: Tue, 24 Nov 2015 10:51:01 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>
<div>hi,<br/>
in my YOCTO project I seeking inspiration.<br/>
Now I&#39;m at a point where I am jumping from one to another error.<br/>
So before I will proceed, could you please check my listing.<br/>
Is it the right way, respectively correct direction?</div>

<div>&nbsp;</div>

<div>My approach<br/>
- working with poky/fido<br/>
- downloaded and integrated meta-sourcery-master (add External toolchain path and&nbsp;&nbsp;&nbsp;&nbsp; bblayers.conf)<br/>
- build my external toolchain crosstool-ng<br/>
- build up my own machineconfiguration layer(powerpc)</div>

<div>could you please let me know if this is the right way?<br/>
Do i have to add another recipe especially for the external toolchain?<br/>
If i have to, where should i place this recipe and which tasks should it perform?<br/>
Any examples?</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>best regards Virgilia</div>
</div></div></body></html>

