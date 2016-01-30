Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5769E00AAF; Sat, 30 Jan 2016 04:13:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC4S9.hotmail.com (dub004-omc4s9.hotmail.com
	[157.55.2.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 109A5E009D7
	for <yocto@yoctoproject.org>; Sat, 30 Jan 2016 04:13:06 -0800 (PST)
Received: from DUB130-W17 ([157.55.2.71]) by DUB004-OMC4S9.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Sat, 30 Jan 2016 04:13:05 -0800
X-TMN: [L4lBySnpsohhGmNIOvzOVOZyP0LA2Osz]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W1777C927DF7657274834B1DADC0@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: Jonathan Haws <jonathan.haws@sdl.usu.edu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sat, 30 Jan 2016 12:13:05 +0000
Importance: Normal
In-Reply-To: <9e122189105049f0aa35aade046ef260@Ek.usurf.usu.edu>
References: <9e122189105049f0aa35aade046ef260@Ek.usurf.usu.edu>
MIME-Version: 1.0
X-OriginalArrivalTime: 30 Jan 2016 12:13:05.0527 (UTC)
	FILETIME=[92E5C870:01D15B57]
Subject: Re: Compiling different version of IGB as a kernel module
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
X-List-Received-Date: Sat, 30 Jan 2016 12:13:09 -0000
Content-Type: multipart/alternative;
	boundary="_5dd89430-0bf0-4d53-ae91-abbbbedbb039_"

--_5dd89430-0bf0-4d53-ae91-abbbbedbb039_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Jon=2C
As an alternative=2C have you considered patching the igb source that alrea=
dy exists within yocto?
Regards=2CChris

From: Jonathan.Haws@sdl.usu.edu
To: yocto@yoctoproject.org
Date: Sat=2C 30 Jan 2016 00:46:20 +0000
Subject: [yocto] Compiling different version of IGB as a kernel module

Hello all!
=20
I am trying to get the Intel IGB driver compiling as a kernel module=20
using source downloaded from SF.  I'm doing this because I was given a=20
patch to enable an external PPS to provide a time source to the PTP=20
mechanisms in the device.
=20
I've got the recipe setup and it makes it to the do_compile step=2C=20
however it fails here with some interesting output.  First=2C I get a=20
message from the shell stating that -- is an invalid option.  Second=2C=20
cc1 fails with a bad option.  I'm not even sure where to start debugging=20
this!
=20
I did have to patch the Makefile to get it to find the kernel sources=20
and build files correctly.  I've attached my recipe and that patch file.
=20
I've also attached the output of do_compile - hopefully someone can look=20
at this and see what I am doing wrong!
=20
One thing I have tried is I went down into the tmp/work directory where=20
the IGB driver was being built and tried running the same make command=20
(without the CC=3D=2C AR=3D=2C LD=3D settings=2C since those are not on my =
path...)=20
and it seemed to build just fine=2C so it seems like it is something to do=
=20
with the toolchain=2C but that's all I can tell.
=20
Thoughts?
=20
Thanks!
Jon
=20
=20
--=20
Jonathan R. Haws
Embedded Engineer
Space Dynamics Laboratory
(435) 713-3489
jhaws@sdl.usu.edu

-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto 		 	   		  =

--_5dd89430-0bf0-4d53-ae91-abbbbedbb039_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi Jon=2C<div><br></div><div>As =
an alternative=2C have you considered patching the igb source that already =
exists within yocto?</div><div><br></div><div>Regards=2C</div><div>Chris<br=
><br><div>From: Jonathan.Haws@sdl.usu.edu<br>To: yocto@yoctoproject.org<br>=
Date: Sat=2C 30 Jan 2016 00:46:20 +0000<br>Subject: [yocto] Compiling diffe=
rent version of IGB as a kernel module<br><br><pre>Hello all!<br> <br>I am =
trying to get the Intel IGB driver compiling as a kernel module <br>using s=
ource downloaded from SF.  I'm doing this because I was given a <br>patch t=
o enable an external PPS to provide a time source to the PTP <br>mechanisms=
 in the device.<br> <br>I've got the recipe setup and it makes it to the do=
_compile step=2C <br>however it fails here with some interesting output.  F=
irst=2C I get a <br>message from the shell stating that -- is an invalid op=
tion.  Second=2C <br>cc1 fails with a bad option.  I'm not even sure where =
to start debugging <br>this!<br> <br>I did have to patch the Makefile to ge=
t it to find the kernel sources <br>and build files correctly.  I've attach=
ed my recipe and that patch file.<br> <br>I've also attached the output of =
do_compile - hopefully someone can look <br>at this and see what I am doing=
 wrong!<br> <br>One thing I have tried is I went down into the tmp/work dir=
ectory where <br>the IGB driver was being built and tried running the same =
make command <br>(without the CC=3D=2C AR=3D=2C LD=3D settings=2C since tho=
se are not on my path...) <br>and it seemed to build just fine=2C so it see=
ms like it is something to do <br>with the toolchain=2C but that's all I ca=
n tell.<br> <br>Thoughts?<br> <br>Thanks!<br>Jon<br> <br> <br>-- <br>Jonath=
an R. Haws<br>Embedded Engineer<br>Space Dynamics Laboratory<br>(435) 713-3=
489<br>jhaws@sdl.usu.edu<br></pre><br>-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto</div></div> 		 	   		  </div>=
</body>
</html>=

--_5dd89430-0bf0-4d53-ae91-abbbbedbb039_--
