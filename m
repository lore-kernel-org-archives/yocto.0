Return-Path: <esteban.rc@gmail.com>
Received: from mail-ia0-f173.google.com (mail-ia0-f173.google.com
	[209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 620E5E00597
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2013 11:10:38 -0700 (PDT)
Received: by mail-ia0-f173.google.com with SMTP id h37so4070356iak.18
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2013 11:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=L6yetjBw6Z/iv+Y/rqfAcmyyzGJrXIXKTn4Aj72Pw+k=;
	b=yY/jeRD3jl4qHybL9Ak+hL6sPc61JmdRyTenyIBeU56bx/0DKi57AJW7NFfsfjxkNF
	ObCoEzxgEpNuuGy/rjkwfQ2CrQGExQOEfspNG6B0bg4DS0vnkm/94u/G8ir8uy9jCWqD
	URzDMfVO8RjjmLqUBVTD8IXX4QGmhD94PO5zaE+C2Ur0jcCt05dliTX6XfAOujF6yxtm
	gTkIz5vTQKXUFPfagP5nuM54Z+4DQ+srV2Vsms+uG2mIS8uMyPLpFoW1UrX74c+isYB0
	6P0/WMEzTUDnrhbX8xZeVoxjRcrLxipF/QqeBU3N+TNux4jm8YAfGxfpH3I285IWDKIk
	T+sA==
X-Received: by 10.50.13.208 with SMTP id j16mr2720935igc.73.1365271837919;
	Sat, 06 Apr 2013 11:10:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.25.74 with HTTP; Sat, 6 Apr 2013 11:09:57 -0700 (PDT)
From: Esteban Rivera <esteban.rc@gmail.com>
Date: Sat, 6 Apr 2013 12:09:57 -0600
Message-ID: <CACN9-wSmFVcD7eDkXA0ahD35HjFAPy5AX+6uQN-VDg_X24qPeA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 08 Apr 2013 06:54:19 -0700
Subject: Problem Installing Package Manager in FRI2
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
X-List-Received-Date: Sat, 06 Apr 2013 18:10:38 -0000
Content-Type: multipart/alternative; boundary=f46d0447f094ebd34104d9b51e34

--f46d0447f094ebd34104d9b51e34
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I'm trying to generate an image for the FRI2 using the official Intel BSP
provided in the Yocto Project website, in this image I want to include at
least one package manager.

I'm Using poky 8.0 with Hob GUI, from the recipes listed that can be
included in the image I can see Dpkg and Zypper package managers, but I
have trouble with both packages.

I'm unable to create the Image whenever Dpkg is included because of the
following error message:

error: Failed dependencies:
/home/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/bin/perl-native/perl
is needed by dpkg-1.16.8-r18.0.core2

I get this message even tho the files do exist at the path specified by the
error message.

On the other hand whenever I select Zypper, the image is created correctly
but any zypper commands ends up showing the following error:

zypper: dbconfig.c:493: db3New: Assertion 'dbOpts != ((void *)0) && *db0pts
!= '\0'' failed.
Aborted

I'm I missing something during the Image creation?

Thank You for your time.

-- 
Esteban Rivera

--f46d0447f094ebd34104d9b51e34
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small"><div class=3D"gmail_default">Hello,</div><div cl=
ass=3D"gmail_default"><br></div><div class=3D"gmail_default">I&#39;m trying=
 to generate an image for the FRI2 using the official Intel BSP provided in=
 the Yocto Project website, in this image I want to include at least one pa=
ckage manager.</div>

<div class=3D"gmail_default"><br></div><div class=3D"gmail_default">I&#39;m=
 Using poky 8.0 with Hob GUI, from the recipes listed that can be included =
in the image I can see Dpkg and Zypper package managers, but I have trouble=
 with both packages.</div>

<div class=3D"gmail_default"><br></div><div class=3D"gmail_default">I&#39;m=
 unable to create the Image whenever Dpkg is included because of the follow=
ing error message:</div><div class=3D"gmail_default" style=3D"font-family:a=
rial,sans-serif;font-size:13px">

<div class=3D"gmail_default"><font face=3D"tahoma, sans-serif"><br></font><=
/div><div class=3D"gmail_default"><font face=3D"tahoma, sans-serif">error: =
Failed dependencies:</font></div><div class=3D"gmail_default"><font face=3D=
"tahoma, sans-serif"><span style=3D"white-space:pre-wrap">	</span>/home/pok=
y-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/bin/perl-native/perl is nee=
ded by dpkg-1.16.8-r18.0.core2</font></div>

</div><div class=3D"gmail_default"><br></div><div class=3D"gmail_default">I=
 get this message even tho the files do exist at the path specified by the =
error message.</div><div class=3D"gmail_default"><br></div><div class=3D"gm=
ail_default">

On the other hand whenever I select Zypper, the image is created correctly =
but any zypper commands ends up showing the following error:</div><div clas=
s=3D"gmail_default"><br></div><div class=3D"gmail_default">zypper: dbconfig=
.c:493: db3New: Assertion &#39;dbOpts !=3D ((void *)0) &amp;&amp; *db0pts !=
=3D &#39;\0&#39;&#39; failed.</div>

<div class=3D"gmail_default">Aborted =A0</div><div class=3D"gmail_default">=
<br></div><div class=3D"gmail_default">I&#39;m I missing something during t=
he Image creation?</div><div class=3D"gmail_default"><br></div><div class=
=3D"gmail_default">

Thank You for your time.</div></div><div><br></div>-- <br><font face=3D"tah=
oma, sans-serif">Esteban Rivera</font>
</div>

--f46d0447f094ebd34104d9b51e34--
