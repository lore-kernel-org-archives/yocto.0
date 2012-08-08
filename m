Return-Path: <yesyanus@yahoo.com>
Received: from nm22-vm3.bullet.mail.ne1.yahoo.com
	(nm22-vm3.bullet.mail.ne1.yahoo.com [98.138.91.152])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E23DCE0027F
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 05:59:20 -0700 (PDT)
Received: from [98.138.90.57] by nm22.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Aug 2012 12:59:20 -0000
Received: from [98.138.88.235] by tm10.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Aug 2012 12:59:20 -0000
Received: from [127.0.0.1] by omp1035.mail.ne1.yahoo.com with NNFMP;
	08 Aug 2012 12:59:20 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 203585.69288.bm@omp1035.mail.ne1.yahoo.com
Received: (qmail 87181 invoked by uid 60001); 8 Aug 2012 12:59:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1344430760; bh=meTjytFZO1NZhvD+Z49xrQEVKv8SHrjttbSI7S6LsD8=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=k4mRpKfAq4kRu2UPXWfir+W7nniHDFms5QfJ5w9PjNSXbOVF5CuLmMBfvuMfCyyDA9/vx4hHWKuNbajDzhsxVqJbkiTzYHKsWsG3NvVmcdp1YjN+HOJrfRMHgXoQCuL2SfdZAcebAex+A85kRWs8qYVmHETVKNPp3g8nS+WQg6w=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=ZAepIwMd5ay2tBxUYSQfU7jBcDGUx86Rwn56bgEYkOzNxf7N7bVblPUsAaEExvPj4CWSRC0coRL/xrfz13rp0kvobr6FFTHWVMBcP1HsvM3PbnXDnUPW3Jp5WhBseadjDIcSncqMSPlb+lAM4C5bMdL7nCjc7FyeOtDJqtoCHsc=;
X-YMail-OSG: F_KPpc8VM1lKkbeKIkiA1IU9jwfoKcC6xLgX0_EOL93BOpL
	vekSpir0VWww6FlVpo66NF5NBdVDYVLHrKXRyv5xxvheoe699bzlpbpwU6Sg
	0enyMe2YQx4YTczH3K6DRYgBnzALA6PMO9YQuK1i1CIjUihBRnadxntUKeSD
	9kTeGCZMqvStNzjWVnvM3Na54PXlKl9iYTxZMnabAMaBBoxqglUMbZRIJeMQ
	moBber6aAfvDVaAQgHi9geES7uNTh_h34L1LuSQSc2SAE35ZNXaQ6ABveGh0
	DdrU67qF4l6frA8D3Eb9IU0990c4k9yq2R2MckHfvNUpOpRiB1Lg63jluD6S
	hzFLf_wJ_VfUuNtYyikDTLAFXdkC._KAi6.9g0sqUrw0N1xy4En9bUyB6Xzq
	VHx8R6VWH7jx252AdiFixJMNdF8wG7VT2ZDvpeLnmrWpCDicfYn20XISBlsM
	kx6mTDSXBl4dVmBU6wbKXhJudHjXsHdnB403U8HeKqQ--
Received: from [110.232.35.192] by web121502.mail.ne1.yahoo.com via HTTP;
	Wed, 08 Aug 2012 05:59:19 PDT
X-Mailer: YahooMailWebService/0.8.120.356233
Message-ID: <1344430759.60259.YahooMailNeo@web121502.mail.ne1.yahoo.com>
Date: Wed, 8 Aug 2012 05:59:19 -0700 (PDT)
From: Yes Yanus <yesyanus@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: a question about multilib
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Yes Yanus <yesyanus@yahoo.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Aug 2012 12:59:21 -0000
Content-Type: multipart/alternative;
	boundary="1319493512-1447898103-1344430759=:60259"

--1319493512-1447898103-1344430759=:60259
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi everyone,=0A=A0I=A0have a question about multilib. I have a layer which =
is Independent of meta. this layer include some bb files and some of them a=
re same with bb files in meta. for example, ncurses_5.7.bb in my layer and =
ncurses_5.9.bb in meta. but when I run command bitbake lib32-ncurses the bb=
 file in meta is called. I have set the priority in my layer. the prority i=
s higher than layer in meta. why bb files in my layer can't be called ?=0Aa=
nd if I run bitbake ncurses then bb files in my layer can be called.=0A=0AW=
ho can tell me the cause and how to solve the question?=0A=0AThanks=0Ayes=
=0A

--1319493512-1447898103-1344430759=:60259
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:14pt"><div><div class=3D"li=
nestyle1 colourline" style=3D"font-family: Consolas, 'Lucida Console', mono=
space; text-indent: -7px; padding-left: 7px; word-wrap: break-word; font-si=
ze: 13px; ">Hi everyone,</div><div class=3D"linestyle1 colourline" style=3D=
"font-family: Consolas, 'Lucida Console', monospace; text-indent: -7px; pad=
ding-left: 7px; word-wrap: break-word; font-size: 13px; ">&nbsp;I&nbsp;have=
 a question about multilib. I have a layer which is Independent of meta. th=
is layer include some bb files and some of them are same with bb files in m=
eta. for example, ncurses_5.7.bb in my layer and ncurses_5.9.bb in meta. bu=
t when I run command bitbake lib32-ncurses the bb file in meta is called. I=
 have set the priority in my layer. the prority is higher than layer in met=
a. why bb files in my layer can't be called ?</div><div class=3D"linestyle2
 colourline" style=3D"font-family: Consolas, 'Lucida Console', monospace; t=
ext-indent: -7px; padding-left: 7px; word-wrap: break-word; font-size: 13px=
; ">and if I run bitbake ncurses then bb files in my layer can be called.</=
div><div class=3D"linestyle2 colourline" style=3D"font-family: Consolas, 'L=
ucida Console', monospace; text-indent: -7px; padding-left: 7px; word-wrap:=
 break-word; font-size: 13px; "><br></div><div class=3D"linestyle2 colourli=
ne" style=3D"font-family: Consolas, 'Lucida Console', monospace; text-inden=
t: -7px; padding-left: 7px; word-wrap: break-word; font-size: 13px; ">Who c=
an tell me the cause and how to solve the question?</div><div class=3D"line=
style2 colourline" style=3D"font-family: Consolas, 'Lucida Console', monosp=
ace; text-indent: -7px; padding-left: 7px; word-wrap: break-word; font-size=
: 13px; "><br></div><div class=3D"linestyle2 colourline" style=3D"font-fami=
ly: Consolas, 'Lucida Console', monospace; text-indent: -7px; padding-left:=
 7px;
 word-wrap: break-word; font-size: 13px; ">Thanks</div><div class=3D"linest=
yle2 colourline" style=3D"font-family: Consolas, 'Lucida Console', monospac=
e; text-indent: -7px; padding-left: 7px; word-wrap: break-word; font-size: =
13px; ">yes</div><div class=3D"linestyle2 colourline" style=3D"font-family:=
 Consolas, 'Lucida Console', monospace; text-indent: -7px; padding-left: 7p=
x; word-wrap: break-word; font-size: 13px; "><br></div></div></div></body><=
/html>

--1319493512-1447898103-1344430759=:60259--
