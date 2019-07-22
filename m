Return-Path: <shravan@bluesparq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 182C6E0098A; Mon, 22 Jul 2019 15:07:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
	[209.85.217.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AAFFE00931
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 15:07:33 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id 190so27466971vsf.9
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 15:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bluesparq-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=wyrbsQbBabjFufj/qhsmdBvHEHzA5lnwZqx+m5qdATs=;
	b=pjQMFHxMnvVQTT1eUjjYEG+qA88JHTIZcb4K2AhCNKyqcLLkW5d5xhUx0J6aC4le5P
	mCQSz1zWqHwxOManl0LgWcLPtQvFV1U1QP5sSDTk3dhW7n4wDzkfeJ6/NYjV3xZoNzvG
	vrDJI66SVLmWLsmvMXgGl+y0FzwheM9tTEe9w4gT2kM0pv+vU4PMUB2Do5k3fYeKWkx7
	PMRZDaChH5jJhmBhNnBwonCRS+tZstfvvLRnQIf16sUlfn81aVedJp6md5rHI6boxtJS
	Vo4Vj45pMicHhe9MX9Cb8CeyXFgtAyN4m4EQQW9RcUuDtbQghZag6b36pIGbr4AY1kl+
	cUrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wyrbsQbBabjFufj/qhsmdBvHEHzA5lnwZqx+m5qdATs=;
	b=KXuEqy4brfVI49/aJg5GPiAnxCb91TQdNAZylGNc4nwTEtQkNdkGb31NdMT2WzpoJD
	oDnsw4TjVgmbm7lIkeFHQaMMwNbbqwfcJ4+HGWyxrljEGWS8xmmZwP8hfjMVYFvr0HJ9
	bQ51m9SakPlydFNKhsWj6pDjt5IxC3c6RHnwuvJQdSONi5GbAiamV7CLmzmrCJHJWXlY
	hahhYVoPQXKzumfhrxqjUq27jEdeIikTNxVHzhWm9/aDNNJ3NfL7d2kXkyERb+qAdzhJ
	9jCKqtjYS0yxpsd03Fgt6KTT4nJ1xbMwQl5ep9LiTnpP7D+48HJPVIZIj2X+75tU0IZ5
	A/cQ==
X-Gm-Message-State: APjAAAUfv1dJzpVzk21VSsW/eOXCXzxHhxQHzhUhgCFmfMUjxPgofPie
	aSX6wl80KpiCGQ+PVnNgtG+9o1EF2i65bIZY79RfVkEt
X-Google-Smtp-Source: APXvYqzYKIY7ouMPihdy2OY/q/tOKShFLySi+LS8PS82WrM456i326Eo4ia2hqmzJmB9+Yu6yRKF629QKnNqWI4lFnM=
X-Received: by 2002:a67:f043:: with SMTP id q3mr5507164vsm.219.1563833252765; 
	Mon, 22 Jul 2019 15:07:32 -0700 (PDT)
MIME-Version: 1.0
From: Shravan Singh <shravan@bluesparq.com>
Date: Mon, 22 Jul 2019 18:07:22 -0400
Message-ID: <CABjzrPQGehM6Vb-5UgvhE1tM5nEj90vpZM_2ZcjA0+eQ_2k5oA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 29 Jul 2019 02:14:49 -0700
Subject: Meta-raspberrypi
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
X-List-Received-Date: Mon, 22 Jul 2019 22:07:34 -0000
Content-Type: multipart/alternative; boundary="00000000000084f8de058e4c4da2"

--00000000000084f8de058e4c4da2
Content-Type: text/plain; charset="UTF-8"

Hello All,

I am trying to create a base image for raspberry-pi cm3(compute module 3)

I am using warrior-21.0.1
I downloaded meta-raspberry-pi from
https://git.yoctoproject.org/git/meta-raspberrypi
I added the layer in bblayer.conf and I have changed the machine variable
in local.conf
to *raspberrypi-cm3*
I am using oe-init-build script to generate the base files

Now when I run the command
bitbake core-image-base

I get the below mentioned error
Error: No recipes available for:
/home/blue/yacto/meta-raspberrypi/recipes-bsp/u-boot/u-boot_2019.07.bbappend
/home/blue/yacto/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.16%.bbappend


Any help with this?


Regards,
Shravan Singh
(239) 243-0838

Blue Sparq, Inc.
928 NE 24th Lane unit 4 and 5.
Cape Coral, FL 33993

IMPORTANT: The contents of this email and any attachments are confidential.
They are intended for the named recipient(s) only. If you have received
this email by mistake, please notify the sender immediately and do not
disclose the contents to anyone or make copies thereof.

--00000000000084f8de058e4c4da2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,</div><div><br></div><div>I am trying to cr=
eate a base image for raspberry-pi cm3(compute module 3)</div><div><br></di=
v><div>I am using warrior-21.0.1 <br></div><div>I downloaded meta-raspberry=
-pi from=C2=A0
<a rel=3D"vcs-git" href=3D"https://git.yoctoproject.org/git/meta-raspberryp=
i" title=3D"meta-raspberrypi Git repository">https://git.yoctoproject.org/g=
it/meta-raspberrypi</a> <br></div><div>I added the layer in bblayer.conf an=
d I have changed the machine variable in local.conf</div><div>to <b>raspber=
rypi-cm3</b></div><div>I am using oe-init-build script to generate the base=
 files</div><div><br></div><div><b></b></div><div>Now when I run the comman=
d <br></div><div>bitbake core-image-base</div><div><br></div><div>I get the=
 below mentioned error <br></div><div>Error: No recipes available for:</div=
><div>/home/blue/yacto/meta-raspberrypi/recipes-bsp/u-boot/u-boot_2019.07.b=
bappend</div><div>
/home/blue/yacto/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0=
-omx_1.16%.bbappend</div><div><br></div><div><br></div><div>Any help with t=
his? <br></div><div><br></div><div><br>

</div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><span style=3D"background-color:rgba(255,255=
,255,0)"></span>Regards,<br>Shravan Singh<br>(239) 243-0838<br><br>Blue Spa=
rq, Inc.<br>928 NE 24th Lane unit 4 and 5.<br>Cape Coral, FL 33993<br><font=
 size=3D"1"><br>IMPORTANT: The contents of this email and any attachments a=
re confidential. They are intended for the named recipient(s) only. If you =
have received this email by mistake, please notify the sender immediately a=
nd do not disclose the contents to anyone or make copies thereof.</font><br=
></div></div></div></div></div></div></div></div></div></div></div>

--00000000000084f8de058e4c4da2--
