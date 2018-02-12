Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2071AE00D7B; Sun, 11 Feb 2018 16:30:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C50DCE009BB
	for <yocto@yoctoproject.org>; Sun, 11 Feb 2018 16:30:50 -0800 (PST)
Received: by mail-qt0-f176.google.com with SMTP id c19so4509434qtm.7
	for <yocto@yoctoproject.org>; Sun, 11 Feb 2018 16:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=nY1CyyvlV6MGyJok17G8g8oW1ARKW2ZVzaGRqoQpvEI=;
	b=phcLW4V0mWax/DXbH+8FffUzCA5df46QWr5LmtwHDzxGUgrH10bsPz2dsTWwluqq9g
	I/njPsZhyfURo5OlHooNQ59QI7my9xAey5vBNS5Tq6nf2Hi8UK+Er4wCGGPveF+aiqml
	ilhvs0Hk0oGlIaXO3EUobKmBMUA1C/Mh4zyqbeoBhpCdfz5cA3H/A2H3rFHaDa5mq/38
	Ud3TVrlU/lvG8vvJ0HtjqBHQ4VaM7OrEvchNGUb8pjQWu3jfSD6pJILMiCzXPn4X6f5o
	VxenDC1P//rLrGt6+T2plSTi7elbnqgX2zPGlF66TDxIzus2xwpTsSKMq/etUKzzAKda
	wc9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nY1CyyvlV6MGyJok17G8g8oW1ARKW2ZVzaGRqoQpvEI=;
	b=EclMSVEQXj+AAw7QNAgtH3nDREQY0+MxQenIIQRr3Zwc5VDTf4kQ4jBNcXnP9os8LO
	q/UqWx3gusUFY7GW0VwDbXDQ2lobMqYWEfjYq4iKbtlWlVRt2BdVv9sKAlQQQ6uHJvfP
	Lnvob0vBNli2i1vHJa0XUuYYTOXPfrZ1QyZa1UI1HjXBlzWk0nS/C8v0d/GbxgfJ4ivy
	gRltpCXTfbst65rOizFICv9AssdZ1vN1guJkImBIE6CEC2Up94+78OKJlSEaAcqb4UdH
	qboC5Opp40ODZ7DtyjdkKLzKVQQm/bbw9+4yg6A8IuhxU9wVoj8w5HL504tuJ9p02OWc
	DKWw==
X-Gm-Message-State: APf1xPD+qzsdw3+g/mAgRYNbz/vzcdeaqCfxYlC9zYhGiPiUTe5L6v6L
	gRO68efccErYburATnSt7hxbJ7qotltYEUoiWn4=
X-Google-Smtp-Source: AH8x226khArLu9s98Y3l8WzfZkoK/iwwaODCiCj8fepqOyPJ0AfiTeKyDb+1Pl9MSDTPbvN5SwiEbTgpkWooZ1Te8Wg=
X-Received: by 10.200.8.208 with SMTP id y16mr7869919qth.89.1518395449421;
	Sun, 11 Feb 2018 16:30:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.103.210 with HTTP; Sun, 11 Feb 2018 16:30:49 -0800 (PST)
From: Davis Roman <davis.roman84@gmail.com>
Date: Sun, 11 Feb 2018 19:30:49 -0500
Message-ID: <CACfi_Z3y+gdLH04Ta3j+oGy4TU9J7YfFWoz=qavQfo6ntBmmSg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto uses UTC time for DATETIME instead of localtime
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
X-List-Received-Date: Mon, 12 Feb 2018 00:30:51 -0000
Content-Type: multipart/alternative; boundary="001a114475666436440564f8fd94"

--001a114475666436440564f8fd94
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm using the DATETIME variable to generate timestamps for my final images
however I see that yocto is using UTC time.

I'd much prefer if yocto used localtime.

Any suggestions on how to change this?

Thank you,

Davis

--001a114475666436440564f8fd94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m using the DATETIME varia=
ble to generate timestamps for my final images however I see that yocto is =
using UTC time.</div><div><br></div><div>I&#39;d much prefer if yocto used =
localtime.</div><div><br></div><div>Any suggestions on how to change this?<=
/div><div><br></div><div>Thank you,</div><div><br>Davis</div></div>

--001a114475666436440564f8fd94--
