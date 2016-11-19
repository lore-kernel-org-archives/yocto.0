Return-Path: <giorgos.migdos@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1451E00B6C; Sat, 19 Nov 2016 01:41:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (giorgos.migdos[at]gmail.com)
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
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45D36E00A7F
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 01:41:42 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id n204so295773740qke.2
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 01:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=MLSg2Jaj6LN7ssRmFj5qFOsmZzJ2gYRAJO7BqBJkrhw=;
	b=zjxmuveYKHGm1HDYCf0BnwzayspY36e7N0HZmscr8PiQnqW7m7eTO3VPvvm56FOJHU
	87NtMQ4bMiEITXq20BmGSd1v39sfu2POUdAN7dXWc02q71TzzUSf8fmWe5jZq/HkstKS
	x2BPamq4kVBzZ0MORLsNqn+oqZj8ggd7GL9AOyrwU1jO3DfaxgUkGU8sq354iVgnz7Sm
	csPIOnkhiOqWNu3m0ZgoGLK6W70Y9ixf/F4075G5Nj32VyHFOhZ5PHIQM8kCpb/41ej0
	M2ekzKdr+7k3M5KBdPuh/lDGPJzBnBpvopYgFcKAgqq91zMqUF3iLcmB8R7qRgstL/kP
	o23Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MLSg2Jaj6LN7ssRmFj5qFOsmZzJ2gYRAJO7BqBJkrhw=;
	b=JVpkFcAuTBgNz++YLC3f6U2vl8v3Pb0Oe7bJ3aBhMp6K9kHFjQd/vsmfvyfwoayrL1
	AQkXNf45DBZJrkGyG1PKnnWPt5hErdcNYQQsQIo9vPNsskYFS3sDQGAuhGAeyLm7u0Pv
	HKywdQ3ZTBKcPEiYR7DiNEbcTCZpAwvtmx5I89x/kSd6bbWw3wwl/mPH5bmrNXzHbQ5f
	8L1NXgogeeGOgP9um25Ms5aD6ltbeNo9+9q3rdNY1qV1I5tmWLIEvJHhBhuA95UMndww
	LF7xGN04M36ijRN3CaGBo0nNiJfajNEm853rlBXq3HY/EE6x8fUsdKhM5Bv4gDm++f7M
	UugQ==
X-Gm-Message-State: AKaTC01bIlSHAJJpGpJO1OtQ2jk83uZFWkLEQeytWw+3WV5PL9jLDCokjCxwyI3hNEq6u21Xs1weVmXj+WY1zA==
X-Received: by 10.55.3.2 with SMTP id 2mr5309952qkd.65.1479548502227; Sat, 19
	Nov 2016 01:41:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.57.225 with HTTP; Sat, 19 Nov 2016 01:41:41 -0800 (PST)
From: George Migdos <giorgos.migdos@gmail.com>
Date: Sat, 19 Nov 2016 11:41:41 +0200
Message-ID: <CA+Z_yWLCumQDsuzCLeqzQk244J=6z5Ztxc9JCkfYpGHm09rBSg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Building core-image-base for PPC64
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
X-List-Received-Date: Sat, 19 Nov 2016 09:41:46 -0000
Content-Type: multipart/alternative; boundary=001a114c9cc4e73f700541a43ab4

--001a114c9cc4e73f700541a43ab4
Content-Type: text/plain; charset=UTF-8

Hello,

I would like to build and run the core-image-base recipe for PPC64 using
Toaster on Linux Mint 18 64-bit (4.4.0-21-generic).

When using the Morty release I do not seem to be able to find a compatible
machine, whereas when using the current master HEAD (commit id:
7c3a47ed8965c3a3eb90a9a4678d5caedbba6337
<http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=7c3a47ed8965c3a3eb90a9a4678d5caedbba6337>)
there seems to be a QEmu ppc64 compatible machine (and the related qemu
layers) but the build fails during the parsing stage.

Is it at all possible to build and run core-image-base for an emulated
PPC64 system?

Thank you for your time.

--001a114c9cc4e73f700541a43ab4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br></div><div><br></div>I would like to b=
uild and run the core-image-base recipe for PPC64 using Toaster on Linux Mi=
nt 18 64-bit (4.4.0-21-generic).<br></div><div><br>When using the Morty rel=
ease I do not seem to be able to find a compatible machine, whereas when us=
ing the current master HEAD (commit id: <a href=3D"http://git.yoctoproject.=
org/cgit/cgit.cgi/poky/commit/?id=3D7c3a47ed8965c3a3eb90a9a4678d5caedbba633=
7">7c3a47ed8965c3a3eb90a9a4678d5caedbba6337</a>) there seems to be a QEmu p=
pc64 compatible machine (and the related qemu layers) but the build fails d=
uring the parsing stage.<br><br></div><div>Is it at all possible to build a=
nd run core-image-base for an emulated PPC64 system?<br><br></div><div>Than=
k you for your time.<br><br></div></div>

--001a114c9cc4e73f700541a43ab4--
