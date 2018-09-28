Return-Path: <akykumarkumhar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 059B6E00A9A; Thu, 27 Sep 2018 22:43:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akykumarkumhar[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C615E0090A
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 22:43:18 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id f4-v6so7088245edq.3
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 22:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=RRWZAMzuNv7SWhuV2V9UnDodKThOV9J4MhRQxB7fVII=;
	b=KZBjT34qgMJHLpYmpqwulUH2O8CxEfBKiUcaoa0SU0xPZC/cdbGbb/JukTJvtHHGYY
	OTGDUXBsS9qO80iaP09UxwjLh4UBKAec05JUPqltaznhRqVvvY0740mUGTxm4tb/CXFH
	X1OtcygfG43GFfjOrB8ZZn7KoZWxZr8S78Lm5bEb+dNC55LpbGIhiXD0uElU2BlRgkxm
	HVbCdsXWTo9C+E3HJZQ3RqEE8uWSU/x4jNlQK0rxhbgyQoXDKLyDpti2A7hzx7HcR0QZ
	KZRKJa6OOh6u7sbI0ZPME+P9ynnIRGA6rR6Rlpcmr0VgRmL7J1ozYBIIMr7jlZa64mAi
	lmPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RRWZAMzuNv7SWhuV2V9UnDodKThOV9J4MhRQxB7fVII=;
	b=oAPVPfpO3uNSkIRbkotsHkGT85+vobO1g96I9+2Xe6SC1dPWSgK/leFdT1VLwPI4+W
	qWtd6uzK4lZXnj3Eb8g5bW8RZaBfIsiiyra/bahRtqRI94ZzvUXAbdum+SR8U/eXyrvD
	i7lSvBaS7PnFyqHfnnIFDHni1RYIH8KVGObmAPC2noiDX2Rf01D0ARbx3oNaRcIlcBaN
	LTRTea2HYhBQNf88mI65IMDc11m5X5I4yvAajOibSmh0iFMK2vZRzEXqtdrXYe7Pcvso
	0luf0q5Uqh0zXuWi2ayzwoP7AToEHAGrMMH8NIcRXrEURIan59awGDksT8ebF6vIgBti
	z/RA==
X-Gm-Message-State: ABuFfogGb8001YC1iGyDCv8JCXCwD6W84Zc488jNeZK4q35rTuJPbgOL
	FX+IUMnwLzPO2BIAv6dk+SuCx84mQWlGPNXYaoLICw==
X-Google-Smtp-Source: ACcGV60o4gro2KdJmEHmdWieadc9scOVKIepClB00WrqWueygy5HzaXihB5GpfnXHfvnL1wspjaQjKDKEBfHN0dmpzw=
X-Received: by 2002:a17:906:6ad4:: with SMTP id
	q20-v6mr782385ejs.235.1538113397426; 
	Thu, 27 Sep 2018 22:43:17 -0700 (PDT)
MIME-Version: 1.0
From: Akshay Kumar <akykumarkumhar@gmail.com>
Date: Fri, 28 Sep 2018 11:13:06 +0530
Message-ID: <CACnLeH9TBz8-h1E9FAtGKv3TgHXz1sDRYNrZWAwOAnVv47revw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 27 Sep 2018 23:41:40 -0700
Subject: Build
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
X-List-Received-Date: Fri, 28 Sep 2018 05:43:19 -0000
Content-Type: multipart/alternative; boundary="000000000000ad8ff60576e7ee2a"

--000000000000ad8ff60576e7ee2a
Content-Type: text/plain; charset="UTF-8"

Hi team,

I am complete new to yocto, for one project I have complied a c++ file
using gtest framework and now I want to use the executable in my qemu can
you please help me over internet I am getting too confused.
Please reply ASAP.
Thanks

--000000000000ad8ff60576e7ee2a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi team,<div dir=3D"auto"><br></div><div dir=3D"auto">I a=
m complete new to yocto, for one project I have complied a c++ file using g=
test framework and now I want to use the executable in my qemu can you plea=
se help me over internet I am getting too confused.</div><div dir=3D"auto">=
Please reply ASAP.</div><div dir=3D"auto">Thanks</div></div>

--000000000000ad8ff60576e7ee2a--
