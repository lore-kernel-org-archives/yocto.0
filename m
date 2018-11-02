Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1E20E00C10; Fri,  2 Nov 2018 01:27:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1632E00A10
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 01:27:44 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id u12-v6so1199416eds.4
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 01:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8NoiBK+8QjmClSVunXaiefTeNyq3O97Ku6orgMHm12k=;
	b=rdLFfShUoE7veX61gyxEl7y1oOlMly+rEHdBUcBoWyOmxHHvc4me0bCji7Upe64WPK
	xVlY+YEgW+gV94aq9jxzSFuyu5JpM0dCsU7CklyeAZPB5VGI3ixiUwOXOMt7Yht0RQld
	sbZX1wARfZRc/LnplP1gwed44jU6yKF5Sa71+/QkC/oexTNny1+FitG84FLhiqgIQYBC
	g1ho2ALwileS98sJB3Vcgn+Id6t1kGQ1kKa5dxdORoAJ3Jajy/SOpuiqyNklc40u+xOM
	ti5nliTfzniHdzfN23NM2kr5N9iJ3/hY8At7StihBTfvQfM2FVSAbY5AYx3wbyHKyCFB
	LYZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8NoiBK+8QjmClSVunXaiefTeNyq3O97Ku6orgMHm12k=;
	b=J+wlP4KZRZAN4yvFLuhfxL7TpFccrBVulFTcHeae+LAdhhHTA3NFR3o9XU+QCRHNMk
	/2sAF8txyNPTc0IMryz3IoWUUoGQyrqnAd8sq6lkJlpRTrbP386Ukvah6VC+/ECXp1Za
	+3LHjUgUnt40FxA+zcy5gta5xC4N4bJUFHqoxRg14Tkx5+v++iBh9ejzoj/XlUYu7lN5
	2gZdT8GCAMR95n6UZEjuyMw5EpIgZS0wDpVZRBGV3XFrqXmUiBwTOfh4z2A1lmNBpbbJ
	gZiyiwxHQfylIOPl3cUbnuT9PK5OpHoV3O6cHZwTtZ8Zu2/X7WAxbipL8INAvUOGklY7
	jRvw==
X-Gm-Message-State: AGRZ1gKHCjYOjkgC2m5N/skK1Oe3XGplJIHfpowZO3XIwHb7sjijn/y2
	Tcn+F0PVY6WSmqfXWqOB5qJIGU3FH58XuKrcpjmq
X-Google-Smtp-Source: AJdET5evFm5QIJM2LYmzaBNmfgl1jmTMyvl6e2iokt9OVR5bJRtLeLDZbSIW7j3akIoy/BYVg0QL7XCoZTHO5Hs9Be0=
X-Received: by 2002:a17:906:b7d1:: with SMTP id
	fy17-v6mr5907183ejb.70.1541147263877; 
	Fri, 02 Nov 2018 01:27:43 -0700 (PDT)
MIME-Version: 1.0
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Fri, 2 Nov 2018 09:27:33 +0100
Message-ID: <CAK4Yt2m6UT_HaA72q43ppbPzvpSJF6QvmRkUeFXFSqJK+uBtcQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: force a factory-preset sdk to quemu
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
X-List-Received-Date: Fri, 02 Nov 2018 08:27:46 -0000
Content-Type: multipart/alternative; boundary="00000000000035c5750579aa4f90"

--00000000000035c5750579aa4f90
Content-Type: text/plain; charset="UTF-8"

Hi All,

I got my board with Yocto based SDK but there is no quemu in the configfile
by default. Is it possible to add quemu capability manually to
factory-preset sdk? Id like to run the linux in an emulated enviroment, its
quiet boring to burn the sd card for each and every minor changes that I
make.

Thank,

Zoli

--00000000000035c5750579aa4f90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi All,</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">I got my board with Yocto based SDK but there is no quemu in the configfi=
le by default. Is it possible to add quemu capability manually to factory-p=
reset sdk? Id like to run the linux in an emulated enviroment, its quiet bo=
ring to burn the sd card for each and every minor changes that I make.</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">Thank,</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Zoli</div>

--00000000000035c5750579aa4f90--
