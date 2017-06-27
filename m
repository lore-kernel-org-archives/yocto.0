Return-Path: <prasoonkumar1295@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C47A1E0084A; Mon, 26 Jun 2017 23:09:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prasoonkumar1295[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4995BE00524
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 23:09:55 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id m84so10346351ita.0
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 23:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=P2zlaGQwLPSpv/jU/rp/HfZjGr9Nyvs0UEwoptpLXE4=;
	b=p4ZJXH/YpCCu6PDmor4uf07wTTZDgmzkQWIbYe/TVrH6KQ6PUUKCPV8LQtNQFTLnyv
	WTpVns/4VTxoy+Lz/htHXh0IMnETf52FaVieCA1re+dastqYX0+SuUwao5rNyXH4gCQW
	glsBU1QqXuSHEGCR22Sb5HYjb8JNdTslyRQJ3cHScu9uE0RadtpW8ZOzAsvCb1O+WEV4
	96vM+dJ7V+3ApMKmcHqAvLAjp2sgxfaRbR87Xd4vJ3OffTjq2U+LgW04YCi3EOEfnVQq
	gxuZMlfHTOg6XxsRbXKpBMWFE2uDwvEH9b+ky36Sd0SlxcSkd/rhl8Yx0+0wTJTEULTU
	6V+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=P2zlaGQwLPSpv/jU/rp/HfZjGr9Nyvs0UEwoptpLXE4=;
	b=LiyJYgruwNoqiyQGbKnn572+pAvYLmlsfqSk9oO2hEh2fqt/aR7k5AN7Y/rG2hih0O
	nJDPoZ1X0fCePIEb2+jczhd6k6Ri5O3/MIIxfjQjhxdZt1vm9uakb/WlCFXHrXKuYEpX
	tN+RITaA/pTG/TGLDWvrUqtyQSAikyOWQ/YmLJMnILudkbfo4GvuTJSP+wbwbtUWGKuQ
	C1kRMuML23xEROS9GUWZZ7OmwvMmiM1HWN4u+7GJ0Nwr4JytQLEBCzKsw2y7uPgr6P0b
	q6dYuo9KNJYx1LdBMz5mxOSmJWDwd2c83c22G9ltV012eAnZUE1vT2WTN5yfg+ifjkV9
	NL1A==
X-Gm-Message-State: AKS2vOzn9YdjYxdcgGprZO4F98To8rSesjitoKWgJuiHzXiTYrNegpZm
	Zi3HQ8K2778IyPcUHa4tdHy7pxD+oQ==
X-Received: by 10.36.245.129 with SMTP id k123mr1165496ith.1.1498543794915;
	Mon, 26 Jun 2017 23:09:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.122.133 with HTTP; Mon, 26 Jun 2017 23:09:54 -0700 (PDT)
Received: by 10.79.122.133 with HTTP; Mon, 26 Jun 2017 23:09:54 -0700 (PDT)
In-Reply-To: <CAGAEfx7sAmi03pQWBuzLkVQ+nDeRvHxzwR+F7WZ5Zx_Dv-NZKw@mail.gmail.com>
References: <CAGAEfx6hh-KRRJXKUdgaOpFXcwHTR5FC2TienxRfCBKQadtuvw@mail.gmail.com>
	<CAGAEfx5V=MUNswTy7UoqtZT49AnwxdPqyBUje6i1N8+FYUcrPQ@mail.gmail.com>
	<CAGAEfx7sAmi03pQWBuzLkVQ+nDeRvHxzwR+F7WZ5Zx_Dv-NZKw@mail.gmail.com>
From: Prasoon Kumar <prasoonkumar1295@gmail.com>
Date: Tue, 27 Jun 2017 11:39:54 +0530
Message-ID: <CAGAEfx7M2V2SkMU5tYaiSEEpBe9a0z16JoXBv0GVit8LxgDncQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Optimization query
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
X-List-Received-Date: Tue, 27 Jun 2017 06:09:56 -0000
Content-Type: multipart/alternative; boundary="94eb2c04bcea9391050552eaea6f"

--94eb2c04bcea9391050552eaea6f
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to optimise the boot time in yocto. I need some suggestions on
how to optimise the boot time and different ways of doing it.

Thanks
Prasoon

--94eb2c04bcea9391050552eaea6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I am try=
ing to optimise the boot time in yocto. I need some suggestions on how to o=
ptimise the boot time and different ways of doing it.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Thanks</div><div dir=3D"auto">Prasoon</div></=
div>

--94eb2c04bcea9391050552eaea6f--
