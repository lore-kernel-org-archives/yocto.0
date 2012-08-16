Return-Path: <munoz0raul@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEAA4E013E5
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 05:11:23 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1594581lag.35
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 05:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=IG2j09BKlBkLZdLHASBQ0R8GFhNqThcCZSFC9SvMyUc=;
	b=A5L7/+FLUtlVhQuIPlXN0iiKP6z3kJwGdz2xb/JZfSsKY0eEgAjbY1iVBOVb2sDb+e
	AYZ8SoTRyFKEYbAPQNtj9T1swsZwoMT3A0bNY7HT/4MdzcHmQwt4SQ2ZX3Xifqq4sfPg
	6y+Db5Xd0fgROvsBfCvYYQz6HATf7x4NwHtV3TSgFaBi/d2sZgyCTRCy9RRmbxbT9RU+
	1wN6FAfFSoNHnRmH4+RYbXFVOykRJNiLh/pu/xhNSdFyJAcTdYxEVTIDe1a5/JwFhJVk
	syulpyTInkF8o5Bg0GUJ4cHqKV+LEmwvXFnDbbYd8vI7f4loqcWJtp7DlqloaI50RROo
	YwEg==
MIME-Version: 1.0
Received: by 10.112.9.68 with SMTP id x4mr604725lba.46.1345119081986; Thu, 16
	Aug 2012 05:11:21 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Thu, 16 Aug 2012 05:11:21 -0700 (PDT)
Date: Thu, 16 Aug 2012 09:11:21 -0300
Message-ID: <CANmVirjvYNf0kedcpWP1zhNuu9_4_f-Zr-LR8aQS=1JBpUPJLQ@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: yocto@yoctoproject.org
Subject: Re-Build virtual/kernel
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 16 Aug 2012 12:11:24 -0000
Content-Type: multipart/alternative; boundary=485b390f7ae40ffbff04c760f171

--485b390f7ae40ffbff04c760f171
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello All,

I'm use yocto to create a linux for imx28, with meta-fsl-arm and
meta-openembedded.

Until now, every thing is ok, I Have a core-image-minimal-imx28evk.sdcard
that working in the machine.

My problem is that when I try to add some things in the kernel
configuration, I feel like the system build dont generate a new uImage file
or the thing that I selected in the Kernel dont be atached in the
core-image-minimal-imx28evk.sdcard!

What I did is:

*...tmp/deploy/images$ ls *
*-rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
uImage-2.6.35.3-r24-imx28evk-20120815191927.bin*
*lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.bin ->
uImage-2.6.35.3-r24-imx28evk-20120815191927.bin*

then:

*bitbake -c menuconfig virtual/kernel*
*bitbake -c patch virtual/kernel*
*bitbake -c compile virtual/kernel*
*bitbake  virtual/kernel*

and I'm looking again:

*...tmp/deploy/images$ ls *
*-rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
uImage-2.6.35.3-r24-imx28evk-20120815191927.bin*
*lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.bin ->
uImage-2.6.35.3-r24-imx28evk-20120815191927.bin*

Some One can explain to me what is the correct way to re-build the
virtual/kenel target?

Thanks for all Help!

--=20
*Raul Rosetto Mu=F1oz*

--485b390f7ae40ffbff04c760f171
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div><div>Hello All,</div><div><br></div><div>I&#39;m use yocto to create a=
 linux for imx28, with meta-fsl-arm and meta-openembedded.</div><div><br></=
div><div>Until now, every thing is ok, I Have a core-image-minimal-imx28evk=
.sdcard that working in the machine.</div>
<div><br></div><div>My problem is that when I try to add some things in the=
 kernel configuration, I feel like the system build dont generate a new uIm=
age file or the thing that I selected in the Kernel dont be atached in the =
core-image-minimal-imx28evk.sdcard!</div>
<div><br></div><div>What I did is:</div><div><br></div><div><font face=3D"&=
#39;courier new&#39;, monospace"><b>...tmp/deploy/images$ ls=A0</b></font><=
/div><div><font face=3D"&#39;courier new&#39;, monospace"><b>-rw-r--r-- =A0=
1 raul raul =A0 2511696 2012-08-15 16:23 uImage-2.6.35.3-r24-imx28evk-20120=
815191927.bin</b></font></div>
<div><font face=3D"&#39;courier new&#39;, monospace"><b>lrwxrwxrwx =A01 rau=
l raul =A0 =A0 =A0 =A047 2012-08-15 16:23 uImage-imx28evk.bin -&gt; uImage-=
2.6.35.3-r24-imx28evk-20120815191927.bin</b></font></div><div><br></div><di=
v>then:</div>
<div><br></div><div><b><font face=3D"&#39;courier new&#39;, monospace">bitb=
ake -c menuconfig virtual/kernel</font></b></div><div><b><font face=3D"&#39=
;courier new&#39;, monospace">bitbake -c patch virtual/kernel</font></b></d=
iv>
<div><b><font face=3D"&#39;courier new&#39;, monospace">bitbake -c compile =
virtual/kernel</font></b></div><div><b><font face=3D"&#39;courier new&#39;,=
 monospace">bitbake =A0virtual/kernel</font></b></div><div><br></div><div>a=
nd I&#39;m looking again:</div>
<div><br></div><div><font face=3D"&#39;courier new&#39;, monospace"><b>...t=
mp/deploy/images$ ls=A0</b></font></div><div><font face=3D"&#39;courier new=
&#39;, monospace"><b>-rw-r--r-- =A01 raul raul =A0 2511696 2012-08-15 16:23=
 uImage-2.6.35.3-r24-imx28evk-20120815191927.bin</b></font></div>
<div><font face=3D"&#39;courier new&#39;, monospace"><b>lrwxrwxrwx =A01 rau=
l raul =A0 =A0 =A0 =A047 2012-08-15 16:23 uImage-imx28evk.bin -&gt; uImage-=
2.6.35.3-r24-imx28evk-20120815191927.bin</b></font></div><div><br></div><di=
v>Some One can explain to me what is the correct way to re-build the virtua=
l/kenel target?</div>
<div><br></div><div>Thanks for all Help!</div></div><div><br></div><div>-- =
<br><b>Raul Rosetto Mu=F1oz</b><br>
</div>

--485b390f7ae40ffbff04c760f171--
