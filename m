Return-Path: <jefro.net@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id F31484C800AC
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2011 13:05:45 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm2 with SMTP id 2so5794093fxm.35
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2011 11:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:date:x-google-sender-auth
	:message-id:subject:from:to:content-type;
	bh=LvShTR2+djpy9F9O59spfKHG3TBQ98hN4s43oDs44EM=;
	b=TLYfZTmn6CX5WJzdGdAc7n9XzdKqb6nfrIfvwbY6UFxsqR/H8ml5IN66vf4POArma0
	4h10HZLgDjSzuS3ORIy8Bd3mfFTqhhFbbvHNd5ckr8eEG2HBFURZyWYVcWGgsPq2feo1
	pBJJvKOZC5YGN54rU5DmJjsX4VG/I/U3ARGww=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	b=oLTTOv4I6ulhrbe3NCGJhia0kudyhojPgwZ0xO373hUcGGFxv1AOIazF/jZo6zJjeQ
	ctolxJzxsEQHIJPFy9PMyOHUNZkTFmJTj0cTS3GG3S+ItMGmcD+I2ok36ceH46BEX549
	3OCQvtmdo8VibiYTvcfjkfdSbanUleNltVX4Q=
MIME-Version: 1.0
Received: by 10.223.66.200 with SMTP id o8mr5444799fai.38.1299524725825; Mon,
	07 Mar 2011 11:05:25 -0800 (PST)
Sender: jefro.net@gmail.com
Received: by 10.223.126.130 with HTTP; Mon, 7 Mar 2011 11:05:25 -0800 (PST)
Date: Mon, 7 Mar 2011 11:05:25 -0800
X-Google-Sender-Auth: HYzWGvz0rUJfXhWh3CIwTut-TxY
Message-ID: <AANLkTinC_Efgpq8s8QMYvjhmTfTaX-mQSzpafPp27iZh@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: yocto@yoctoproject.org
Subject: Please add build ID to bugs
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
X-List-Received-Date: Mon, 07 Mar 2011 19:05:46 -0000
Content-Type: multipart/alternative; boundary=0015174bf0cca8e820049de92d9d

--0015174bf0cca8e820049de92d9d
Content-Type: text/plain; charset=ISO-8859-1

Hi all

I have added the following item to the Bugzilla guidelines:

*IMPORTANT*: please include the build/commit ID as reported by BitBake, as
this will help the team determine whether your bug has been fixed already.

Guidelines are here:
https://wiki.yoctoproject.org/wiki/Community_Guidelines#Bugzilla_Guidelines

<https://wiki.yoctoproject.org/wiki/Community_Guidelines#Bugzilla_Guidelines>
thanks!
-- 
Jeff Osier-Mixon
Yocto Community Manager @Intel

--0015174bf0cca8e820049de92d9d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all<div><br></div><div>I have added the following item to the Bugzilla g=
uidelines:</div><div><br></div><div><span class=3D"Apple-style-span" style=
=3D"font-family: sans-serif; font-size: 13px; line-height: 19px; "><b>IMPOR=
TANT</b>: please include the build/commit ID as reported by BitBake, as thi=
s will help the team determine whether your bug has been fixed already.</sp=
an></div>
<div><font class=3D"Apple-style-span" face=3D"sans-serif"><span class=3D"Ap=
ple-style-span" style=3D"line-height: 19px;"><br></span></font></div><div><=
font class=3D"Apple-style-span" face=3D"sans-serif"><span class=3D"Apple-st=
yle-span" style=3D"line-height: 19px;">Guidelines are here:=A0<a href=3D"ht=
tps://wiki.yoctoproject.org/wiki/Community_Guidelines#Bugzilla_Guidelines">=
https://wiki.yoctoproject.org/wiki/Community_Guidelines#Bugzilla_Guidelines=
</a></span></font></div>
<div><font class=3D"Apple-style-span" face=3D"sans-serif"><span class=3D"Ap=
ple-style-span" style=3D"line-height: 19px;"><br></span></font></div><div><=
font class=3D"Apple-style-span" face=3D"sans-serif"><span class=3D"Apple-st=
yle-span" style=3D"line-height: 19px;"><a href=3D"https://wiki.yoctoproject=
.org/wiki/Community_Guidelines#Bugzilla_Guidelines"></a>thanks!</span></fon=
t><br>
-- <br>Jeff Osier-Mixon<div>Yocto Community Manager @Intel</div><br>
</div>

--0015174bf0cca8e820049de92d9d--
