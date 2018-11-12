Return-Path: <theknoppix@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10C90E00A85; Mon, 12 Nov 2018 00:28:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theknoppix[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A713E007B3
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 00:28:24 -0800 (PST)
Received: by mail-wm1-f52.google.com with SMTP id f10-v6so7498729wme.3
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 00:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=MIh3PHlUnqvTpdzc6JzUCqh27paWK3RTGyBN7FVvFNE=;
	b=Jfny0JpVEbZhbWVXu1kI8ebUmpRoLu+OZJiVX3uHccas30NcurcgW8WGa/hgZ0u/Wf
	1uAJOKj2otOD9ZUs+2gmveQ+lkJcsD6PwUk2DQ3rNeH5/rX0QHg54NDekC+GxDGKhHMx
	0inaoHpsihXtvlPpfqF9y9jOIVGDSF7Gi/EgiN979ZE70SyMxlqI/Rb5NuIQmuYUECJm
	jtZ6XzmpxvwooqomJejm0qJ/2glrLWjY78pa4kDndmS06JXKHd5MfFmzTxwN9r6+stgU
	vrMJP2EXyaYecw2IfRbSqkNhr9AstDHBPclbtErIyvZTTsbuujhlGe+xOV9iuD44tJxT
	st0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MIh3PHlUnqvTpdzc6JzUCqh27paWK3RTGyBN7FVvFNE=;
	b=KkTlPZjYGjrkm5TPrvPumtAlMroAmnuv/su/C34J5FCG2nrpX5PH1KDqxJoFS7MXV2
	k0cMcbpCmofFZUDyZ8IWYd1HBGfMPCXtszTV9eN/U4EIC9YeeVqQfQPpSfDKq+SHGeyp
	dGYi6HxFZnGxZoN79e+mfj8z6JFDzf6Tksz2Z7r87KGnpigiXpl4L/CkABESqS83AIV+
	v7uCuLBHsg6AlDK/AHVbs9XkqREBuDBWdRCbmPy0KPV/c3byR2pJAPTFc3TbDgY8KAy2
	el8zL0slgqU3pgo3pGN6VPj5uoOv7SFxBvoGYwtRyfYiFf+xF8w4bnoCByldsvpp+jh3
	hYVg==
X-Gm-Message-State: AGRZ1gJiryRdehuV75duw7eZpElr+xFwM1ll7RIjJT6ZttgA3JJs51rW
	bLeXSxCO+rnYPOL+GhWDCgpqSQMmjsfZqkOc0TO8xevl
X-Google-Smtp-Source: AJdET5eQ6Q4HUCdiWZn/MsZPeOTR/V0IVS7H15FlvhLkaOw3DnYhK8xKfxDS0/x+D24aQzYSmrMgup5HlQltkprClZU=
X-Received: by 2002:a1c:9c85:: with SMTP id
	f127-v6mr6642083wme.73.1542011303294; 
	Mon, 12 Nov 2018 00:28:23 -0800 (PST)
MIME-Version: 1.0
From: Knoppix <theknoppix@gmail.com>
Date: Mon, 12 Nov 2018 11:28:12 +0300
Message-ID: <CAD9sEJs7BXpc=FYM4sUAtrQKRbZ92aJz+mSGHuT+V2hFR+sRJg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: yocto x64-linux with bootia32.efi
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
X-List-Received-Date: Mon, 12 Nov 2018 08:28:25 -0000
Content-Type: multipart/alternative; boundary="000000000000f8fcf1057a737b3f"

--000000000000f8fcf1057a737b3f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I Searched this question on google, stackoverflow but I did not find.

I am using DISTRO=3Dpoky MACHINE=3Dintel-corei7-64 IMAGE=3Dcore-image-x11 s=
ceme.
The machine which I want to install image, doesn=E2=80=99t allow bootx64 bu=
t it
works when I install x32 efi.
I checked this (I copied first bootia32.efi and then bootx64.efi) and as I
understand my machine has x64 arch but only support x32-efi.

So how can I build an image which is intel-corei7-64 but has grup-efi 32
bit?
Would you advice me please to *what should I read to accomplish and learn *
this?

--000000000000f8fcf1057a737b3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-famil=
y:Helvetica;font-size:15px;font-style:normal;font-variant-caps:normal;font-=
weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;text-decoration:none"></d=
iv><div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;fo=
nt-size:15px;font-style:normal;font-variant-caps:normal;font-weight:normal;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;text-decoration:none">I Searched this q=
uestion on google, stackoverflow but I did not find.</div><div class=3D"gma=
il-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-st=
yle:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;text-decoration:none"><br class=3D"gmail-"></div><div class=
=3D"gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;=
font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;text-decoration:none">I am using DISTRO=3Dpoky MACHI=
NE=3Dintel-corei7-64 IMAGE=3Dcore-image-x11 sceme.</div><div class=3D"gmail=
-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-styl=
e:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;text-decoration:none">The machine which I want to install ima=
ge, doesn=E2=80=99t allow bootx64 but it works when I install x32 efi.</div=
><div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font=
-size:15px;font-style:normal;font-variant-caps:normal;font-weight:normal;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">I checked this (I c=
opied first bootia32.efi and then bootx64.efi) and as I understand my machi=
ne has x64 arch but only support x32-efi.</div><div class=3D"gmail-" style=
=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-style:normal=
;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;text-decoration:none"><br class=3D"gmail-"></div><div class=3D"gmail-=
" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-style=
:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;text-decoration:none">So how can I build an image which is int=
el-corei7-64 but has grup-efi 32 bit?</div><div class=3D"gmail-" style=3D"c=
olor:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-style:normal;font=
-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;text-decoration:none">Would you advice me please to<span class=3D"gmail-Ap=
ple-converted-space">=C2=A0</span><b class=3D"gmail-">what should I read to=
 accomplish and learn=C2=A0</b>this?</div></div>

--000000000000f8fcf1057a737b3f--
