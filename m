Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9817EE00DA5; Mon, 15 Jan 2018 09:06:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40C39E008A4
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 09:06:38 -0800 (PST)
Received: by mail-ot0-f177.google.com with SMTP id 44so10318620otk.8
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 09:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4DpoWse5RrxPNsE1qinQR7aaG8Q7o+sDzXdUyzC37IQ=;
	b=DOOWAXruJknoqqCY0SrN2GS7MtRbo1TilgY6PBg1r8v/5QcKPoTxFVKe+GZ/FJDAgn
	MMSbK9dI1aNnCHH33rxCSs71SzKvA+AuBmriVir9b5ddLKcLVX3P6xT7VoZ1ggrblBtf
	OlXi5ACHk+/9c5BvHDfQt28ocsZQ7P7Ug7QSJwwUCvPAuFuXb2F4yjGA+Tdb8Dc94Blx
	DJ4/wxg8ZQYriwZ0vz2AvEFHxoBsNwt6OV635/LryfOu54Q5ONVpM9YdWo09Ic7xUqHP
	H9izls6g+aWBQ+qp0qcQ8pQwhsHOGb1v9ttbKGBU5pZQ00hywPZgBlByfPFP2GGeOPZA
	EFbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4DpoWse5RrxPNsE1qinQR7aaG8Q7o+sDzXdUyzC37IQ=;
	b=tZZkQqzwnuo1GmwPYVJrk3fr8ZFEMPbI0fSCCnm32n8u7P1+KvYK9yxL73V3SyQtrT
	IPcDHLmTdNR+fxyjgY+9djRGrH4n+Rsw/169sL83GojETvYo2zONhsW2hBHOp9fwXQmu
	oXbZCSub7txI9ckmwnSG7Nhcdvw4tFOmcnWxJvp+ibfrmu/h+szOdn3Wk8v/zwDPWvVE
	mcCvNCdus7ONNHIWdcg77VellBv8jaC5empx3bzrzqmPD5Z5ph32TWsHTV+fF3UKRRpb
	k9HGJhRmzixlcjk0g4qx6iwB8SYRLK8lVzlG9q/TZI1VkwvwMG0Dhk0zCEyOczaEbckE
	TsiQ==
X-Gm-Message-State: AKwxytdWv4cygtnT6MqyxUiiuxHtrO8v88Nzt0lU+/pbvRGGTDfOrIU9
	ozkPtzxJpWaAn9vxeQ7PR29SAqXdPw/YagnyKlyjDw==
X-Google-Smtp-Source: ACJfBotSsrDhbgHUP9C8Rgqk0UcLfM4zcgZKt+pugKryite1Nkc1CctojXa12GnDyrWz7Rut+qE2s6Zg39iAqaL8bek=
X-Received: by 10.157.80.170 with SMTP id b42mr8150265oth.305.1516035998005;
	Mon, 15 Jan 2018 09:06:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.4.33 with HTTP; Mon, 15 Jan 2018 09:06:37 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Mon, 15 Jan 2018 12:06:37 -0500
Message-ID: <CAE0QtjMS74TXxcKHV-2877kcnqSzKcw1hktGvecnAmJ6-1e+2w@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Yocto SDK: how to rebuild *.dtb? (fatal error: dt-bindings/gpio/gpio.h: No such file or directory)
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
X-List-Received-Date: Mon, 15 Jan 2018 17:06:39 -0000
Content-Type: multipart/alternative; boundary="f40304395ad820c36b0562d3a374"

--f40304395ad820c36b0562d3a374
Content-Type: text/plain; charset="UTF-8"

I installed yocto SDK for my beaglebone black.
But when I try to rebuild am335x-boneblack.dtb, I got error:

"arch/arm/boot/dts/am33xx.dtsi:11:10: fatal error:
dt-bindings/gpio/gpio.h: No such file or directory"

Any hint? Thanks!

Jerry

--f40304395ad820c36b0562d3a374
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre>I installed yocto SDK for my beaglebone black.<br>But=
 when I try to rebuild am335x-boneblack.dtb, I got error:<br><br>&quot;arch=
/arm/boot/dts/am33xx.dtsi:11:10: fatal error: dt-bindings/gpio/gpio.h: No s=
uch file or directory&quot;<br><br></pre><pre>Any hint? Thanks!<br></pre><p=
re>Jerry<br></pre></div>

--f40304395ad820c36b0562d3a374--
