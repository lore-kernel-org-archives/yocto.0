Return-Path: <nicolas_salmin@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E98DFE00968; Mon, 15 May 2017 00:59:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A28CE00901
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 00:59:15 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id w10so121276704oif.0
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 00:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=8NLGFwlCMt9+zCtr2ZMGbD0alcNSSSSBTj5l18SU6yc=;
	b=YaM/9edGpQ2/huUo3Znc65QwxaDUdmLF9FjK4r53RxZ+LeoBLY2WlFn3k3KyPbVPi1
	TsJqyzF7oweF5hSV+QqRuO6HqLa+0gawAlR3NdJvZ13FXC38FSPwRrnh9I1bAPDDJ1DK
	y8XN6l6V+xuQG8A11q4BE2RFgVo1djFriTPaBVTl3jDM9hovF0fdYC0Uu3RyeOORtBW0
	RNBQijnfFZl1RyfwrfkG4bkfq1OvvfRdU2pBAu9QXmvTFa0DzSc3beeQ3jzHQVkGhZim
	UAblu9pBI0/cH75133rmMNkq2DH4sEFz7xeMwGL/iCn4+Dmgd9c7FdZBsyLLSrI0h6TN
	8tCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8NLGFwlCMt9+zCtr2ZMGbD0alcNSSSSBTj5l18SU6yc=;
	b=KeN3JPC46PnShLDACfsgHoMVthvPOR3ObCglU1luLa7gmeEmuY5f4OrYm6l4qGpFGJ
	ZStYWCKsuub50Az1t3cqgFhM/z847w+mBuSHE+/CE5z2XwsZceoTuPQ5c0YAWONDjxYM
	hjkDVwVqMpNf2+5MMMorOi0xPK1orVbzmMRVYFb+nHa1+3rIg8vvhSp6YZnkTV7B9lQq
	xKAtnbCWTsOorpOE3dzg/FBBQY/mPc/2TH/N2+yRNhlusk+DkoJGcjx+V2AL6Fc13Y9U
	tpQK1ojZpFrf+oqMsIvZK32DKDY04aNAkGEsBd64Y1M7ZAwr3o8olyrceUUXBivNZDLB
	cp2Q==
X-Gm-Message-State: AODbwcC9MpTA8iBI910opwbDZWsb5Vmy09EOX3YFwqYcDYc+dQrGZylA
	NnsJUiup+X2VtzafLIcSvPV+quSrHt8tpgR38g==
X-Received: by 10.157.50.163 with SMTP id u32mr1887084otb.188.1494835154738;
	Mon, 15 May 2017 00:59:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.48.28 with HTTP; Mon, 15 May 2017 00:59:14 -0700 (PDT)
From: Nicolas Salmin <nicolas_salmin@trimble.com>
Date: Mon, 15 May 2017 09:59:14 +0200
Message-ID: <CAGTsOqN_3S3_BZsvGoz_tsyfNhtBeiEdiDzJEDyQ3XiW2J7a5Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error during kernel module compilation
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
X-List-Received-Date: Mon, 15 May 2017 07:59:19 -0000
Content-Type: multipart/alternative; boundary="001a1144290e65a323054f8b6ede"

--001a1144290e65a323054f8b6ede
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have some trouble during kernel module compilation, in fact the module is
build successfully only if I have built the kernel before... it makes sense
but the the recipe inherit from module bbclass:

/*********************************************************************************************************************
SUMMARY = "USB **** driver"
DESCRIPTION = "Module for USB host device communication"

inherit module

SRC_URI = "git://git@
********************************.git;branch=${branch-driver-*****};protocol=ssh"
SRCREV = "${commit-****-*****}"
PR = "r0"

SRC_URI += "file://Makefile"

PV = "${PVBASE}.${SRCPV}"
PVBASE := "${PV}"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PVBASE}:"


S = "${WORKDIR}/git"

do_compile_prepend() {
   echo "overriding Makefile"
   cp ${WORKDIR}/Makefile ${S}
}

/*********************************************************************************************************************

It was that was like dependencies are not correctly set...

For information i'm using a custom recipe linux kernel so maybe i have
forgotten to add some variables inside.
Thanks for helping,
Cheers.
Nicolas

--001a1144290e65a323054f8b6ede
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I have some trouble during kern=
el module compilation, in fact the module is build successfully only if I h=
ave built the kernel before... it makes sense but the the recipe inherit fr=
om module bbclass:</div><div><br></div><div>/******************************=
***************************************************************************=
************</div><div></div><div><div>SUMMARY =3D &quot;USB **** driver&qu=
ot;</div><div>DESCRIPTION =3D &quot;Module for USB host device communicatio=
n&quot;</div><div><br></div><div>inherit module</div><div><br></div><div>SR=
C_URI =3D &quot;git://git@********************************.git;branch=3D${b=
ranch-driver-*****};protocol=3Dssh&quot;</div><div>SRCREV =3D &quot;${commi=
t-****-*****}&quot;</div><div>PR =3D &quot;r0&quot;</div><div><br></div><di=
v>SRC_URI +=3D &quot;file://Makefile&quot;</div><div><br></div><div>PV =3D =
&quot;${PVBASE}.${SRCPV}&quot;</div><div>PVBASE :=3D &quot;${PV}&quot;</div=
><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PVBASE}:&quot;<=
br></div><div><br></div><div><br></div><div>S =3D &quot;${WORKDIR}/git&quot=
;</div><div><br></div><div>do_compile_prepend() {</div><div>=C2=A0 =C2=A0ec=
ho &quot;overriding Makefile&quot;</div><div>=C2=A0 =C2=A0cp ${WORKDIR}/Mak=
efile ${S}</div><div>}</div></div><div><br></div><div>/********************=
***************************************************************************=
**********************<br></div><div><br></div><div>It=C2=A0was that was li=
ke dependencies are not correctly set...</div><div><br></div><div>For infor=
mation i&#39;m using a custom recipe linux kernel so maybe i have forgotten=
 to add some variables inside.</div><div>Thanks for helping,</div><div>Chee=
rs.</div><div>Nicolas</div></div>

--001a1144290e65a323054f8b6ede--
