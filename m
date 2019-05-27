Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CE29E008E3; Mon, 27 May 2019 04:29:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (praveen.vatt[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84864E008E3
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 04:29:45 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id w9so9380475wmi.0
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 04:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=CQyvRjRV5cifmYyhlGdjPzD5U1hWTRW4emO9rZEhaew=;
	b=SCovRALI0oVAurmOaCCJLdHbNk2Yr0z5SIdwu9jqVJTNvLede23S/1Z7e+5Fh58xt2
	2YtD0J6UMtFOu0aqVMPCcQBsLPvbqIVVbLTVSo1sMWmresFTuk6bazTh6QQUfJYDLGas
	wBopGtogF1h9DOJzzQkXMPyC9iAH19x7qBpeZ2UMQQ76l0vjGOU5nsyMn5qrkuZvmd+s
	4KA82AAs8vBGkPJFeoTBEbrAjxF502whyHSJyrJqofzOZooWb2+D/qPbnSqPbQaGKQKP
	hV60DCu7CnXXAE36zS3daRC6dJPKGEn4U3eT9WcuTPiDnQ6zxJAiFTWpCCmx8vWkgcNY
	l2IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=CQyvRjRV5cifmYyhlGdjPzD5U1hWTRW4emO9rZEhaew=;
	b=X00htKlSu/FFvr8IcP73yX4QDIJcI53RNlrAJVjX9au51jWIef9yIbyGe180lydqXm
	pPAna3/ygxzE8XDh0VZYzUp91TamFROB+btKeVlS5c+6aK3InIiOROxd/+kmQVvZR1kn
	UJNWb/OXfjPqxU8+C2z4smNhpJD5LlJUjw6BWV4g+dRtB66i2FjpnALVftgh6uUnjtP2
	juQP5oOpj2cH4VdRHk4oRnMiIvQBnUHQpLhgjvwDvvK992GrdYqFZbb+rTGmkEI2Ls7M
	N+dQJpCg1B6/G3NiKfiSBuDHzpQ+ydmlQUKkKNIC9wVkDeCZKk2KJf5Ocbt+XAt/FdAy
	MkDA==
X-Gm-Message-State: APjAAAUPGrArP1ZxFr0Iv6N9AS7IKHwEJBYV92o8jRUkPVfJ023+wB7r
	jwNtpPzjgNERa7A/oVNxCKCk8mqT4r7Y2dEQXG03f14A
X-Google-Smtp-Source: APXvYqxwx2JtNbdfc2H5MlqZkyBTaDF7hYId7PLiTPlJOWQtNWIJ+pzfwyNCgN9aTQXODeL34slV53sq+/h9XGLRK1M=
X-Received: by 2002:a1c:f31a:: with SMTP id q26mr9596312wmq.137.1558956584530; 
	Mon, 27 May 2019 04:29:44 -0700 (PDT)
MIME-Version: 1.0
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Mon, 27 May 2019 16:59:33 +0530
Message-ID: <CA+pXca1pnxm6Y56m5oaPjkkegH-c7a6TATzWLG=B5EYppA+ncw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: final image size got increased when migrated from krogoth to Sumo
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
X-List-Received-Date: Mon, 27 May 2019 11:29:46 -0000
Content-Type: multipart/alternative; boundary="00000000000070f6280589dcdd9e"

--00000000000070f6280589dcdd9e
Content-Type: text/plain; charset="UTF-8"

Hi All,

I have migrated Yocto poky version from Krogoth to Sumo, after building the
final image, i observed that the size of image got increased by more than
70Mb. I have not added any new packages.
Any suggestions, how can I reduce the image size now.

Thanks in Advance.

Thanks,
Praveen

--00000000000070f6280589dcdd9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I have migrated Yocto poky vers=
ion from Krogoth to Sumo, after building the final image, i observed that t=
he size of image got increased by more than 70Mb. I have not added any new =
packages.</div><div>Any suggestions, how can I reduce the image size now.</=
div><div><br></div><div><div><div>Thanks in Advance.<br><br></div>Thanks,<b=
r></div>Praveen=C2=A0=C2=A0<br></div></div>

--00000000000070f6280589dcdd9e--
