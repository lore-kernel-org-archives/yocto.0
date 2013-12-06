Return-Path: <bruce.kumita@gmail.com>
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CED9E007AF
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 06:23:58 -0800 (PST)
Received: by mail-qa0-f44.google.com with SMTP id i13so606114qae.10
	for <yocto@yoctoproject.org>; Fri, 06 Dec 2013 06:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=gSMQfxgzlc8DFngqT+cNE0bKKzmCDkSlFD+1lygaUa0=;
	b=mTt1mpjVHnZMVzoIjrBGdVl2FGNqHWA/xXWH/JhWsRMJCrYCut1rENPCYwMmM3UTOg
	W/co+3sIE2Whucym5rXHuZKms9G+5Mym3kB7GqEnZKkYvWHxz8DuipOq3oDbkuIwr4X0
	G7RduMIVbdxwHvfop/cZX0uJwnZfePv8Zjjoe5oPSnOwcPQScYwwnRLRzuB+a+m4mqMh
	1CADmq28VjipbMeHf03azZ0YrufgP9z+2mQLmIFX6jpE/XxDFIXE1iEpBRhW3AbAsSOd
	O52Am8dtq3pl59p3RLOGcIMdJibIViXBVFQDmP0mWW3MywWmo2E9QHL8n8QN15o+GmGh
	q3Nw==
MIME-Version: 1.0
X-Received: by 10.224.136.10 with SMTP id p10mr7134671qat.37.1386339837351;
	Fri, 06 Dec 2013 06:23:57 -0800 (PST)
Received: by 10.229.119.130 with HTTP; Fri, 6 Dec 2013 06:23:57 -0800 (PST)
Date: Fri, 6 Dec 2013 22:23:57 +0800
Message-ID: <CALaXJ9=ON4Ekrqt3OixGOvpKhcrVpaNMP3OwCvssvmHQFwUTUg@mail.gmail.com>
From: Kumita Bruce <bruce.kumita@gmail.com>
To: yocto@yoctoproject.org
Subject: The difference of & and | in LICENSE definition
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
X-List-Received-Date: Fri, 06 Dec 2013 14:23:59 -0000
Content-Type: multipart/alternative; boundary=001a11c2a8b08b398904ecde65bf

--001a11c2a8b08b398904ecde65bf
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I don't know whether this is the right place to ask the question. Hope to
get some help from here.

I see below two types definition of LICENSE in Yocto recipe:
LICENSE = "license-1 & license-2"
LICENSE = "license-1 | license-2"

Can somebody help to give some explanation for the difference of those two
formats? And how to determinate which format should be used for a package.


Cheers,

Bruce

--001a11c2a8b08b398904ecde65bf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:courier =
new,monospace;color:rgb(0,0,0)">Hi,<br><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:courier new,monospace;color:rgb(0,0,0)">I don&#39;t=
 know whether this is the right place to ask the question. Hope to get some=
 help from here. <br>
</div><div class=3D"gmail_default" style=3D"font-family:courier new,monospa=
ce;color:rgb(0,0,0)"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:courier new,monospace;color:rgb(0,0,0)">I see below two types definit=
ion of LICENSE in Yocto recipe: <br>
LICENSE =3D &quot;license-1 &amp; license-2&quot;<br>LICENSE =3D &quot;lice=
nse-1 | license-2&quot;<br></div><div class=3D"gmail_default" style=3D"font=
-family:courier new,monospace;color:rgb(0,0,0)"><br></div><div class=3D"gma=
il_default" style=3D"font-family:courier new,monospace;color:rgb(0,0,0)">
Can somebody help to give some explanation for the difference of those two =
formats? And how to determinate which format should be used for a package.=
=A0 <br><br></div><div class=3D"gmail_default" style=3D"font-family:courier=
 new,monospace;color:rgb(0,0,0)">
<br clear=3D"all"></div><div><div dir=3D"ltr"><font face=3D"courier new, mo=
nospace">Cheers,=A0</font><div><font face=3D"courier new, monospace"><br></=
font></div><div><font face=3D"courier new, monospace">Bruce</font></div></d=
iv></div>

</div>

--001a11c2a8b08b398904ecde65bf--
