Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15711E0076C; Thu, 25 Sep 2014 08:29:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (diego.sueiro[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0880E0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 08:28:54 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id cm18so4853650qab.28
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 08:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=lL3OFXR/Lgy5soVihT6aGqrMHvyAN7d2RfMs3NX/k7w=;
	b=jg90xannSfszWs5GnPoipz0rO8uIIsKs62VIW04CdqxPFYXIXQWDspXVn8qVRd2HBW
	+kboxa5s2KxW3O1awX3Y6QhulHuWzJQhtqLiNZUoUBX8tOTP/QvzSGZ47e2jR5xxS9VS
	qRopIwgEyAtaNpFP4juI5CgZ95zCJ2X/GPaJKF+rFEQY4nQfD9MEmaIfTcMrhLYhR2un
	x6ZPRaVbQNF/Dh4u9Xe+YkX8JhPFqMp1Td+iSOuIx8wdbJ4qENiS3h0yGmeM6cBI3+FM
	5uBOqqB2cQbiRCv9J2Kvtq5X1UIC6VZE+oRB8OCOIB0GQt2ulA2a8Dj4X3HV5Kh6nTtf
	D69g==
X-Received: by 10.140.16.194 with SMTP id 60mr12506460qgb.105.1411658933735;
	Thu, 25 Sep 2014 08:28:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Thu, 25 Sep 2014 08:28:33 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 25 Sep 2014 12:28:33 -0300
Message-ID: <CAMCfZKH2wg6oLOTuTMb+QMMraxMpzoGBYeOZYB9_tXYigwkZMA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Rootfs with F2FS.
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
X-List-Received-Date: Thu, 25 Sep 2014 15:29:02 -0000
Content-Type: multipart/alternative; boundary=001a11c0a6544a18e40503e57511

--001a11c0a6544a18e40503e57511
Content-Type: text/plain; charset=ISO-8859-1

Folks,

As I could inspect on openembedded/yocto source code I didn't found
anything related with images created with F2FS. Just found f2fs-tools
recipe.

What needs to be done to get a rootfs with F2FS?
Just need to make it's entries at image_types.bbclass?

What about u-boot?
I think it cannot read F2FS partitions, correct?
If true, I have to put zImage and dtb in a fat or extX partition to get it
loaded from u-boot.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c0a6544a18e40503e57511
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Folks,</div><div><br></div><div>As I could inspect on=
 openembedded/yocto source code I didn&#39;t found anything related with im=
ages created with F2FS. Just found f2fs-tools recipe.</div><div><br></div><=
div>What needs to be done to get a rootfs with F2FS?</div><div>Just need to=
 make it&#39;s entries at image_types.bbclass?</div><div><br></div><div>Wha=
t about u-boot?</div><div>I think it cannot read F2FS partitions, correct?<=
/div><div>If true, I have to put zImage and dtb in a fat or extX partition =
to get it loaded from u-boot.=A0</div><div><br></div><br clear=3D"all"><div=
><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Suei=
ro<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcados.c=
om.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campai=
gn=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br</a=
><br><br>/*long live rock &#39;n roll*/<br></div></div>
</div>

--001a11c0a6544a18e40503e57511--
