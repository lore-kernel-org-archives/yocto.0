Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE4E5E00815; Tue, 27 Jan 2015 12:55:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F225AE00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 12:55:25 -0800 (PST)
Received: by mail-lb0-f175.google.com with SMTP id 10so15263515lbg.6
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 12:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=L0SIm4V1ytyhlOxOkTZHn/xioIlBiZrXhSt8/alGGzg=;
	b=IbMj0sk1rffp3OFSsvwkT/j7OWYFSYAxKCfjb68Da78vvHFI8W0H0x1CwcR+9lDqma
	fpcgg2z2chx0tzK+h/kiJXzs/ukyUsuqevnXPAxjPDIT2ccuHCF5MYGhZ+uP2latWd+g
	nNVTIEztewLYVKbUz1iA1fDU2fTfS3X3ry9sW8IRMO6RSW35hudJnEaf5Usxg1OkQ2R1
	wlsCr1mtP1CkAJn2U49cjYJZVPmxnrLXuYZB3jGO0BsHNU6H01x5P7bLgPC2+v+Bhpj7
	XrMHDyaWzqRMea/WiwYYej/GfWXsRMbBMEQdDE4UjK8k7XAhgeCehicNwlElLySCZzdd
	ziMQ==
MIME-Version: 1.0
X-Received: by 10.152.5.38 with SMTP id p6mr4002642lap.91.1422392122972; Tue,
	27 Jan 2015 12:55:22 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.25.24.12 with HTTP; Tue, 27 Jan 2015 12:55:22 -0800 (PST)
Date: Tue, 27 Jan 2015 18:55:22 -0200
X-Google-Sender-Auth: a1yItkfq6Q1WPlZv7Lu7ldc_SFU
Message-ID: <CABKVDBD3Rft23qHpj=zt9qvnemxPUcTfETxSMGaYVgvNTB56UA@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Install package in deploy/deb
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
X-List-Received-Date: Tue, 27 Jan 2015 20:55:39 -0000
Content-Type: multipart/alternative; boundary=089e01419ace38a0f9050da8798d

--089e01419ace38a0f9050da8798d
Content-Type: text/plain; charset=UTF-8

My package is in tmp/deploy/deb/ {in all directories}

I've tried with
CORE_IMAGE_EXTRA_INSTALL  -> failed

This package is private and contains data and structure to be unpacked and
attached to tmp /work/.../rootf /    that is generated

I tried several settings and documentation without success, to have tried
using ROOTFS_POSTPROCESS_COMMAND

-- 

*Att,Cleiton Bueno*

--089e01419ace38a0f9050da8798d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span id=3D"result_box" class=3D"" lang=3D"en"><span class=
=3D"">My package</span> <span class=3D"">is in</span> <span class=3D"">tmp<=
/span><span class=3D"">/</span><span class=3D"">deploy/</span><span class=
=3D"">deb</span><span class=3D"">/</span> {<span class=3D"">in all</span> <=
span class=3D"">directories</span><span>}</span><br><br> <span class=3D"">I=
&#39;ve tried</span> <span class=3D"">with</span><br> <span class=3D"">CORE=
_IMAGE_EXTRA_INSTALL</span>=C2=A0 <span class=3D"">-&gt; failed</span><br><=
br> <span class=3D"">This package</span> <span class=3D"">is private</span>=
 <span class=3D"">and contains</span> <span class=3D"">data</span> <span cl=
ass=3D"">and structure</span> <span class=3D"">to be</span> <span class=3D"=
">unpacked</span> <span class=3D"">and attached to</span> <span class=3D"">=
tmp</span> <span class=3D"">/work</span><span class=3D"">/.../</span><span =
class=3D"">rootf</span> <span class=3D"">/</span>=C2=A0=C2=A0=C2=A0 <span c=
lass=3D"">that is generated</span><br><br> <span class=3D"">I tried</span> =
<span class=3D"">several</span> <span class=3D"">settings</span> <span clas=
s=3D"">and</span> <span class=3D"">documentation</span> <span class=3D"">wi=
thout</span> <span class=3D"">success</span><span>,</span> <span class=3D""=
>to</span> <span class=3D"">have tried</span> <span class=3D"">using</span>=
 <span class=3D"">ROOTFS_POSTPROCESS_COMMAND</span></span><br clear=3D"all"=
><br>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<i><b>Att,<br>Cleiton Bueno</b></i><br><br></div></div></div></div></div></=
div></div></div></div></div>
</div>

--089e01419ace38a0f9050da8798d--
