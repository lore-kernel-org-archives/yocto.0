Return-Path: <mborden1983@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 855C9E0076F; Wed,  4 Mar 2015 14:23:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mborden1983[at]gmail.com)
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
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 953DEE00718
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 14:23:39 -0800 (PST)
Received: by mail-vc0-f173.google.com with SMTP id hy10so6725740vcb.4
	for <yocto@yoctoproject.org>; Wed, 04 Mar 2015 14:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=e5Lzq3/co5dVxnKyglvud1QMmfhj2QnqIAjtQwDqCmE=;
	b=cg4tx3Vzd9Zy6y64vu/7v+XQodknvL6iXkU3DEVMahHvm0VpR/+wRvz3JXF/bWGM3s
	l+SD1SKgNquOSUQjO6hotd8nFkGGRrfd9imRAfSAdHdcS5Hyb3HS67N0PnkApXk7CLbv
	UhFhcxZcKfy4Mj3KMiOJ1v8o5zQdeJspll2U6olQ/yrO6fxv+GnpxUo3xtP4GXkZwR0N
	VEIGD/99dyqzwntuWqxEiRPnIVypAj0hN7fqaNaQXFNcrsYTyBMM1UV1l4anALA9WxB2
	1W7vy4g5p6/JhZE/C2kBrbR6fWKAmf61FkMTTBAue6GGxo4RfHTYpS157WV9JqNEib3E
	XukA==
X-Received: by 10.52.66.205 with SMTP id h13mr9696126vdt.16.1425507819383;
	Wed, 04 Mar 2015 14:23:39 -0800 (PST)
MIME-Version: 1.0
From: Mike Borden <mborden1983@gmail.com>
Date: Wed, 04 Mar 2015 22:23:38 +0000
Message-ID: <CALk_qX5kjSKoGXN28=TJDbCzMj-nrCGtKHHJDHKYUwk+0Sqekw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Unexpected INITRAMFS_IMAGE behavior
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
X-List-Received-Date: Wed, 04 Mar 2015 22:23:43 -0000
Content-Type: multipart/alternative; boundary=20cf307d04dc32f18805107de73b

--20cf307d04dc32f18805107de73b
Content-Type: text/plain; charset=UTF-8

Hello all,

I am experiencing some unexpected behavior when attempting to build a
bundled kernel and initramfs image. On it's own, my image is built just
fine and I can use it as expected. Within my local.conf file I have defined
INITRAMFS_IMAGE = my-image, and INITRAMFS_IMAGE_BUNDLE = 1. When I execute
a "bitbake my-image", the zImage files generated in my deploy directory
don't always contain the correct, most recent file system.

For example, I update some custom package that is contained in the my-image
recipe. I thought the expected behavior if I called a "bitbake my-image"
would be to compile the kernel, rebuild my rootfs, and then rebuild the
kernel with the new cpio embedded inside of it. If I look at the cpio file
that is created in deploy directory it is correct, in that it contains the
changes I made to my custom package. But sometimes I have to execute
"bitbake my-image" a couple times before the embedded initramfs reflects
what I want it to. It's like it doesn't always grab the most recent cpio
and the old one is used or something. In case it makes a difference, I've
commented out "INHERIT += "rm_work"".

Am I doing something wrong? Am I not understanding the workflow correctly?
Do I need to clean either the image or the virtual/kernel between compiles
for this to work?

Thanks,

Mike

--20cf307d04dc32f18805107de73b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,=C2=A0<div><br></div><div>I am experiencing some=
 unexpected behavior when attempting to build a bundled kernel and initramf=
s image. On it&#39;s own, my image is built just fine and I can use it as e=
xpected. W<span style=3D"font-size:13.1999998092651px">ithin my local.conf =
file I have defined INITRAMFS_IMAGE =3D my-image, and INITRAMFS_IMAGE_BUNDL=
E =3D 1. When I execute a &quot;bitbake my-image&quot;, the zImage files ge=
nerated in my deploy directory don&#39;t always contain the correct, most r=
ecent file system.=C2=A0<br><br>For example, I update some custom package t=
hat is contained in the my-image recipe. I thought the expected behavior if=
 I called a &quot;bitbake my-image&quot; would be to compile the kernel, re=
build my rootfs, and then rebuild the kernel with the new cpio embedded ins=
ide of it. If I look at the cpio file that is created in deploy directory i=
t is correct, in that it contains the changes I made to my custom package. =
But sometimes I have to execute &quot;bitbake my-image&quot; a couple times=
 before the embedded initramfs reflects what I want it to. It&#39;s like it=
 doesn&#39;t always grab the most recent cpio and the old one is used or so=
mething. In case it makes a difference, I&#39;ve commented out &quot;</span=
><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;=
font-size:13px;line-height:normal">INHERIT +=3D &quot;rm_work&quot;&quot;.<=
br><br>Am I doing something wrong? Am I not understanding the workflow corr=
ectly? Do I need to clean either the image or the virtual/kernel between co=
mpiles for this to work? <br><br>Thanks, <br><br>Mike=C2=A0</span><span sty=
le=3D"font-size:13.1999998092651px"><br></span></div></div>

--20cf307d04dc32f18805107de73b--
