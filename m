Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42E2FE008FB; Sat, 17 Jan 2015 17:02:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ED36E0076F
	for <yocto@yoctoproject.org>; Sat, 17 Jan 2015 17:02:29 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id bs8so10197695wib.1
	for <yocto@yoctoproject.org>; Sat, 17 Jan 2015 17:02:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=U1LeqM5hwVTAUiNuFbdvBpTULuqddB8sBTS20IL/u0U=;
	b=ltAfzitMBwYu9vVyfra/d0G9txwyskN+maGnk9FgBA+o8emUeZRhwJTUjpNiFN9Swo
	aAAkkU8IMeMm351yfcLMecw+YkYtbAI8qhrrcu+5n3HYReg1O87jaQ89tmD9dKlrysIq
	8f1yrAUX1/oIjB68CnjRIWYzykZrWpyCg09fPijknB+jwM4FiOoTP9s8LuGR92xfsqsF
	hz2QOKSjNQJr5yIPKL6jIa/gc0/J9/4tv5tnSEIzOIMexV1oogMU09X/ExmF6vpeWaO0
	0/2zNETp94yZbXucrTTrynjJl1ReKou+5emZbxbxX4aFFmUrdi5grFzHEY/vAM8gzG2j
	UgMA==
X-Gm-Message-State: ALoCoQmxdZbzGXIcn53yV5Bd0hsK4CP976NrFm3dp8iamgdYkAjl4tdRPrOEjFhlFyeQCtYb2r/h
X-Received: by 10.194.92.235 with SMTP id cp11mr43249031wjb.112.1421542949187; 
	Sat, 17 Jan 2015 17:02:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sat, 17 Jan 2015 17:02:08 -0800 (PST)
X-Originating-IP: [109.100.140.128]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 18 Jan 2015 02:02:08 +0100
Message-ID: <CAK18fxFQRXRJioWfxZKO6Zwh=u2B21X3iX-Diz4h7Ms_jh-TFQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Benchmark layer available
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
X-List-Received-Date: Sun, 18 Jan 2015 01:02:38 -0000
Content-Type: multipart/alternative; boundary=047d7bd91ec2850979050ce2c255

--047d7bd91ec2850979050ce2c255
Content-Type: text/plain; charset=UTF-8

Hello guys,

Is there any benchmarking layer available? I was interested in LINPACK and
I think it would make sense to have a benchmarking layer which will include
stuff like: LINPACK, ioquake3, Whetstone etc.

Regards,

-- 
*Andrei Gherzan*

--047d7bd91ec2850979050ce2c255
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello guys,<div><br></div><div>Is there any benchmarking l=
ayer available? I was interested in=C2=A0LINPACK and I think it would make =
sense to have a benchmarking layer which will include stuff like:=C2=A0LINP=
ACK, ioquake3,=C2=A0Whetstone etc.</div><div><br></div><div>Regards,</div><=
div><div><br></div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><=
div style=3D"text-align:center"></div><div style=3D"text-align:center"><div=
 align=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,=
51,51);text-align:center">Andrei Gherzan</b><br></div></div></div></div>
</div></div>

--047d7bd91ec2850979050ce2c255--
