Return-Path: <mayank77fromindia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8187DE00B9A; Tue, 22 Sep 2015 00:28:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mayank77fromindia[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07E35E00474
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 00:28:48 -0700 (PDT)
Received: by obbbh8 with SMTP id bh8so1016827obb.0
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 00:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=2GPFKoxCtxUyUWq4hfyDwVKq0mES+VMj1MN1F+sLNzQ=;
	b=EQ6cGeZrHd/Es1CyKsa9SuTvh5/UOn1WITOVfhWON4CU5MXeL12kivaypbY8D7FC4A
	3HV72GUyvWm/SQRyG09ZedqEgXFWcgbhonP9IJfKdoVPjDFW3fxzE0lZFvLnYn953/m1
	qr+QFrH6JfVB5O2mh5lwSVareGIslfG32ezv9uf1D5t7png8k8LtEShBMwmLQqdwtRRs
	+/xL+7fPWHQUPu8vCo2MqRFrmkujcHzCcR1r75RwRgfznOQMspNYWVTmanuZWpFhmp6/
	zUjvYMTDDXiedupI3/49J4Qj2QHBQPRBFDLC7mVPS82aBofor4ZCTQ+OjPmAr0s5f6Gt
	6/DA==
MIME-Version: 1.0
X-Received: by 10.182.47.202 with SMTP id f10mr13810819obn.56.1442906927701;
	Tue, 22 Sep 2015 00:28:47 -0700 (PDT)
Received: by 10.202.61.67 with HTTP; Tue, 22 Sep 2015 00:28:47 -0700 (PDT)
Date: Tue, 22 Sep 2015 12:58:47 +0530
Message-ID: <CAKjpqyKurtGquuZ48sR8tpQmtA66OUEbUPWoTWxN07Z9ULXE3Q@mail.gmail.com>
From: Mayank Agarwal <mayank77fromindia@gmail.com>
To: clarson@kergoth.com, yocto@yoctoproject.org
Subject: do_rootfs failed
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
X-List-Received-Date: Tue, 22 Sep 2015 07:28:49 -0000
Content-Type: multipart/alternative; boundary=089e0158b216deafe5052050f232

--089e0158b216deafe5052050f232
Content-Type: text/plain; charset=UTF-8

Hi

While installing gstreamer-1.0 i am facing following errors in do_rootfs:

Configuring xfsprogs-mkfs.
Configuring packagegroup-rdk-oss-mediaserver.
Configuring gst-plugins-bad-linsys.
Configuring gst-plugins-good-isomp4.
Collected errors:
 * opkg_install_cmd: Cannot install package gst-plugins-base-version.

ERROR: Function failed: do_rootfs


The binaries are getting installed in sysroot/usr/lib/gstreamer-1.0 but
not getting installed in final image.
Tried INHIBIT_PACKAGE errors but nothing happens.


In log file i am getting like this:

ERROR: Unable to install packages. Command .. returned 255


Regards
Mayank

--089e0158b216deafe5052050f232
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi=C2=A0</span><div style=
=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">While insta=
lling gstreamer-1.0 i am facing following errors in do_rootfs:</div><div st=
yle=3D"font-size:12.8px"><br></div><div style=3D""><div style=3D"font-size:=
12.8px">Configuring xfsprogs-mkfs.</div><div style=3D"font-size:12.8px">Con=
figuring packagegroup-rdk-oss-mediaserver.</div><div style=3D"font-size:12.=
8px">Configuring gst-plugins-bad-linsys.</div><div style=3D"font-size:12.8p=
x">Configuring gst-plugins-good-isomp4.</div><div style=3D"font-size:12.8px=
">Collected errors:</div><div style=3D"font-size:12.8px">=C2=A0* opkg_insta=
ll_cmd: Cannot install package gst-plugins-base-version.</div><div style=3D=
"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">ERROR: Functio=
n failed: do_rootfs</div><div style=3D"font-size:12.8px"><br></div><div sty=
le=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">The binar=
ies are getting installed in sysroot/usr/lib/gstreamer-1.0 but=C2=A0</div><=
div style=3D"font-size:12.8px">not getting installed in final image.</div><=
div style=3D"font-size:12.8px">Tried INHIBIT_PACKAGE errors but nothing hap=
pens.</div><div style=3D"font-size:12.8px"><br></div><div style=3D"font-siz=
e:12.8px"><br></div><div style=3D"font-size:12.8px">In log file i am gettin=
g like this:</div><div style=3D"font-size:12.8px"><br></div><div style=3D""=
><span style=3D"font-size:12.8px">ERROR: Unable to install packages. Comman=
d .. returned 255</span><br></div><div style=3D"font-size:12.8px"><br></div=
><div style=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">=
Regards</div><div style=3D"font-size:12.8px">Mayank</div></div></div>

--089e0158b216deafe5052050f232--
