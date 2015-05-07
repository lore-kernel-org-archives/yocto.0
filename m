Return-Path: <abhishek.embsys@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6B79E008DC; Wed,  6 May 2015 22:48:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (abhishek.embsys[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C47DE007B6
	for <yocto@yoctoproject.org>; Wed,  6 May 2015 22:48:11 -0700 (PDT)
Received: by igbsb11 with SMTP id sb11so14553461igb.0
	for <yocto@yoctoproject.org>; Wed, 06 May 2015 22:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0vHFins6lalJKRvXwvt8x2tFQ2RLmGKWPso5DCatec4=;
	b=lOOvUD7dJhUSrDHa8h4QMDBNhYq174O0WdQLDq+yJD54nH7IE4HsCEDvPdYx3MR3fy
	vU4h2XAG3p1oM0nRHumaj3lripzycYVB9G1GNmbP9hCwcoDPe/ecbVPkmU6sM6ioZjRK
	6p7mQ+AV15glPVEPXl7wscRvBdovdahtq8zrRRGPTw3o7zKokoENBi6uz0sF1KkrVW21
	xpBiO2Zd7Skrn+ahRuNl1Xe/rgWdgJP7S7pZF1pKeldHpsrsOgeD9JaRhUO5h+Q9LkJb
	IcZj34K9EaiGOefFWj4uWUssTTg8eskggxblBGclL7ue7iQW6R7fIjaIZCH6Rm+mKNCp
	UWPQ==
MIME-Version: 1.0
X-Received: by 10.107.165.206 with SMTP id o197mr2748874ioe.56.1430977691254; 
	Wed, 06 May 2015 22:48:11 -0700 (PDT)
Received: by 10.107.150.80 with HTTP; Wed, 6 May 2015 22:48:11 -0700 (PDT)
Date: Thu, 7 May 2015 11:18:11 +0530
Message-ID: <CAGj-b5+B+9ZkkWCTOhZ1z9CXrMbnXvGDSET1xWrAWKMY-Hq08Q@mail.gmail.com>
From: abhishek srivastava <abhishek.embsys@gmail.com>
To: yocto@yoctoproject.org
Subject: piTFT support in yocto
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
X-List-Received-Date: Thu, 07 May 2015 05:48:17 -0000
Content-Type: multipart/alternative; boundary=001a11415074f80604051577741d

--001a11415074f80604051577741d
Content-Type: text/plain; charset=UTF-8

Hi all
I am looking for piTFT 2.8" resistive screen in yocto.
Even though, i can see those fbtft drivers in stagging mode in linux
3.18.11 but i do not know how to use it?
when i can expect these drivers to be included in Linux kernel? I have
checked notro's github but it doesn't go in sync with yocto procedure. I
have tried using $bitbake linux-raspberrypi -c menuconfig,  and i can see
that under Touchscreen option, required driver is already selected:
ADS7846/AD7873.........

But when i connect my piTFT, its all white.......no display ?How can I make
it functional and till when it would be officially included in kernel.

please help

--001a11415074f80604051577741d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi all<br></div>I am looking for piTFT 2.8&=
quot; resistive screen in yocto. <br>Even though, i can see those fbtft dri=
vers in stagging mode in linux 3.18.11 but i do not know how to use it? <br=
></div>when i can expect these drivers to be included in Linux kernel? I ha=
ve checked notro&#39;s github but it doesn&#39;t go in sync with yocto proc=
edure. I have tried using $bitbake linux-raspberrypi -c menuconfig,=C2=A0 a=
nd i can see that under Touchscreen option, required driver is already sele=
cted: ADS7846/AD7873.........<br><br></div><div>But when i connect my piTFT=
, its all white.......no display ?How can I make it functional and till whe=
n it would be officially included in kernel.<br><br></div>please help <br><=
/div>

--001a11415074f80604051577741d--
