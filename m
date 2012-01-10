Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2452E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 04:23:05 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadc16 with SMTP id c16so3262555qad.14
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 04:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=OoJF3gMlDDefL2xVeFdLxiGUq3z4Q0f7fMSlhWTEiC0=;
	b=iSWkNiAnNhV5CNn60I//0KnBa/7mvJx+b4qmVaQmkf7GGpAHVblodsTERQ5vUiCxr2
	X3GHXzv6oXwzcRkFafioSuObrhwM+G8I5MkNT/iHc+846ZYBLiq17rDFHEnZ8wnYbP6d
	r0Z5ClJ6xJJXDjHhENoSGt0z7Ymj4HRXRwmME=
Received: by 10.224.188.16 with SMTP id cy16mr24282644qab.32.1326198185134;
	Tue, 10 Jan 2012 04:23:05 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	ev2sm101106591qab.15.2012.01.10.04.23.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 10 Jan 2012 04:23:04 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <4F0C28FD.3010402@mlbassoc.com>
Date: Tue, 10 Jan 2012 07:23:03 -0500
Message-Id: <205064BA-C265-4A33-8449-7118FF11AB9D@gmail.com>
References: <8B3C6E23-C3B9-4CEF-A1E0-2B91F8D17EFE@gmail.com>
	<4F0C28FD.3010402@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: yocto@yoctoproject.org
Subject: Re: understanding what's in an image
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
X-List-Received-Date: Tue, 10 Jan 2012 12:23:06 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Jan 10, 2012, at 7:03 AM, Gary Thomas wrote:

> On 2012-01-09 17:51, James Abernathy wrote:
>> I'm trying to understand how bitbake parses the poky directory tree a =
little better.
>>=20
>> The best I can figure all .bb files are NOT included. Just some of =
them are.  I'm guessing that the .bb in the meta/recipe-sato named =
core-image-sato.bb is the one that is used to start the parsing if =
bitbake core-image-sato is executed.
>> I originally thought all subdirectories of a path included in BBLAYER =
were parsed looking for .bb files, but now I know that is not true, but =
not sure why.
>>=20
>> For example, it does not appear that webkit is included in the =
core-image-sato even though the recipe-sato directory includes the =
webkit subdirectory with it's recipe.  What would be the proper way of =
adding the webkit to core-image-sato??
>=20
> The 'webkit' is just a library used to build tools such as a
> web browser.  You might want to start with an application that
> actually uses webkit, such as web-webkit.
>=20
> To build an image which includes web-webkit, add this line to
> your local.conf file and rebuild the image:
>  IMAGE_INSTALL +=3D "web-webkit"
>=20
> You can also build packages which are not installed into your
> image by default and use a package manager (e.g. zypper) to
> install the package later onto a running system.
>=20
This was very helpful. Before I got your email, I had gotten the advice =
to=20
put the IMAGE_INSTALL +=3D "web-webkit" into the core-image-sato.bb =
file.
Both seem to work.  Not sure which is the best approach.  Maybe creating =
a .bbappend
in my BSP??

So how do I know which applications are installed in an image? is there =
a how file of IMAGE_INSTALL statements?

Jim A

> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------


