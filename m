Return-Path: <esteban.rc@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B736E01482
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2013 13:25:15 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id x14so5429055ief.7
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2013 13:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=9kM/yWm0tzK5ks6+j3vBXjYesJ2qGuLjzmYgSf4bOUk=;
	b=AWKMU6sgtu1K3l1E1FVxljZ/+0Vo++eBp1F2xR8rJaQi22TkXtVeTGCbBgKM/nHLwk
	LvoJLfSfbRUVtSPlFCOw1qKAjVHB6YWqK93TzCjDV3mPLcdFIMY5yVjhmy368JnfJ+eT
	nf1ppfaXxlUrcy5x5a9xjXHx2uJJVZxl/nJ0xVMicuvtIM9MyG2XOpQRP+q2i97IkoIW
	aSMQvIxy4zIF7jgH1Jp3eU20EuaHeFQZ+Ytyxmhb6H7wg7OQqhcbuZwtCd8LHWYGZEJh
	yndU1sVjeQMA4cL+YfxXf2WEZ5a4IQp7JFFU2Im3kvs95a9oziCyY6l0FCCiUadc/U5P
	0k8Q==
X-Received: by 10.43.65.145 with SMTP id xm17mr8497127icb.35.1365279914847;
	Sat, 06 Apr 2013 13:25:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.25.74 with HTTP; Sat, 6 Apr 2013 13:24:34 -0700 (PDT)
From: Esteban Rivera <esteban.rc@gmail.com>
Date: Sat, 6 Apr 2013 14:24:34 -0600
Message-ID: <CACN9-wQieY6cZjF7GQaBofhJm2NB9XdgiEfU3orpYDWPezUNwQ@mail.gmail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 06 Apr 2013 20:25:15 -0000
Content-Type: multipart/alternative; boundary=bcaec51d29985803a504d9b7005a

--bcaec51d29985803a504d9b7005a
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

--bcaec51d29985803a504d9b7005a
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
ing error message:</div><div class=3D"gmail_default" style=3D"font-size:13p=
x;font-family:arial,sans-serif">

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

Thank You for your time.</div></div>-- <br><font face=3D"tahoma, sans-serif=
">Esteban Rivera</font>
</div>

--bcaec51d29985803a504d9b7005a--
