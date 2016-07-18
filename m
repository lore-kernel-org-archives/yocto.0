Return-Path: <stiffstone@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABFF5E00D03; Mon, 18 Jul 2016 06:55:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stiffstone[at]gmail.com)
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
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F10FE009A0
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2016 06:55:45 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id j185so246327400oih.0
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2016 06:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=wUHNqv2vNu/XfyaCugvUUJidYkBzdLHZfB4FWrdoHk4=;
	b=ShTSPIKsvj0TUB4tCp/9iYcPJyHCMGwUh4ew0WmR8OmkuiiTyI1I1Z67vVNdMVvPyM
	EBrA5VjEfUjQTMGqCXghlzzCy/5vmWz/AZ2oF0gcmRwAiXbJhktLlHlUgBt+OWJntZu3
	wco3Pf+GAMLoGO+IPfq5J3JRmWCsveIDt3vgcrK8y9siSNhJSa4TOGZfor0R/NmQ3RE+
	XcD4Wdo3sYi+iANeQAqAgoFWjo05hcE8E7+g8Z3WDr+tlp5Gqjzc8zugAXgyVErtisSv
	uu9v8G5xgvC74kncEm0IxXxFT/29PTgXYUEsBQ6Jfa0hPhfhhdprIUFCD+jleUPX6laK
	BTxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wUHNqv2vNu/XfyaCugvUUJidYkBzdLHZfB4FWrdoHk4=;
	b=D194eci21e4SFvQ82cgQz1JULPlvgoXZdF5mV0obY8lJNAjFbpG9M2204xr9qB6rdF
	VMjOCRt9kdc94xHyQbVFSBz1ocU52QLvduv7LUhj7IEZG9QbhOlfxouj7jQtgEUJR+3s
	l18VUSxs9QxJWl4z2Rgh9WflM4tnRL5l5aZBqXzVOqXn/vkzJXUT+jPc74jSXq/r0PET
	iz1X6d5nkXy+y3JHmwwGZkhFaBy1XKxtb/HgIVuHNHYIqGhItJiNTX9DxUXJvpRyQMHV
	6qGD6f39xE7KShzGyODep3qj12MJdJzDf4nXUZObXenIhskXKIspuoc0ROzZKm3Sr/bJ
	q4Dg==
X-Gm-Message-State: ALyK8tIzaVS69czNY4LJLPnx/812XvB9NiJglEr4x3ANr/fT/ZSmUMQCLh7GyhmGzYXxPI2Z2g+4I6lvIcHpLQ==
X-Received: by 10.202.85.151 with SMTP id j145mr17108553oib.67.1468850145035; 
	Mon, 18 Jul 2016 06:55:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.48.129 with HTTP; Mon, 18 Jul 2016 06:55:44 -0700 (PDT)
From: Yile Ku <stiffstone@gmail.com>
Date: Mon, 18 Jul 2016 07:55:44 -0600
Message-ID: <CAAGP=A-UHjPdFrNQrErEJcaogH2UQdaey=79tk9XL8EJgONitw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 19 Jul 2016 06:42:33 -0700
Subject: NOTE: Not creating empty RPM package for libvolk
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
X-List-Received-Date: Mon, 18 Jul 2016 13:55:48 -0000
Content-Type: multipart/alternative; boundary=001a113def361f8b1c0537e95372

--001a113def361f8b1c0537e95372
Content-Type: text/plain; charset=UTF-8

I am getting this error when building for PowerPC 64.


The file:
meta-sdr/recipes-core/gnuradio/gnuradio_git.bb

says to include the libraries
FILES_libvolk = "${libdir}/libvolk.so*"
FILES_libvolk-dbg = "${libdir}/.debug/libvolk.so*"

when I look for the libraries it shows:
build-v2$ find . -name "libvolk*.so*" -print
./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/build/volk/lib/libvolk.so.0.0.0
./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/build/volk/lib/libvolk.so
./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/.debug/libvolk.so.0.0.0
./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/libvolk.so.0.0.0
./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/libvolk.so
./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/image/usr/lib/libvolk.so.0.0.0
./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/image/usr/lib/libvolk.so


Are the files not being copied to the right place?

Thanks,
Y-

--001a113def361f8b1c0537e95372
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I am getting this error when building for P=
owerPC 64. <br><br><br>The file:<br>meta-sdr/recipes-core/gnuradio/<a href=
=3D"http://gnuradio_git.bb">gnuradio_git.bb</a><br><br>says to include the =
libraries<br>FILES_libvolk =3D &quot;${libdir}/libvolk.so*&quot;<br>FILES_l=
ibvolk-dbg =3D &quot;${libdir}/.debug/libvolk.so*&quot;<br><br>when I look =
for the libraries it shows:<br>build-v2$ find . -name &quot;libvolk*.so*&qu=
ot; -print<br>./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/build/volk/=
lib/libvolk.so.0.0.0<br>./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/b=
uild/volk/lib/libvolk.so<br>./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-=
r0/package/usr/lib/.debug/libvolk.so.0.0.0<br>./tmp/work/ppc64e6500-fsl-lin=
ux/gnuradio/3.7.5-r0/package/usr/lib/libvolk.so.0.0.0<br>./tmp/work/ppc64e6=
500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/libvolk.so<br>./tmp/work/pp=
c64e6500-fsl-linux/gnuradio/3.7.5-r0/image/usr/lib/libvolk.so.0.0.0<br>./tm=
p/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/image/usr/lib/libvolk.so<br><=
br><br></div>Are the files not being copied to the right place?<br><br></di=
v>Thanks,<br></div>Y-<br></div>

--001a113def361f8b1c0537e95372--
