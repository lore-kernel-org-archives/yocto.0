Return-Path: <gauravvohra89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20E9AE00BFB; Wed, 26 Jul 2017 23:45:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gauravvohra89[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7FFAE00B49
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 23:45:38 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id l7so76323217iof.1
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 23:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=nx09vHoH+jp+dsY8eL4bDRN/PDjUknkkpNB8/RfW/60=;
	b=dfGvEPL8GUFcGgXKuUfEQyaM0UO12qeNM3LwnvyJyN45aKdFA4kHYEm5hGfzsnkRco
	Irwh4DOlqKeEXUyWms63EdZaiPaezLhYek9HSYhJwXKg4nLlsredPJR06FCA0rjyURmL
	SDfJrzjrSD0dor9kIqt1y3tXBQ9Pr9Cf1P66z3XWlLLa4cGs+39KUSIvu2BLx3eG+OxK
	Jn2oRcU3YfJ196xQQiumrVPQWMp5lO072Yh6vkJa3cy4p0OpB5A+Afh28cK+MsjmOwDK
	UdblGhMnZ8UiC656TAyjLyvcvmfXYb49pPomUvpXZ8utJMiTyOpNAuRXlJ4JQuuw6XUu
	7kQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nx09vHoH+jp+dsY8eL4bDRN/PDjUknkkpNB8/RfW/60=;
	b=ddR+LvGXLi0+jgVzVSM/e5Y3zKNeSW72QO5+dnaSnMrmuXR9vCqtWCkTCpO4vKWHsX
	Xh72vQaSmG8MSuRZ6KddD2HDb/8gfO05NMJJdBKmh6ovNdz4XuUUHkNv0aiW901E+suR
	IJM9FBmUcPn1pdNP3YoLjUSf1LL+2nMxYPTCYmKm057w7fVyxcSVDrDGvuV4jeNBkCLP
	HU4ODgJ9dc82rdPDOlkAkkMSFphQg9vZ1MTkXPTN7ZCd3aeXL6RGJavvXh+0pHgX7eZW
	b2oeovDLQJwamhdUe0BMiWGX1jK2SD9fX34yzGMOA9sYQ8vJx1cQZCmBDTKOiD7I19yU
	x/jQ==
X-Gm-Message-State: AIVw113tpdQN9QZPNQBOxd5in8f/a8g1N9G+T+MJngLQddbkW13Kn3Yv
	WGVnEkW0BfsrbhcVXmcnFTiTmY3Mz8f9
X-Received: by 10.107.20.4 with SMTP id 4mr3906329iou.108.1501137937727; Wed,
	26 Jul 2017 23:45:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.170.6 with HTTP; Wed, 26 Jul 2017 23:45:37 -0700 (PDT)
From: Gaurav Vohra <gauravvohra89@gmail.com>
Date: Thu, 27 Jul 2017 12:15:37 +0530
Message-ID: <CALc4YzJF_MQfzY4sc44OYDyC93encw1K83vc24RFUgLCL3s8nA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sun, 06 Aug 2017 16:56:47 -0700
Subject: Build only 32 bit packages using multilib in a packagegroup for 64 bit machine
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
X-List-Received-Date: Thu, 27 Jul 2017 06:45:39 -0000
Content-Type: multipart/alternative; boundary="001a114fd4108984d8055546e9cb"

--001a114fd4108984d8055546e9cb
Content-Type: text/plain; charset="UTF-8"

Hello,

I need to use multilib feature in yocto to build some applications which
are part of a packagegroup recipe as only 32 bit.

I can use command to  create 32 bit packages from this packagegroup which
works,.

# bitbake lib32-packagegroup-name.bb

But the packages in this packagegroup are still building as 64 bit when i
am trying to build image

bitbake core-sato-image.bb

Configuration done

in local.conf :

MACHINE = "qemux86-64"
require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "x86"

In image recipe replaced

IMAGE_INSTALL += "packagegroup-name"

to

IMAGE_INSTALL += "lib32-packagegroup-name"
Are these changes sufficient ?

Thanks gaurav

--001a114fd4108984d8055546e9cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><p>Hello,</p><p></p><p>I need to use multilib feature=
 in yocto to build some applications which are part of a packagegroup recip=
e as only 32 bit. <br></p><p>I can use command to=C2=A0 create 32 bit=20
packages from this packagegroup which works,. <br></p><p># bitbake <a href=
=3D"http://lib32-packagegroup-name.bb">lib32-packagegroup-name.bb</a></p><p=
>But the packages in this packagegroup=20
are still building as 64 bit when i am trying to build image</p>

<p>bitbake <a href=3D"http://core-sato-image.bb">core-sato-image.bb</a></p>=
<p></p><p>Configuration done <br></p><p>in local.conf :</p><p>MACHINE =3D &=
quot;qemux86-64&quot;<br>require conf/multilib.conf<br>MULTILIBS =3D &quot;=
multilib:lib32&quot;<br>DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&=
quot;</p><p></p><p>In image recipe replaced<br></p><p>IMAGE_INSTALL +=3D &q=
uot;packagegroup-name&quot;</p><p>to<br></p><p>IMAGE_INSTALL +=3D &quot;lib=
32-packagegroup-name&quot;<br></p>Are these changes sufficient ?<br></div><=
div><br></div><div>Thanks gaurav<br></div></div>

--001a114fd4108984d8055546e9cb--
