Return-Path: <sasikanth.v19@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD3A8E00BDF; Wed,  4 Jun 2014 16:37:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sasikanth.v19[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B165E00B6F
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 16:37:03 -0700 (PDT)
Received: by mail-ob0-f173.google.com with SMTP id wm4so252382obc.18
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 16:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YBUxI5tbdGgorMT2bpWRw1O0cEu6r6jT2jLbUs3m14Y=;
	b=a/NA+DpzEUvnJzl2sMdMo8X2ioWmku5xYcNjxvpmgM5F4SEIepAb0Muw04A7nmUX23
	MxneviqSDyPdMmsCGuYz+fNUVAKDg//ODJTY3Jo+OJ9AXKC/EXPzJerGbAHR/cs+cfAf
	ytN7MkYutvGIrZL09iA2yJ2/5MkZLllH6bR/FwhLj34iit/ZxxK8MKm9sCW/dfdLzAlO
	8epNL+mySJ06RZBf8k6e+ZdvvNQRaIaEDogbG/ir9oTLKadZCt70oghSAshNFSzVFnTD
	yh4EGpVwUKtgXqziVOMvycVzF3MP1tmuaqh3A+U0PW2NXIU6u1QXkxtKOJbYddzKmIu3
	5MWQ==
MIME-Version: 1.0
X-Received: by 10.60.159.234 with SMTP id xf10mr63526297oeb.15.1401925022165; 
	Wed, 04 Jun 2014 16:37:02 -0700 (PDT)
Received: by 10.76.22.193 with HTTP; Wed, 4 Jun 2014 16:37:02 -0700 (PDT)
Date: Thu, 5 Jun 2014 05:07:02 +0530
Message-ID: <CAOJFanVBJm4N5n0jongvS5AORA9At9dAq4QhZSeKbdxo+zABKQ@mail.gmail.com>
From: Sasikanth babu <sasikanth.v19@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 06 Jun 2014 11:32:24 -0700
Subject: Procedure to build Initramfs Image
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
X-List-Received-Date: Wed, 04 Jun 2014 23:37:05 -0000
Content-Type: multipart/alternative; boundary=047d7bd6c514f2fe1e04fb0b1a92

--047d7bd6c514f2fe1e04fb0b1a92
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

    How to build initramfs image (rootfs embedded in kernel - uimage)?. I
know it has been asked several time on this mailing list  but could find a
solution?.


I tried steps mentioned in the below link

http://kexecboot.org/documentation/crosscompiling/oe-yocto

but I got rootfs.cpio.gz and uimage no initramfs(rootfs embedded in kernel);


Any suggestions or links on how to build initamfs image.

Thanks in advance.

- Sasi

--047d7bd6c514f2fe1e04fb0b1a92
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi all,<br><br></div>=A0=A0=A0 How to =
build initramfs=20
image (rootfs embedded in kernel - uimage)?. I know it has been asked=20
several time on this mailing list=A0 but could find a solution?.<br><br>
<br>I tried steps mentioned in the below link<br><br><a href=3D"http://kexe=
cboot.org/documentation/crosscompiling/oe-yocto" target=3D"_blank">http://k=
execboot.org/documentation/crosscompiling/oe-yocto</a><br><br></div>but I g=
ot rootfs.cpio.gz and uimage no initramfs(rootfs embedded in kernel);<br>

<br><br></div>Any suggestions or links on how to build initamfs image.<br><=
br></div><div>Thanks in advance. <br></div><div><br></div>- Sasi</div>

--047d7bd6c514f2fe1e04fb0b1a92--
