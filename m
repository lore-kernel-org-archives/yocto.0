Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DA05E00D74; Thu,  6 Jun 2019 01:02:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0539E00D4E
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 01:02:45 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id i21so1097826ljj.3
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 01:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=f8pnpG15qi/TMP6/cXQGli1KnCivCsov0LsJ9Q414+Y=;
	b=bdk13qbvsYx2kjD+6NszypxEqHf166vBY8gT8a3JOEOhCSOF3M2q5iyZcrqaLYuQZz
	Edo2s/95T9ySxpNDDanrIuMFywjPfZpyXVVpXG66zlDmUX+Y3M2I4BrzA1+1lPUPqkv5
	kuS39O3PeJepDxOOmaIP8oMUgrpGJhRB0KqwhQPcH37ZmiJxGBdaHSHYUpaJqe5biECn
	6juM7A/pTHijCHi8gWblBsSiuHFmgzUXhgOrzD7X996VKqAJK5dyO5YDZfSSeemFOlSp
	LuV2qAt1hCsiR2wGEK3Jx8GoUK1Q52zicPnhd+w7V8RTWBN7Ysu8ob3iz9HYeE6SkNV8
	ESTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=f8pnpG15qi/TMP6/cXQGli1KnCivCsov0LsJ9Q414+Y=;
	b=BPbkNiuyi/7TJVaDvjAA9jKDbABvq64tHA1KnyQe/zcPKOEtHKFYdGjQe3hsou7oRk
	f6Zu14ZyMtcXllKpjGv8w5v6mDeSebTrqqdoSeOLv4ZpjoPNbkWi62oYMV+0TBWtLW2I
	mgOqvXA++HXzBvFz+oK5wGrP68z+urxyqlgGZp0VPkv6XLYfO4N+U88h5Qnkv047GIUQ
	oIJWxauO3O+uYBhaB9/9gebTPH8ePY3yOLwRFIJAsPaawO6AdHG58+/0CtOYD6opTX+R
	oQjeT+LAy+ijYM7Az2KLseQY9keO4qBUV7uX2t35wzPwilHP8Bb0SoR4LQJDmJ+hvUSx
	4DMA==
X-Gm-Message-State: APjAAAUEynbdTYptsEhqHS2CCJRl56Z2RJVFCAzqd+tUOB8a6YyGcvrf
	p1WJ7Gl+k6UG/1jvXkkDOuJx2iWtQRLaf1u9265fyYiVfHQ=
X-Google-Smtp-Source: APXvYqxNH2HqGL1pz43TXaj1ZN8R6KczFRYc1dWYcCPo2dzeQabtEyh/VB69ZTuL8S1+0MYyc5oG7A72BciGFuvy7h4=
X-Received: by 2002:a2e:9d43:: with SMTP id y3mr22559157ljj.154.1559808164203; 
	Thu, 06 Jun 2019 01:02:44 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Thu, 6 Jun 2019 10:02:32 +0200
Message-ID: <CAEhQi8m3pJtUMMzSH0enBmLz5=x4CYnvV3LW-1W8BHJdMDGR_w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to set PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Thu, 06 Jun 2019 08:02:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am facing an issue described here
https://lists.yoctoproject.org/pipermail/yocto/2019-June/045565.html.
I have come to the conclusion that I need to add armv7ahf-neon-mx8mm
to PACKAGE_EXTRA_ARCHS but it is not obvious how to do that based on
what is stated in the reference manual
https://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#var-PACKAG=
E_EXTRA_ARCHS,
at least not for me. I have gone through the existing usage of the
PACKAGE_EXTRA_ARCHS in poky but in there it is always used in
combination with tune so for example

PACKAGE_EXTRA_ARCHS_tune-armv7atb-neon  =3D
"${PACKAGE_EXTRA_ARCHS_tune-armv7atb} armv7ab-neon armv7at2b-neon"

How can I make sure to get armv7ahf-neon-mx8mm added to the
PACKAGE_EXTRA_ARCHS variable and where should it be set local.conf,
machine configuration?

BR
M=C3=A5ns Zigher

