Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B385E008A2; Thu, 15 Mar 2018 07:07:16 -0700 (PDT)
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
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D575AE0073D
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 07:07:15 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id m83so8696455ioi.8
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 07:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=H1CdAaagAymX2kAH/C1IkgTi/wfD5j1l/6cy1xO3vJQ=;
	b=SzrgrVOESwCjCJOLQhYqreESFDR6CoZFH7WXQciU7jh9Xv59B9HAcOpe4/UJHYHPPs
	kjydX1FupvjXSKmSGt9K2zxRSFTz6jPvir5KOIJEbubOt65rB87qVLGFnZNrdNke3JdG
	NPrR4qG+HHehQVzzbXsAvmeknNAh3EyJDu6+cxw9aAP4aw0X6r+wdkrveom8qor/XJon
	w4xshUsJI+CFZc6TpsWQN4hXdZcwjbPvqPFbF/dRnwRwzUZqPnBv36yuW7bjkbzl+pRF
	NGQkTDhDnE/AP2zYviZN1HUJe2FtyYMKu00JDQ4iYdi6AnkmLTELlxrAntGOTEWr66EM
	WwZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=H1CdAaagAymX2kAH/C1IkgTi/wfD5j1l/6cy1xO3vJQ=;
	b=D/ndC1vCLZqRG06iL3Lp5SVgjXphyCgRIjAXVhnoKSXjFcHC7MzE1vQfxePiL87u0R
	pK8vh+efx+yPphWou3sdW48nfrl9AcZIWOU4W2AW/I5rACRG8j7IbOfHjHiC0+LOJQ9P
	3WActTWqYYtqqJwKchMRXF/MsrUhyxh8jYgQBnAoGRKZp0BRBsbz9IR0S1GM7dDERHrn
	U5eSZVhGh1SGnJxXVijucfF6Gb5upog90WyzUBSYLJmd3wQtO3Js6eGtnuemNoFoiGrP
	VQJ0gDVOiMPGDAUsfS9DOG+tRTfTFeKchRDn1FMHUfeGHlxi+bg4Eku83opDU6zWrwug
	Zd9w==
X-Gm-Message-State: AElRT7GZ2ISLY1yI44rOFcKz/bMXqU7EP/h0G6IcpzaqKOQdiIzSt+X2
	lZkugPBYFeeYdwN2OdXF5lLZnQW74eqyTSGZeN+9YQ==
X-Google-Smtp-Source: AG47ELvuFKalbJr+snxWailnhjRWZaz9nZ5K9mEHQdxm7lTOt8Jbbx7AbJRHWpZpRMhkYuQQDmeeJFF4ZNIQmvtvD+g=
X-Received: by 10.107.102.13 with SMTP id a13mr9145401ioc.61.1521122834700;
	Thu, 15 Mar 2018 07:07:14 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Thu, 15 Mar 2018 14:07:03 +0000
Message-ID: <CAFzUWGmEjhu4-5vnzc_GLRV++KYSr4SAi2-TbhK+G-V3e-aPzg@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Can SRC_URI look in the same place for two different machines?
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
X-List-Received-Date: Thu, 15 Mar 2018 14:07:16 -0000
Content-Type: multipart/alternative; boundary="089e082d1a5838dfa005677402a3"

--089e082d1a5838dfa005677402a3
Content-Type: text/plain; charset="UTF-8"

Hi,

So for my device trees, I'm finding some files are duplicated. In
particular some of my dtsi files are going to be the same amongst a few
boards we're using, so I would like to have each machine name distinct so
that

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

files/${MACHINE}/${MACHINE}.dts

is picked up, while still having

files/common/*.dtsi picked up as well. As an example of my SRC_URI appends:

SRC_URI_append_gfex-prototype1b = " \
    file://skeleton.dtsi  \
    file://pl.dtsi        \
    file://zynq-7000.dtsi \
    file://system.dts     \
"

SRC_URI_append_gfex-prototype2  = " \
    file://skeleton.dtsi   \
    file://pl.dtsi         \
    file://zynq-7000.dtsi  \
    file://system.dts      \
"

I suspect I do something with OVERRIDES in the conf/machine/${MACHINE}.conf
file but not sure...

Thanks,

Giordon
-- 
Giordon Stark

--089e082d1a5838dfa005677402a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>So for my device trees, I&#39;m fin=
ding some files are duplicated. In particular some of my dtsi files are goi=
ng to be the same amongst a few boards we&#39;re using, so I would like to =
have each machine name distinct so that=C2=A0</div><div><br></div><div><div=
><font face=3D"monospace">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/fil=
es:&quot;</font></div></div><div><font face=3D"monospace"><br></font></div>=
<div><font face=3D"monospace">files/${MACHINE}/${MACHINE}.dts</font></div><=
div><br></div><div>is picked up, while still having</div><div><br></div><di=
v>files/common/*.dtsi picked up as well. As an example of my SRC_URI append=
s:</div><div><br></div><div><div><font face=3D"monospace">SRC_URI_append_gf=
ex-prototype1b =3D &quot; \<br></font></div><div><font face=3D"monospace">=
=C2=A0 =C2=A0 file://skeleton.dtsi=C2=A0 \</font></div><div><font face=3D"m=
onospace">=C2=A0 =C2=A0 file://pl.dtsi=C2=A0 =C2=A0 =C2=A0 =C2=A0 \</font><=
/div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://zynq-7000.dtsi \</f=
ont></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://system.dts=C2=
=A0 =C2=A0 =C2=A0\</font></div><div><font face=3D"monospace">&quot;</font><=
/div><div><font face=3D"monospace"><br></font></div><div><font face=3D"mono=
space">SRC_URI_append_gfex-prototype2=C2=A0 =3D &quot; \<br></font></div><d=
iv><font face=3D"monospace">=C2=A0 =C2=A0 file://skeleton.dtsi=C2=A0 =C2=A0=
\</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://pl.dtsi=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\</font></div><div><font face=3D"monospace">=
=C2=A0 =C2=A0 file://zynq-7000.dtsi=C2=A0 \</font></div><div><font face=3D"=
monospace">=C2=A0 =C2=A0 file://system.dts=C2=A0 =C2=A0 =C2=A0 \</font></di=
v><div><font face=3D"monospace">&quot;</font></div></div><div><font face=3D=
"monospace"><br></font></div><div>I suspect I do something with OVERRIDES i=
n the conf/machine/${MACHINE}.conf file but not sure...</div><div><br></div=
><div>Thanks,</div><div><br></div><div>Giordon</div></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr">Giordon Stark</div></div>

--089e082d1a5838dfa005677402a3--
