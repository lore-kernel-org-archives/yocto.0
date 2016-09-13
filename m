Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0699DE00B30; Mon, 12 Sep 2016 18:25:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EBEAE00AB6
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 18:25:36 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id v13so3486341uav.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 18:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=azrL3SGgxbiHpaepTNFP+szyhq0yioO883aROd7d7AY=;
	b=X0e19c7NdIfVTQL/29IayeSkWkGcl8IbTA7ATHj9Ah6kqT5exrf6YPxJjHDyg2PsQ0
	snWesuzJrCLTDOr2bmWE9ka27RBd7mtydmAbNde8o23sSSN/E/MOwlAuyIekjHGD6xd0
	pfasu9Hki7EaNtVntnWuTYXgGQFE2ivl2DuV2TWHGVx1PEaHMw48C4B7DN+i+qzC8dKg
	H4OFS90ta0yfAGnirwgj82ZhLFfga9WcOfYmshr4M24/+nK1auMx6yc2giZldz0LydcW
	uxSCrdamXfX9U12UuYVLeacRonXeFYx4Jbb6/hhR5ODHa3UW8LQH0uemEc5vmZ/4XmfZ
	GvFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=azrL3SGgxbiHpaepTNFP+szyhq0yioO883aROd7d7AY=;
	b=JO7jIoOEusNbR0ZkL/fU0x4OTsUmLN+5y1ujj17Ojyc+USKME/TGC6ktZ6xyJSGV+X
	2Rbg2AadovzNmzxHw/zrRX1r8Y4MVOGHl7hetGUGm+SqYCzcj1M1i+Ghzq0Wq/rdaqN8
	EazDPUfrojyEp6D4qOgh9GsBKBZ18PwOCf59fdWLdmtx5BPenVFkGKPpv2S+0bZF2Jfu
	ITT5iTrEC6f9uO7axQMLGPfOMvsz8fjxzbLe6PDCoA9p7nIahTiqliCmrKoUuYkt7Nrf
	sLLlUVqkIwXFJgfyE8Mt/Ia9AfEhcWfPh2aztzoEjjs/gSO8HfD7gniMZ+g0pJmam+0k
	0jIQ==
X-Gm-Message-State: AE9vXwMm4CBaRD0O/QOKAPW2+7Isyd9ruHimd4Kt+a2cEpY015R+ft7GiiWbOmM3/J93/hWdzoobezQZObs5Dw==
X-Received: by 10.176.0.74 with SMTP id 68mr901931uai.11.1473729935543; Mon,
	12 Sep 2016 18:25:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.132 with HTTP; Mon, 12 Sep 2016 18:25:15 -0700 (PDT)
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Mon, 12 Sep 2016 18:25:15 -0700
Message-ID: <CAJ58UNkB-kvS=bcSKSe6h4RHhg-rOqqJy+c9URsYOfNzN-f58A@mail.gmail.com>
To: yoctoproject <yocto@yoctoproject.org>
Subject: Compilation error
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
X-List-Received-Date: Tue, 13 Sep 2016 01:25:37 -0000
Content-Type: multipart/alternative; boundary=001a113525fc4d9389053c597d5c

--001a113525fc4d9389053c597d5c
Content-Type: text/plain; charset=UTF-8

Hello All,

I am getting an compilation error like below. Can you pls let me know how
to fix this one. Thanks in advance.



 error: implicit declaration of function 'close'
[-Werror=implicit-function-declaration]
|             close(fd);

Cheers,
Vijay

--001a113525fc4d9389053c597d5c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I am getting an compilation =
error like below. Can you pls let me know how to fix this one. Thanks in ad=
vance.=C2=A0</div><div><br></div><div><br></div><div><br></div><div><div>=
=C2=A0error: implicit declaration of function &#39;close&#39; [-Werror=3Dim=
plicit-function-declaration]</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 close(fd);</div></div><div><br></div><div>Cheers,</div><div>Vijay</=
div></div>

--001a113525fc4d9389053c597d5c--
