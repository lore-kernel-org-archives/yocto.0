Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1589CE00BEF; Mon,  9 Apr 2018 05:38:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D86AE00903
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 05:38:20 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id u86so5720414pfd.2
	for <yocto@yoctoproject.org>; Mon, 09 Apr 2018 05:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=e7PEd2bUn60wQutzX4FZuvvFDDkL50vZ/0BEgBeDOcA=;
	b=cG+cT3fZJ3FM0IbeI1sDlK0mRv1apKRKpPVqM+b7vMizaZvxL6gpwmw9/d/Rb7mUXj
	zCx7oNeZfdbRlTd9HUp/zevFCx4fbBLnYDM51940NVtWBjYY3vwp2YA0VsV2IrCULjg3
	Xww2mCQOKyBv7AwYLXBBdLV/qmZ7oQ7tHnPiZtKieqUH2COmudRQOZjP5L5zlkz7uL7O
	jNawpM+vgc0WW8UYqgMj4h8Oznj37tpYBsuTKz6uwsTz8NBQDxGEi5h4MFQd1gfx9Ty6
	eJvaOALC/nwPA+CqTlXRSTxAJxmQ/aD59ZPjVS8YTg8UzgqWzVx0EOqe6FpCCT66vX8Y
	ZH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=e7PEd2bUn60wQutzX4FZuvvFDDkL50vZ/0BEgBeDOcA=;
	b=OpWW+2cSJvlRo2uNApsDmwbTGa+U61w4+/Iwhsec0L+xLmx3idKlwVHVC5S1UbhKpk
	EgP6O1L2C8SrzdJve/K0cHgMHIzVjnZX2kByctR7Qq+ZEki4LQhsTZkivv7AwWj/ZW5J
	6rDmrMS63HgOhf33a1anCBY07zk5iDHYSzggc2whEZTRmryFGCb//AyNUo/62p/CMi3S
	KMNQWOiau2/+Fo8XJlnsSEeU/9qtsMHmZSkDeXUkqwd019UPQHHaoW/fAmqLxOyKS/Is
	UFBpUKW1euLFlsmR5L5P0xUaxTs63vJvK8i15MeL+hQLek527of3KdHJnNBNF3TF+rQH
	hyzA==
X-Gm-Message-State: AElRT7Hlv3pTEjOep4o1ppTN52qdMWj97IHFhVqmaVw/BoIY5bJhBLtG
	PMKhKfY8OE/uTA9OdlAkk0uJYGfHB7RLRZTEeU/8zg==
X-Google-Smtp-Source: AIpwx4+1PO0suwhUi1C1RaON+JGJBVVzqGbLUz2ukyVT+vmV4rCvzZm79rNZ/ppP7Xv5IuETb2z5/jm6jESWiuV6mdw=
X-Received: by 10.98.68.135 with SMTP id m7mr29208580pfi.57.1523277500420;
	Mon, 09 Apr 2018 05:38:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.178.133 with HTTP; Mon, 9 Apr 2018 05:38:19 -0700 (PDT)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Mon, 9 Apr 2018 14:38:19 +0200
Message-ID: <CAPb0b+NE9DzuweRZTVxmQDgqzSAe0NEGDhS9D5swx=J39Pb6eA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [yocot] bluez5 not included in image
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
X-List-Received-Date: Mon, 09 Apr 2018 12:38:22 -0000
Content-Type: multipart/alternative; boundary="001a1149a1ea4e9a54056969aead"

--001a1149a1ea4e9a54056969aead
Content-Type: text/plain; charset="UTF-8"

In local.conf i have

DISTRO_FEATURES_append += " bluez5 bluetooth wifi"

IMAGE_INSTALL_append += " linux-firmware-bcm43430 bluez5 bridge-utils
wpa-supplicant python-smbus i2c-tools "

and when i run bluetoothd -v it is not found

it seems for some reason bluez5 is not included.

--001a1149a1ea4e9a54056969aead
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In local.conf i have<br><div><br>DISTRO_FEATURES_append +=
=3D &quot; bluez5 bluetooth wifi&quot;<br><br>IMAGE_INSTALL_append +=3D &qu=
ot; linux-firmware-bcm43430 bluez5 bridge-utils wpa-supplicant python-smbus=
 i2c-tools &quot;<br><br></div><div>and when i run bluetoothd -v it is not =
found<br><br></div><div>it seems for some reason bluez5 is not included.<br=
></div><div><br><br></div></div>

--001a1149a1ea4e9a54056969aead--
