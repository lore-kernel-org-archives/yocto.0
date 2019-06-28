Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C38A0E009EA; Fri, 28 Jun 2019 02:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A59E4E00927
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 02:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1561713701;
	bh=9BmcKnaBrzRMqqsBZTj/lGuUWXZ0t97qnRO4oeUFkds=;
	h=X-UI-Sender-Class:To:From:Subject:Date;
	b=FZ/Z6BWxsPGwgPg8RTqSSDiRIcUbvOVWFlOFJilV2B8YYkElFwSuPSC58jcvFg7BF
	CJaoBC3Jan/zyOxqdTAyUKavqDg+MviQ74U2cl+p0yvAeoA8I70rRuPMXPWhMkUYqa
	ZhVekkNd8dzhx+VswhcusF38Kv9mMiEzvDJupwfo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx002
	[212.227.17.190]) with ESMTPSA (Nemesis) id 0LgZdt-1iItF21ag1-00nvZa
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 11:21:41 +0200
To: yocto@yoctoproject.org
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
Date: Fri, 28 Jun 2019 11:21:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:YFJQHGO7/uGSF5WjUgAwrEwLV5GN9yAFVIYD5sBZOQDs/pp0z3z
	Pyy6eIAPyBjVUZwm8TpwUJ4jgJuZnpsYUPzpxNU4vjU3pff8Zxd7To11xawh6A+EWFla8lN
	BQbd6iNwZ+kj2KxepEx7OrCfxsdD1SOT8r4clhlecJ5eGbcr6eVa+QvnDFV2PvYERJKqgW2
	+X/jtRJNilycQ7zMga9iw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:GtD6GHpeGaQ=:GW3f7YW9+J8Y3arI7/t1iF
	axrckYdutztF7glOPz1EWxlM2o1N37WapN7u+JGW1sjwMfnPj09kq742E2+CwVdFvbAHozMkQ
	rJb4UY2BV6ZE5flQABqQ4CCP+dvpdvgOL+2W50mOT/IarkA+aLQ1BdpkD85N9yEQxBtohs86H
	x3WKR2PcyehGiXclDGhOlp2aXD6IaExHeCgwaYKq10cHx4sTiOtdTZvYoMQmhF18mzSnNHyg+
	yYgb6avf88ImYWfQtA/vX1n2Wfm+AhwvPktwBmbg9pc4c3MXRbITCd/MvwyAo5UrMH9/WniPv
	QqgolzGgTsLxqBRtHlkomTbLjqHNT2LrUmuhOuyrI0KpnN3maeVL987tUmvdFc4DL+6GNGYM0
	dohWpvKeJPzAcRW0M9LA0/bVchulCJiDEt53GKAr/0zAsredCMz1qZSjToc7Hx/F4Ce3/BBI5
	8kbcrsdfHbBGo/Whg8mNFDFbW3Bl6VZnJLUTW5NN7T7mlS+aw8jTH7TU0Y220LB7zV3T4yafL
	CiyTMHqt6ZEBLarraxRzJxxax+EkiPMdxt/W8wSeBIH0OyS3jqlfxvC0E5W1UEXDze3+tr3Gl
	zUbBYHWLzf13fcNtz/wB47tU8qgq5GMpk6/TCsDW6i7AhW5XZNzVl0iNZO+zxHwtyeGAN6ndc
	XZSbJxNsuNkK8S4D20OnwbMvtVu7D9eHZhgjHtL7q35IjNq+c8ZyihhAb+HDr4cDMWCWp9ud5
	E3ZrkZ2Th6vQX5hhvFqUmU/TC3jcNUdqoMMMs8xi/guGsi+MG8y8GDxIrXMqs9gEDVJbEjCd7
	6XinmI2GQdCqIjspBNriJFX1OSGKRY1EfyHZvh0v1JTXad20Dr9eyXByaI6S8H0yB3gPyfilR
	iXwxivjArkKBDvETNDOxhfKG/Y/ySxqml/6ZXGAHYdAbj7aQCuPTIxnWiG1sVoYEnCr3cDTnh
	CGR5dmcWQz24AyLVjXMqfF5ulpAVZ2NXI8ThfHpPPCodIMt2C8p7bO02K67j1bJap5kjLaTZO
	WhYemIA2sVxzD2nOENfHJyvB24reXNgx5jtJ56knQnJMKBrAsne7rQeaPL+NQjcs6IPGVtrpS
	48BlU2aOxQzcgykU/EuVFDsmuFqw/ItAfbB
Subject: Can't boot to initramfs
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
X-List-Received-Date: Fri, 28 Jun 2019 09:21:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello,
I currently try to deploy a single rootfs update mechanism for my
embedded device. I can't boot to initramfs using either "break" or
"break=3Dpremount" (without quotes...). I tried this in systemd-boot and
grub-efi (always efi boot) but the boot process just continues normally.
If I insert at the same point e.g. "quiet" this argument is recognised.
I boot the .wic image with a separate boot partition from a USB stick.
in local.conf I have set:
INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
INITRAMFS_IMAGE_BUNDLE =3D "1"

In order to reduce complexity I now use the standard
core-image-minimal-initramfs without .bbappend. I can confirm (from
seeing the task) that bitbake bundled the kernel with the initramfs.

You can find the /var/log/dmesg here: https://pastebin.com/ya7iCtq7

To my understanding the initramfs should be embedded in /boot/bzImage.
However since I use an intel platform I also have a /boot/microcode.cpio
which gets loaded via "initrd /microcode.cpio". Removing this line in
grub does not enable me to get an initramfs prompt either (again, using
break as option).

Did I forget some configuration or do I have to put the break statement
at a very specific position within the "linux ..." boot command ? Do you
know which bitbake variables to check ? (both set in local.conf do not
get overwritten, already checked this). I got the thud branch checked
out in all my meta-layers except for meta-qt which is currently on
master branch.

Help is much appreciated !

Best regards
Moritz


