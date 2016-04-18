Return-Path: <haemarkus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2385BE00EB2; Mon, 18 Apr 2016 08:13:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (haemarkus[at]gmail.com)
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
	*      [209.85.215.50 listed in list.dnswl.org]
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55100E00C52
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 08:13:18 -0700 (PDT)
Received: by mail-lf0-f50.google.com with SMTP id j11so220400186lfb.1
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 08:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=U6inX4TnzrieAiyD+NcJzMkIrxWteokgGpA3q/FqMY8=;
	b=GXjrp9KrlAHHMccpNCZPdKv91rFD5h+051iNkggpl286XbTKyKmigHtyqliJCclL9c
	EA3PtR0AB1/VRa0/2JsljPcUd7VEE5NoCQfsu6Yuqm2YdI8ZvaRMoqmCXiZez4D84LLG
	RbQypZ/RbhHD1ZvVgLkh58rONcYNyyRlnONLsjupquZQEBtUqVsPB0kJUXmp8nkCOHQe
	aPIYbu6oaBRmtLGc5yDhgt9HPjZWWMjyhwWAZu5yUk87TNBp5oFH5wdoND/osB0B2wFr
	ptraqfZ4zFfDBfBcnlWKIaMikt5QgGRnTDcB8LsWfeJiDwgKaYtwJn9yT8wp7c8klRi8
	R+IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=U6inX4TnzrieAiyD+NcJzMkIrxWteokgGpA3q/FqMY8=;
	b=M0EVhK5TLdaAsGVfR0ENPKAhfx1T99HOgBlOjIcyeNelEWI/9bgHJSWZzNFKi/xh4y
	YlI6TqL8lgkIbO5KQKQgo2X+cwG32svsI9jK0QXLEEI13XS+Bxr6TpCPE3dFOlUgO7jM
	btcZ3d94dBr0piIhImLiQrpFcVuupCxfAk7101LVYZIcTnlDcuhe2uX5qsZevvtFOMzx
	U2H4odC+k3ti9pZWLrSvyh7qoQZnr0IATeeHs9G3KWJznaOQS0gCHX5n1Lb//a/3/rqe
	30MM1OpXl8HdmUWKInqFHk6Dit2aUA2pi+MAFm8MchZSvjYt/+cHw8LZJM4C9RQaIOpu
	DMdA==
X-Gm-Message-State: AOPr4FXpWCgaY//M1+8GfJrrf7ZvTLg7y6zLDeQviu+OJiMnoCK0yHi7NnwiT0xMItV10l8Kiaptt2rn+7f44Q==
MIME-Version: 1.0
X-Received: by 10.112.136.201 with SMTP id qc9mr14518892lbb.35.1460992396319; 
	Mon, 18 Apr 2016 08:13:16 -0700 (PDT)
Received: by 10.112.164.36 with HTTP; Mon, 18 Apr 2016 08:13:16 -0700 (PDT)
Date: Mon, 18 Apr 2016 17:13:16 +0200
Message-ID: <CAJ0mxBzThx7nJN_nUoJOgy-eeOQHTN7L=v_ozae4RRRwQUX_KQ@mail.gmail.com>
From: Markus Haege <haemarkus@gmail.com>
To: yocto@yoctoproject.org
Subject: Serial Timeout
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
X-List-Received-Date: Mon, 18 Apr 2016 15:13:36 -0000
Content-Type: multipart/alternative; boundary=089e011831accd65420530c3cc50

--089e011831accd65420530c3cc50
Content-Type: text/plain; charset=UTF-8

Hello there,

We use a Freescale imx6 with u-boot. Everything works fine, via serial
loader we copy
devictree, u-boot and kernel+initramfs to the board an it all starts. We
can login but after
5 sec the connection breaks and no further input is possible via serial
console.
For the rootfs we use core-image-minimal and bundle it with little code via
a configfile which
I add to bitbake with -R. I found these instructions in the web. Don't find
it now.
But why everything stops after 5 sec? I searched the web for hours but
don't find anything.

Help is appreciated, thanks

Markus

--089e011831accd65420530c3cc50
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello there,<div><br></div><div>We use a Freescale imx6 wi=
th u-boot. Everything works fine, via serial loader we copy=C2=A0</div><div=
>devictree, u-boot and kernel+initramfs to the board an it all starts. We c=
an login but after</div><div>5 sec the connection breaks and no further inp=
ut is possible via serial console.</div><div>For the rootfs we use core-ima=
ge-minimal and bundle it with little code via a configfile which</div><div>=
I add to bitbake with -R. I found these instructions in the web. Don&#39;t =
find it now.</div><div>But why everything stops after 5 sec? I searched the=
 web for hours but don&#39;t find anything.</div><div><br></div><div>Help i=
s appreciated, thanks</div><div><br></div><div>Markus</div></div>

--089e011831accd65420530c3cc50--
