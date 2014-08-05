Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61E61E00799; Tue,  5 Aug 2014 05:16:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (atul.singh008[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2130AE004DD
	for <yocto@yoctoproject.org>; Tue,  5 Aug 2014 05:16:18 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id uq10so1050686igb.5
	for <yocto@yoctoproject.org>; Tue, 05 Aug 2014 05:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=4UwuxvmBGRlIab2NRHPXK2RHje2INUsx/1OP820DJA0=;
	b=StNKC4xV31FFdJJKMn7f9NGzfKbx4js94jA/Y+6fFNYkJLYpT6VY0EEzYuFt3q8Y5R
	Z6wbNgHy6zVF3lHy3SGV+B4bKTwRZaWXsBi4hA1QVxxVnTn4xAyRmdES//uOWhjsieWs
	QWTB8r5guKcVyUtPU3SrFXh1V246dPP52B3p8tJGvTOtly7IRmiBpQ1DCw5XLESU7hRz
	Exe8BSDMp6x2YPBf18aikj+s9KZ+GIVd3e/9AEZsJu6xn7j+RcDKzscA/osX/ZtKv4yU
	IBRmBo+Ibu0qNZBtfQ59UWhzyiMZZ00WZIsMfnyeLF5YvfFkPAOrYGUOCZ6grTyCT0vx
	u9zA==
MIME-Version: 1.0
X-Received: by 10.50.137.71 with SMTP id qg7mr6245057igb.24.1407240977964;
	Tue, 05 Aug 2014 05:16:17 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Tue, 5 Aug 2014 05:16:17 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Tue, 5 Aug 2014 05:16:17 -0700 (PDT)
In-Reply-To: <f74b086e24a64ee08bc068394971dcf0@HKNPR03MB354.apcprd03.prod.outlook.com>
References: <f74b086e24a64ee08bc068394971dcf0@HKNPR03MB354.apcprd03.prod.outlook.com>
Date: Tue, 5 Aug 2014 17:46:17 +0530
Message-ID: <CAH21_vHxtfJf2yzW_6faBFSQBk3UuWpXfv7C+h5MeJg8CUnUYQ@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: ncurses build error while configure
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
X-List-Received-Date: Tue, 05 Aug 2014 12:16:23 -0000
Content-Type: multipart/alternative; boundary=001a11c3c1969b2b8a04ffe0d26a

--001a11c3c1969b2b8a04ffe0d26a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,



I am building toolchain with bitbake meta-toolchain but while configuring
ncurses, it generate error as:-

checking which i686-pokysdk-mingw32-gcc
--sysroot=3D/home/atulk/yocto/poky-a5531a2b8983318b99c119a87b78a92cf84160b8=
/build-sdk/tmp/sysroots/i686-nativesdk-mingw32-pokysdk-mingw32
option to use... -fPIC

| configure: error: Shared libraries are not supported in this version

| Configure failed. The contents of all config.log files follows to aid
debugging

| ERROR: oe_runconf failed

I am using poky commit a5531a2b8983318b99c119a87b78a92cf84160b8 for
building, where ncurse version is 5.9.

My host environment is =E2=80=9CFedora release 20 (Heisenbug)=E2=80=9D.

Please help me if I am missing something.



Thanks and Regards,
Atul kumar Singh

--001a11c3c1969b2b8a04ffe0d26a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p>
<p>=C2=A0</p>
<p>I am building toolchain with bitbake meta-toolchain but while configurin=
g ncurses, it generate error as:-</p>
<p>checking which i686-pokysdk-mingw32-gcc=C2=A0 --sysroot=3D/home/atulk/yo=
cto/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-sdk/tmp/sysroots/i6=
86-nativesdk-mingw32-pokysdk-mingw32 option to use... -fPIC</p>
<p>| configure: error: Shared libraries are not supported in this version</=
p>
<p>| Configure failed. The contents of all config.log files follows to aid =
debugging</p>
<p>| ERROR: oe_runconf failed</p>
<p>I am using poky commit a5531a2b8983318b99c119a87b78a92cf84160b8 for buil=
ding, where ncurse version is 5.9.</p>
<p>My host environment is =E2=80=9CFedora release 20 (Heisenbug)=E2=80=9D.<=
/p>
<p>Please help me if I am missing something.</p>
<p>=C2=A0</p>
<p>Thanks and Regards,<br>
Atul kumar Singh</p>

--001a11c3c1969b2b8a04ffe0d26a--
