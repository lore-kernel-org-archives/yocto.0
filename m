Return-Path: <geonho@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 311E2E00C5F; Wed, 16 Jan 2019 16:38:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (geonho[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA1DAE00BF9
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 16:38:05 -0800 (PST)
Received: by mail-ot1-f44.google.com with SMTP id i20so9619877otl.0
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 16:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aq17ybu+HXn4PdKM2Eki1B6Gf2TcuA1GD8km64IC8fo=;
	b=b4xi4JfJVWQER41BYcl83P5j6c0HatblmnH8ODJ0+OQY/x6nHJQyHQojM3Wvlr1G0P
	UEbE9CG79Hl8Z6lStVO5bHF9/xYn5T2VpEN6aa4s0C8yZmR9F4rvwPxtL3h1YfftUA2m
	SH8p8Z8sQ1Qw0Ty3r+ouTimltzvMWY1GeJkRyYBqwj0i6LMmjiuTubY0dCqEzahGlRcQ
	ljSNGp28VEwQO9ELWZ9a099b1e1UQitmrOJgvdKEC9kQ7ZPkPhnssIIkNWwKGMr0bBIs
	Lf74ruatf59mOpBs9vyIpsf4W+YFTDrOipvh6bvaRoKySYJt27Qq7TS+83PQz2tIxCWP
	mfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aq17ybu+HXn4PdKM2Eki1B6Gf2TcuA1GD8km64IC8fo=;
	b=llytgj1ULUWGst+59eCSYGx4Pmq/glub8VawX8hQHNsvQAp08GKQvwZVvHsSCtJyKD
	JRyMWDXxgYRTf8GhNFv6jXo54IucAY2CSrSOOilmNXmUqBeuTJdUmaq0rZtqGEH2hypL
	jTDSM7G7OHwKzotFIKfkgKbGBqsx38GMuZx/re+Oj8y+ATOOuk7fAAneJNMPwJ5TMvs5
	H8q9zURHbt5DPY/KxJo4N0q0M9X5Tij95EGuyOKeFLW5tZ7YJYQU84E1jV0CNve+7fqw
	T6fEDd0KWxh+ifUb5mjqhHDLZcq8K325/JTFm7/tv8wbycICKAc5uNwFWt3bcY4eg9oB
	iFHw==
X-Gm-Message-State: AJcUukcimKC1BohR81mwlFWF7zRpvoe+XB+/FkMTRQoB6LFjWl4mTzdX
	pg8l7I9asWgs9MZe8+AzKPzkpkSQeZzW9pX9htfa1g==
X-Google-Smtp-Source: ALg8bN7V1JBXA25/NQ85vRug9K5QipKKIlefuv3HDF1T7Rq89hnATmwwBNTYnDwvFzi+6XlydC3MBfUd9ozDf0+HmRA=
X-Received: by 2002:a05:6830:1584:: with SMTP id
	i4mr6924507otr.116.1547685484659; 
	Wed, 16 Jan 2019 16:38:04 -0800 (PST)
MIME-Version: 1.0
From: Geonho Kim <geonho@gmail.com>
Date: Thu, 17 Jan 2019 09:37:53 +0900
Message-ID: <CAHXu0M42HiLoEkmAV0bV66fRYHf28s++rqhnagZtZWYpF7SfNQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [rocko] python3-pycario : Waf cannot unpacked
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
X-List-Received-Date: Thu, 17 Jan 2019 00:38:06 -0000
Content-Type: multipart/alternative; boundary="000000000000898880057f9c9bbe"

--000000000000898880057f9c9bbe
Content-Type: text/plain; charset="UTF-8"

Hi,

I have some build error.
Now, I have working on rocko release.
When I have built python3-pycairo, I met this error message

build_src/tmp/work/aarch64-poky-linux/python3-pycairo/1.10.0-r2/temp/log.do_configure.81617
Log data follows:
| DEBUG:Executing shell function do_configure
| sh :1: bunzip2: not found
| Error: Waf cannot be unpacked, check that bzip2 support is preset.
......

It seems that uninstalled bzip2 to host and sysroot-native area, but bzip2
was installed to
host pc and sysroot-native location.

Do you know how to fix this?

--000000000000898880057f9c9bbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr">=
Hi,=C2=A0<br></div><div dir=3D"ltr"><div><br></div><div>I have some build e=
rror.</div><div>Now, I have working on rocko release.=C2=A0</div><div>When =
I have built python3-pycairo, I met this error message</div><div><br></div>=
<div>build_src/tmp/work/aarch64-poky-linux/python3-pycairo/1.10.0-r2/temp/l=
og.do_configure.81617</div><div>Log data follows:</div><div>| DEBUG:Executi=
ng shell function do_configure</div><div>| sh :1: bunzip2: not found</div><=
div>| Error: Waf cannot be unpacked, check that bzip2 support is preset.</d=
iv><div>......</div><div><br></div><div>It seems that uninstalled bzip2 to =
host and sysroot-native area, but bzip2 was installed to</div><div>host pc =
and sysroot-native location.=C2=A0</div><div><br></div><div>Do you know how=
 to fix this?<br></div></div>
</div></div>

--000000000000898880057f9c9bbe--
