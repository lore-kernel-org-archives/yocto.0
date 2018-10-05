Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A34DFE006AF; Fri,  5 Oct 2018 04:13:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCE48E0053F
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 04:13:11 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id q8-v6so1548731wmq.4
	for <yocto@yoctoproject.org>; Fri, 05 Oct 2018 04:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lwfE+PF8zYBOCtyUkiEGJLdBCZVs/YzVK42p2h/Tzww=;
	b=eWtLalum5IIBCKdr6BQOf9YN7Ox0xPFsgx4rhnpHXH7rjkZ1Ssli7eG/GOIo8gQqNv
	8FkAda/iDrxw6CNnE1rgc996S+GCJacKtY/895UeBctI/PtuY+i8iAR+/O0dTticuRql
	rhW0hgA/iEy7nyP6GViE/RbkqviiYMDR+zageuIQ7aGRpU7R+ktuePg+Bo9HrZwSHYFq
	UQUojVldostVS7vuW+zc42dcW9ULj0wxjHvfzGdTP0b2zmPmPLLHf5Txu9Iz1fI32cpA
	ATQJ6e879sM1sEX7tnjztxU7IH0W+9zCMPrORRSNxHZc84RCWlrtZAGvHSHOfqdkae2o
	8CHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lwfE+PF8zYBOCtyUkiEGJLdBCZVs/YzVK42p2h/Tzww=;
	b=uGc1obpe0tk/GBlyruFlZjAG6Df9QTnSWH60inS906jxRGEeMLStQWO8Rsu7hQUtCR
	fM682crZbVmb6mnoRo6PU/mKgwXm0jBWybnoryHbq0R4O07xupKwa+tgbsIejV9dgZ5+
	J28Qtn5AfyXMzX0VzhQ6H7qY7QpaEgza79M/jHIbfjupckpmp5DQqWsPCtwxp9Wxtj10
	xJOo+yccB9LxrkQL8w7Ll6jopF2ZuyJ8QfMmihSW0RD99626iCwfDo8dR2XTkIF/flsK
	JsboEbcP/oH9yI+JK8EuK1RX69UvXzpkD6c/I6Edb3HioAa3nXn2DWdptXPek1JXPTXy
	3PSw==
X-Gm-Message-State: ABuFfojF5GcueHMD4FM6TIl5w0CpYnVXtWOCZPXCYkfdGXNiEetzzWch
	oJK717Ti0VuEuW7MkNv3B2b2a/b3Hc65+J33SpoOp2so
X-Google-Smtp-Source: ACcGV60C/+Zlvp13Hrp36HiQAJYO/rs4p6oe0dHTnv2uwcievhzvau02TYW7AK5/5jUlaVgLvaN7KIOD6s28Bw8mEQI=
X-Received: by 2002:a1c:e12:: with SMTP id 18-v6mr7280014wmo.30.1538737990621; 
	Fri, 05 Oct 2018 04:13:10 -0700 (PDT)
MIME-Version: 1.0
From: Markus W <markus4dev@gmail.com>
Date: Fri, 5 Oct 2018 13:12:59 +0200
Message-ID: <CAFd=ocjm2E-pKH5sDbradN=qsTMYAvcWKyjXa2An-Rnb7MKWwA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 05 Oct 2018 08:28:08 -0700
Subject: [meta-raspberrypi] Problem enabling w1-gpio
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
X-List-Received-Date: Fri, 05 Oct 2018 11:13:12 -0000
Content-Type: multipart/alternative; boundary="000000000000555d6e0577795b6d"

--000000000000555d6e0577795b6d
Content-Type: text/plain; charset="UTF-8"

Hi!

I'm creating a yocto image (sumo) for the raspberrypi and got stuck on how
to enable the one-wire interface on boot.

I have enabled the SPI bus and I2C in my local.conf file.

ENABLE_SPI_BUS = "1"
ENABLE_I2C = "1"

and checked that they are loaded on boot.

I'm struggling to figure out where to set  "dtoverlay=w1-gpio" and how to
enable the w1-gpio module on boot. The /boot/config.txt file doesn't exist
by default after startup. If I create this file with the line above
directly on the rpi and reboot it, the w1-gpio interface is still not
enabled.

What is the proper way to do this?

Thanks for any help!

Regards,
Markus

--000000000000555d6e0577795b6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">Hi!<br><br>I&#39;m creating a yocto image (sumo)=
 for the raspberrypi and got stuck on how to enable the one-wire interface =
on boot.<br><br>I have enabled the SPI bus and I2C in my local.conf file.<b=
r><br>ENABLE_SPI_BUS =3D &quot;1&quot;<br>ENABLE_I2C =3D &quot;1&quot;</div=
><div dir=3D"ltr"><br></div><div dir=3D"ltr">and checked that they are load=
ed on boot.<br><br>I&#39;m struggling to figure out where to set =C2=A0&quo=
t;dtoverlay=3Dw1-gpio&quot; and how to enable the w1-gpio module on boot. T=
he /boot/config.txt file doesn&#39;t exist by default after startup. If I c=
reate this file with the line above directly on the rpi and reboot it, the =
w1-gpio interface is still not enabled.<br></div><div dir=3D"ltr"><br></div=
><div>What is the proper way to do this?<br></div><div dir=3D"ltr"><br>Than=
ks for any help!<br><br>Regards,<br>Markus<div> <br></div><div><br></div><d=
iv><br></div><div><br></div><div><br></div></div></div></div></div></div></=
div>

--000000000000555d6e0577795b6d--
