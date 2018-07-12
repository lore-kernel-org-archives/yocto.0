Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C0BBE00E0A; Thu, 12 Jul 2018 14:02:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F195E00DFB
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 14:02:10 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id 16-v6so8747167itl.5
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 14:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/G6aTPWw0C+hIxwmwluY9xAcF2FlwteWx+FCtCEgWO4=;
	b=fbBovAIulj0TZJp/967KXEkNSXKY0PvSVPAOcE4mez3+TNRZ49mBgRC1/Rg+EqokVf
	4G4BkEAISnUgwW1H4Gcz5EUrba4oYQw9gOkeG5hHxP56/39zInyHWgaMU/Co4x1Websa
	CliRb27tvvGi2SRWsXryEq/ZlZWG+5NnyefQ+cVKTDfZ94dht5OibJUvqDS7FFUI/iCL
	E9V8NEp+Y8YcGHIKfSAw6rzg6Kf/ZJWoyKRz5GE1F5mC5zUvM2+64FBj54J3SxmK6NzQ
	bpRRc7WgiSfLmPQ80LwSsIgJngpweXq3rYD9rE9rcUbFssgqDPyx2cCe0g4AJUo19jdF
	M3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/G6aTPWw0C+hIxwmwluY9xAcF2FlwteWx+FCtCEgWO4=;
	b=OUHH5eQp48ugmRGc3E4rllM7U2fBJZzlKNN+aO8eni2UiDmCIyMEAOHnFTpH0u81EJ
	k+oCNP/4/hI9qa13F8On02Iw7hhqIFxsLrOQ/DL2ASn66qFVqQGHl2k4r1EVvyr7zEfh
	w9FBWzAOID/AM46nYFUzC8hRAGS+JlOmjAQfa2JOnm1RF+efAcouRhlIsJbNED4d+eUU
	xoOcj8blRmKL9/LLZv4eyBc/HtCjiKJ4/cWpSfSRFYzhDJms4TGaf1IKUBB6v9d088sZ
	B7SkVnXwSLG3HExgwEA4ZT6z9emiqqCEWUU/DQNncdWJHWPfPWLtTx/N3TVJ457KkrsO
	+Q9g==
X-Gm-Message-State: AOUpUlEYp0VvSCCiqEiYTb/7Kk9NWcObli7UzlQEazwWrvrm+NxaAZL1
	dVVx06TXfPGq1R+Dfsf0e1Pq8hp+eLr5nhVv/hJeOA==
X-Google-Smtp-Source: AAOMgpf4D2w/puC00po6fOTUUhUwunCuv4K3qAD7m/MELungH+YFuxcKLSRUvR1c1Ku36Igx5nFvtszDRA8G6xVMGkc=
X-Received: by 2002:a02:b70b:: with SMTP id
	g11-v6mr3062532jam.34.1531429329382; 
	Thu, 12 Jul 2018 14:02:09 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Thu, 12 Jul 2018 17:01:57 -0400
Message-ID: <CAFzUWG=7Aam-5PAE_1cpw24Zd+PCj+0KyOziyWrbWYeFLk0EdQ@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Writing a recipe that allows for extra depends, depending on the extra_oemake configurations
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
X-List-Received-Date: Thu, 12 Jul 2018 21:02:11 -0000
Content-Type: multipart/alternative; boundary="0000000000002d30f60570d3adb6"

--0000000000002d30f60570d3adb6
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a recipe that I wrote up here:
https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/xrootd_4.8.3.bb
 .

The short snippet of it looks as follows:

inherit cmake

DEPENDS += "python"

*# ENABLE_CRYPTO*
*#DEPENDS += "openssl"*

*# ENABLE_KRB5*
*#DEPENDS += "krb5"*

EXTRA_OECMAKE = " \
  -DENABLE_PERL=FALSE \
  -DENABLE_FUSE=FALSE \
*  -DENABLE_CRYPTO=FALSE \*
*  -DENABLE_KRB5=FALSE \*
  -DENABLE_FUSE=FALSE \
  -DENABLE_READLINE=FALSE \
  -DHAVE_ATOMICS_EXITCODE=0 \
"

I'm wondering how I can make it so that I can have a user allow for
additional configuration to enable crypto/krb5 which requires extra depends
and changing the oemake flags. Is this something Yocto can do, or is it
better to have users provide a bbappend file to update this recipe?

Thanks,

Giordon
-- 
Giordon Stark

--0000000000002d30f60570d3adb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have a recipe that I wrote up her=
e:=C2=A0<a href=3D"https://github.com/kratsg/meta-l1calo/blob/master/recipe=
s-core/root/xrootd_4.8.3.bb">https://github.com/kratsg/meta-l1calo/blob/mas=
ter/recipes-core/root/xrootd_4.8.3.bb</a>=C2=A0.</div><div><br></div><div>T=
he short snippet of it looks as follows:</div><div><br></div><div><div><fon=
t face=3D"monospace">inherit cmake</font></div><div><font face=3D"monospace=
"><br></font></div><div><font face=3D"monospace">DEPENDS +=3D &quot;python&=
quot;</font></div><div><font face=3D"monospace"><br></font></div><div><font=
 face=3D"monospace"><b># ENABLE_CRYPTO</b></font></div><div><font face=3D"m=
onospace"><b>#DEPENDS +=3D &quot;openssl&quot;</b></font></div><div><font f=
ace=3D"monospace"><br></font></div><div><font face=3D"monospace"><b># ENABL=
E_KRB5</b></font></div><div><font face=3D"monospace"><b>#DEPENDS +=3D &quot=
;krb5&quot;</b></font></div><div><font face=3D"monospace"><br></font></div>=
<div><font face=3D"monospace">EXTRA_OECMAKE =3D &quot; \</font></div><div><=
font face=3D"monospace">=C2=A0 -DENABLE_PERL=3DFALSE \</font></div><div><fo=
nt face=3D"monospace">=C2=A0 -DENABLE_FUSE=3DFALSE \</font></div><div><font=
 face=3D"monospace"><b>=C2=A0 -DENABLE_CRYPTO=3DFALSE \</b></font></div><di=
v><font face=3D"monospace"><b>=C2=A0 -DENABLE_KRB5=3DFALSE \</b></font></di=
v><div><font face=3D"monospace">=C2=A0 -DENABLE_FUSE=3DFALSE \</font></div>=
<div><font face=3D"monospace">=C2=A0 -DENABLE_READLINE=3DFALSE \</font></di=
v><div><font face=3D"monospace">=C2=A0 -DHAVE_ATOMICS_EXITCODE=3D0 \</font>=
</div><div><font face=3D"monospace">&quot;</font></div></div><div><br></div=
><div>I&#39;m wondering how I can make it so that I can have a user allow f=
or additional configuration to enable crypto/krb5 which requires extra depe=
nds and changing the oemake flags. Is this something Yocto can do, or is it=
 better to have users provide a bbappend file to update this recipe?</div><=
div><br></div><div>Thanks,</div><div><br></div><div>Giordon</div></div>-- <=
br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr">Giordon Stark</div></div>

--0000000000002d30f60570d3adb6--
