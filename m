Return-Path: <v.r.roriz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 098F4E00C2C; Tue, 25 Jul 2017 01:29:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (v.r.roriz[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C102E00C29
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 01:29:56 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id t201so39017797wmt.1
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 01:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AJEEBIJxIe3rKeljhbMANAZFp69gN/2NqA1W7hvgJJU=;
	b=Xm+q8v9VpUlShDszLGKoaFMAkNKJ7KrJQTMRJhJdHgdgIaKpzNi185K62zFn2ASsB0
	bUEQJ15ljYq+gKvFik7nzYdnPgUlyJ2uVfrrxYZMq5xmoGjafu8PUAcCB+hEbsQpE6Hk
	bUde1XvoyO+iPeHc1Wnl5kjc5fefuPPr8VBz6dCQcPz44bnOp9Yuvnishj7TZdUO+Vkz
	MZ5w0c0y8CcCI1ImXPwYU6ZamkMGtZcVfxgIfMwS1EN3zjCO9r8Ifk63weLo1v18HvCV
	V3zV5hogMXnjx2w1lypb1AqZQPbJYazZlE9YyevZ/G4eHjSpSVv5xEcRTLB8WhS9hcm+
	R0vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AJEEBIJxIe3rKeljhbMANAZFp69gN/2NqA1W7hvgJJU=;
	b=VZuyFohLvIU9x69HT1N3lBHLyzvLAUrQQiRxewEkSptcdrUks9H7P8KY4aXGZSZAOb
	eRGrdiMMH8slD7nhEUeOARVoUVi+gtfQJ/U3vwUOz/3AKuav+b6MA037FdszxkSnlWBW
	o3GtE+4UuOh5WLBG0g4uMcNQRDk42SIgNKczqLYGeHJ045g6pxSYR/f99vik+Td0Zku9
	fkC4vmKc6tI88owl0WnmopkhbYSJRJ/woVPUw2i9Ev2OfB3+rPGSlMLMroNJa6IAcQjx
	nxLnc/8thA6ztT/F70p6DQ+SSPxlHqZoCLjSTqyCE/e5BJbVbKJ5WB3ZjTUvurbxV5vO
	8jjQ==
X-Gm-Message-State: AIVw112saGykPHhM+C3aABc7drKm6yiOA5gOqiussfvpUxKezIKZoRyZ
	5wuKyVNdKjUCP4hq642kq7GxcBqRdjeo
X-Received: by 10.28.211.7 with SMTP id k7mr6728700wmg.1.1500971395118; Tue,
	25 Jul 2017 01:29:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.134.113 with HTTP; Tue, 25 Jul 2017 01:29:54 -0700 (PDT)
From: vr roriz <v.r.roriz@gmail.com>
Date: Tue, 25 Jul 2017 10:29:54 +0200
Message-ID: <CAB_D2Uzyu8VaDu30ekK4EGk1_hw-fAtpXSDzR3kMD_1bA19ywA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [Error] Conflict between meta and meta-freescale layer
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
X-List-Received-Date: Tue, 25 Jul 2017 08:29:58 -0000
Content-Type: multipart/alternative; boundary="001a11467872d3021d055520227e"

--001a11467872d3021d055520227e
Content-Type: text/plain; charset="UTF-8"

Dear all,

I am trying to compile a core-image-minimal, using the 4.1-2.0 Kernel
version. I am using the meta-freescale layer upon meta and meta-bsp layers.
I keep getting the ERROR: Multiple .bb files are due to be built which each
provide cryptodev-linux.  I already tried to wipe out the output /
sstatechache dir, and call clean -c <recipe>, and also cleansstate.

The conflict is between:
  /home/vroriz/poky/meta-freescale/recipes-kernel/cryptodev/cryptodev-qoriq-
linux_1.8.bb
  /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb

The output for tracing is:
A list of tasks depending on these providers is shown and may help explain
where the dependency comes from.
/home/vroriz/poky/meta-freescale/recipes-kernel/cryptodev/cryptodev-qoriq-
linux_1.8.bb has unique dependees:
  /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_
build
  /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_
package_qa
  /home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb:do_
package_write_rpm
/home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb has
unique dependees:
  /home/vroriz/poky/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:
do_package
  /home/vroriz/poky/meta/recipes-connectivity/openssl/openssl_1.0.2j.bb:
do_configure
  /home/vroriz/poky/meta/recipes-core/images/core-image-minimal.bb:do_image
It could be that one recipe provides something the other doesn't and
should. The following provider and runtime provider differences may be
helpful.
/home/vroriz/poky/meta-freescale/recipes-kernel/cryptodev/cryptodev-qoriq-
linux_1.8.bb has unique provides:
  cryptodev-qoriq-linux
/home/vroriz/poky/meta-freescale/recipes-kernel/cryptodev/cryptodev-qoriq-
linux_1.8.bb has unique rprovides:
  cryptodev-qoriq-linux-doc
  cryptodev-qoriq-linux
  cryptodev-qoriq-linux-staticdev
  cryptodev-qoriq-linux-locale
  cryptodev-qoriq-linux-dbg
  cryptodev-qoriq-linux-dev
  ^cryptodev-qoriq-linux-locale-.*
/home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb has
unique provides:
/home/vroriz/poky/meta/recipes-kernel/cryptodev/cryptodev-linux_1.8.bb has
unique rprovides:
  ^cryptodev-linux-locale-.*

BR,
Vitor Roriz

--001a11467872d3021d055520227e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Dear all,<br><br></div>I am tryin=
g to compile a core-image-minimal, using the 4.1-2.0 Kernel version. I am u=
sing the meta-freescale layer upon meta and meta-bsp layers.<br></div>I
 keep getting the ERROR: Multiple .bb files are due to be built which=20
each provide cryptodev-linux.=C2=A0 I already tried to wipe out the output =
/=20
sstatechache dir, and call clean -c &lt;recipe&gt;, and also=20
cleansstate.<br></div><br>The conflict is between:<br>=C2=A0 /home/vroriz/p=
oky/meta-<wbr>freescale/recipes-kernel/<wbr>cryptodev/<a href=3D"http://cry=
ptodev-qoriq-linux_1.8.bb" target=3D"_blank">cryptodev-qoriq-<wbr>linux_1.8=
.bb</a><br>=C2=A0 /home/vroriz/poky/meta/<wbr>recipes-kernel/cryptodev/<a h=
ref=3D"http://cryptodev-linux_1.8.bb" target=3D"_blank">crypt<wbr>odev-linu=
x_1.8.bb</a><br><br>The output for tracing is:<br>A list of tasks depending=
 on these providers is shown and may help explain where the dependency come=
s from.<br>/home/vroriz/poky/meta-<wbr>freescale/recipes-kernel/<wbr>crypto=
dev/<a href=3D"http://cryptodev-qoriq-linux_1.8.bb" target=3D"_blank">crypt=
odev-qoriq-<wbr>linux_1.8.bb</a> has unique dependees:<br>=C2=A0 /home/vror=
iz/poky/meta/<wbr>recipes-kernel/cryptodev/<wbr>cryptodev-linux_1.8.bb:do_<=
wbr>build<br>=C2=A0 /home/vroriz/poky/meta/<wbr>recipes-kernel/cryptodev/<w=
br>cryptodev-linux_1.8.bb:do_<wbr>package_qa<br>=C2=A0 /home/vroriz/poky/me=
ta/<wbr>recipes-kernel/cryptodev/<wbr>cryptodev-linux_1.8.bb:do_<wbr>packag=
e_write_rpm<br>/home/vroriz/poky/meta/<wbr>recipes-kernel/cryptodev/<a href=
=3D"http://cryptodev-linux_1.8.bb" target=3D"_blank">crypt<wbr>odev-linux_1=
.8.bb</a> has unique dependees:<br>=C2=A0 /home/vroriz/poky/meta/<wbr>recip=
es-connectivity/openssl/<wbr>openssl_1.0.2j.bb:do_package<br>=C2=A0 /home/v=
roriz/poky/meta/<wbr>recipes-connectivity/openssl/<wbr>openssl_1.0.2j.bb:do=
_configure<br>=C2=A0 /home/vroriz/poky/meta/<wbr>recipes-core/images/core-<=
wbr>image-minimal.bb:do_image<br>It
 could be that one recipe provides something the other doesn&#39;t and=20
should. The following provider and runtime provider differences may be=20
helpful.<br>/home/vroriz/poky/meta-<wbr>freescale/recipes-kernel/<wbr>crypt=
odev/<a href=3D"http://cryptodev-qoriq-linux_1.8.bb" target=3D"_blank">cryp=
todev-qoriq-<wbr>linux_1.8.bb</a> has unique provides:<br>=C2=A0 cryptodev-=
qoriq-linux<br>/home/vroriz/poky/meta-<wbr>freescale/recipes-kernel/<wbr>cr=
yptodev/<a href=3D"http://cryptodev-qoriq-linux_1.8.bb" target=3D"_blank">c=
ryptodev-qoriq-<wbr>linux_1.8.bb</a> has unique rprovides:<br>=C2=A0 crypto=
dev-qoriq-linux-doc<br>=C2=A0 cryptodev-qoriq-linux<br>=C2=A0 cryptodev-qor=
iq-linux-<wbr>staticdev<br>=C2=A0 cryptodev-qoriq-linux-locale<br>=C2=A0 cr=
yptodev-qoriq-linux-dbg<br>=C2=A0 cryptodev-qoriq-linux-dev<br>=C2=A0 ^cryp=
todev-qoriq-linux-locale-<wbr>.*<br>/home/vroriz/poky/meta/<wbr>recipes-ker=
nel/cryptodev/<a href=3D"http://cryptodev-linux_1.8.bb" target=3D"_blank">c=
rypt<wbr>odev-linux_1.8.bb</a> has unique provides:<br>/home/vroriz/poky/me=
ta/<wbr>recipes-kernel/cryptodev/<a href=3D"http://cryptodev-linux_1.8.bb" =
target=3D"_blank">crypt<wbr>odev-linux_1.8.bb</a> has unique rprovides:<br>=
=C2=A0 ^cryptodev-linux-locale-.*<br><br></div>BR,<br></div>Vitor Roriz</di=
v>

--001a11467872d3021d055520227e--
