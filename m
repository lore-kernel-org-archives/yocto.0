Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFBC8E00C9B; Thu, 25 Feb 2016 05:45:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97B6EE00C87
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 05:45:35 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id 9so82886770iom.1
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 05:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=/HVS3EqoE1J/5YfuZiXOMfb1L3WaZb0Jpx6Mwl7fMpU=;
	b=P9JTN9mOR+c/wVtol5FeOSWGv+PdZx8jM9EwaDcppHIfxhLyYVmLsoc+jpVw/4RULa
	PhVOd/POrZDKtKnmjWqYCPqiJ9wz1BB6RPmZyIBEFBjCWBn8FtQfSWn+cZJaunAqfilb
	PLbL+Vdu/Wf++o3Yew8eAR6rz+xBQEs3RgXHlMOHQMxWy4cOJXWmrcHRlC1QB3UtKq5V
	pq/ADtAwdPyrj7G/gqT9hAPRcLNEsf1+5qEJGbSgU4Mn7Z/J9eVx3RaxekgYGS5XUUF3
	dhT5yAu9JbZ2lVedEt/6oROyeQmLv1KKh2lGN6PedL3987SvDnbyGdiuM8FtLodW/zmy
	SpVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=/HVS3EqoE1J/5YfuZiXOMfb1L3WaZb0Jpx6Mwl7fMpU=;
	b=GqfypK57vPvfbQTDmIxcYA72VPppmfx2I2KQWgk5XovGuUqxPXHW8GPFgcz1ggAqDq
	Cu95tkONpRHUQFzB2CyIKXi7o7W2jvo54FEdW1aUwd6yZ76T/MXKjZbTVRHfXx9NOlEu
	gy/zjChdSeobj/7DiEJ0Z+WPzbnGuaXfSZiwTxDXXkF2+0Q1KZe3pns+K0zhm8owM8Xb
	QZQ6zcE1Kg6CkIOHxxeS14XHHYeQxxfgJHbE379VTMEiMsbLP8y50KzOhpz6g53V6Bws
	YfIppOSzCJAGcVlwITJmIA2FaJqRibLOS8usCYzuGCxUlq3xxoc32hdCBi2FEiZ8gaMU
	wTGA==
X-Gm-Message-State: AG10YOSt9XWpRPXx48eVDw8l/PTgtdPV63fCJScMWUb4/JaJrdQzmqevDsZzlHT5vGYYXx8uP0CmWH1X0a8YDg==
MIME-Version: 1.0
X-Received: by 10.107.39.135 with SMTP id n129mr3033178ion.153.1456407935593; 
	Thu, 25 Feb 2016 05:45:35 -0800 (PST)
Received: by 10.64.195.134 with HTTP; Thu, 25 Feb 2016 05:45:35 -0800 (PST)
Date: Thu, 25 Feb 2016 19:15:35 +0530
Message-ID: <CAE_REAud2o+A+HsxieiDSGB8GQT3+M7h8yfSBK9NLPTm2RERkA@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Package generates RPM with lib${PN} - how to include in SDK
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
X-List-Received-Date: Thu, 25 Feb 2016 13:45:39 -0000
Content-Type: multipart/alternative; boundary=001a1140f3faa6333d052c9865b1

--001a1140f3faa6333d052c9865b1
Content-Type: text/plain; charset=UTF-8

Hi Team,

I have one package X and recipe as X.bb, which generates RPM as
lib${X}-*.rpm

If I want this package as part of my SDK, what entry should i write in
meta-toolchain.bb file:

I tried adding "nativesdk-X" in meta-toolchain, but everytime it fails with:
ERROR: nativesdk-X not found in the base feeds (x86_64-nativesdk noarch any
all).

This is because RPM generates with the name libX-*.rpm.

Regards,
Gaurang Shastri

--001a1140f3faa6333d052c9865b1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi Team,<br><br></div>I have=
 one package X and recipe as X.bb, which generates RPM as lib${X}-*.rpm<br>=
<br></div>If I want this package as part of my SDK, what entry should i wri=
te in <a href=3D"http://meta-toolchain.bb">meta-toolchain.bb</a> file:<br><=
br></div>I tried adding &quot;nativesdk-X&quot; in meta-toolchain, but ever=
ytime it fails with:<br>ERROR: nativesdk-X not found in the base feeds (x86=
_64-nativesdk noarch any all).<br><br></div>This is because RPM generates w=
ith the name libX-*.rpm.<br><br></div>Regards,<br></div>Gaurang Shastri<br>=
</div>

--001a1140f3faa6333d052c9865b1--
