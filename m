Return-Path: <techieth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92C2BE00A75; Mon, 21 May 2018 02:15:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (techieth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA26EE00A48
	for <yocto@yoctoproject.org>; Mon, 21 May 2018 02:15:40 -0700 (PDT)
Received: by mail-wr0-f175.google.com with SMTP id w18-v6so11485072wrn.6
	for <yocto@yoctoproject.org>; Mon, 21 May 2018 02:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=iHDDvbMtIjXltxYnkoivomTTaCUAYkmNHVHjU2MZooo=;
	b=CwSQSClv8ZoVdonU+QGIb3r5JSI2a+c+0N1d8AhJ/1BsdHOviF0Wn1+iBZE2Z4w1lQ
	BJvbO/QJQI7FDHMEtTt3M/xCnSVJHIBqj5wwW0B8lSZwr22SOWuLl1LosvO28mU34R9L
	RFKMrZnTPAW5+L4wass7ZNDa2iqEZc2SnNpRmy8ngmM4Vl7jmcnXtZ/dpud7sAy0CdTr
	stqn13dYg8TMv2o++hVQIm2yloUKwFHZl5pKQbTbx3VB2qZUApiM6pzFCsIlVaWs/vxf
	Qq8vdU3gYQrml3zTOtM1SMHHh4nDPjISNwxqCc5WG2CgQlNZmeH+Q5r2jRT71Yipyh/S
	9kNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iHDDvbMtIjXltxYnkoivomTTaCUAYkmNHVHjU2MZooo=;
	b=e4c/uvRCxVuukwO4RWlbCKK2bUNmSu/wNEkreoNg0dF8+SSu0ehxvPV37imfLUecCq
	OGtglDHzjUxY0sRHA8zvLcBYirl7b+mPB/+FRjl/MFKW3ZPA8+4m7ouheQ7lNdYJsc2J
	qtQd2y2ts33QJIsH05Dm8IVGZOjo/mrhUihUYgEGuN6MS9czVw0Hud1phzPt/3wVv5MP
	iKOTqGyNM8sokTnZo3miborY4U0uhxIWm1NOuTKLOFWJx7DzFquK6ONmM33cqQeI+K8G
	Fi+4pnO+L9UBpfotbbnHsqeGAAdOxOEqwaDqKuj3yMoOtjMuTPOAPcVGjiATlwU4CSU2
	6dMA==
X-Gm-Message-State: ALKqPwdjvvr2zt/ihQ57j6d6xWj5oik/SXbyvVpDanfD7aLcwzyy23gF
	2mRC21/GUqx0AU7L8Fms89qkIGAvtRqQ4P3KMIf1bw==
X-Google-Smtp-Source: AB8JxZrAZumN7ZGXP8VkQwRNZLkvog0T/Rxgkfo+N8h0E1yEDbgqBtXN2TJCscN6cwprOUAcoUazbkFG8JustkBRtlQ=
X-Received: by 2002:adf:d14a:: with SMTP id
	b10-v6mr8885592wri.112.1526894139457; 
	Mon, 21 May 2018 02:15:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.227.70 with HTTP; Mon, 21 May 2018 02:15:38 -0700 (PDT)
From: techi eth <techieth@gmail.com>
Date: Mon, 21 May 2018 14:45:38 +0530
Message-ID: <CAJw2sSCuN13xxybYtXFFGmJF_Snxacs6JXYR6xJ19AOY2VeFCg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 24 May 2018 08:42:26 -0700
Subject: Yocto SDK & toolchain deploy issue
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
X-List-Received-Date: Mon, 21 May 2018 09:15:42 -0000
Content-Type: multipart/alternative; boundary="000000000000cac33b056cb3bebe"

--000000000000cac33b056cb3bebe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would like to use SDK=E2=80=99s & tool chain generated from Yocto to some=
 other
PC. I see following difficulty while using.



1)      Path in *environment-setup-cortexa8hf-vfp-neon-poky-linux-gnueabi*
is hard code. Is it possible to have that is configurable.

2)      If I change path in *environment-setup-cortexa8hf-vfp-neon-poky-lin=
ux-
gnueabi script *than also it raise error while recognizing compiler*.*



Please let me know hint for using tool chain generated from one machine to
other machine at any path.

--000000000000cac33b056cb3bebe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

















<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">I would like to use SDK=E2=80=99s &amp; tool ch=
ain generated from Yocto
to some other PC. I see following difficulty while using.<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span>=C2=A0</span></p>

<p class=3D"gmail-MsoListParagraph" style=3D"margin:0in 0in 0.0001pt 0.5in;=
font-size:11pt;font-family:Calibri,sans-serif"><span><span>1)<span style=3D=
"font-style:normal;font-variant:normal;font-weight:normal;font-stretch:norm=
al;font-size:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;=
">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span>Path in <b>environment-setup-cortexa8hf-vfp-neon-poky-=
linux-gnueabi</b>
is hard code. Is it possible to have that is configurable.<span></span></p>

<p class=3D"gmail-MsoListParagraph" style=3D"margin:0in 0in 0.0001pt 0.5in;=
font-size:11pt;font-family:Calibri,sans-serif"><span><span>2)<span style=3D=
"font-style:normal;font-variant:normal;font-weight:normal;font-stretch:norm=
al;font-size:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;=
">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span>If I change path in <b>environment-setup-cortexa8hf-vf=
p-neon-poky-linux- gnueabi script </b>than
also it raise error while recognizing compiler<b>.</b><span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span>=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Please let me know hint for using tool chain ge=
nerated from
one machine to other machine at any path.<span></span></p>





<br></div>

--000000000000cac33b056cb3bebe--
