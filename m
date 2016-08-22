Return-Path: <augiekim@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D661E00E46; Mon, 22 Aug 2016 09:03:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (augiekim[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84E75E006D8
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 09:03:31 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id f189so157432351oig.3
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 09:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=+IbqlKTw+FBipO6M1jWxuJig5CtstnIM4+VvehHQpT0=;
	b=aksg0uh23aMhuQF3jBEyxiB9XR+j4fQ9h5vdPX/MwWsObpNK+g8GNGlMHAaNhrBv2X
	ZpwkTmryIp3tkge+OAcc2yMY1KlkhXOf+UqgR+3i6dFKKqPrHz5LCQbD3Gq6aW21Wj4b
	ZT5xUI10sVVU9mSrrexObFHD0oJiOjlDFKy+pnR/JOYGkWboOHxc+u0jOkZODRogMobU
	gUjImp757hqkOGW0byFcjVWubNxFTEIIrD2zkYHMU5JmqcngVO5wvyoZtV8dyyI4P9pd
	S6z/2hMMhfJbau0ioCjqCsglE0qo8fx0qDxRTlFC/NCkDU3DUEZ6wOcBDwZF4pHqHhlN
	AzHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+IbqlKTw+FBipO6M1jWxuJig5CtstnIM4+VvehHQpT0=;
	b=g1B8bSdvHKSokCo1JsPcySctryz6KLS2pemcEDna6hv0jaagvcn1sA+Uw1b6uDTr+7
	UFSheYYCnI6nFixBYGaI+MO4CpKOhU/LAS2MZvql6DpEj6YKcO7/OH9N3uJjdBp4ldmy
	PEt0e1ifNHLr5ipIS9k07UBoi0HCxu6QEn313CWQY/zriw6JgLuqu7NkAwaUJV3+mT9N
	8AUQkuHkjXgpvbsWhq79hbJ4PnhftCGP01Y0z6Ko6mq2wWOzDmvMTHrpBtU/K3BDsYvK
	0uLWggrNMtVaT0ZOG2gfa6Mi/yR7BtY95BJai0bGJXYP6axG7SGSmfASUJVVHnKzBm/B
	mB7A==
X-Gm-Message-State: AEkoouuim+gVAzHK7mvqhtPaeEqII21fHc0WIHH62Zl0dQG5f1fr4ZRgrNXGIPKIe36RwrGV6qZOtv2Iw5HcYg==
X-Received: by 10.157.19.1 with SMTP id f1mr12404653ote.53.1471881809943; Mon,
	22 Aug 2016 09:03:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.222.68 with HTTP; Mon, 22 Aug 2016 09:03:29 -0700 (PDT)
From: Austin Kim <augiekim@gmail.com>
Date: Mon, 22 Aug 2016 09:03:29 -0700
Message-ID: <CACv_uOSffA56wuZwwH1sH+DhrLUqZp9kJt20_OSWG3qwTVJvwQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: meta-mingw with latest Yocto
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
X-List-Received-Date: Mon, 22 Aug 2016 16:03:32 -0000
Content-Type: multipart/alternative; boundary=001a1141f5346ee17c053aab30b1

--001a1141f5346ee17c053aab30b1
Content-Type: text/plain; charset=UTF-8

I'm having trouble to build my project with meta-mingw. It looks like the
current master branch is too old to build with Yocto 2.1. So I changed
little bit such as,

Changed file names
binutils-cross-canadian_2.25%.bbappend to
binutils-cross-canadian_2.26%.bbappend
gmp_6.0.0.bbappend to gmp_6.1.0.bbappend

Added a line at x86_64-mingw32.conf
PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial =
"nativesdk-mingw-w64-runtime"

Added BBCLASSEXTEND="nativesdk" for gdb, lttng, and liburcu

But I'm still facing errors.

configure: error: Configuration x86_64-pokysdk-mingw32 is unsupported.

When it builds
x86_64-nativesdk-mingw32-pokysdk-mingw32/nativesdk-gcc-runtime/5.3.0-r0

Anyone using meta-mingw on Yocto 2.1 resolved this issue?

p.s. - I'm using uclibc for the target image. Is this can be the reason of
the error?

Thanks,
*- Austin*

--001a1141f5346ee17c053aab30b1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m having trouble to build my project with meta-=
mingw. It looks like the current master branch is too old to build with Yoc=
to 2.1. So I changed little bit such as,</div><div><br></div><div>Changed f=
ile names</div><div>binutils-cross-canadian_2.25%.bbappend to binutils-cros=
s-canadian_2.26%.bbappend<br></div><div>gmp_6.0.0.bbappend to gmp_6.1.0.bba=
ppend<br></div><div><br></div><div>Added a line at x86_64-mingw32.conf</div=
><div>PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial =3D &q=
uot;nativesdk-mingw-w64-runtime&quot;<br></div><div><br></div><div>Added BB=
CLASSEXTEND=3D&quot;nativesdk&quot; for gdb, lttng, and liburcu</div><div><=
br></div><div>But I&#39;m still facing errors.</div><div><br></div><div>con=
figure: error: Configuration x86_64-pokysdk-mingw32 is unsupported.<br></di=
v><div><br></div><div>When it builds x86_64-nativesdk-mingw32-pokysdk-mingw=
32/nativesdk-gcc-runtime/5.3.0-r0</div><div><br></div><div>Anyone using met=
a-mingw on Yocto 2.1 resolved this issue?</div><div><br></div><div>p.s. - I=
&#39;m using uclibc for the target image. Is this can be the reason of the =
error?</div><div><br></div>Thanks,<br clear=3D"all"><div><div class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><b>- Austin</b></div></div>
</div>

--001a1141f5346ee17c053aab30b1--
