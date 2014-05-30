Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9C37E00BDA; Thu, 29 May 2014 21:06:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
Received: from mail-yh0-f44.google.com (mail-yh0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BD10E00BBC
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 21:06:16 -0700 (PDT)
Received: by mail-yh0-f44.google.com with SMTP id b6so1143175yha.17
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 21:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9bdOGNqRyRSi0lkeepxKLHm6+sH3mr18pfAtj/QZxXM=;
	b=jgxC5MrXjkKqFZnz9/t355SRxfVIExYzWoksA7u6nD5FSYK/8XuNVmC/aVLg376Orf
	dLrIneyQquXDxxUOhGsBfRnE0zN5CpGcEEjyHdmaNiqcw+sXOCOiBYu4s3RQPWOFD7sr
	TlDyauo9r5U+jSrcFjCTgxp78Vzx9f+jn/lkJNJZA8h8Q1Yjlyd2iP/peLAJUgZekUKN
	vyjlc3dRRpSPtuTO1ssEsjmNcbmIprXSV9qsVggt3rsAUyltGp+3HqjU6ZxyC1m3aUYj
	E+C9hgJCcHNX4P7kupprcLI04yLSDAIDriWNiQrPT/GoWtjRzLSBM7p2fYMXdnumeNO8
	AbPQ==
MIME-Version: 1.0
X-Received: by 10.236.91.48 with SMTP id g36mr16658971yhf.151.1401422776145;
	Thu, 29 May 2014 21:06:16 -0700 (PDT)
Received: by 10.170.143.138 with HTTP; Thu, 29 May 2014 21:06:16 -0700 (PDT)
Date: Fri, 30 May 2014 09:36:16 +0530
Message-ID: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: yocto@yoctoproject.org
Subject: Source Command Permission Denied
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
X-List-Received-Date: Fri, 30 May 2014 04:06:19 -0000
Content-Type: multipart/alternative; boundary=20cf300e4d3dc09b3904fa962aa1

--20cf300e4d3dc09b3904fa962aa1
Content-Type: text/plain; charset=UTF-8

Hello Community,
This is my first question please excuse if I'm making a silly mistake. I am
just starting learning the yocto project to develop custom linux os. I was
following the few commands to download and setup poky on my build system
from the quick start guide at .

$ git clone http://git.yoctoproject.org/git/poky
     $ cd poky
     $ git checkout -b daisy origin/daisy
     $ source oe-init-build-env

Executing the last line gives me the following issue


kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto/poky$ ls
>
> bitbake        meta-selftest   oe-init-build-env         scripts
>
> documentation  meta-skeleton   oe-init-build-env-memres
>
> LICENSE        meta-yocto      README
>
> meta           meta-yocto-bsp  README.hardware
>
> kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto/poky$ source
>> oe-init-build-env
>
> bash:
>> /media/kashyap/3E0800DC08009555/yocto/poky/scripts/oe-setup-builddir:
>> Permission denied
>
> kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto/poky$
>
>
>
I tried searching over the internet about the possible issues but couldn't
figure out the problem here.
Anyone please help.

--20cf300e4d3dc09b3904fa962aa1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:12.7=
27272033691406px">Hello Community,</span><div style=3D"font-family:arial,sa=
ns-serif;font-size:12.727272033691406px">This is my first question please e=
xcuse if I&#39;m making a silly mistake. I am just starting learning the yo=
cto project to develop custom linux os. I was following the few commands to=
 download and setup poky on my build system from the quick start guide at .=
=C2=A0</div>
<div style=3D"font-family:arial,sans-serif;font-size:12.727272033691406px">=
<br></div><div style=3D"font-family:arial,sans-serif;font-size:12.727272033=
691406px"><pre style=3D"white-space:pre-wrap;overflow:auto;color:rgb(51,51,=
51)">
$ git clone <a href=3D"http://git.yoctoproject.org/git/poky" target=3D"_bla=
nk">http://git.yoctoproject.org/git/poky</a>
     $ cd poky
     $ git checkout -b daisy origin/daisy
     $ source oe-init-build-env</pre><pre style=3D"white-space:pre-wrap;ove=
rflow:auto;color:rgb(51,51,51)">Executing the last line gives me the follow=
ing issue</pre><pre style=3D"white-space:pre-wrap;overflow:auto;color:rgb(5=
1,51,51)">
<br></pre></div><blockquote class=3D"gmail_quote" style=3D"font-family:aria=
l,sans-serif;font-size:12.727272033691406px;margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;=
padding-left:1ex">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto=
/poky$ ls</blockquote>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">bitbake =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-selftest =C2=A0 oe=
-init-build-env =C2=A0 =C2=A0 =C2=A0 =C2=A0 scripts</blockquote>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">documentation =C2=A0meta-skeleton =C2=A0 oe-init-build-env=
-memres</blockquote>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">LICENSE =C2=A0 =C2=A0 =C2=A0 =C2=A0meta-yocto =C2=A0 =C2=
=A0 =C2=A0README</blockquote><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex">
meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-yocto-bsp =C2=A0README.hardwar=
e</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">
kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto/poky$ source oe-=
init-build-env</blockquote><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex">
bash: /media/kashyap/3E0800DC08009555/yocto/poky/scripts/oe-setup-builddir:=
 Permission denied</blockquote><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204=
,204);border-left-style:solid;padding-left:1ex">
kashyap@Kashyap-VAIO:/media/kashyap/3E0800DC08009555/yocto/poky$=C2=A0</blo=
ckquote><div><br></div></blockquote><div style=3D"font-family:arial,sans-se=
rif;font-size:12.727272033691406px"><br></div><div style=3D"font-family:ari=
al,sans-serif;font-size:12.727272033691406px">
I tried searching over the internet about the possible issues but couldn&#3=
9;t figure out the problem here.</div><div style=3D"font-family:arial,sans-=
serif;font-size:12.727272033691406px">Anyone please help.=C2=A0</div></div>

--20cf300e4d3dc09b3904fa962aa1--
