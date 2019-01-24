Return-Path: <sateesh0457@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6C87E00D07; Wed, 23 Jan 2019 21:30:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sateesh0457[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F6CAE00CFD
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 21:30:11 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id w25so4170695otm.13
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 21:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bOFSnpNkLrwHf4P1fu3Vrw9ITt/A0bpM5SJOc6az6mY=;
	b=NUkadik+FfoMFp3cve7YnVkmA6Xn3cSqkaM1jxajOjnHx11Ie1JQ9lne62oTWM+6Z9
	Vu5L2fEzKfAuMFyVSy7qVuvl9OIervT5Nzch88CvUalQHKL2EpRWPscPmM16Y+2l/l4c
	mfH00grAbEvQGeDv/Al2nxDGsNhbEIinX0zQELxn+1HFHiHdpfoc2iTIjIwOkJ4wlfLq
	AwoCYMaTKRLhPTNV7muVRsdcEKj8iGoNBt2tIE/cKiUuVElRJznxWsJv+ojO7wzpWzyw
	UcOAp7AiXPOZs5oVUgAB/rH/43kZyiMKrLoUmexw0beGTp2sfUiNqAjeGFGdKePge3rQ
	AeMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bOFSnpNkLrwHf4P1fu3Vrw9ITt/A0bpM5SJOc6az6mY=;
	b=X00FdmId/Fhqq3vM9X8HFk/8jmwSrCQnt0OwP7zcR8u20EMXdKIBMnlGeRp08afFqU
	fLosbEqaqG2PJD/t8BGNUaVvxPoV2aiikdNtZcHeWWAfCbGNzWGjLn2HMv3hKksZDs3A
	GITJJr7HgnBkGalO2PrRUffB1+UqSEPq3Gdoq7la7KU7356SyEV48SmUEhB4u+vlSAku
	0Zv3yaXwE8/F0GBzDaqp8iIgnusH43RabjIaMzUibYZw6ZTqBIaeD38/ksx4/KcHfsi8
	XX0YEC5jJp2/U/f3TJqjCzBOU3baFQzsu3WBfFkQ3eqzaCY7D1Bm/e0IitOdsqtmi/54
	IfCg==
X-Gm-Message-State: AJcUukddOdhSTqUhhkdDtZu0zWSpjU490MrjKrPhyvEvNdxPdnLokwsY
	k+sHDUMCgYKPWsCJbDNKxErXBAwT4h7iaUnMz29v+aNz
X-Google-Smtp-Source: ALg8bN6XRIBdHT0oifdBNXAqoPN1e7aRKWBt2xuY2az367cjpPJ3iefu8BCbF5IOJ669BOAaJz6z19zPavWGB7WH1zo=
X-Received: by 2002:a05:6830:1204:: with SMTP id
	r4mr3655234otp.101.1548307809617; 
	Wed, 23 Jan 2019 21:30:09 -0800 (PST)
MIME-Version: 1.0
From: sateesh m <sateesh0457@gmail.com>
Date: Thu, 24 Jan 2019 10:59:58 +0530
Message-ID: <CACsETSssAEVDW5xBCETGKH3gEfShuL+qsuW2b82KhP9GOt7FGQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 25 Jan 2019 02:58:16 -0800
Subject: wifi feature adding doubt
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
X-List-Received-Date: Thu, 24 Jan 2019 05:30:12 -0000
Content-Type: multipart/alternative; boundary="000000000000feca6105802d80d3"

--000000000000feca6105802d80d3
Content-Type: text/plain; charset="UTF-8"

Hai Sir,

            I am using yocto project  my machine is qemuriscv64 . I am
running this using qemuriscv64 using runqemu qemuriscv64 nographic . i want
to add wifi feature so how i  add it this feature .



Thanking you sir,
Sateesh

--000000000000feca6105802d80d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hai Sir,<div><br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 I am using yocto project=C2=A0 my machine is qemuriscv64 . I =
am running this using qemuriscv64 using runqemu qemuriscv64 nographic . i w=
ant to add wifi feature so how i=C2=A0 add it this feature .</div><div><br>=
</div><div><br></div><div><br></div><div>Thanking you sir,</div><div>Satees=
h</div></div>

--000000000000feca6105802d80d3--
