Return-Path: <linux.mrjimorg@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C4F7E013BB
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2012 12:12:10 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so814084ghb.35
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2012 12:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EJZMTiBQM0nXeuMsVTgv0LGtihdvx8QmZOemasHcpxw=;
	b=NKBnvi6WzrwOwqx/kesjAVIGFK8CgMAfCETqtwIGRDGkyGl3X6je2iYGAJxeX0tWc9
	YxdoSvujItRM/lNY8ZNzPffGaRi5e/w/jUyuRMajGvNPlgpYhTkqSrE1cF96oMpNZ050
	PdOD5WVJJ/uxLEdtZSc75ZeeAGkqEyAiEuNdTr3RnYo36rQ0w56zhFeur2h5oJSIJuhj
	cwbIQ/K31tbMUsBKs+WQfo3ef2h7WMoGo/l9zl+6zgQB0+R0rHjdVjbo4jzfh1rDH3tf
	megmu6bKz4WdRsuUh4W+6AHvMGkw4TZ6PBHANdKPS7pBvu2ywTTpk+I6iRKkLbQU6fd0
	y9UA==
MIME-Version: 1.0
Received: by 10.50.222.170 with SMTP id qn10mr1994099igc.45.1339096329722;
	Thu, 07 Jun 2012 12:12:09 -0700 (PDT)
Received: by 10.50.170.100 with HTTP; Thu, 7 Jun 2012 12:12:09 -0700 (PDT)
Date: Thu, 7 Jun 2012 14:12:09 -0500
Message-ID: <CAH6UwN1QU45F0AqmHZhvG+afFy22bRNsR7buL0yqTOsSEk3xQQ@mail.gmail.com>
From: Jim Rucker <linux.mrjimorg@gmail.com>
To: yocto@yoctoproject.org
Subject: Recipe question - source directory of depency parent
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
X-List-Received-Date: Thu, 07 Jun 2012 19:12:10 -0000
Content-Type: multipart/alternative; boundary=14dae93411110d9b7004c1e6a92f

--14dae93411110d9b7004c1e6a92f
Content-Type: text/plain; charset=ISO-8859-1

I'm creating a bitbake recipe for a package that is a loadable module, but
it requires the linux source directory in order to build. I added the
virtual/kernel package as our "DEPENDS", but when I run bitbake -e for my
target I don't see an environment variable that specifies where the source
is for the virtual/kernel package. Is there a way to get this, or am doing
this wrong? I put the .bb recipe in the same
meta-ourco/recipes-kernel/linux directory that has the .bb which builds the
linux kernel for our target, but in its own file, with its own "PROVIDES"
variable.

--14dae93411110d9b7004c1e6a92f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;m creating a bitbake recipe for a package that is a loadable module, =
but it requires the linux source directory in order to build. I added the v=
irtual/kernel package as our &quot;DEPENDS&quot;, but when I run bitbake -e=
=A0for my target I don&#39;t see an environment variable that specifies whe=
re the source is for the virtual/kernel package. Is there a way to get this=
, or am doing this wrong?=A0I put the .bb recipe in the same meta-ourco/rec=
ipes-kernel/linux directory that has the .bb which builds the linux kernel =
for our target, but in its own file, with its own &quot;PROVIDES&quot; vari=
able.<br>
<div><br></div>

--14dae93411110d9b7004c1e6a92f--
