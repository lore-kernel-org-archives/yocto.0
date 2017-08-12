Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF23FE00C7B; Sat, 12 Aug 2017 05:10:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F8B2E00C0A
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 05:10:37 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id m34so4685536iti.1
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 05:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JCz/WfM7rxQFSkGMC7cyvKAsuw5VQecA8b6TVp15voU=;
	b=YtVzOXF3A8Fg0pRHQLObJEgwjlZGpAY5HCr5EG4cTiJpy9qKUE92OTU1KYuQoZwxEf
	UADE8dpLKrm7k/YKkamZsVn0GloJcJXLtKxxhN/riu/85+3fxfNFooFNkxN8CV8DNyvd
	sMrNbVynrK5PzTKnImxNvmFOEUQS/9AqteCz9kkR1+4Tswnm2VQWFalV9785P05D07cy
	zGbO9qXxEIGXt1BuZamdbKRgNPCD0Gro+M1A+xWNPWGCHcXEVZYljxh5w2g7g6dARXxH
	vt8J3PxQyMxHwbwugnwqfHvdA9bJXphpvbakYs94r0VY99QgZ2OWnUQQuuLe4ZAHaw2m
	+dvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JCz/WfM7rxQFSkGMC7cyvKAsuw5VQecA8b6TVp15voU=;
	b=rvfHIVRicBk9YwHrceNXLA+gECvFTCIawqGtHy4s3KWHzFS9SutCIyi7W0ymRp+UGP
	dxaE21gg9udY8AVxIE9U/wDBQrcuPqeqsrs0kS+6mOxich4zeb0lP0eHVPzY7M2dxR9l
	Tk6DypaymxqO/IXCLryXhLeIYCui6iZu7XmGiti17ut1EMvPI/zunOz2ZMRQwYCOeUMu
	WQ0SQo3wQCBjTZr6+f0cNYBjuguQTu813GoMCs1HZol3LtX8aZv1huL7IP8lDQQ74ixb
	5uI52ATDA2XLcKJLQ3d5JciLdq1vTuQtX94GTwVUilaL4D2cs7Xl7PekcVUBWPBSc+bn
	YGUg==
X-Gm-Message-State: AHYfb5hNoc+fhGa6w3bKNkOmvkSfwdZHFP1bEnPqSCuTAw5IBPT2VyXy
	8Sp6bEsDkukggB6POUdtLaUCq1+zBMU5
X-Received: by 10.36.120.16 with SMTP id p16mr67127itc.151.1502539836663; Sat,
	12 Aug 2017 05:10:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.141.19 with HTTP; Sat, 12 Aug 2017 05:10:06 -0700 (PDT)
In-Reply-To: <CAGsrAHd6UirSR5A0pzG+wpYWvHSmzPbi13LwzFHRwz-Tkism1w@mail.gmail.com>
References: <CAGsrAHdDiWSc3U9TFZOEJUaYo8iwuR3KMOv1n3cUsAp-Zv-OoQ@mail.gmail.com>
	<CAHiDW_FD0gJLh34H+qEZA5aSH8Q1-5uhVUtykRVd0dFtUOAReQ@mail.gmail.com>
	<CAGsrAHd6UirSR5A0pzG+wpYWvHSmzPbi13LwzFHRwz-Tkism1w@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Sat, 12 Aug 2017 15:10:06 +0300
Message-ID: <CAHiDW_E0POkBdC2Ss9jeUNFrN=LFP0ygcqCkf0vvkaL7muDHgg@mail.gmail.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Errors while tring rpi-test-image for rpi3
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
X-List-Received-Date: Sat, 12 Aug 2017 12:10:38 -0000
Content-Type: multipart/alternative; boundary="001a114aad2a39c44505568d5160"

--001a114aad2a39c44505568d5160
Content-Type: text/plain; charset="UTF-8"

> ERROR: Nothing PROVIDES 'libav' (but
>
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/
omxplayer_git.bb
> DEPENDS on or otherwise requires it)
> ERROR: ffmpeg PROVIDES libav but was skipped: because it has a
> restricted license not whitelisted in LICENSE_FLAGS_WHITELIST

Searching the Yocto reference manual for this term will lead to
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#enabling-commercially-licensed-recipes
which should have the details you need to resolve the issue.

Jussi

--001a114aad2a39c44505568d5160
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; ERROR: Nothing PROVIDES &#39;libav&#39; (but<br>&gt; =
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplaye=
r/<a href=3D"http://omxplayer_git.bb">omxplayer_git.bb</a><br>&gt; DEPENDS =
on or otherwise requires it)<br>&gt; ERROR: ffmpeg PROVIDES libav but was s=
kipped: because it has a<br>&gt; restricted license not whitelisted in LICE=
NSE_FLAGS_WHITELIST<br><div><br></div><div>Searching the Yocto reference ma=
nual for this term will lead to <a href=3D"http://www.yoctoproject.org/docs=
/current/ref-manual/ref-manual.html#enabling-commercially-licensed-recipes"=
>http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#enabli=
ng-commercially-licensed-recipes</a> which should have the details you need=
 to resolve the issue.=C2=A0</div><div><br></div><div>Jussi</div></div>

--001a114aad2a39c44505568d5160--
