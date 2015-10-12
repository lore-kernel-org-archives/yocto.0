Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DA16E00B5E; Mon, 12 Oct 2015 00:58:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1E90E00B45
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 00:57:59 -0700 (PDT)
Received: by igkz10 with SMTP id z10so41457212igk.1
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 00:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=jkv5gnxDKRJyyrCFTaoqeOyjobtWy0DbcAZ02Y/uyew=;
	b=H5e3C2cxYChsRIQ4AWmnqanOTPjAKX1OEtZmoWj/WKXSMGUXFiH3biYCCpZPrrxOIK
	8lvYkbsnNilI7hQnSRL4BD9PtuXlGC9+PJ39CMbnd9x4eL5AEoUmbmaGY1ZU46yRwKHr
	xPTTBwlgV3/RXGE9SqIIRlSwShVypYQ7JvG4bZeBiOI9dqIDxO67kpUynhJs6bz93dtU
	Qr1kCiwxU4DFY1a+hJzdF3cnJyHVrt12aoZuLP0azSRAraX9lFjOv24iFcUErBMcc1Mg
	bJT6feHhU7uoiTd3LSuYVwXqU6y7+xiM6xsXJBabVSZKOma48wXSLsY6bYPeG9g/ltPU
	Yd1Q==
MIME-Version: 1.0
X-Received: by 10.50.50.137 with SMTP id c9mr10053672igo.23.1444636678878;
	Mon, 12 Oct 2015 00:57:58 -0700 (PDT)
Received: by 10.107.43.148 with HTTP; Mon, 12 Oct 2015 00:57:58 -0700 (PDT)
Received: by 10.107.43.148 with HTTP; Mon, 12 Oct 2015 00:57:58 -0700 (PDT)
In-Reply-To: <CAH21_vFC5NEwgpWOtXsb1dURUnvFGPZiQB=59PNAWL=-0NphFA@mail.gmail.com>
References: <CAH21_vFPe9XChKr3VaGdwt+6Vscpux-ic3mWcgzB2qLXTdtRpA@mail.gmail.com>
	<CAH21_vFC5NEwgpWOtXsb1dURUnvFGPZiQB=59PNAWL=-0NphFA@mail.gmail.com>
Date: Mon, 12 Oct 2015 13:27:58 +0530
Message-ID: <CAH21_vH74c9-yzXiQjJmxgOPKvBvqta9RQDBcWrr1CfHK_r1ug@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: yocto@yoctoproject.org
Subject: Toolchain with debug support
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
X-List-Received-Date: Mon, 12 Oct 2015 07:58:02 -0000
Content-Type: multipart/alternative; boundary=047d7bdc07b212fbc50521e3b0be

--047d7bdc07b212fbc50521e3b0be
Content-Type: text/plain; charset=UTF-8

Hi All,

Can anyone please tell me how to build a meta toolchain with debug support
by setting CFLAGS to "-g -O0".

I tried adding this into gcc recipe but that didn't worked out for me as
another option I even tried adding CFLAGS_gcc = "-g -O0".
But no success, actually I wish to debug inside a function.

Thanks and regards,
Atul

--047d7bdc07b212fbc50521e3b0be
Content-Type: text/html; charset=UTF-8

<p dir="ltr">Hi All,</p>
<p dir="ltr">Can anyone please tell me how to build a meta toolchain with debug support by setting CFLAGS to &quot;-g -O0&quot;.</p>
<p dir="ltr">I tried adding this into gcc recipe but that didn&#39;t worked out for me as another option I even tried adding CFLAGS_gcc = &quot;-g -O0&quot;.<br>
But no success, actually I wish to debug inside a function.</p>
<p dir="ltr">Thanks and regards,<br>
Atul</p>

--047d7bdc07b212fbc50521e3b0be--
