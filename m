Return-Path: <darsh.jp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 997FEE0086E; Fri, 13 Mar 2015 04:43:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (darsh.jp[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1408E00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 04:43:57 -0700 (PDT)
Received: by widfb4 with SMTP id fb4so11357537wid.0
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 04:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bL0IEMe2TlgJaIvKfkjifYTKWWP/C3V4NoGOYIvvzx8=;
	b=qnuTCNIp7B4MMQ8DQWRLCS07cumWgNM9RkEVtRSIVeD7vrdp85omVnLK82oXXvJ4eD
	+eQ7MUjrqubgI7886b5l44oOvjpz1uAoJmVkSVOPXI2XQ0o1GXfktjgpxFrpLbHBEmJs
	R5tyfvGMLrzVCaOjukYk/SvmvJlFmlUIQeK2QMBp+RIlGB/CajZE2ifbMl+35leNPgTf
	WJejULY6CTz7uJmcGuZyk3wcF9dBRpcW9O5ejHspi+IwWS5Z4pp6xWDUCgiC/1pZl5ZA
	f7/Y5jlHJynFH9tIb2BEmZ9g0uuY+Mdzp2PAYHfPNGoWLEC7lol9nJ0C2wd3TqhvzBJI
	jvgA==
MIME-Version: 1.0
X-Received: by 10.194.60.77 with SMTP id f13mr97424868wjr.105.1426247036338;
	Fri, 13 Mar 2015 04:43:56 -0700 (PDT)
Received: by 10.27.204.6 with HTTP; Fri, 13 Mar 2015 04:43:56 -0700 (PDT)
Date: Fri, 13 Mar 2015 17:13:56 +0530
Message-ID: <CAGKu3q+Ya040AHnfiRue03+OY9Yx4b4FXvPVYmgNLPCqMmDSxA@mail.gmail.com>
From: Darshan Patel <darsh.jp@gmail.com>
To: yocto@yoctoproject.org
Subject: Using Pre Built Toolchain in Yocto Tree
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
X-List-Received-Date: Fri, 13 Mar 2015 11:43:59 -0000
Content-Type: multipart/alternative; boundary=047d7b86db8af6865b05112a0383

--047d7b86db8af6865b05112a0383
Content-Type: text/plain; charset=ISO-8859-1

Is there a way to configure Yocto to use Pre Built toolchain (like
downloaded from CodeSourcery, etc.). I want to avoid building toolchain
because it takes too much time and using new toolchain is not of my concern.

I was using this feature in buildroot.

Thanks in Advance!!!

-- 
Regards
Darshan

--047d7b86db8af6865b05112a0383
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there a way to configure Yocto to use Pre Built toolcha=
in (like downloaded from CodeSourcery, etc.). I want to avoid building tool=
chain because it takes too much time and using new toolchain is not of my c=
oncern.<br><br>I was using this feature in buildroot.<br><br>Thanks in Adva=
nce!!!<div><br></div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"=
>Regards<br>Darshan</div></div>
</div>

--047d7b86db8af6865b05112a0383--
