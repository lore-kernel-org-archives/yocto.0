Return-Path: <shravan@bluesparq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF313E00A93; Mon, 30 Sep 2019 12:29:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
	[209.85.221.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25670E009E2
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 12:29:57 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id d66so2942764vka.2
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 12:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bluesparq-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=6f1i8CNho5x8ZqcLaG3tGk5D1dZjL5o5x6xaQIRsZAQ=;
	b=eauVHjVOFqY5hVSGFhF1sRB2qXr4tUkuHOeURjOlwSEKta29WhyN6J1c/TifN1AvlI
	kTlgv5w1zLDLDc662NiH3C/DKBaonElnpBSRjM0+n1NIqaAU29iMhaIkmslDoM0kn4vD
	9fdon/ZezhNtP114KHMDG+rNCsuCkDhlGqMcZ+nNGXjfb5zpQbcTwa0aa7RCxLlgbT5r
	rKjjMzmgV2xZVwmitS8YOAgqm2foAV6NtEybjO+7a/LlARPGkJnx9BL9f0lBSU6dpVBy
	LYQl3npQQoGt3vLmmfMM2y3Rv/fQYtkFVkiKULVsWgQ6HY7CdLYPmyhAfw8mVg2+J942
	JEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6f1i8CNho5x8ZqcLaG3tGk5D1dZjL5o5x6xaQIRsZAQ=;
	b=Gqw5S3M2HD1KzOyZkoEB2weu/W7c2PC+/Xnvl64/e7LHMJECWblwMt4FbdFXpFQXf7
	fJAEgg3s3aN3zovnaSTfeCMPH+dnGEEQ/wPCaGRFFj5sTOrOB5dXrNrPYwN+yjBqED7G
	XJHP+ccBwfVqkXz4kpz3UtLQRO+d2QkL15J5yB4ksH1F8tjsZHQjMIpj7SHLYR13rQ6D
	c+M29UqBQenQ6+4NiiEtyXtTzGPos7lGhg7Du575492DJ+tN1SG9dAZoDz9NCN8CmrQX
	Qgd9U3w99TLIfijAFBH2jWEO0NFW49dPUxDzhvXz9Qz1knIVbMjhOxeA7tB0FqBbxEWv
	23UA==
X-Gm-Message-State: APjAAAX2gF45e4pLu00u18vwsD4oHTQ6oLTkZ6LdDXgoZ7rXKUuQ8WsE
	svvWpR/StUGt+RZg0MljPtduDcOI8fG+a9H4wAH/cJ5UWLA=
X-Google-Smtp-Source: APXvYqwcvqPGsvExfa5ugG3iNzjrtNNsWC8kobc/woSw8zZrlw80c4Ecmrrl8wa3YHPWID1s+DYzag9t6hTY4F7QqLY=
X-Received: by 2002:a1f:6244:: with SMTP id w65mr5955173vkb.50.1569871796181; 
	Mon, 30 Sep 2019 12:29:56 -0700 (PDT)
MIME-Version: 1.0
From: Shravan Singh <shravan@bluesparq.com>
Date: Mon, 30 Sep 2019 15:29:45 -0400
Message-ID: <CABjzrPTAFGE8nua4ONh0S_6zrFL38LSojCpFyR_ELp6p3Lcx5w@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 04 Oct 2019 08:37:49 -0700
Subject: Building a out of tree kernel module on target system
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
X-List-Received-Date: Mon, 30 Sep 2019 19:29:57 -0000
Content-Type: multipart/alternative; boundary="000000000000c133ff0593ca4212"

--000000000000c133ff0593ca4212
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to build an out of tree service module on a yocto raspberry pi
image(target system).
I am using yocto version warrior
and my machine is Raspberrypi-cm3
Kernel version is 4.19.58

I was able to get the build directory by including

IMAGE_INSTALL_append = " kernel-modules kernel-dev kernel-devsrc"
After that, I saw a build directory on raspberrypi-image

Now I am trying to compile my source file with the command

*make* *ARCH*=arm *CROSS_COMPILE*=arm-poky-linux-gnueabi-
*KSRC*="/lib/modules/4.19.58/source"
-C /lib/modules/$(shell uname -r)/build *M=*/home/root/tsDriver modules

After that I get an error saying *asm/bitsperlong.h*: no such file or
directory

Am I missing something in my make command?


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

--000000000000c133ff0593ca4212
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am trying to build =
an out of tree service module on a yocto raspberry pi image(target system).=
</div><div>I am using yocto version warrior</div><div>and my machine is Ras=
pberrypi-cm3</div><div>Kernel version is 4.19.58</div><div><br></div><div>I=
 was able to get the build directory by including</div><div> <br></div><div=
>IMAGE_INSTALL_append =3D &quot; kernel-modules kernel-dev kernel-devsrc&qu=
ot;</div><div>After that, I saw a build directory on raspberrypi-image</div=
><div><br></div><div>Now I am trying to compile my source file with the com=
mand</div><div><br></div><div><b>make</b> <b>ARCH</b>=3Darm <b>CROSS_COMPIL=
E</b>=3Darm-poky-linux-gnueabi- <b>KSRC</b>=3D&quot;/lib/modules/4.19.58/so=
urce&quot; -C /lib/modules/$(shell uname -r)/build <b>M=3D</b>/home/root/ts=
Driver modules</div><div><br></div><div>After that I get an error saying <b=
>asm/bitsperlong.h</b>: no such file or directory <br></div><div><br></div>=
<div>Am I missing something in my make command?<br></div><div><br></div><di=
v><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"background-color:rgba(255,2=
55,255,0)"></span>Regards,<br>Shravan Singh<br>(239) 243-0838<br><br>Blue S=
parq, Inc.<br>928 NE 24th Lane unit 4 and 5.<br>Cape Coral, FL 33993<br><fo=
nt size=3D"1"><br>IMPORTANT: The contents of this email and any attachments=
 are confidential. They are intended for the named recipient(s) only. If yo=
u have received this email by mistake, please notify the sender immediately=
 and do not disclose the contents to anyone or make copies thereof.</font><=
br></div></div></div></div></div></div></div></div></div></div></div>

--000000000000c133ff0593ca4212--
