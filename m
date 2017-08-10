Return-Path: <y.yasar92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25E9BE00BAB; Thu, 10 Aug 2017 02:18:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (y.yasar92[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90E3BE00B77
	for <yocto@yoctoproject.org>; Thu, 10 Aug 2017 02:18:39 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id m85so14833094wma.0
	for <yocto@yoctoproject.org>; Thu, 10 Aug 2017 02:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=tmvQq2cAQHREVvo9n5bSYCMUNReWlGJryc4WVubLkK8=;
	b=HllUW3RiI/mSho2xYlh52fzQfXeXFiPfZzmY+x2fcQeHy6cbaS99xb9wKyC/jeOo3d
	XGTwxzu6ZLLL9lm4wcM6g1L1wmRqhBcAD7iOF8b6OQDf5E95dI93iw9gKJLf/2G9XXZH
	YZQxXiiXXzliXGOSWNODKdtPfYbOpzN66F9CEBUXewDYd1ns5858YE7mG93AVSvUG6dF
	MRhTI4wCR7LHKmp98K0alkhUO/sXyHgBf5TZSBbbcuYMHoo+b6odEbPW8kwWuvKIHqDO
	I+1/NYF051W59BEHIKppp+9GY0dYH0+sbCRwzwD4eGka8MeVwNWFL7/AFGifJmPS1Myj
	VvVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tmvQq2cAQHREVvo9n5bSYCMUNReWlGJryc4WVubLkK8=;
	b=BpDk1zTxCjXZas32shhFThHO8wnGCD+wKXsvanFSri40kd1OsbbM0iYAsptRE8r7kb
	FOFkKx45GCS/W2hp+VjPHjg/L6FaU+3Sl8SwkePfoY2rUwzmTOxXxwO7GJ4X4zJZ33yS
	pKM+GhUkAgq5zZNLOPqUAYK8VDQ6mhFyRXgVwofJ0800v43Tyqui0o4V5ipRSjLPMb1g
	5YFEfnr92fmmgRj3EZtfR2ydS4nKD9EYqgmeOCIMxSj9kuUOvbb1Gc9Ki+f3ZB2jpn/z
	RvS+XOxL2B7EVRcHc29jteHwM8CPppC6aF8MIiBPtEimGbnEkdcx5qujAmP21dTiyqjO
	maaw==
X-Gm-Message-State: AHYfb5ivc7RsbNj4e0kIpkt4awwwFW7/C3dwq2ucea+899LX8s2m9Gms
	kXNchrLYXOxgFDdXO/we5H7sbU53YE5733c=
X-Received: by 10.28.63.13 with SMTP id m13mr6503142wma.63.1502356718074; Thu,
	10 Aug 2017 02:18:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.131.17 with HTTP; Thu, 10 Aug 2017 02:18:37 -0700 (PDT)
From: =?UTF-8?B?WWnEn2l0IFlBxZ5BUg==?= <y.yasar92@gmail.com>
Date: Thu, 10 Aug 2017 12:18:37 +0300
Message-ID: <CAF=WmVwFi=rDRm0EjpoCEd2jsMcrf6wa43w6=D43ZYt-OJL5jA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_complie Error
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
X-List-Received-Date: Thu, 10 Aug 2017 09:18:40 -0000
Content-Type: multipart/alternative; boundary="001a114b741881c045055662ae52"

--001a114b741881c045055662ae52
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I new with Yocto, I tried to build poky for imxsabre board and I was
encounter a problem, here is the error messagge;

ERROR: Function failed: do_compile (log file located at
/home/systick/build/tmp/work/x86_64-linux/gmp-native/5.1.1-r0/temp/log.do_c=
ompile.21665)

ERROR: Task
1461(virtual:native:/home/systick/sources/poky/meta/recipes-support/gmp/
gmp_5.1.1.bb, do_compile) failed with exit code '1'

Is there anyone knows what is the problem ?
Thanks.
--=20
Yi=C4=9Fit YA=C5=9EAR

--001a114b741881c045055662ae52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I new with Yocto, I tried to bu=
ild poky for imxsabre board and I was encounter a problem, here is the erro=
r messagge;</div><div><br></div><div>ERROR: Function failed: do_compile (lo=
g file located at /home/systick/build/tmp/work/x86_64-linux/gmp-native/5.1.=
1-r0/temp/log.do_compile.21665)</div><div><br></div><div>ERROR: Task 1461(v=
irtual:native:/home/systick/sources/poky/meta/recipes-support/gmp/<a href=
=3D"http://gmp_5.1.1.bb">gmp_5.1.1.bb</a>, do_compile) failed with exit cod=
e &#39;1&#39;<br clear=3D"all"><div><br></div><div>Is there anyone knows wh=
at is the problem ?=C2=A0</div><div>Thanks.</div>-- <br><div class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Yi=C4=9Fit =
YA=C5=9EAR<div><br></div></div></div>
</div></div>

--001a114b741881c045055662ae52--
