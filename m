Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDAC3E00CCB; Fri,  8 Sep 2017 05:12:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_20,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,T_REMOTE_IMAGE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.52 listed in dnsbl.sorbs.net]
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
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D12EFE00CC6
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 05:12:00 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id x190so13545000oix.3
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 05:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=43Kdba8o/3kzh6isMlYhJv+9v+4/ekPYZjt5FFEE8dY=;
	b=POFNLK/+KkDdmNnJIAivdxso4Zoxjr1qVKH+q92wK/sNxNd9Nc3fkXx1bJmEfbQ2n1
	IML0PvhE08n212Yto7o8zfIYSIViAkwMjpFzpEP/Gi8ZvxyNi9brR48oyU6sLqDz/x2w
	c23QbNuF0LSiGZKe1XMHlBFT5GZh78gi4T2Lp4Oc/7690mLEVR84TvjaNao5ia2T+h/l
	bo9FCmHW2ZFwYCFaYnQYh23eFvEhMqMWTsxKsuPvkaD43us9vSTpu4kq+LyzBBGov3gw
	pTCe2jr3iOAnLEaHjk2gp9Q9tV5aAdaYqvCy1pbEaTecpD00RWTYv7kEWS93wxRoCPVo
	9QYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=43Kdba8o/3kzh6isMlYhJv+9v+4/ekPYZjt5FFEE8dY=;
	b=b2esvkAUuHdB3zhdyfU+h0taegSRTqoubufjrHxx1giUX8hwAp6U1s5UkQWNv8GHPJ
	YHqdl98hhRRinSyI1vvGmlFdAg/nUDTwkbGYReXU5wlhtD1fJmBV8Mq4xRlKGrrMrvGu
	19g1JoUQE6+4nSd4/XDOc4kcTEQYZpWy+aW49tcqs6xohJX1Aa1yWVQ5NLlOSUS7CwM8
	NywP3+EWD+Ro7QMomi3cNg2hfhLxNM3i+a+VG0xiJzmKseBwC5mCxHTxXD6FPhFRZtAK
	YpJRXDWlP8AUOVMYIVHlc2g6+VuGZ5gHiheCj6I1mBytF2rRZe9tGkLx1t+5F9+5VqAU
	jflg==
X-Gm-Message-State: AHPjjUiX555dM5Jdq05bDOnIgp2W2Dx2bO/adzti2Duh/z1/RySZArqd
	iMyFIpwKWIEwmShSBNhkCDFUeFjPy/yy
X-Google-Smtp-Source: AOwi7QBhSgua5VV1Vetzwf8Xm3L/gcec/bjM62M+BO9ge6ev0PcPdpSDEyIYnmkKvBP/3gdCxyFuFqMyPh7M/rilwis=
X-Received: by 10.202.230.207 with SMTP id d198mr2458501oih.234.1504872719720; 
	Fri, 08 Sep 2017 05:11:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.82.15 with HTTP; Fri, 8 Sep 2017 05:11:59 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Fri, 8 Sep 2017 14:11:59 +0200
Message-ID: <CABFXn3HXz9ZZvg-r6joXne3gNN3=+EbzHku1Vg3NLvZrUB2kFQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: how to submit a patch
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
X-List-Received-Date: Fri, 08 Sep 2017 12:12:01 -0000
Content-Type: multipart/alternative; boundary="001a1141ad8ae42c2c0558ac7bea"

--001a1141ad8ae42c2c0558ac7bea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

How to submit a patch in yocto ? i come across this link for open embedded
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
should i follow it ? or there is something else? . more specifically, my
patch will be in pyro branch

Thanks,



--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>



=E2=80=8C

--001a1141ad8ae42c2c0558ac7bea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/73a8138=
c869eb2b223a59a4ee2e4d19a1f3dbd1c.png?u=3D1822760"><div>How to submit a pat=
ch in yocto ? i come across this link for open embedded=C2=A0</div><div><a =
href=3D"https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbe=
dded">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedd=
ed</a>=C2=A0</div><div>should i follow it ? or there is something else? . m=
ore specifically, my patch will be in pyro branch</div><div><br></div><div>=
Thanks,</div><div><br></div><br clear=3D"all"><div><br></div>-- <br><div cl=
ass=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif=
,EmojiFont"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></fon=
t><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" f=
ace=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-siz=
e:13px">Graduated from Faculty of Engineering - Electronics and Communicati=
ons Department at Cairo University.</span></font><br></div><div style=3D"co=
lor:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFo=
nt;font-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" r=
el=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font=
-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:1=
3px">Linkedin</span></font></a><font size=3D"1" color=3D"#777777" style=3D"=
font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-si=
ze:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafarg=
haly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=
=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"fon=
t-size:13px">GitHub</span></font></a></div></div></div></div></div></div>
<br><br><br>=E2=80=8C</div>

--001a1141ad8ae42c2c0558ac7bea--
