Return-Path: <abhishekh@relysys.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83792E00867; Tue, 18 Apr 2017 04:15:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1F47E00826
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 04:15:48 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id n73so28909484vke.1
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 04:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=relysys-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=3kECjQzXMtyeKP6u7C4pPI45lLrTVvFTr3BpmANdEfQ=;
	b=iHKsxjirT5HfzBjk0lqzDCsMUm3rVcDtHJsPcLpi80h5BrIOKY8C2Ayb4mp4OUDeIu
	OvNBuTAJF/RjYVgiPmqseFV1sL/0GuGnmM1b7iy7SFQ4R1oMpvnP/KL9sOKdVRrf5oJI
	HyzOkDW6tkKKLy+x5rPBaeRzejkfoV6yVvXMgGkZNj9AVUJzpu9iYI2vlpWqh4PmJOWX
	A5bchOr7fXtAaTH+sVZV6i8O374LlfZf3kM4K4BV1wF0L6TSs3UiiU82Vjy8cc5/yd6p
	LCMvPnhM4LYvv2YKBooUvnGVQWyxtErPbYPJsYG+2Z19ImgR1msDzwxbHKmAPe9TXmwn
	Tx5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3kECjQzXMtyeKP6u7C4pPI45lLrTVvFTr3BpmANdEfQ=;
	b=TbYh1/ih3t29lXvMr35f3mI/MPvyFZx5MqGrYl3NDstls+v7QRU4DZ9aWuhcaKQqqg
	U9YsnE9NLmIyW+L0eoLcSlKW6t7/OzYrQGkT6OI/6b+/PwTuE3Gyn/e6ukSYMizjGVzS
	OIDF+OwTjGdI5MNdFYop72Td+OSSOh1/xJRwbBsQzL8ZHENJArkf/Q755tH6U7ELxeFG
	r7LR74tYHds6DWKYW+BIAGL3586ZzaScKaMbQgPwPUOT0G8myCa0RLtwQydX2wyb/LB+
	XT6EL4sKZa/LZyEbNGz9/F43oUgqJ2ungnquGrf43tTbK74b9SscbY3EynvHRGC5e5XF
	lXMA==
X-Gm-Message-State: AN3rC/7cgYSg/Bjmqk9p74db5KFtHgOeXOmn6O3gD+9oLgqiPxeIUCrK
	mhHDiOrneIfJK+KIs0NNDgExWGzwY4qj
X-Received: by 10.31.173.215 with SMTP id w206mr9988057vke.118.1492514147414; 
	Tue, 18 Apr 2017 04:15:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.58.142 with HTTP; Tue, 18 Apr 2017 04:15:47 -0700 (PDT)
From: Abhishekh Awanti <abhishekh@relysys.co.in>
Date: Tue, 18 Apr 2017 16:45:47 +0530
Message-ID: <CANPqCWL6y3EqV+M7rPQPOEgv+6DyZLx+itHghixJC4AsSiFXfw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: OPKG package management issue
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
X-List-Received-Date: Tue, 18 Apr 2017 11:15:57 -0000
Content-Type: multipart/alternative; boundary=001a114381ee945269054d6f073b

--001a114381ee945269054d6f073b
Content-Type: text/plain; charset=UTF-8

Hi,

I am trying to install *.ipk* with *opkg* in yocto.

 If i run below command

    *opkg install *.ipk*

 I am getting the below error:-


* Collected errors: * opkg_conf_load: Could not create lock file
/var/lib/opkg/lock: No such file or directory.*

I did some research and followed this link

http://wiki.hioproject.org/index.php?title=Yocto:_Opkg_Package_Management_System_Set_Up

I came to know that one should add in the *conf/local.conf*

*EXTRA_IMAGE_FEATURES = "package-management"*
>
> *IMAGE_INSTALL_append = " opkg "*
>
> *PACKAGE_CLASSES = "package_ipk"*
>

Even though i am getting the same error.

*"/var/lib/opkg/"*  is existed in my image build directory, but after
installing the image to the target device the *"/var/lib/opkg/"* is not
appearing.

I am guessing that, the disappearance of the */var/lib/opkg* folder may be
causing the opkg error.

Can anybody please help me on this problem.

Thank you,
Abhishek

--001a114381ee945269054d6f073b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br>I am trying to install <b>.ipk</b> with <b=
>opkg</b> in yocto.<br>=C2=A0<br>=C2=A0If i run below command<br>=C2=A0<br>=
=C2=A0=C2=A0=C2=A0 <b>opkg install *.ipk</b><br>=C2=A0<br>=C2=A0I am gettin=
g the below error:-<br>=C2=A0<br><b>=C2=A0Collected errors:<br>=C2=A0* opkg=
_conf_load: Could not create lock file /var/lib/opkg/lock: No such file or =
directory.</b><br><br>I did some research and followed this link<br><br><a =
href=3D"http://wiki.hioproject.org/index.php?title=3DYocto:_Opkg_Package_Ma=
nagement_System_Set_Up">http://wiki.hioproject.org/index.php?title=3DYocto:=
_Opkg_Package_Management_System_Set_Up</a><br><br>I came to know that one s=
hould add in the <b>conf/local.conf</b><br><br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><b>EXTRA_IMAGE_FEATURES =3D &quot;package-management&=
quot;</b><br><br><b>IMAGE_INSTALL_append =3D &quot; opkg &quot;</b><br><br>=
<b>PACKAGE_CLASSES =3D &quot;package_ipk&quot;</b><br></blockquote><br>Even=
 though i am getting the same error.<br><br><b>&quot;/var/lib/opkg/&quot;</=
b>=C2=A0 is existed in my image build directory, but after installing the i=
mage to the target device the <b>&quot;/var/lib/opkg/&quot;</b> is not appe=
aring.<br><br>I am guessing that, the disappearance of the <b>/var/lib/opkg=
</b> folder may be causing the opkg error.<br><br>Can anybody please help m=
e on this problem.<br><br>Thank you,<br></div>Abhishek<br><div><br>=C2=A0<b=
r>=C2=A0<br></div></div>

--001a114381ee945269054d6f073b--
