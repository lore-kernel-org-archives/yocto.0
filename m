Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0403E00C2B; Wed, 13 Sep 2017 00:08:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_20,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* 1.5 HTML_IMAGE_ONLY_20 BODY: HTML: images with 1600-2000 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89A43E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 00:08:55 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id l74so36654204oih.1
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 00:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ja+mK83vbxo4BD5QKXSGSubrXGMoQPDGJgBBFshaS2I=;
	b=PjJ8NQ3ybLeqzd7jb+u7siA1v/donhcBxZ/1mVDUVSHYqByiX8XzRf+HyjuZQJCkE9
	xztPiwRV9yMA4ad6xNP5fSVuiFc0b98fM6lf4vzKhKCMzBstEsVUDVt5DOJm7Lext4v7
	EsrSCwJFf89wpIB0V7/b83687U5ZWbirwu3ix+KCH8HfUR2pX0XrUuNLNaJMSrY+dkOV
	H2hBsDxwuij1wI2AcVFTyoDyflEN7uL0psM2Vx7bCxHWon6L2urVZwAnyyjN5mwBYSXP
	6jhTo2r6PNufeAJy4Ogs4pI/J9wx6wREylROU82ERHeyCSyqZFIzembsZ3Gm1vCZ1ZZj
	XH8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ja+mK83vbxo4BD5QKXSGSubrXGMoQPDGJgBBFshaS2I=;
	b=fSguqoWIuXZ9G6wddfztI3NE4tv8kutWUdYPxpsCfYdgoOcF5Uxn9EBrgQXw03Fa3D
	qB2IpV2lZJQv65PwmPmIJtQibO2XFFYSdnIlOlpMBjzO9mNNmnyhldpOOcCsJRzBtCOc
	o3DyC40+1L9wI0KxB7kdtTWmNBGobH8dtOkq5DaeXQ3xLVDLZ3ppWjoOVlZh1a6Rwqpr
	93GuyKVBubPBhDPxhBpGM/AqOPu0QRKaH3SdZN0TheKnuksXFLxR5XMd5O0FEyHMFPFW
	k+t2eeD9EAhDN4jbYn45HPV4oSLC1PxJPM+WBydWQ1oWLjaYtkIseU0yTcc/qVTu2PP2
	Lk6g==
X-Gm-Message-State: AHPjjUgnwU9P2D1BFLa2KQwSofhN7kxHICYbY7zc+mwWUBCxkAW2BUud
	UvJPJudNfVnQ0OlESaIGm9IzfrG55dN+uo2Hh6Q=
X-Google-Smtp-Source: AOwi7QB/PbqJYIG14kMXA2b2spTfVO1dHVoZrLn2owDV3UX369C5rob0rQ52MwccW/bw4YoxA2RM4jM/xXXCODLtiPg=
X-Received: by 10.202.104.151 with SMTP id o23mr17859764oik.98.1505286534120; 
	Wed, 13 Sep 2017 00:08:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Wed, 13 Sep 2017 00:08:53 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 09:08:53 +0200
Message-ID: <CABFXn3Gk6wMmARf5UMgdJpsCRDbhWOEfwZvhw96b3=-oa21C0g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: how to execute bitbake menuconfig from ssh server
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
X-List-Received-Date: Wed, 13 Sep 2017 07:08:55 -0000
Content-Type: multipart/alternative; boundary="001a11c00be626cc9e05590cd5c4"

--001a11c00be626cc9e05590cd5c4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am working with yocto from a remote server using ssh. i want to
execute *bitbake
-c menuconfig virtual/kernel*  . It fails to open since it tries to open
another shell.
how can i redirect output of menuconfig to my current ssh session ?

--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>



=E2=80=8C

--001a11c00be626cc9e05590cd5c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/891c38d=
6179843b49e840254f5233d1c36e56b85.png?u=3D1822760"><div><div>Hi,</div><div>=
<br></div><div>I am working with yocto from a remote server using ssh. i wa=
nt to execute <i>bitbake -c menuconfig virtual/kernel</i>=C2=A0 . It fails =
to open since it tries to open another shell.=C2=A0</div><div>how can i red=
irect output of menuconfig to my current ssh session ?=C2=A0</div><div><br>=
</div>-- <br><div class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1" color=3D"#77777=
7" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span styl=
e=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"color=
:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px"></span><div><font color=3D"#777777" face=3D"Tahoma, sans-se=
rif, Arial, serif, EmojiFont"><span style=3D"font-size:13px">Graduated from=
 Faculty of Engineering - Electronics and Communications Department at Cair=
o University.</span></font><br></div><div style=3D"color:rgb(0,0,0);font-fa=
mily:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><di=
v><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noopener norefer=
rer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-se=
rif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Linkedin</span></=
font></a><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,san=
s-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0=
</span></font><a href=3D"https://github.com/yahiafarghaly" rel=3D"noopener =
noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,=
sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">GitHub</sp=
an></font></a></div></div></div></div></div></div>
<br><br><br></div>=E2=80=8C</div>

--001a11c00be626cc9e05590cd5c4--
