Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8129E00D75; Tue,  2 Jul 2019 07:48:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B6DAE00C43
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 07:48:35 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id u13so37656497iop.0
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 07:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=xM1p/TNNRy6UQ7btB9DdnPRU3U2BJ13n5mT5s6r+yuE=;
	b=vQFDXQT4xNT6W8wpnwBXbjEzDMe8jqrF0bRUaz1ZSQ/EEdOKbvNyCFcJ6cBdODmKSQ
	9KUKLgiIWVPjwy3pmCpVAI1cONm7EDOsAVjQ5tFuEZaThPLuf9C5t78F3uoe4E+H5Aeq
	+kXhyeqO8Q2hbPp6F1rI3gDukr9nShHNBqCGdBPHDHZXarhmE2KCLEW/m5tGg72N3QYE
	lfG9oOVD4UH178O/LWTzfS92LNml6t7haNKNgDOYHsO6K8EqVvmF2tsNRT+vw4sggRG/
	9vp2N2mI/QI7bgtlQNbmKSZp1KHiKCAxvrtlPWVIruyxQSABI2ljegKU9XOIzCq2oqqH
	dMHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=xM1p/TNNRy6UQ7btB9DdnPRU3U2BJ13n5mT5s6r+yuE=;
	b=Tv93InbA2Kz8Qe6BLYUm0tCsUBYhMnnZz07y1rKZx0neNtusFrKsJaBCVQmjabnd7v
	RDamSdX/RwF184F3KzRiM0YD8enkWO4tXAY5Y3AT0hejpfWiu2tefQ+xDL/BHCSwRBUm
	7MCs9fDrTuF/8w4o5fBdvD2TawCj4isuqEuvk+BkG9YS+/mYQyefRzdQBFpnY/bFBPqB
	iyqRTVCnpXdhboHCdaokBU+JLBXHAopdfH5DxqU7boXq2gfR9SF56x830wSszSm3WTHn
	PvRRrR0LiNTKef+UbSeOx/u1BuiAH02hta9fMWkJtcjQ7opLv9eLR/2Rgy1lGV15reR+
	7baQ==
X-Gm-Message-State: APjAAAX2fwecf7UrwFNhWxbMRLsrXG0d/ysAFzWabveGRsb74UaEk/3f
	0epJ+BA9STn+Eb69c6BXakpnujwhXtw5mSPida5kWUe0xI0=
X-Google-Smtp-Source: APXvYqz+x2sW917bdS5869+Xco7xCQryjsWpA5Y/MQEz8UFKo0itGZinXzaoDfrXYutbYGm/NmHoH09uDFLu7TjoZPc=
X-Received: by 2002:a02:914c:: with SMTP id b12mr36918997jag.105.1562078914437;
	Tue, 02 Jul 2019 07:48:34 -0700 (PDT)
MIME-Version: 1.0
From: Onur Eser <onureser12@gmail.com>
Date: Tue, 2 Jul 2019 17:48:23 +0300
Message-ID: <CAG+Ob8YPP5=7hH0eE2iuUOJsPmBKuQds2SfX+PyZViaWfo0R5w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Anyone built Yocto with Qt5 layer for imx6?
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
X-List-Received-Date: Tue, 02 Jul 2019 14:48:35 -0000
Content-Type: multipart/alternative; boundary="000000000000ce6dea058cb3d6cd"

--000000000000ce6dea058cb3d6cd
Content-Type: text/plain; charset="UTF-8"

Hello, Yocto Community!
Trying to build Yocto with Qt5 layer for Humming Board 2. But I had almost
a billion of errors and I am so bored. Does anyone had it built? Can you
guys share some steps or configurations with me?
Thanks!
Onur

--000000000000ce6dea058cb3d6cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, Yocto Community!<br></div><div>Trying to build=
 Yocto with Qt5 layer for Humming Board 2. But I had almost a billion of er=
rors and I am so bored. Does anyone had it built? Can you guys share some s=
teps or configurations with me?</div><div>Thanks!</div><div>Onur<br></div><=
/div>

--000000000000ce6dea058cb3d6cd--
